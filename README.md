


[![license](https://img.shields.io/github/license/peaceiris/actions-hugo-link-check.svg)](https://github.com/peaceiris/actions-hugo-link-check/blob/master/LICENSE)
[![release](https://img.shields.io/github/release/peaceiris/actions-hugo-link-check.svg)](https://github.com/peaceiris/actions-hugo-link-check/releases/latest)
[![GitHub release date](https://img.shields.io/github/release-date/peaceiris/actions-hugo-link-check.svg)](https://github.com/peaceiris/actions-hugo-link-check/releases)



## GitHub Actions for hugo-link-check

- [raviqqe/muffet: Fast website link checker in Go](https://github.com/raviqqe/muffet)

<img width="400" alt="GitHub Actions for hugo-link-check" src="./images/ogp.svg">



## Getting started

### Create `main.workflow`

```sh
workflow "Main workflow" {
  on = "push"
  resolves = ["hugo-link-check"]
}

action "is-branch-master" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "hugo-link-check" {
  needs = "is-branch-master"
  uses = "peaceiris/actions-hugo-link-check@v0.55.5"
  env = {
    OPTIONS = ""
  }
}
```



## License

[MIT License - peaceiris/actions-hugo-link-check]

[MIT License - peaceiris/actions-hugo-link-check]: https://github.com/peaceiris/actions-hugo-link-check/blob/master/LICENSE



## Supprt author

<a href="https://www.patreon.com/peaceiris"><img src="./images/patreon.jpg" alt="peaceiris - Patreon" width="150px"></a>
