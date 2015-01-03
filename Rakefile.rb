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