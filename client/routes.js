import React from 'react';
import { Route, IndexRoute } from 'react-router';
import App from './containers/App';
import NoMatch from './components/NoMatch';
import Collection from './components/Collection';
import Cards from './components/Cards'


export default (
  <Route>
    <Route path="/" component={App}>
      <IndexRoute component={Collection} />

        <Route path="/collection" component={Collection} />
        <Route path='/cards' component={Cards} />
    </Route>
    <Route path="*" status={404} component={NoMatch}/>
  </Route>
)
