---
layout: page
title: Swimming
---

<sl-tab-group>
  <sl-tab slot="nav" panel="swim_meets">Swim Meets</sl-tab>
  <sl-tab slot="nav" panel="cmc_top_times">CMC's Top Times</sl-tab>
  <sl-tab slot="nav" panel="swim_grade_calculator">Swim Grade Calculator</sl-tab>
  <sl-tab slot="nav" panel="motivational_time_browser" disabled>Motivational Time Browser</sl-tab>

  <sl-tab-panel name="swim_meets">
    These are some of the CMC's past swim meets:
    <ul>
      {% collections.meets.each do |meet| %}
        <li>
          <a href="{{ meet.relative_url }}">{{ meet.data.date}} - {{ meet.data.title }}</a>
        </li>
      {% end %}
    </ul>
  </sl-tab-panel>

  <sl-tab-panel name="cmc_top_times">
    Here are the CMC's top times:
    <iframe id="preview-frame" src="https://www.swimcloud.com/swimmer/2977293/iframe/?splashes_type=fastest" width="100%" height="500px" frameborder="0"></iframe>>
  </sl-tab-panel>

  <sl-tab-panel name="swim_grade_calculator">

    <br />
    Enter the details of an athlete's performance at a race and calculate their <a href="https://swimswam.com/usa-swimming-releases-age-group-motivational-times-for-2024-2028/">Motivational Time Standard Level</a> (<a href="assets/2028-motivational-standards-single-age.pdf">Single Age</a> or <a href="assets/2028-motivational-standards-age-group.pdf">Age Group</a>)
    <br />
    <br />
    <form class="input-validation-required" action="/swim_grade/event_and_time" method="get">

      <sl-select name="age" label="Please enter the athlete's age" value="12" required>
        <sl-option value="12">12</sl-option>
        <sl-option value="13" disabled>13</sl-option>
      </sl-select>
    <br />

      <sl-select name="gender" label="Please select the athlete's gender" value="boys" required>
        <sl-option value="boys">Boy</sl-option>
        <sl-option value="girls">Girl</sl-option>
      </sl-select>
    <br />

      <sl-select name="event_type" label="Please choose the event type" value="scy" required>
        <sl-option value="scy">Short Course, Yards</sl-option>
        <sl-option value="scm">Short Course, Meters</sl-option>
        <sl-option value="lcm">Long Course, Meters</sl-option>
     </sl-select>
    <br />

      <sl-select name="age_type" label="Please select Single Age or Age Group" value="single_age" required>
        <sl-option value="single_age">Single Age</sl-option>
        <sl-option value="age_group" disabled>Age Group</sl-option>
      </sl-select>
    <br />

      <sl-button type="submit" variant="primary">Next</sl-button>
    </form>

    <script type="module">
      const form = document.querySelector('.input-validation-required');

      // Wait for controls to be defined before attaching form listeners
      await Promise.all([
        customElements.whenDefined('sl-button'),
        customElements.whenDefined('sl-checkbox'),
        customElements.whenDefined('sl-input'),
        customElements.whenDefined('sl-option'),
        customElements.whenDefined('sl-select'),
        customElements.whenDefined('sl-textarea')
      ]).then(() => {
        form.addEventListener('submit', event => {
          event.preventDefault();
          alert('All fields are valid!');
        });
      });
    </script>



  </sl-tab-panel>

  <sl-tab-panel name="motivational_time_browser">...coming soon...</sl-tab-panel>
</sl-tab-group>


