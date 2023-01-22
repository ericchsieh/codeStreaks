import React from "react";
//import { BrowserRouter, Route, Link } from "react-router-dom";

function Navbar() {
    return (
        <nav className="navbar bg-light border navbar navbar-expand-md navbar-light">
            <div className="container-fluid">
                <a className="navbar-brand" href="/">codeStreaks</a>
                <div className="collapse navbar-collapse" id="navbar">
                    <ul className="navbar-nav me-auto mt-0">
                        <li className="nav-item"><a className="nav-link" href="/"> </a></li>
                    </ul>
                    <ul className="navbar-nav ms-auto mt-2">
                        <li className="nav-item"><a className="nav-link" href="/">Log Out</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    );
}

export default Navbar;