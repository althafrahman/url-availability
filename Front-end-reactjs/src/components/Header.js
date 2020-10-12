import React from 'react'
import {Link} from "react-router-dom";
function Header(props) {
    return (
        <div className="header">
            <span className="user-name">{props.name} <i className="fas fa-caret-down"></i></span> &nbsp;
            <Link to="/" className="user-name" >Logout</Link>
        </div>
    )
}

export default Header
