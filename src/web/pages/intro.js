import React, { Component } from 'react';
import {Login} from '../components/login';
import readMe from './readme.txt';

export default class Intro extends Component {

    constructor(props){
        super(props);
        this.state = {
            readme : readMe
        }
    }

    render() {
        return (
            <div >
            <iframe srcDoc={ this.state.readme} scrolling="no" 
                style={{border:'none', position: 'relative', height: '1400px', width: '100%'}}> 
            
            </iframe>
            </div>
        );
    }
}
