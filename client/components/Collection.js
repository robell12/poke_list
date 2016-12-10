import React, { Component } from 'react';
import Cards from './Cards';

class Collection extends Component {
  constructor(props) {
    super(props);

    this.state = { cards: [] };
  }

  componentDidMount() {
    $.ajax({
      url: '/api/cards',
      type: 'GET',
      dataType: 'JSON',
    }).done( cards => {
      this.setState({ cards });
    }).fail( data => {
      console.log(data);
    });
  }

  render() {
    return(
      <div>
        <h3 className='center'> My Pokemons </h3>
        <h4 className='center'> Gotta Catch Them All </h4>
        <Cards cards={this.state.cards} />
      </div>
    );
  }
}

export default Collection;
