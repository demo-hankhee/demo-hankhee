import React, { Component } from 'react';
import { Route, NavLink, Switch } from 'react-router-dom';
import Members from './pages/members';
import Member from './pages/member';
import Home from './pages/home';
import Intro from './pages/intro';
import menuCss from './css/menu.css';

import toastr from 'toastr';
import toastrCss from './css/toastr.css';

const Navigation = () => (

    <nav className="navbar">
        <div className="container-fluid">
            <div className="navbar-header">
                {/* <span style={{ fontFamily: 'georgia' }} className="navbar-brand" >Demo-hankhee</span> */}
                <a href="/" style={{ fontFamily: 'georgia' }} className="navbar-brand" >Demo-hankhee</a>
            </div>
            <ul className="nav navbar-nav">
                <li><NavLink to='/home'><span className="glyphicon glyphicon-home" /> Getting start</NavLink></li>
                <li><NavLink to='/members'><span className="glyphicon glyphicon-user" /> Members</NavLink></li>
            </ul>
            {/* <ul className="nav navbar-nav navbar-right">
                <li><a href="#"><span className="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul> */}
        </div>
    </nav>
);

const Main = () => (
    <Switch>
        <Route exact path='/' component={Intro}></Route>
        <Route exact path='/src/web' component={Intro}></Route>
        <Route exact path='/home' component={Home}></Route>
        <Route exact path='/members' component={Members}></Route>
        <Route exact path='/member' component={Member}></Route>
        {/* <Route exact path='/login' component={Login}></Route> */}
        <Route path='/member/:id' component={Member}></Route>
    </Switch>
);

export default class App extends Component {

    componentDidMount(){
        toastr.options.timeOut = 1500;
        toastr.info('Welcom to the demo');
    }
    
    render() {
        // localStorage.clear();
        return (
            <div>
                <Navigation />
                <Main />
            </div>
        );
    }
}