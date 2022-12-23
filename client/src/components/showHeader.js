import React,{ Fragment } from "react";

const ShowHeader = () => {
    return (
    <Fragment>
        <header id="header" className="header fixed-top">
            <div className="container-fluid container-xl d-flex align-items-center justify-content-between">
                <a href="index.html" className="logo d-flex align-items-center">
                <img src="assets/imagens/logo.png" alt="" />
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
    </Fragment>
    );
};

export default ShowHeadert;