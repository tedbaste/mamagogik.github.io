---
layout: archive
permalink: /artikel/
title: "Artikel"
excerpt: "Hier findet ihr alle Artikel thematisch sortiert"
---
<div class="tiles">
	{% for category in site.data.categories %}
	<div class="tile">
		<h2 class="post-title" id="{{ category.name }}">{{ category.display }}</h2>
	</div>
	{% for post in site.categories.[category.name] %}
  		{% include post-grid.html %}
	{% endfor %}
	{% endfor %}
</div><!-- /.tiles -->