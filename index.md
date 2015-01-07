---
layout: archive
permalink: /
title: Mamagogik
excerpt: "Pädagogenkind und Newbie-Eltern"
image:
  feature: optimized-home-feature.png
---
<div class="tiles">
	<div class="tile">
			<img class="owner" src="{{ site.url }}/images/{{ site.owner.avatar }}" alt="{{ site.owner.name }}">
	</div>
	<div class="owner-tile">
		<h2 class="post-title">{{ site.owner.name }}</h2>
		<p class="post-excerpt">{{ site.owner.bio }}</p>
	</div>
</div>

---

#### [Neuste Artikel]({{ site.url }}/artikel-chronologisch)

<div class="tiles">
{% for post in site.posts limit:4 %}
	{% include post-grid.html %}
{% endfor %}
</div><!-- ./tiles -->