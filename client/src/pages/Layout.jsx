import React from "react";
import {Outlet} from "react-router-dom";
import Navbar from "../components/Navbar";
import Sidebar from "../components/Sidebar";

const Layout = () => {
    return (
        <>
            <Navbar />
            <div className="container-fluid" id="main">
                <div className="row row-offcanvas row-offcanvas-left vh-100">
                    <div className="col-md-3 col-lg-2 sidebar-offcanvas h-100 overflow-auto bg-light pl-0" id="sidebar" role="navigation">
                        <Sidebar />
                    </div>
                    <main className="col main pt-2 mt-0 h-100 overflow-auto">
                        <div className="container-fluid">
                            <h1 className="display-4 d-none d-sm-block">
                            </h1>
                            <Outlet />
                        </div>
                    </main>
                </div>
            </div>
        </>
    );
};

export default Layout;