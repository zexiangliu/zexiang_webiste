---
layout: page
title: Gallery
permalink: /gallery/
---
## 2023

<hr>

<div class="photos">
  {% for photo in site.gallery %}
    {% if photo.info contains "2023" %}
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
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

## 2022

<hr>

<div class="photos">
  {% for photo in site.gallery %}
    {% if photo.info contains "2022" %}
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
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

## 2021

<hr>

<div class="photos">
  {% for photo in site.gallery %}
    {% if photo.info contains "2021" %}
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
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br> 

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
