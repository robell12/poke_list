import React from 'react';
import { Route, IndexRoute } from 'react-router';
import App from './containers/App';
import NoMatch from './components/NoMatch';
import Collection from './components/Collection';
import Cards from './components/Cards';
import UserCollection from './components/UserCollection'


export default (
  <Route>
    <Route path="/" component={App}>
      <IndexRoute component={UserCollection} />


        <Route path="/UserCollection" component={UserCollection} />
        <Route path='/cards' component={Collection} />
    </Route>
    <Route path="*" status={404} component={NoMatch}/>
  </Route>
)
