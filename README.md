[![license](https://img.shields.io/github/license/peaceiris/actions-hugo-link-check.svg)](https://github.com/peaceiris/actions-hugo-link-check/blob/master/LICENSE)
[![release](https://img.shields.io/github/release/peaceiris/actions-hugo-link-check.svg)](https://github.com/peaceiris/actions-hugo-link-check/releases/latest)
[![GitHub release date](https://img.shields.io/github/release-date/peaceiris/actions-hugo-link-check.svg)](https://github.com/peaceiris/actions-hugo-link-check/releases)



## GitHub Actions to check broken links for Hugo

- [gohugoio/hugo: The world’s fastest framework for building websites.](https://github.com/gohugoio/hugo)
- [raviqqe/muffet: Fast website link checker in Go](https://github.com/raviqqe/muffet)

This action runs the following commands.

- `hugo server ${HUGO_OPTIONS} &`
- `muffet ${OPTIONS} http://localhost:1313`

<img width="400" alt="GitHub Actions to check broken links for Hugo" src="./images/ogp.svg">



## Getting started

### Create `main.workflow`

```hcl
workflow "Main workflow" {
  on = "push"
  resolves = ["hugo-link-check"]
}

action "hugo-link-check" {
  uses = "peaceiris/actions-hugo-link-check@master"
  env = {
    HUGO_OPTIONS = "--buildDrafts"
    OPTIONS = "-e 'http://localhost:8000'"
  }
}
```



## License

[MIT License - peaceiris/actions-hugo-link-check]

[MIT License - peaceiris/actions-hugo-link-check]: https://github.com/peaceiris/actions-hugo-link-check/blob/master/LICENSE



## Supprt author

<a href="https://www.patreon.com/peaceiris"><img src="./images/patreon.jpg" alt="peaceiris - Patreon" width="150px"></a>
