import React, { Component } from 'react';

class Pets extends Component {

    render() {
        return (
            <div className="Pets">>
            {this.props.pets.map(pet =>
            <section>
            <div className="container">
              <div className="card">
                <div className="row">
                  <div className="col-md-6">
                    <div className="card-block">
                      <h4 className="card-title">{pet.name}, {pet.status}</h4>
                      <p className="card-text">{pet.species}</p>
                      <p className="card-text">{pet.date_lost}</p>
                      <a href="#" className="btn btn-primary">See Pet</a>
                    </div>
                  </div>
                  <div className="col-md-6">
                    <div className="card-img-bottom">
                    <img key={pet.id} src={pet.picture} alt=""/>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          )}
          </div>
  
      );
    }
};

export default Pets;