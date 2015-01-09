---
layout: archive
permalink: /artikel/
title: "Artikel"
excerpt: "Hier findest du die verschiedenen Rubriken"
---
<div class="tiles">
{% for post in site.data.kategorien %}
  	{% include post-grid.html %}
{% endfor %}
</div><!-- /.tiles -->