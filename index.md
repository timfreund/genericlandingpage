---
layout: default
---

### Welcome to my landing page

You landed here, so everything's coming up Milhouse!

Keep reading for more information.

### Here's another heading just for fun

Now would be a great time for some lorem ipsum text.

<!-- if you have blog posts, they'll show up below -->

  <h1 class="page-heading">Recent Posts</h1>

  <ul class="post-list">
    {% for post in site.posts %}
      <li>
        <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>

        <h2>
          <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
        </h2>
      </li>
    {% endfor %}
  </ul>

  <p class="rss-subscribe">subscribe <a href="{{ "/feed.xml" | prepend: site.baseurl }}">via RSS</a></p>
