import React, { Component } from 'react';
import {Login} from '../components/login';

export default class Home extends Component {

    render() {
        return (
            <div>
                <h1>Create new demo/Login</h1>
                <Login />
            </div>
        );
    }
}
