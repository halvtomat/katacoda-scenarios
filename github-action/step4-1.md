To confirm that the tester is working, we should try to make it fail.

Create a new test in the repo that should fail.

Open vim with the following command:

`vim ~/dd2482-is-bad/src/App.test.js`{{exec}}

And then copy the following into the bottom of the file:

```js
test('failing test', () => {
    render(<App />);
    const element = screen.getByText(/gibberish that dont exist/i);
    expect(element).toBeInTheDocument();
})
```{{copy}}

This is a test that should fail, if you now push the new test to the repo, the tester action should fail.

To push to the repo, use the following commands:

`cd ~/dd2482-is-bad`{{exec}}

`git add ./`{{exec}}

`git commit -m "add failing test"`{{exec}}

`git push`{{exec}}

Hopefully your tester action works and now fails!
