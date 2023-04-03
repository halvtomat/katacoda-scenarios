There are hundreds of actions on the marketplace.

Another useful one is [Merge Branch](https://github.com/marketplace/actions/branch-merge) which can be used to automatically merge a branch.

As always a file called `merge.yml`{{}} has been created and you can open it in vim with `vim merge.yml`{{exec}}. Write the `name`{{}}, `on`{{}} and `jobs`{{}} attributes in the YAML file.

```yaml
name: Merge

on:
	push:
		branches: [release/*]

jobs:
	build:
		runs-on: ubuntu-latest
```{{copy}}

You might be able to figure out the `steps` on your own now, they are quite similar to previous examples.

```yaml
    steps:
      - uses: actions/checkout@v3
      - uses: everlytic/branch-merge@1.1.2
        with:
          github_token: ${{ github.token }}
          source_ref: ${{ github.ref }}
          target_branch: 'main'
          commit_message_template: '[Automated] Merged {source_ref} into target {target_branch}'
```{{copy}}

The new things with this action is the use of variables.

`${{ github.token }}`{{}} is a secret token in your repo which authorizes the action to commit certain actions, this variable is supplied by GitHub.

You can define your own variables by writing something like this:

```yaml
variables:
-	name: amount_of_apples
	value: 5
- name: name
	value: 'Daniel'
```{{copy}}

And then use them by writing `${{ variables.name }}` or `${{ variables.amount_of_apples }}` anywhere.

To push to the repo, use the following commands:

`cd ~/dd2482-is-bad`{{exec}}

`git add ./`{{exec}}

`git commit -m "add merging action"`{{exec}}

`git push`{{exec}}

Now you should be able to create a new branch beginning with "release/" and it will be auto merged to main.

Try it with the following commands:

`cd ~/dd2482-is-bad`{{exec}}

`echo TESTING MERGE >> README.md`{{exec}}

`git checkout -b release/merge-test`{{exec}}

`git add ./`{{exec}}

`git commit -m "change README.md"`{{exec}}

`git push --set-upstream origin release/merge-test`{{exec}}

After a few minutes you should see the text TESTING MERGE at the bottom of the README.md file in the main branch!

To see the changes in the main branch, check it out and pull changes and print the file with the following commands:

`git checkout main`{{exec}}

`git pull`{{exec}}

`cat README.md`{{exec}}
