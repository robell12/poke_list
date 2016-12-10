import React, { Component } from 'react';
import { Link } from 'react-router';

class Card extends Component {
  constructor(props) {
    super(props);

    this.state = { card: props.card }
  }

  addCard() {
    
  }

  render() {
    let card = this.state.card
    return(
      <div className="col s12 m4">
        <div className="card sticky-action">
          <div className="card-image waves-effect waves-block waves-light">
            <img className="activator" src={card.img}/>
          </div>
          <div className="card-content">
            <span className="card-title activator">Card Description<i className="material-icons right">info_outline</i></span>
            <br/>
          </div>
          <div className='card-action center'>
            <button className='btn' onClick={ () => {this.props.addCard(card.id)} }>Add To Collection</button>
          </div>
          <div className="card-reveal" id='pokemon'>
            <span className="card-title">Description<i className="material-icons right">close</i></span>
            <p>Power: {card.power}</p>
            <p>Value: ${card.value}</p>
            <p>Type: {card.kind}</p>
            <p>Description: {card.description}</p>
          </div>
        </div>
      </div>
    )
  }
}

export default Card;
