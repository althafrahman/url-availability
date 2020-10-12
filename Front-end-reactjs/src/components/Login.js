import React, { Component } from 'react'
import Dashboard from './Dashboard';
import { connect } from "react-redux";
import { BrowserRouter as Router, Switch, Route, Link, Redirect, useHistory } from "react-router-dom";
import FirstPage from './FirstPage';



class Login extends Component {
    constructor(props) {
        super(props)

        this.state = {
            auth: false,
            data : []
        }
    }

    

    render() {
        var page = <FirstPage />
        return (
            <div>
                {page}
            </div>
        )
    }

    
}

export default Login
