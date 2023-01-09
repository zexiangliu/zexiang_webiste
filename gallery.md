---
layout: page
title: Gallery
permalink: /gallery/
---

## 2019
<hr>

<div class="photos">
  {% for photo in site.gallery %}
    {% if photo.info contains "2019" %}
      <div class="photo">
	{% if photo.size == "l" %}
	  <img src="{{ photo.image_path }}" alt="{{ photo.info }}" height="320"/>
	{% elsif photo.size == "p" %}
          <img src="{{ photo.image_path }}" alt="{{ photo.info }}" height="320"/>
	{% endif %}
        <p>{{ photo.info }}</p>
        <p>{{ photo.description }}</p>
      </div>
    {% endif %}
  {% endfor %}
</div>
