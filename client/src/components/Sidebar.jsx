import React from "react";
//import { BrowserRouter, Route, Link } from "react-router-dom";

function Sidebar() {
    return (
            <div>
                <ul className="nav flex-column sticky-top pt-2 mt-3">
                    <li className="nav-item"><a className="nav-link" href="/dailytodo">Daily Todos</a></li>
                    <li className="nav-item"><a className="nav-link" href="/questions">Questions</a></li>
                </ul>
                <ul className="nav flex-column sticky-top pt-2 mt-3">
                    <li className="nav-item"><a className="nav-link" href="/settings">Settings</a></li>
                </ul> 
            </div>      
    );
}

export default Sidebar;