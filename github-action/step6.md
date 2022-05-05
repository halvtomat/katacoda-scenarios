There are hundreds of actions on the marketplace.

Another useful one is [Merge Branch](https://github.com/marketplace/actions/branch-merge) which can be used to automatically merge a branch.

As always a file called `merge.yml` has been created. Write the `name` and `on` attributes in the YAML file.

```yaml
name: Merge

on:
	push:
		branches: [release/*]

jobs:
	build:
		runs-on: ubuntu-latest
```

You might be able to figure out the `steps` on your own now, they are quite similar to previous examples.

```yaml
	steps:
	- uses: actions/checkout@v2
	- uses: everlytic/branch-merge@1.1.2
		with:
			github_token: ${{ github.token }}
			source_ref: ${{ github.ref }}
			target_branch: 'main'
			commit_message_template: '[Automated] Merged {source_ref} into target {target_branch}'
```

The new things with this action is the use of variables.

`${{ github.token }}` is a secret token in your repo which authorizes the action to commit certain actions, this variable is supplied by GitHub.

You can define your own variables by writing something like this:

```yaml
variables:
-	name: amount_of_apples
	value: 5
- name: name
	value: 'Daniel'
```

And then use them by writing `${{ variables.name }}` or `${{ variables.amount_of_apples }}` anywhere.