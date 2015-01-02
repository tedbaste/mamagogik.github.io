---
layout: archive
permalink: /artikel/
title: "Artikel"
excerpt: "Hier findet ihr alle Artikel"
---

<nav class="toc toc-left" markdown="1">
*  Auto generated table of contents
{:toc}
</nav>

{% for category in site.data.categories %}

<div class="tiles tiles-right">
	<h2>{{ category.display }}</h2>
	{% for post in site.categories.[category.name] %}
  		{% include post-grid.html %}
	{% endfor %}
</div><!-- /.tiles -->

{% if category != site.data.categories.last %}

***

{% endif %}

{% endfor %}