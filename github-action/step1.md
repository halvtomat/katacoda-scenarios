The first step to create your first GitHub Action is to set up the directory structure.

From the start, the repo you forked and cloned will look like this:

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

You can try it for yourself with this command:

`tree`{{exec}}

An you should also have a hidden directory called ".github" which contains a directory called "workflow", this is where your actions are defined.

You can see all hidden files and directories by adding the -a flag like this:

`tree -a`{{exec}}

Note: The directory **names** are _important_.

Any GitHub Actions you create will then be placed inside the _.github/workflows_ directory.
