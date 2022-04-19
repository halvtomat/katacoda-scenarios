Lastly we want to take a look at issue/PR labeling action called [Labeler](https://github.com/marketplace/actions/labeler).

This action is special because it uses an external configuration file.

Create the file `.github/workflows/labeler.yml` and write the following YAML:

```yaml
name: Labeler
on:
- pull_request

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/labeler@v4
      with:
        repo-token: "${{ secrets.GITHUB_TOKEN }}"
```

And that is the whole workflow file.

Now to the external configuration, create a new file `.github/labeler.yml`.

This file is where you configure which labels to give to different PR conditions.

The PR conditions are paths with edited files in the PR, if we want to add a label `test` to any changes in the `src/test/*` path, we would write the following:

```yaml
test:
- src/test/*
```

We can add as many label matches to the config file as we want!
