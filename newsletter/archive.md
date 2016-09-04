---
layout: default
permalink: newsletter/archive

---

# Newsletter archive

  <ul class="newsletter-list">
    {% for newsletter in site.newsletters %}
      <li>
        <span class="newsletter-meta">{{ newsletter.date | date: "%b %-d, %Y" }}</span> <a class="newsletter-link" href="{{ newsletter.url | prepend: site.baseurl }}">{{ newsletter.title }}</a>
      </li>
    {% endfor %}
  </ul>

[Ready to subscribe?]({{ '/newsletter/' | prepend: site.baseurl }})
