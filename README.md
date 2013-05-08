# UX Wrocław [![Build Status](https://travis-ci.org/porada/ux-wroclaw.png)](https://travis-ci.org/porada/ux-wroclaw)

This is the repository for the [official website](http://uxwroclaw.pl/) of the organization.

It’s based on [Middleman](http://middlemanapp.com/) and is hosted on [GitHub Pages](http://pages.github.com/).

## Development

Install dependencies first.

```bash
gem install bundler
bundle install
```

Set up the Middleman server to play with the website.

```bash
bundle exec middleman server
```

After you’re done tinkering, push the changes and run the [publishing script](publish) to automatically build the page and update the `gh-pages` branch with new content.

```bash
git push origin master && ./publish
```

Use `bundle exec middleman build` only to check the generated site.
