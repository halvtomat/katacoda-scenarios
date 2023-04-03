The first step to create your first GitHub Action is to set up the directory structure.

The structure for your actions from the root of you Git repo should look like this:

```
.
|-- README.md
|-- package-lock.json
|-- package.json
|-- public
|   |-- favicon.ico
|   |-- index.html
|   |-- logo192.png
|   |-- logo512.png
|   |-- manifest.json
|   `-- robots.txt
`-- src
    |-- App.css
    |-- App.js
    |-- App.test.js
    |-- index.css
    |-- index.js
    |-- logo.svg
    |-- reportWebVitals.js
    `-- setupTests.js
```

An you should also have a hidden directory called ".github" which contains a directory called "workflow", this is where your actions are defined.

Note: The directory **names** are _important_.

Any GitHub Actions you create will then be placed inside the _.github/workflows_ directory.

Tip: You can check your directory structure at any time with the tree command.

`tree`{{exec}}
