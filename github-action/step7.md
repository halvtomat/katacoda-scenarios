Lastly we want to take a look at issue/PR labeling action called [Labeler](https://github.com/marketplace/actions/labeler).

This action is special because it uses an external configuration file.

The file `labeler.yml` has been created, open it in vim `vim labeler.yml`{{exec}} and copy the following YAML:

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
```{{copy}}

And that is the whole workflow file.

Now to the external configuration, a new file called `labeler.yml` has been created in the `.github/` directory.

Go there with this command: `cd ~/repo/.github`{{exec}}.

This file is where you configure which labels to give to different PR conditions.

Open the file in vim `vim labeler.yml`{{exec}}.

The PR conditions are paths with edited files in the PR, if we want to add a label `test` to any changes in the `src/test/*` path, we would write the following:

```yaml
test:
  - src/test/*
```{{copy}}

We can add as many label matches to the config file as we want!
