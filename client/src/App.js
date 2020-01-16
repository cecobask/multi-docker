import React from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';
import OtherPage from './OtherPage';
import Fib from './Fib'

function App() {
  return (
    <Router>
      <div className="App">
        <header className="App-header">
          <h1>Fibonacci calculator (Kubernetes version)</h1>
          <img src={logo} className="App-logo" alt="logo" />
          <Link to="/">Home</Link>
          <Link to="/otherpage">Other Page</Link>
          <div>
            <Route exact path="/" component={Fib}/>
            <Route path="/otherpage" component={OtherPage}/>
          </div>
        </header>
        <a
            className="App-link"
            href="https://reactjs.org"
            target="_blank"
            rel="noopener noreferrer"
          >
            Learn React
          </a>
      </div>
    </Router>
  );
}

export default App;
