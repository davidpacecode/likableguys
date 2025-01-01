---
layout: workout
title: 2025 Workouts
---

<ul>
  {% collections.workouts.each do |workout| %}
    <li>
      <a href="{{ workout.relative_url }}">{{ workout.data.date }}</a>
    </li>
  {% end %}
</ul>

