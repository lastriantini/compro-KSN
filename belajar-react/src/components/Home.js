import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap-icons/font/bootstrap-icons.css';
import 'bootstrap-icons/font/bootstrap-icons.css';
import { home } from "../data.js";
import Services from './services.js';
import About from './About';

function Home() {
  return (
    <div>
    <div className="home">
      {home.map((homeItem) => (
      <div className="content">
        <div className="kiri mr-auto text-light text-left w-50">
          <h1 class = "pb-3">{ homeItem.title }</h1>
          <img className="wavy-line w-25" src="/img/wavy-line.png" />
          <p>{ homeItem.subTitle }</p>
        </div>
        <div className="img-kanan">
          <img src={ homeItem.img } />
        </div>
        <button className="">Start now</button>
          <img className="play-button ps-2" src="/img/play-button.png" />
      </div>
      ))}
    </div>
  <Services/>
  <About />
    </div>
  );
}
export default Home;