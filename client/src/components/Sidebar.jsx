import React from "react";
//import { BrowserRouter, Route, Link } from "react-router-dom";

function Sidebar() {
    return (
            <div>
                <ul class="nav flex-column sticky-top pt-2 mt-3">
                    <li class="nav-item"><a class="nav-link" href="/dailytodo">Daily Todos</a></li>
                    <li class="nav-item"><a class="nav-link" href="/">More Questions</a></li>
                </ul>
                <ul class="nav flex-column sticky-top pt-2 mt-3">
                    <li class="nav-item"><a class="nav-link" href="/">Settings</a></li>
                </ul> 
            </div>      
    );
}

export default Sidebar;