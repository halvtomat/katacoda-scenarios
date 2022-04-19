Now imagine you want to automate linting to make sure the code follows the same style in the whole repo.

As previously, create a new file `.gtihub/workflows/linter.yml` which is your linter action.

By now you know how to write the first few lines of YAML.

```yaml
name: Linter

on:
	push:
		branches: [main]
	pull_request:
		branches: [main]

jobs:
	build:
		runs-on: ubuntu-latest
```

This time we make the action run on both `push` and `pull_request` events.

Automating a linter might sound hard but we can get help from the [GitHub marketplace](https://github.com/marketplace).

Searching the marketplace, we find the [Lint Action](https://github.com/marketplace/actions/lint-action).

Now it's as simple as using that action in our action.

```yaml
	steps:
	- uses: action/checkout@v2
	- uses: actions/setup-node@v1
		with:
			node-version: 14
	- run: npm ci
	- uses: wearerequired/lint-action@v1
		with:
			eslint: true
			prettier: true
```

So what we did here is:

1. Checkout the branch.
1. Setup node version 14.
1. Install Node.js dependencies.
1. Run eslint and prettier with the Lint Action.

This action should now 