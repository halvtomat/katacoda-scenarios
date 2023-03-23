The first step to create your first GitHub Action is to set up the directory structure.

The structure for your actions from the root of you Git repo should look like this:

```
.
├── .github
│   └── workflows
│       └── action1.yml
│       └── action2.yml
│       └── .
│       └── .
│       └── actionX.yml
└── README.md
```

Note: The directory **names** are _important_.

Set up this structure in the editor and continue to the next step.

Tip: You can check your directory structure at any time with the tree command.

`tree -ar`{{exec}}
