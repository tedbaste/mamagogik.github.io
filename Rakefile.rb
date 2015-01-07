require "rubygems"
require "tmpdir"

require "bundler/setup"
require "jekyll"


# Change your GitHub reponame
GITHUB_REPONAME = "mamagogik/mamagogik.github.io"


desc "Generate blog files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end


desc "Generate and publish blog to pages"
task :publish => [:generate] do
  Dir.mktmpdir do |tmp|
    cp_r "_site/.", tmp

    pwd = Dir.pwd
    Dir.chdir tmp

    system "git init"
    system "git add ."
    message = "Site updated at #{Time.now.utc}"
    system "git commit -m #{message.inspect}"
    system "git remote add origin git@github.com:#{GITHUB_REPONAME}.git"
    system "git push origin master --force"

    Dir.chdir pwd
  end
end

# Usage: rake minify
desc "Minify files"
task :minify do
  puts '* Minifying files'
  system "java -jar _build/htmlcompressor.jar -r --type html --compress-js -o _site _site"
end # task :minify

# Usage: rake drafts
desc "Build Jekyll site with _drafts posts"
task :drafts do
  system "jekyll build --drafts --limit_posts 10"
end # task :drafts

# # Ping Google
# desc 'Notify Google of the new sitemap'
# task :sitemapgoogle do
#   begin
#     require 'net/http'
#     require 'uri'
#     puts '* Pinging Google about our sitemap'
#     Net::HTTP.get('www.google.com', '/webmasters/tools/ping?sitemap=' + URI.escape('http://mamagogik.de/sitemap.xml'))
#   rescue LoadError
#     puts '! Could not ping Google about our sitemap, because Net::HTTP or URI could not be found.'
#   end
# end
# 
# # rake notify
# desc 'Notify various services about new content'
# task :notify => [:sitemapgoogle,] do
# end
# 
# # rake deploy
# desc 'Minify files, rsync the files, and notify services about new content'
# task :deploy => [:minify, :rsync, :notify] do
# end