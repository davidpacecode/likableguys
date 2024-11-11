---
layout: page
title: Meets
---

<ul>
  {% collections.meets.each do |meet| %}
    <li>
      <a href="{{ meet.relative_url }}">{{ meet.data.title }}</a>
    </li>
  {% end %}
</ul>

