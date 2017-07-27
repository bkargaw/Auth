import React from 'react';
import ReactDOM from 'react-dom'
import Root from './component/root.jsx'
// import configureStxore from './store/store'

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');
  ReactDOM.render(<Root  />, root);
});
