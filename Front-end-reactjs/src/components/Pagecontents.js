import React, { Component } from 'react'
import { BrowserRouter as Router, Switch, Route, Link, Redirect, useHistory } from "react-router-dom";
import axios from "axios";

export class Pagecontents extends Component {
    constructor(props) {
        super(props)

        this.state = {
            redirect: false,
            selUrl: 1,
            color: "green-text",
            isDelete : false
        }
    }

    updateHandler = (urlId) => {
        this.setState({
            redirect: true,
            selUrl: urlId,
        });
    }

    removeHandler = (urlId) => {
        axios.post(`https://getyoururlstatus.000webhostapp.com/deleteurl`, {
            id: urlId
        }).then(
            ress => {
                this.setState({
                    isDelete : true
                })
            }
        )
    }

    whichColor = (response_time, response, url) => {
        if (response_time < response) {
            console.log(`${url} takes more than ${response_time}`);
            return "red-text"
        }
        return "green-text"
    }

    render() {
        const pageData = this.props.data

        if(this.state.isDelete){
            return (
                <Redirect to="/addurl" />
            )
        }
        if (this.state.redirect) {
            return (
                <Redirect to={{
                    pathname: `/addurl/` + this.state.selUrl,
                    state: {
                    }
                }} />

            )
        }

        return (
            <React.Fragment>
                {
                    pageData.map(url => (
                        <tr key={url.id}>
                            <td>{url.url}</td>
                            <td>{url.response_time}</td>

                            <td className={this.whichColor(url.response_time, url.response, url.url)}>{url.response}</td>
                            <td><button className="btn btn-danger" onClick={() => this.removeHandler(url.id)}><i className="fas fa-trash"></i>  </button>&nbsp;<button className="btn btn-primary" onClick={() => this.updateHandler(url.id)}>Update</button></td>
                        </tr>
                    ))
                }
            </React.Fragment>
        )
    }
}

export default Pagecontents
