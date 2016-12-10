import React, { Component } from 'react';
import Card from './Card';

class Cards extends Component {
  displayCards() {
    let cards = this.props.cards;
    if(cards.length) {
      return cards.map( card => {
        return(<Card key={card.id} card={card} />);
      });
    } else {
      return(<h3>No Cards Found!</h3>);
    };
  }

  render() {
    return(
      <div className='row'>
        { this.displayCards() }
      </div>
    );
  }
}

export default Cards;
