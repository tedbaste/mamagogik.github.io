---
layout: archive
permalink: /
title: Mamagogik
excerpt: "Unbeschwert groß werden"
image:
  feature: Optimized-home-feature.png
---
<div class="tiles">
	<div class="tile">
			<img class="owner" src="{{ site.url }}/images/{{ site.owner.avatar }}" alt="{{ site.owner.name }}">
	</div>
	<div class="owner-tile">
		<h2 class="post-title">{{ site.owner.name }}</h2>
		<p class="post-excerpt">{{ site.owner.bio }}</p>
		<p class="notice">Hier entsteht gerade mein neuer Internetauftritt. Hier und da muss ich noch ein bisschen arbeiten, aber du kannst dich schon mal ein bisschen umschauen.</p>
	</div>
</div>

---

#### [Neuste Artikel]({{ site.url }}/artikel-chronologisch)

<div class="tiles">
{% for post in site.posts limit:4 %}
	{% include post-grid.html %}
{% endfor %}
</div><!-- ./tiles -->

---

#### Beliebteste Artikel

<div class="tiles">
{% for post in site.posts %}
	{% if post.title == "Pränatales Bonding - Wie stärke ich die Mutter-Kind-Beziehung in der Schwangerschaft?" or post.title == "Zervixinsuffizienz und die Risiken" or post.title == "12 Must Haves für die Babyausstattung - Mein Wunschzettel" or post.title == "Projekt Nestbau #3 Das Babyzimmer" %}
	{% include post-grid.html %}
	{% endif %}
{% endfor %}
</div><!-- ./tiles  -->

<!-- <ul>
{% for post in site.posts_popular %}
<li>{{ post._ga }}</li>
{% endfor %}
</ul> -->