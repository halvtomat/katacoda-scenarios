Now that you have your first GitHub Action you might be wondering what all the YAML attributes actually does.

- `name`{{}} decides the name of the action.
- `on`{{}} decides when the action should run, in our case on all `push`{{}} events.
- `jobs`{{}} is a list of jobs the action should run, in our case we only have one named `Explore-GitHub-Actions`{{}}.
- `runs-on`{{}} decides the environment the job should run in, in our case on `ubuntu-latest`{{}} which is the latest Ubuntu release.
- `steps`{{}} is a ordered list of all steps to complete a job.
- `run`{{}} decides what command to execute in the current step.

In the GitHub Actions Demo that you just pushed to your repo there are mostly `echo`{{}} commands which just writes some text to the output but there is also a `ls`{{}} command which prints the files in the workspace and a `uses actions/checkout@v3`{{}} which "uses" another action defined in another repo. This specific action "actions/checkout@v3" is an action that checks out the workspace of the branch that was pushed to.

Read about more different YAML attributes in GitHub Actions [here](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions).
