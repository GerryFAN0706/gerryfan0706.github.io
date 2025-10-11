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
* **Ph.D. in Computer Science**, Universiti Malaya, Malaysia (In Progress)
  * Programme: Doctor of Philosophy
  * Field of Study: Computing (Computer Science)
  * Mode: Postgraduate Doctorate Research

* **M.S. in Software Engineering**, Shanghai Jiao Tong University, China, 2018
  * School of Software
  * September 2014 - February 2018

* **B.S. in Software Engineering**, Huazhong University of Science and Technology, China, 2014
  * School of Software
  * September 2010 - June 2014

Work Experience
======
* **Lecturer** (June 2018 - Present)
  * School of Computer Science and Technology
  * Taiyuan University of Science and Technology, Taiyuan, China
  
Skills
======
* Machine Learning & Deep Learning
* Graph Neural Networks
* Natural Language Processing
* Human-Computer Interaction
* Python, Java, JavaScript
* Research Design & Data Analysis

Personal Interests
======
* 🎾 Tennis
* 💻 Technology Exploration
* 📚 Academic Research

Publications
======
  <!-- Sort publications by rank (lower rank number = higher priority) -->
  {% assign sorted_pubs = site.publications | sort: "rank" %}
  <ul>{% for post in sorted_pubs %}
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
