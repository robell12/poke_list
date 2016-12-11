import React from 'react';
import { Link } from 'react-router';
// link is imported from react to make the Link to work... Link is like an anchor

const NavBar = () => (
  <nav>
    <div className="nav-wrapper">
      <Link to='/' className='brand-logo'>PokeList</Link>
      <ul id="nav-mobile" className="right hide-on-med-and-down">
        <li><Link to='/UserCollection'>User Collections</Link></li>
        <li><Link to='/cards'>All Pokemon</Link></li>
        <li><Link to='/about'>About</Link></li>
        <li><Link to='http://www.pokemongo.com/' target="_blank">Pokemon-Go</Link></li>
      </ul>
    </div>
  </nav>
)

export default NavBar;
