---
layout: archive
permalink: /
title: "Artikel"
excerpt: "Hier findet ihr alle Artikel"
---

{% include toc.html %}

{% for category in site.data.categories %}

## {{ category.display }}

<div class="tiles">
	{% for post in site.categories.[category.name] %}
  		{% include post-grid.html %}
	{% endfor %}
</div><!-- /.tiles -->

{% if category != site.data.categories.last %}

***

{% endif %}

{% endfor %}