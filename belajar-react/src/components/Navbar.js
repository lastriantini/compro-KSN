import React from 'react';
import { Link } from 'react-router-dom';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap-icons/font/bootstrap-icons.css';
import 'bootstrap-icons/font/bootstrap-icons.css';
import { navbar } from "../data.js";
// import './index.css';

function Navbar() {
  return (
      <nav className="navbar navbar-expand">
        {navbar.map((item) => (
      <div className="container-fluid">
        {/* ganti jd logo */}
        <img className="pt-3 navbar-brand logo" src={item.logo} alt="Description of the image" />
        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
        <div key="navbar" className="collapse navbar-collapse text-primary d-flex justify-content-end" id="navbarNav">
          <ul className="navbar-nav">
            <li className="nav-item" key={item.home}>
              <a className="nav-link active text-warning" aria-current="page" href="/">{item.home}</a>
            </li>
            <li className="nav-item" key={item.services}>
              <a className="nav-link text-light" href="#services">{item.services}</a>
            </li>
            <li className="nav-item" key={item.about}>
              <a className="nav-link text-light" href="#">{item.about}</a>
            </li>
            <li className="nav-item" key={item.testimonial}>
              <a className="nav-link text-light">{item.testimonial}</a>
            </li>
            <li className="nav-item" key={item.portfolio}>
              <a className="nav-link text-light">{item.portfolio}</a>
            </li>
            <li className="nav-item" key={item.contact}>
              <a className="nav-link text-light">{item.contact}</a>
            </li>
          </ul>
        </div>
      </div>
     ))}
    </nav>
  );
}

export default Navbar;
