---
layout: archive
permalink: /artikel/
title: "Artikel"
excerpt: "Hier findet ihr alle Artikel thematisch sortiert"
---
{% include toc.html %}
{% for category in site.data.categories %}
## {{ category.display }}
<div class="tiles">
	{% for post in site.categories.[category.name] %}
  		{% include post-grid.html %}
	{% endfor %}
</div><!-- /.tiles -->
***
{% endfor %}