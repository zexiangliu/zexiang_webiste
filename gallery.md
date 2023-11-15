---
layout: page
title: Gallery
permalink: /gallery/
---
{% assign unique_years = site.gallery | map: "year" | uniq | sort | reverse%}
{% assign gallery = site.gallery | reverse%}
{% for year in unique_years %}
  <div class="year-section">
    <h2>{{ year }}</h2>
    <hr>
    <div class="photos">
      {% for photo in gallery %}
        {% if photo.year == year %}
          <div class="photo">
            {% if photo.size == "l" or photo.size == "p" %}
              <img src="{{ photo.image_path }}" alt="{{ photo.info }}"/>
            {% endif %}
            <p>{{ photo.info }}</p>
            <p>{{ photo.description }}</p>
          </div>
        {% endif %}
      {% endfor %}
    </div>
  </div>
{% endfor %}
