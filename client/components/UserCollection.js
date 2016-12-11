import React, { Component } from 'react';
import Card from './Card';

class UserCollection extends Component {
  constructor(props) {
    super(props);

    this.state = { cards: [] }
    this.displayCards = this.displayCards.bind(this)
  }
  componentDidMount() {
    $.ajax({
      url: '/api/collection',
      type: 'GET',
      dataType: 'JSON',
    }).done( cards => {
      this.setState({ cards });
    }).fail( data => {
      console.log(data);
    });
  }

  displayCards() {
    let cards = this.state.cards;
    if(cards.length) {
      return cards.map(card => {
        return(<Card key={card.id} card={card} userCollection={true}/>)
      })
    } else {
      return(
        <h3> No cards yet</h3>
      )
    }
  }

  render() {
    return(
      <div className='row'>
        { this.displayCards() }
      </div>
    );
  }
}

export default UserCollection;
