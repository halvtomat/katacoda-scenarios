Now we will make a GitHub Action to automate testing.

Imagine your organization have a Node.js project and you want to make sure that the changes in all PRs to the main branch passes all tests.

This might be tedious to do manually, having to checkout the branch and running the tests before merging every time.

So you want to create a action to do it automatically.

A new file called `test.yml`{{}} has been created, this is your new action.

Open vim to edit the file with `vim test.yml`{{exec}}.

Since we want it to run tests on all PRs to the main branch, we can begin by writing:

```yaml
name: Auto tester

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]
```{{copy}}

Now the action will run on all PRs and pushes to the main branch, we just need to specify *what* it is supposed to do on these PRs.

We can do this by adding `jobs`{{}}.

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
```{{copy}}

And finally we need to specify the steps the job needs to do in order to run the tests.

```yaml
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-node@v3
        with:
          node-version: lts/-1
      - run: npm ci
      - run: npm test
```{{copy}}

In the first step we are using the `uses`{{}} attribute which specifies another action to use in our action, in this case we are using `actions/checkout@v3`{{}} which checks out the branch of the incoming PR for us. After that we use `actions/setup-node@v3`{{}} which sets up Node.js in our Ubuntu environment.

The next step is a `run`{{}} attribute which specifies a command to run, in this case `npm ci`{{}} which is a Node.js command to make a clean install.

And lastly we run `npm test`{{}} to run all tests in the branch.

If the tests fail, we will no longer get the green check mark next to the commit, it will now show up as a red cross mark.


To push to the repo, use the following commands:

`cd ~/dd2482-is-bad`{{exec}}

`git add ./`{{exec}}

`git commit -m "add tester action"`{{exec}}

`git push`{{exec}}

Now you should see your tester in action and all tests should pass!
