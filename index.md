---
layout: archive
permalink: /
title: mamagogik
excerpt: "Wurzeln, Flügel und ein Netz"
image:
  feature: home-feature.png
---
<div class="tiles">
	<div class="tile">
			<img class="owner" src="{{ site.url }}/images/{{ site.owner.avatar }}" alt="{{ site.owner.name }}">
	</div>
	<div class="tile">
			<h2 class="post-title" >{{ site.owner.name }}</h2>
			<p class="post-excerpt">{{ site.owner.bio }}</p>
	</div><!-- ./tile -->
</div>

***

##### Neuste Artikel

<div class="tiles">
{% for post in site.posts limit:4 %}
	{% include post-grid.html %}
{% endfor %}
</div><!-- ./tiles -->
