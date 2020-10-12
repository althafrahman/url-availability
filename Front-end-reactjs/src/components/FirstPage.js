import React, { Component } from 'react'
import { BrowserRouter as Router, Switch, Route, Link, Redirect, useHistory } from "react-router-dom";
import axios from "axios";
import cors from "cors";
import Dashboard from './Dashboard';
import { connect } from "react-redux";
import { defaults } from "../redux/action";

class FirstPage extends Component {

    constructor(props) {
        super(props)

        this.state = {
            isRegister: false,
            auth: false,
            regName: "",
            regEmail: "",
            regPassword: "",
            logEmail: "",
            logPassword: "",
        }
    }

    registerClicked = event => {
        event.preventDefault()
        axios.post(`https://getyoururlstatus.000webhostapp.com/register`, {
            name: this.state.regName,
            email: this.state.regEmail,
            password: this.state.regPassword
        }).then(
            ress => {
                this.setState({
                    isRegister: false
                })
            }
        )
    }

    loginClicked = event => {
        event.preventDefault()
        axios.post(`https://getyoururlstatus.000webhostapp.com/login`, {
            email: this.state.logEmail,
            password: this.state.logPassword
        }).then(
            ress => {
                if (ress.data) {
                    // console.log(ress.data);
                    this.props.defaults(ress.data)
                    this.setState({
                        auth: true
                    })
                }
            }
        ).catch(
            error => {

                console.log(error);
            }
        )
    }

    signupHandler = () => {
        this.setState({
            isRegister: true
        })
    }

    signinHandler = () => {
        this.setState({
            isRegister: false
        })
    }

    changeHandler = event => {
        this.setState({
            [event.target.name]: event.target.value
        })
    }

    render() {
        if (this.state.auth) {
            return (
                <Redirect to =  "/dashboard" />
            )
        }

        if (this.state.isRegister) {
            return (
                <div>
                    <div className="login-page">
                        <div className="center-note">Stay Connected With US!! <br />
                            <div className="conntains">
                                <span className="login-text">Register</span>
                                <hr />
                                <form>
                                    <input type="text" value={this.state.regName} name="regName" className="login-cred" onChange={this.changeHandler} placeholder="Name" /> <br />
                                    <input type="text" value={this.state.regEmail} name="regEmail" className="login-cred" onChange={this.changeHandler} placeholder="Email" /> <br />
                                    <input type="password" value={this.state.regPassword} name="regPassword" className="login-cred" onChange={this.changeHandler} placeholder="Password" /> <br />
                                    <button type="submit" onClick={this.registerClicked} className="btn btn-primary" >Register</button><br />
                                </form>
                                <span className="sign-text">Already have an account? <a className="sign-link" onClick={this.signinHandler}>signip</a></span>
                            </div>

                        </div>
                    </div>
                </div>
            )
        }
        return (
            <div>
                <div className="login-page">
                    <div className="center-note">Stay Connected With US!! <br />
                        <div className="conntains">
                            <span className="login-text">Login</span>
                            <hr />
                            <form><input type="text" value={this.state.logEmail} name="logEmail" className="login-cred" onChange={this.changeHandler} placeholder="User Name" /> <br />
                                <input type="password" value={this.state.logPassword} name="logPassword" className="login-cred" onChange={this.changeHandler} placeholder="password" /> <br />
                                <button type="submit" onClick={this.loginClicked} className="btn btn-primary" >Login</button><br />
                            </form>

                            <span className="sign-text">Don't have an account? <a className="sign-link" onClick={this.signupHandler}>signup</a></span>
                        </div>

                    </div>
                </div>
            </div>
        )
    }
}

const mapDispatchToProps = (dispatch) => {
    return{
        defaults: (data) => dispatch(defaults(data)),
    }
} 

export default connect(null, mapDispatchToProps)(FirstPage)
