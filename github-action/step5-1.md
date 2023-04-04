Now we should try to make our linter react by pushing some badly formatted code!

Open the App.js file in vim with the following command:

`vim ~/dd2482-is-bad/src/App.js`{{exec}}

Copy the following content into the file:

```js
import logo from './logo.svg';
import './App.css';
import logo from './logo.svg'

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
```{{copy}}

You might have noticed that the new code has a duplicated import which should trigger the linter.

Push the edits to the repo with the following commands:

`cd ~/dd2482-is-bad`{{exec}}

`git add ./`{{exec}}

`git commit -m "add badly formatted code"`{{exec}}

`git push`{{exec}}

Hopefully your linter will now fail and warn you that something is wrong with your code!
