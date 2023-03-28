The first step to create your first GitHub Action is to set up the directory structure.

The structure for your actions from the root of you Git repo should look like this:

```
.
|-- README.md
`-- .github
    `-- workflows
```

Note: The directory **names** are _important_.

Any GitHub Actions you create will then be placed inside the _.github/workflows_ directory.

Tip: You can check your directory structure at any time with the tree command.

`tree -ar`{{exec}}

To try out all of these GitHub Actions, you will need your own GitHub repo.

The easiest way to follow this tutorial is to fork [this repo](https://github.com/halvtomat/dd2482-is-bad) by pressing "fork" in the top-right corner
and then cloning the repo with the `git clone`{{copy}} command.

