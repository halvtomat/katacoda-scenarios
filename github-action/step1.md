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
