Now imagine you want to automate linting to make sure the code follows the same style in the whole repo.

As previously, a new file called `linter.yml`{{}} has been created, this is your linter action.

Again, you can edit the file by opening it in vim with `vim linter.yml`{{exec}}

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
```{{copy}}

This time we make the action run on both `push` and `pull_request`{{}} events.

Automating a linter might sound hard but we can get help from the [GitHub marketplace](https://github.com/marketplace).

Searching the marketplace, we find the [Lint Action](https://github.com/marketplace/actions/lint-action).

Now it's as simple as using that action in our action.

```yaml
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: lts/-1
      - run: npm ci
      - uses: wearerequired/lint-action@v1
        with:
          eslint: true
          auto_fix: true
```{{copy}}

So what we did here is:

1. Checkout the branch.
1. Setup node version 14.
1. Install Node.js dependencies.
1. Run eslint with the Lint Action.

This action should now work as intended.


To push to the repo, use the following commands:

`cd ~/dd2482-is-bad`{{exec}}

`git add ./`{{exec}}

`git commit -m "add linter action"`{{exec}}

`git push`{{exec}}