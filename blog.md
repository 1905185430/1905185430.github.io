---
layout: default
title: "Blog"
permalink: /blog/
---

# Technical Blog

Welcome to my technical blog where I share insights, tutorials, and notes on robotics, AI, and software development.

## Categories

- **Robotics**: Robot control, teleoperation, and hardware setup
- **Machine Learning**: VLA models, imitation learning, and training
- **Tools & Frameworks**: LeRobot, PyTorch, and other tools
- **Tutorials**: Step-by-step guides and how-tos
- **Project Updates**: Progress reports and milestones

## Recent Posts

{% for post in site.posts limit:5 %}
### [{{ post.title }}]({{ post.url }})
*{{ post.date | date: "%B %d, %Y" }}*  
{{ post.excerpt | truncatewords: 50 }}

{% endfor %}

## All Posts

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url }}) - {{ post.date | date: "%Y-%m-%d" }}
{% endfor %}

## Subscribe

Stay updated with my latest posts by subscribing to the [RSS feed]({{ "/feed.xml" | relative_url }}).

---

*Have questions or suggestions? Feel free to [contact me](contact).*