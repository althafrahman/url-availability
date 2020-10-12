import axios from 'axios';
import React, { Component } from 'react'
import ReactDOM from "react-dom";
import { connect } from "react-redux";
import Header from './Header';
import Sidebar from './Sidebar';


class UpComponent extends Component {
    constructor(props) {
        super(props)

        this.state = {
            message: "",
            response : "",
            isSet : false
        }
    }

    postHandler = () => {
        var url_id = 0;
        const {id} = this.props.match.params;
        if(id){
            url_id = id
        }
        axios.post(`https://getyoururlstatus.000webhostapp.com/urlsave`, {
            url: this.state.message,
            response: this.state.response,
            user_id : this.props.userId,
            id : url_id
        }).then(
            ress => {
                this.setState({
                    message: "",
                    response : ""
                })
            }
        )
    }

    messageHandler = (event) => {
        this.setState({
            [event.target.name]: event.target.value
        })
    }

    editUrl = (id) => {
        axios.post(`https://getyoururlstatus.000webhostapp.com/getUrlById`, {
            id : id
        }).then(
            ress => {
                this.setState({
                    message : ress.data.url,
                    response : ress.data.response_time,
                })
            }
        )
    }
    render() {
        const {id} = this.props.match.params;
        if(id && !this.state.isSet){
            this.setState({
                isSet : true
            })
            this.editUrl(id);
        }

        return (
            <div>
                <div className="wrapper">
                    <Sidebar />
                    <div className="main_content">
                        <Header name={this.props.name} />
                        <div className="info text-center">
                            <h3>Add a new URL here</h3>
                            <div className="forms-data">
                                <label htmlFor="message">URL</label>
                                <input type="text" className="message" name="message" value={this.state.message} onChange={this.messageHandler} /> <br />
                                <label htmlFor="response" >Response</label>
                                <input name="response" type="text" className="response" value={this.state.response} onChange={this.messageHandler} /> <br />
                                <button className="btn btn-primary" onClick={this.postHandler} >Post <i className="fas fa-paper-plane"></i></button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        )
    }
}

const mapStateToProps = (state) => {
    return {
        name : state.name,
        userId: state.userId
    }
}


export default connect(mapStateToProps, null)(UpComponent)
