---
layout: archive
title: "CV"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

Education
======
* [Add your degree, institution, year]
* [Add your degree, institution, year]

Work Experience
======
* [Add your work experience]
  * Institution/Company
  * Description of role and responsibilities
  
Skills
======
* [Add your skills here]

Publications
======
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Talks
======
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html  %}
  {% endfor %}</ul>
  
Teaching
======
  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
Awards and Honors
======
* [Add your awards and honors here]
