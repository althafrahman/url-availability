import React, { Component } from 'react'
import '../styles/sidebar.css'
import { connect } from "react-redux";
import { defaults } from "../redux/action";
import axios from 'axios';
import Pagecontents from './Pagecontents';
import Sidebar from './Sidebar';
import Header from './Header';
import { Redirect } from 'react-router';
import UpComponent from './UpComponent';

class Dashboard extends Component {
    constructor(props) {
        super(props)

        this.state = {
            addUrl: false,
            pageData: [],

        }
    }

    fetchUrl = () => {
        axios.post(`https://getyoururlstatus.000webhostapp.com/fetchurls`, {
            user_id: this.props.userId
        }).then(res => {
            
            this.setState({
                pageData: res.data
            });
        })
    }

    componentDidMount = () => {
        this.fetchUrl();
        setInterval(() => {
            this.fetchUrl();
        }, 300000);

    }

    urlHandler = () => {
        this.setState({
            addUrl: true,
        })
    }
    render() {
        if (this.state.addUrl) {
            return (
                <Redirect to="addurl" />
            )
        }
        return (
            < div >
                <div className="wrapper">
                    <Sidebar />
                    <div className="main_content">
                        <Header name={this.props.name} />
                        <div className="info">
                            <button className="btn btn-success btn-right" onClick={this.urlHandler}>Add URL</button>
                            <table className="table table-striped table-condensed">
                                <thead>
                                    <tr>
                                        <th className="list-head text-center" colSpan="4">Listing</th>
                                    </tr>
                                    <tr>
                                        <th>URL</th>
                                        <th>Threshold Time</th>
                                        <th>Response Time</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <Pagecontents data={this.state.pageData} />
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div >


        )
    }
}

const mapStateToProps = (state) => {
    console.log("***STATE****");
    console.log(state);
    return {
        name: state.name,
        userId: state.userId
    }
}


export default connect(mapStateToProps, null)(Dashboard)
