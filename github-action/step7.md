Lastly we want to take a look at issue/PR labeling action called [Labeler](https://github.com/marketplace/actions/labeler).

This action is special because it uses an external configuration file.

The file `labeler.yml`{{}} has been created, open it in vim `vim labeler.yml`{{exec}} and copy the following YAML:

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

Now to the external configuration, a new file called `labeler.yml`{{}} has been created in the `.github/`{{}} directory.

Go there with this command:

`cd ~/dd2482-is-bad/.github`{{exec}}.

This file is where you configure which labels to give to different PR conditions.

Open the file in vim with:

`vim labeler.yml`{{exec}}

The PR conditions are paths with edited files in the PR, if we want to add a label `test`{{}} to any changes in the `src/test/*`{{}} path, we would write the following:

```yaml
css:
  - '**/*.css'
```{{copy}}

We can add as many label matches to the config file as we want!

To push to the repo, use the following commands:

`cd ~/dd2482-is-bad`{{exec}}

`git add ./`{{exec}}

`git commit -m "add labeler action"`{{exec}}

`git push`{{exec}}

Now any pull request which includes changes to a file with the ".css" file ending will be labeled as "css".

Try it out with the following commands:

`git checkout -b feature/new-styling`{{exec}}

`echo -e "\n.test { display: block; }" >> ~/dd2482-is-bad/src/App.css`{{exec}}

`git add ./`{{exec}}

`git commit -m "add new styling"`{{exec}}

`git push --set-upstream origin feature/new-styling`{{exec}}

`gh pr create -f`{{exec}}

Now you can go to the url from the last command and you will see your new pull request, it should soon be labeled with the css label.