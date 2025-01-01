---
layout: page
title: Wellness
---

<sl-tab-group>
  <sl-tab slot="nav" panel="2025_workouts">2025 Workouts</sl-tab>
  <sl-tab slot="nav" panel="wellness_resources">Assorted Wellness Resources</sl-tab>

  <sl-tab-panel name="2025_workouts">
    A running log of workouts in 2025
    <ul>
      {% collections.workouts.each do |workout| %}
        <li>
          <a href="{{ workout.relative_url }}">{{ workout.data.date}}</a>
        </li>
      {% end %}
    </ul>
  </sl-tab-panel>

  <sl-tab-panel name="wellness_resources">
    Here are some wellness resources we like
  </sl-tab-panel>

</sl-tab-group>


