import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap-icons/font/bootstrap-icons.css';

import React, { Component } from 'react';
import axios from 'axios';

class About extends Component {
  constructor(props) {
    super(props);
    this.state = {
      abouts: [], // Use "abouts" instead of "Abouts"
    };
  }

  componentDidMount() {
    axios.get("http://127.0.0.1:8000/api/about")
      .then(response => {
        const about = response.data.data;
        this.setState({ abouts: about }); // Use "abouts" instead of "Abouts"
      })
      .catch(error => {
        console.error("Error fetching data:", error);
      });
  }

  render() {
    return (
      <div className="about">
        <div className="page">
          <p className="text-warning ps-3 pt-4">• About Us •</p>
        </div>
        <div className="container">
          {this.state.abouts.map((item, index) => (
            <div className="top" key={index}>
              <div className="title-services text-light">
                <h1 className=''>{item.title}</h1>
              </div>
              <div className="description-service text-light w-50">
                <p>{item.description} </p>
              </div>
            </div>
          ))};
        </div>
        <div className='item-component'>
            <div>
                <img src="" alt=""/>
            </div>
        </div>
      </div>
    );
  }
}

export default About;
