import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap-icons/font/bootstrap-icons.css';
import 'bootstrap-icons/font/bootstrap-icons.css';
import React, { Component } from 'react';
import axios from 'axios';

class Services extends Component {
  constructor(props) {
    super(props);
    this.state = {
      services: [],
    };
  }

  componentDidMount(){
        axios.get("http://127.0.0.1:8000/api/services")
          .then(response => {
            const service = response.data.data;
            this.setState({services: service});
          })
          .catch(error => {
            console.error("Error fetching data:", error);
          });
  }

  render() {
    return (
    <div className="services" id="services">
        <div className="page">
            <p className="text-warning ps-3">• Services •</p>
            <button className="btn text-light">See all service <i className="bi bi-arrow-right"></i></button>
        </div>
        <div className="container">
        {this.state.services.map((item, index) => (
          <div className="top">
            <div className="title-services text-light">
                <h2>{item.title}</h2>
            </div>
            <div className="description-service text-light w-50">
                <p>{item.description} </p>
            </div>
            </div>
        ))};
            <div className="card-container d-flex">
              {this.state.services.map((item, index) => (
                <div className="card border-warning text-light ms-3 me-3" key={index}>
                  <img src={item.image} alt={item.image} />
                  <div className="card-content">
                    <h5>{item.title_box}</h5>
                    <p>{item.description_box}</p>
                    <a className='text-warning' href="#"><p>Read More <i className="bi bi-arrow-right"></i></p></a>
                  </div>
                </div>
              ))};
            </div>
        </div>
    </div>
    );
  };
}
export default Services;