import React, { Fragment, useEffect, useState } from 'react';

function App() {
  
  const [landing, setlp] = useState([])

  const getLandigPage = async () => {
    try {
      
      const response = await fetch("http://localhost:5500/")
      const jsonData = await response.json()

      setlp(jsonData);
    } catch (err) {
        console.error(err.message);
    }
  }

  useEffect(() =>{
    getLandigPage();
  }, []);
  
console.log(landing);

  return (
  <Fragment>
    <header id="header" className="header fixed-top">
      <div className="container-fluid container-xl d-flex align-items-center justify-content-between">
        <a href="index.html" className="logo d-flex align-items-center">
            <img src="/imagens/logo.png" alt="" />
        </a>
        <nav id="navbar" className="navbar">
          <ul>
            <li>
              <a className="getstarted" href="/backoffice/">
              <span className="material-symbols-outlined">
                  admin_panel_settings
              </span>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </header>
      <section id="hero" className="hero d-flex align-items-center">
        <div className="container">
        <div className="row">
          <div className="col-lg-4 d-flex flex-column justify-content-center">
            <h1 data-aos="fade-up">{landing.hero_titulo}</h1>
            <h2 data-aos="fade-up" data-aos-delay={400}>
            {landing.hero_descricao}
            </h2>
          <div data-aos="fade-up" data-aos-delay={600}>
              <div className="android">
                <a href="https://play.google.com/store/apps">
                    <img src={landing.imagem_android} className="img-fluid" alt="" />
                </a>
              </div>
          </div>
          </div>
          <div
          className="col-lg-8 hero-img"
          data-aos="zoom-out"
          data-aos-delay={200}
          >
          <img src={landing.hero_imagem} className="img-fluid" alt="" />
          </div>
        </div>
        </div>
      </section>

    <main id="main">
      <section id="values" className="values">
        <div className="container" data-aos="fade-up">
          <header className="section-header">
            <h2>{landing.body_titulo}</h2>
            <p>{landing.body_descricao}</p>
          </header>
          <div className="row">
            <div className="col-lg-4" data-aos="fade-up" data-aos-delay={200}>
              <div className="box">
                <img
                    src={landing.fotografia_1}
                    className="img-fluid"
                    alt=""
                />
              </div>
            </div>
              <div
                className="col-lg-4 mt-4 mt-lg-0"
                data-aos="fade-up"
                data-aos-delay={400}
              >
              <div className="box">
                <img
                  src={landing.fotografia_2}
                  className="img-fluid"
                  alt=""
                />
              </div>
            </div>
            <div
                className="col-lg-4 mt-4 mt-lg-0"
                data-aos="fade-up"
                data-aos-delay={600}
              >
              <div className="box">
                <img
                    src={landing.fotografia_3}
                    className="img-fluid"
                    alt=""
              />
              </div>
            </div>
          </div>
        </div>
      </section>
    </main>
    <footer id="footer" className="footer">
      <div className="footer-top">
        <div className="container">
          <div className="row gy-4">
            <div className="col-lg-5 col-md-12 footer-info">
              <a href="index.html" className="logo d-flex align-items-center">
              <img src="/imagens/logo.png" alt="" />
              </a>
              <p>Pequeno texto descritivo sobre Cursar</p>
              <div className="social-links mt-3">
                <a href="https://facebook.com" className="facebook">
                    <i className="bi bi-facebook" />
                </a>
                <a href="https://instagram.com" className="instagram">
                    <i className="bi bi-instagram" />
                </a>
              </div>
            </div>
            <div className="col-lg-2 col-6 footer-links">
              <h4>LINKS ÚTEIS</h4>
              <ul>
                <li>
                    <i className="bi bi-chevron-right" /> <a href="/">Inicio</a>
                </li>
                <li>
                    <i className="bi bi-chevron-right" />{" "}
                    <a href="/politica-privacidade">Política de privacidade</a>
                </li>
                <li>
                    <i className="bi bi-chevron-right" />{" "}
                    <a href="/termos-condicoes">Termos e condições</a>
                </li>
              </ul>
            </div>
            <div className="col-lg-3 col-md-12 footer-contact text-center text-md-start">
              <h4>Contactos</h4>
              <p>
              Av. da Sustentabilidade, 45 <br />
              3500-500 Viseu
              <br />
              Portugal <br />
              <br />
              Telefone: <a href="tel:+351 232232232">+351 232232232</a>
              <br />
              Email: <a href="mailto:info@cursar.pt">info@cursar.pt</a>
              <br />
              </p>
            </div>
          </div>
        </div>
      </div>
      <div className="container">
        <div className="credits">
            Página desenvolvida por: Grupo 2 - PI4/TDM (2022/2023)
        </div>
      </div>
    </footer>

  </Fragment>
  );
}



export default App;
