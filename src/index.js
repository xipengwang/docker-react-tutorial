// src/index.js
import React from "react";
import ReactDOM from "react-dom";
import Particles from './particle';

// Create an 'App' component that renders a regl frame and
// renders the triangle draw call
const App = () => {
  return (
    <Particles />
  );
};

// Mount React and render the App component
ReactDOM.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>,
  document.getElementById('root')
);
