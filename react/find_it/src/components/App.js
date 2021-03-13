import React from "react";
import "./App.css";
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';

import Dashboard from '../pages/Dashboard';
import Register from '../pages/Register';

function App() {
  return (
    <>
			<Router>
				<Switch>
					<div className="App">
						<Route exact path="/register" component={Register}></Route>
						<Route exact path="/dashboard" component={Dashboard} />
					</div>
				</Switch>
			</Router>
		</>

  );
}

export default App;
