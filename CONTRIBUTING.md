# How to Contribute

We are glad you are reading this. We welcome your contribution.

Here are some important resources:

* [Known Issues][issues]
* [Active Proposals][proposals]
* [How to Test][test]

## Contribute via Command Line

Follow [TACC's MkDocs "Testing: Test Locally" instructions](https://tacc.github.io/mkdocs-tacc/test/#test-locally).

## Contribute via GitHub

### Step by Step

[How to Contribute to **Use Cases**.](https://github.com/DesignSafe-CI/DS-User-Guide/blob/main/user-guide/usecases/README.md)

How to Contribute **Other Changes**:

1. [Fork][fork] this repository.\
    <sup>(**unless** you are a direct collaborator)</sup>
2. [Edit][edit] relevant files that need update.\
    <sup>([upload images](https://docs.github.com/en/repositories/working-with-files/managing-files/adding-a-file-to-a-repository) as necessary)</sup>
3. [Commit][commit] your changes.\
    <sup>(write [clear commit messages](#writing-commit-messages))</sup>
4. [Test][test] your changes.\
    <sup>(if comfortable using a command prompt)</sup>
5. [Request][request] a review.\
    <sup>(a.k.a. create a "Pull Request")</sup>

## Writing Commit Messages

Always write a clear log message for your commits. One-line messages are fine for small changes, but bigger changes should look like this:

> **A brief summary of the commit**

> A paragraph describing what changed and its impact.

## Style Guide

Start reading our newer docs and you'll get the hang of it. We optimize for readability:

* We add a new line before starting a list
* We indent using tab character
* We create lists with asterisks
* We should use [Markdown](https://www.markdownguide.org/) where possible[^1]
* We use some [Python-Markdown extensions](https://python-markdown.github.io/extensions/) and [PyMdown exensions](https://facelessuser.github.io/pymdown-extensions/#extensions)[^2]
* Use `cwd`-relative paths to images e.g. instead of `/hpc/imgs/blah.gif`, use `../imgs/blah.gif`.[^3]

[^1]: If some of our documents use HTML, please forgive us and use Markdown yourself.
[^2]: See enabled extensions at [`mkdocs.base.yml`](https://github.com/TACC/TACC-Docs/blob/main/mkdocs.base.yml) under `markdown_extensions:`.
[^3]: So that images load on the website **and** in GitHub preview.

Thanks,\
Texas Advanced Computing Center

[issues]: https://github.com/DesignSafe-CI/ds-user-guide/issues
[proposals]: https://github.com/DesignSafe-CI/ds-user-guide/pulls
[test]: ./TESTING.md

[fork]: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo
[edit]: https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files
[commit]: https://docs.github.com/en/pull-requests/committing-changes-to-your-project/creating-and-editing-commits/about-commits
[request]: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request
