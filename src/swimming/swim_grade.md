---
# Feel free to add content and custom Front Matter to this file.

layout: default
---

## Swimgrade <sup>TM</sup>
{:style="text-align:center"}
#### Enter the details of an athlete's performance at a race and calculate their [Motivational Time Standard Level](https://swimswam.com/usa-swimming-releases-age-group-motivational-times-for-2024-2028/) [Single Age](/assets/2028-motivational-standards-single-age.pdf) and [Age Group](/assets/2028-motivational-standards-age-group.pdf)
{:style="text-align:center"}

<form class="input-validation-required" action="/swim_grade/event_and_time" method="get">

  <sl-select name="age" label="Please enter the athlete's age" value="12" required>
    <sl-option value="12">12</sl-option>
    <sl-option value="13">13</sl-option>
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
    customElements.('sl-textarea')
  ]).then(() => {
    form.addEventListener('submit', event => {
      event.preventDefault();
      alert('All fields are valid!');
    });
  });
</script>




