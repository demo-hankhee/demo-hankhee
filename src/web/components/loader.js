import React, {Component} from 'react';

export default class Loader extends Component {
    render() {
        return(
            <div>
                <h2>{this.props.title}</h2>
                <p>{this.props.text}</p>
            </div>
        );
    }
}