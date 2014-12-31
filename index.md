---
layout: home
permalink: /
image:
  feature: home-feature.png
---
<div class="page-owner">
	<div class="owner-image">
		<img src="{{ site.url }}/images/{{ site.owner.avatar }}" alt="{{ site.owner.name }}">
	</div><!-- ./home-owner -->
	<div class="owner-content">
		<h3 class="author-name" >{{ site.owner.name }}</h3>
		<p class="author-bio">{{ site.owner.bio }}</p>
	</div><!-- ./author-content -->
</div><!-- ./page-footer -->

***

##### Aktuelle Artikel

<div class="tiles">
{% for post in site.posts limit:4 %}
	{% include post-grid.html %}
{% endfor %}
</div><!-- ./tiles -->

***

##### Folge mamagogik auch hier
{% include follow.html %}

***