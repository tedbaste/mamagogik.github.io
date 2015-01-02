---
layout: archive
permalink: /artikel/
title: "Artikel"
excerpt: "Hier findet ihr alle Artikel"
---
{% for category in site.data.categories %}
<div class="tiles">
	<h2 id="{{ category.name }}">{{ category.display }}</h2>
	{% for post in site.categories.[category.name] %}
  		{% include post-grid.html %}
	{% endfor %}
</div><!-- /.tiles -->
{% if category != site.data.categories.last %}
<hr />
{% endif %}
{% endfor %}