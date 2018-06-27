warning: LF will be replaced by CRLF in src/web/bundle.js.
The file will have its original line endings in your working directory.
[1mdiff --git a/src/web/app.js b/src/web/app.js[m
[1mindex da8f72a..d88c12d 100644[m
[1m--- a/src/web/app.js[m
[1m+++ b/src/web/app.js[m
[36m@@ -3,6 +3,8 @@[m [mimport { Route, NavLink, Switch } from 'react-router-dom';[m
 import Members from './pages/members';[m
 import Member from './pages/member';[m
 import Home from './pages/home';[m
[32m+[m[32mimport Intro from './pages/intro';[m
[32m+[m
 import menuCss from './css/menu.css';[m
 [m
 const Navigation = () => ([m
[36m@@ -25,6 +27,7 @@[m [mconst Navigation = () => ([m
 [m
 const Main = () => ([m
     <Switch>[m
[32m+[m[32m        <Route exact path='/' component={Home}></Route>[m
         <Route exact path='/home' component={Home}></Route>[m
         <Route exact path='/members' component={Members}></Route>[m
         <Route exact path='/member' component={Member}></Route>[m
[1mdiff --git a/src/web/bundle.js b/src/web/bundle.js[m
[1mindex 88333cd..52d0a59 100644[m
[1m--- a/src/web/bundle.js[m
[1m+++ b/src/web/bundle.js[m
[36m@@ -1431,7 +1431,7 @@[m [meval("var g;\n\n// This works in non-strict mode\ng = (function() {\n\treturn th[m
 /***/ (function(module, exports, __webpack_require__) {[m
 [m
 "use strict";[m
[31m-eval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _reactRouterDom = __webpack_require__(/*! react-router-dom */ \"./node_modules/react-router-dom/es/index.js\");\n\nvar _members = __webpack_require__(/*! ./pages/members */ \"./src/web/pages/members.js\");\n\nvar _members2 = _interopRequireDefault(_members);\n\nvar _member = __webpack_require__(/*! ./pages/member */ \"./src/web/pages/member.js\");\n\nvar _member2 = _interopRequireDefault(_member);\n\nvar _home = __webpack_require__(/*! ./pages/home */ \"./src/web/pages/home.js\");\n\nvar _home2 = _interopRequireDefault(_home);\n\nvar _menu = __webpack_require__(/*! ./css/menu.css */ \"./src/web/css/menu.css\");\n\nvar _menu2 = _interopRequireDefault(_menu);\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar Navigation = function Navigation() {\n    return _react2.default.createElement(\n        'nav',\n        { className: 'navbar' },\n        _react2.default.createElement(\n            'div',\n            { className: 'container-fluid' },\n            _react2.default.createElement(\n                'div',\n                { className: 'navbar-header' },\n                _react2.default.createElement(\n                    'span',\n                    { style: { fontFamily: 'georgia' }, className: 'navbar-brand' },\n                    'Demo-hankhee'\n                )\n            ),\n            _react2.default.createElement(\n                'ul',\n                { className: 'nav navbar-nav' },\n                _react2.default.createElement(\n                    'li',\n                    null,\n                    _react2.default.createElement(\n                        _reactRouterDom.NavLink,\n                        { to: '/home' },\n                        _react2.default.createElement('span', { className: 'glyphicon glyphicon-home' }),\n                        ' Getting start'\n                    )\n                ),\n                _react2.default.createElement(\n                    'li',\n                    null,\n                    _react2.default.createElement(\n                        _reactRouterDom.NavLink,\n                        { to: '/members' },\n                        _react2.default.createElement('span', { className: 'glyphicon glyphicon-user' }),\n                        ' Members'\n                    )\n                )\n            )\n        )\n    );\n};\n\nvar Main = function Main() {\n    return _react2.default.createElement(\n        _reactRouterDom.Switch,\n        null,\n        _react2.default.createElement(_reactRouterDom.Route, { exact: true, path: '/home', component: _home2.default }),\n        _react2.default.createElement(_reactRouterDom.Route, { exact: true, path: '/members', component: _members2.default }),\n        _react2.default.createElement(_reactRouterDom.Route, { exact: true, path: '/member', component: _member2.default }),\n        _react2.default.createElement(_reactRouterDom.Route, { path: '/member/:id', component: _member2.default })\n    );\n};\n\nvar App = function (_Component) {\n    _inherits(App, _Component);\n\n    function App() {\n        _classCallCheck(this, App);\n\n        return _possibleConstructorReturn(this, (App.__proto__ || Object.getPrototypeOf(App)).apply(this, arguments));\n    }\n\n    _createClass(App, [{\n        key: 'render',\n        value: function render() {\n            // localStorage.clear();\n            return _react2.default.createElement(\n                'div',\n                null,\n                _react2.default.createElement(Navigation, null),\n                _react2.default.createElement(Main, null)\n            );\n        }\n    }]);\n\n    return App;\n}(_react.Component);\n\nexports.default = App;\n\n//# sourceURL=webpack:///./src/web/app.js?");[m
[32m+[m[32meval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _reactRouterDom = __webpack_require__(/*! react-router-dom */ \"./node_modules/react-router-dom/es/index.js\");\n\nvar _members = __webpack_require__(/*! ./pages/members */ \"./src/web/pages/members.js\");\n\nvar _members2 = _interopRequireDefault(_members);\n\nvar _member = __webpack_require__(/*! ./pages/member */ \"./src/web/pages/member.js\");\n\nvar _member2 = _interopRequireDefault(_member);\n\nvar _home = __webpack_require__(/*! ./pages/home */ \"./src/web/pages/home.js\");\n\nvar _home2 = _interopRequireDefault(_home);\n\nvar _intro = __webpack_require__(/*! ./pages/intro */ \"./src/web/pages/intro.js\");\n\nvar _intro2 = _interopRequireDefault(_intro);\n\nvar _menu = __webpack_require__(/*! ./css/menu.css */ \"./src/web/css/menu.css\");\n\nvar _menu2 = _interopRequireDefault(_menu);\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar Navigation = function Navigation() {\n    return _react2.default.createElement(\n        'nav',\n        { className: 'navbar' },\n        _react2.default.createElement(\n            'div',\n            { className: 'container-fluid' },\n            _react2.default.createElement(\n                'div',\n                { className: 'navbar-header' },\n                _react2.default.createElement(\n                    'span',\n                    { style: { fontFamily: 'georgia' }, className: 'navbar-brand' },\n                    'Demo-hankhee'\n                )\n            ),\n            _react2.default.createElement(\n                'ul',\n                { className: 'nav navbar-nav' },\n                _react2.default.createElement(\n                    'li',\n                    null,\n                    _react2.default.createElement(\n                        _reactRouterDom.NavLink,\n                        { to: '/home' },\n                        _react2.default.createElement('span', { className: 'glyphicon glyphicon-home' }),\n                        ' Getting start'\n                    )\n                ),\n                _react2.default.createElement(\n                    'li',\n                    null,\n                    _react2.default.createElement(\n                        _reactRouterDom.NavLink,\n                        { to: '/members' },\n                        _react2.default.createElement('span', { className: 'glyphicon glyphicon-user' }),\n                        ' Members'\n                    )\n                )\n            )\n        )\n    );\n};\n\nvar Main = function Main() {\n    return _react2.default.createElement(\n        _reactRouterDom.Switch,\n        null,\n        _react2.default.createElement(_reactRouterDom.Route, { exact: true, path: '/', component: _home2.default }),\n        _react2.default.createElement(_reactRouterDom.Route, { exact: true, path: '/home', component: _home2.default }),\n        _react2.default.createElement(_reactRouterDom.Route, { exact: true, path: '/members', component: _members2.default }),\n        _react2.default.createElement(_reactRouterDom.Route, { exact: true, path: '/member', component: _member2.default }),\n        _react2.default.createElement(_reactRouterDom.Route, { path: '/member/:id', component: _member2.default })\n    );\n};\n\nvar App = function (_Component) {\n    _inherits(App, _Component);\n\n    function App() {\n        _classCallCheck(this, App);\n\n        return _possibleConstructorReturn(this, (App.__proto__ || Object.getPrototypeOf(App)).apply(this, arguments));\n    }\n\n    _createClass(App, [{\n        key: 'render',\n        value: function render() {\n            // localStorage.clear();\n            return _react2.default.createElement(\n                'div',\n                null,\n                _react2.default.createElement(Navigation, null),\n                _react2.default.createElement(Main, null)\n            );\n        }\n    }]);\n\n    return App;\n}(_react.Component);\n\nexports.default = App;\n\n//# sourceURL=webpack:///./src/web/app.js?");[m
 [m
 /***/ }),[m
 [m
[36m@@ -1467,7 +1467,7 @@[m [meval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});[m
 /***/ (function(module, exports, __webpack_require__) {[m
 [m
 "use strict";[m
[31m-eval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\nexports.Login = undefined;\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _inputs = __webpack_require__(/*! ./inputs */ \"./src/web/components/inputs.js\");\n\nvar _reactRouterDom = __webpack_require__(/*! react-router-dom */ \"./node_modules/react-router-dom/es/index.js\");\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar axios = __webpack_require__(/*! axios */ \"./node_modules/axios/index.js\");\nvar db = __webpack_require__(/*! ../database/mocking */ \"./src/web/database/mocking.js\");\n\nvar Login = exports.Login = function (_Component) {\n    _inherits(Login, _Component);\n\n    function Login(props) {\n        _classCallCheck(this, Login);\n\n        var _this = _possibleConstructorReturn(this, (Login.__proto__ || Object.getPrototypeOf(Login)).call(this, props));\n\n        _this.state = {\n            redirect: false,\n            name: 'user114',\n            password: 'pass114',\n            hasValidToken: false\n        };\n\n        _this.login = _this.login.bind(_this);\n        _this.logout = _this.logout.bind(_this);\n        _this.createNewDemo = _this.createNewDemo.bind(_this);\n        return _this;\n    }\n\n    _createClass(Login, [{\n        key: 'componentWillMount',\n        value: function componentWillMount() {\n            var _this2 = this;\n\n            var token = localStorage.getItem('token');\n            if (token) {\n                axios({\n                    method: 'GET',\n                    url: '/api/misc/verifyToken',\n                    headers: {\n                        'content-Type': 'application/json',\n                        authorization: 'bearer ' + token\n                    }\n                }).then(function (response) {\n                    _this2.setState({ hasValidToken: true });\n                }).catch(function (err) {\n                    localStorage.removeItem('token');\n                });\n            }\n        }\n    }, {\n        key: 'login',\n        value: function login() {\n            var _this3 = this;\n\n            axios.post('/api/login', {\n                name: this.state.name,\n                password: this.state.password\n            }).then(function (response) {\n                localStorage.setItem('token', response.data.token);\n                // this.setState({ redirect: true });\n                _this3.setState({ hasValidToken: true });\n            });\n        }\n    }, {\n        key: 'logout',\n        value: function logout() {\n            localStorage.removeItem('token');\n            this.setState({ hasValidToken: false });\n        }\n    }, {\n        key: 'createNewDemo',\n        value: function createNewDemo() {\n            var _this4 = this;\n\n            this.logout();\n            db.createDemo().then(function (user) {\n                _this4.setState({ name: user.name, password: user.password });\n            });\n        }\n    }, {\n        key: 'render',\n        value: function render() {\n            var _this5 = this;\n\n            // if (this.state.redirect) {\n            //     return <Redirect to='/home' />\n            // }\n\n            var loginPart = void 0;\n            if (!this.state.hasValidToken) {\n                loginPart = _react2.default.createElement(\n                    'div',\n                    { className: 'form-group' },\n                    _react2.default.createElement(_inputs.TextInput, { id: 'name', caption: 'Name', value: this.state.name,\n                        onChange: function onChange(e) {\n                            _this5.setState({ name: e.target.value });\n                        } }),\n                    _react2.default.createElement(_inputs.TextInput, { id: 'password', caption: 'Password', value: this.state.password,\n                        onChange: function onChange(e) {\n                            _this5.setState({ password: e.target.value });\n                        } }),\n                    _react2.default.createElement(\n                        'button',\n                        { className: 'btn btn-default', onClick: function onClick() {\n                                return _this5.login();\n                            } },\n                        _react2.default.createElement('span', { className: 'glyphicon glyphicon-log-in' }),\n                        ' Login'\n                    )\n                );\n            } else {\n                loginPart = _react2.default.createElement(\n                    'div',\n                    { className: 'form-group' },\n                    _react2.default.createElement(\n                        'button',\n                        { className: 'btn btn-default', onClick: function onClick() {\n                                return _this5.logout();\n                            } },\n                        'Logout ',\n                        _react2.default.createElement('span', { className: 'glyphicon glyphicon-log-out' })\n                    )\n                );\n            }\n\n            return _react2.default.createElement(\n                'div',\n                null,\n                _react2.default.createElement(\n                    'div',\n                    { className: 'form-group' },\n                    _react2.default.createElement(\n                        'p',\n                        null,\n                        'Crate new demo here'\n                    ),\n                    _react2.default.createElement(\n                        'button',\n                        { className: 'btn btn-default', onClick: function onClick() {\n                                return _this5.createNewDemo();\n                            } },\n                        ' Create new demo'\n                    )\n                ),\n                loginPart\n            );\n        }\n    }]);\n\n    return Login;\n}(_react.Component);\n\n//# sourceURL=webpack:///./src/web/components/login.js?");[m
[32m+[m[32meval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\nexports.Login = undefined;\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _inputs = __webpack_require__(/*! ./inputs */ \"./src/web/components/inputs.js\");\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar axios = __webpack_require__(/*! axios */ \"./node_modules/axios/index.js\");\nvar db = __webpack_require__(/*! ../database/db */ \"./src/web/database/db.js\");\n\nvar Login = exports.Login = function (_Component) {\n    _inherits(Login, _Component);\n\n    function Login(props) {\n        _classCallCheck(this, Login);\n\n        var _this = _possibleConstructorReturn(this, (Login.__proto__ || Object.getPrototypeOf(Login)).call(this, props));\n\n        _this.state = {\n            redirect: false,\n            name: 'user114',\n            password: 'pass114',\n            hasValidToken: false\n        };\n\n        _this.login = _this.login.bind(_this);\n        _this.logout = _this.logout.bind(_this);\n        _this.createNewDemo = _this.createNewDemo.bind(_this);\n        return _this;\n    }\n\n    _createClass(Login, [{\n        key: 'componentWillMount',\n        value: function componentWillMount() {\n            var _this2 = this;\n\n            var token = localStorage.getItem('token');\n            if (token) {\n                axios({\n                    method: 'GET',\n                    url: '/api/misc/verifyToken',\n                    headers: {\n                        'content-Type': 'application/json',\n                        authorization: 'bearer ' + token\n                    }\n                }).then(function (response) {\n                    _this2.setState({ hasValidToken: true });\n                }).catch(function (err) {\n                    localStorage.removeItem('token');\n                });\n            }\n        }\n    }, {\n        key: 'login',\n        value: function login() {\n            var _this3 = this;\n\n            axios.post('/api/login', {\n                name: this.state.name,\n                password: this.state.password\n            }).then(function (response) {\n                localStorage.setItem('token', response.data.token);\n                // this.setState({ redirect: true });\n                _this3.setState({ hasValidToken: true });\n            });\n        }\n    }, {\n        key: 'logout',\n        value: function logout() {\n            localStorage.removeItem('token');\n            this.setState({ hasValidToken: false });\n        }\n    }, {\n        key: 'createNewDemo',\n        value: function createNewDemo() {\n            var _this4 = this;\n\n            this.logout();\n            db.createDemo().then(function (user) {\n                _this4.setState({ name: user.name, password: user.password });\n            });\n        }\n    }, {\n        key: 'render',\n        value: function render() {\n            var _this5 = this;\n\n            // if (this.state.redirect) {\n            //     return <Redirect to='/home' />\n            // }\n\n            var loginPart = void 0;\n            if (!this.state.hasValidToken) {\n                loginPart = _react2.default.createElement(\n                    'div',\n                    { className: 'form-group' },\n                    _react2.default.createElement(_inputs.TextInput, { id: 'name', caption: 'Name', value: this.state.name,\n                        onChange: function onChange(e) {\n                            _this5.setState({ name: e.target.value });\n                        } }),\n                    _react2.default.createElement(_inputs.TextInput, { id: 'password', caption: 'Password', value: this.state.password,\n                        onChange: function onChange(e) {\n                            _this5.setState({ password: e.target.value });\n                        } }),\n                    _react2.default.createElement(\n                        'button',\n                        { className: 'btn btn-default', onClick: function onClick() {\n                                return _this5.login();\n                            } },\n                        _react2.default.createElement('span', { className: 'glyphicon glyphicon-log-in' }),\n                        ' Login'\n                    )\n                );\n            } else {\n                loginPart = _react2.default.createElement(\n                    'div',\n                    { className: 'form-group' },\n                    _react2.default.createElement(\n                        'button',\n                        { className: 'btn btn-default', onClick: function onClick() {\n                                return _this5.logout();\n                            } },\n                        'Logout ',\n                        _react2.default.createElement('span', { className: 'glyphicon glyphicon-log-out' })\n                    )\n                );\n            }\n\n            return _react2.default.createElement(\n                'div',\n                null,\n                _react2.default.createElement(\n                    'div',\n                    { className: 'form-group' },\n                    _react2.default.createElement(\n                        'p',\n                        null,\n                        'Crate new demo here'\n                    ),\n                    _react2.default.createElement(\n                        'button',\n                        { className: 'btn btn-default', onClick: function onClick() {\n                                return _this5.createNewDemo();\n                            } },\n                        ' Create new demo'\n                    )\n                ),\n                loginPart\n            );\n        }\n    }]);\n\n    return Login;\n}(_react.Component);\n\n//# sourceURL=webpack:///./src/web/components/login.js?");[m
 [m
 /***/ }),[m
 [m
[36m@@ -1482,15 +1482,15 @@[m [meval("\nvar content = __webpack_require__(/*! !../../../node_modules/css-loader![m
 [m
 /***/ }),[m
 [m
[31m-/***/ "./src/web/database/mocking.js":[m
[31m-/*!*************************************!*\[m
[31m-  !*** ./src/web/database/mocking.js ***![m
[31m-  \*************************************/[m
[32m+[m[32m/***/ "./src/web/database/db.js":[m
[32m+[m[32m/*!********************************!*\[m
[32m+[m[32m  !*** ./src/web/database/db.js ***![m
[32m+[m[32m  \********************************/[m
 /*! no static exports found */[m
 /***/ (function(module, exports, __webpack_require__) {[m
 [m
 "use strict";[m
[31m-eval("\n\nvar q = __webpack_require__(/*! q */ \"./node_modules/q/q.js\");\nvar axios = __webpack_require__(/*! axios */ \"./node_modules/axios/index.js\");\n\nvar createHeader = function createHeader() {\n    var token = localStorage.getItem('token');\n    return {\n        'content-Type': 'application/json',\n        authorization: 'bearer ' + token\n    };\n};\n\nmodule.exports.createDemo = function () {\n    var deferred = q.defer();\n    axios.post('/api/misc/createdemo').then(function (user) {\n        deferred.resolve(user.data);\n    });\n\n    return deferred.promise;\n};\n\nmodule.exports.getAccounts = function () {\n    var deferred = q.defer();\n    var headers = createHeader();\n    axios({\n        method: 'GET',\n        url: '/api/member/search',\n        headers: headers\n    }).then(function (members) {\n        deferred.resolve(members.data);\n    });\n\n    return deferred.promise;\n};\n\nmodule.exports.getAccount = function (_id) {\n    var deferred = q.defer();\n    var headers = createHeader();\n    axios({\n        method: 'GET',\n        url: '/api/member/search',\n        params: { _id: _id },\n        headers: headers\n    }).then(function (members) {\n        deferred.resolve(members.data);\n    });\n\n    return deferred.promise;\n};\n\nmodule.exports.addAccount = function (member) {\n    var deferred = q.defer();\n    var headers = createHeader();\n\n    axios({\n        method: 'POST',\n        url: '/api/member/create',\n        data: member,\n        headers: headers\n    }).then(function (member) {\n        deferred.resolve(member);\n    }).catch(function (err) {\n        deferred.reject(err);\n    });\n    return deferred.promise;\n};\n\nmodule.exports.saveAccount = function (member) {\n    var deferred = q.defer();\n    var headers = createHeader();\n\n    axios({\n        method: 'POST',\n        url: '/api/member/update',\n        data: member,\n        headers: headers\n    }).then(function (member) {\n        deferred.resolve(member);\n    }).catch(function (err) {\n        deferred.reject(err);\n    });\n    return deferred.promise;\n};\n\nmodule.exports.deleteAccount = function (_id) {\n    var headers = createHeader();\n    var deferred = q.defer();\n\n    axios({\n        method: 'POST',\n        url: '/api/member/delete',\n        data: { _id: _id },\n        headers: headers\n    }).then(function () {\n        deferred.resolve();\n    }).catch(function (err) {\n        deferred.reject(err);\n    });\n\n    return deferred.promise;\n};\n\n//# sourceURL=webpack:///./src/web/database/mocking.js?");[m
[32m+[m[32meval("\n\nvar q = __webpack_require__(/*! q */ \"./node_modules/q/q.js\");\nvar axios = __webpack_require__(/*! axios */ \"./node_modules/axios/index.js\");\n\nvar createHeader = function createHeader() {\n    var token = localStorage.getItem('token');\n    return {\n        'content-Type': 'application/json',\n        authorization: 'bearer ' + token\n    };\n};\n\nmodule.exports.createDemo = function () {\n    var deferred = q.defer();\n    axios.post('/api/misc/createdemo').then(function (user) {\n        deferred.resolve(user.data);\n    });\n\n    return deferred.promise;\n};\n\nmodule.exports.getMembers = function () {\n    var deferred = q.defer();\n    var headers = createHeader();\n    axios({\n        method: 'GET',\n        url: '/api/member/search',\n        headers: headers\n    }).then(function (members) {\n        deferred.resolve(members.data);\n    });\n\n    return deferred.promise;\n};\n\nmodule.exports.getMember = function (_id) {\n    var deferred = q.defer();\n    var headers = createHeader();\n    axios({\n        method: 'GET',\n        url: '/api/member/search',\n        params: { _id: _id },\n        headers: headers\n    }).then(function (members) {\n        deferred.resolve(members.data);\n    });\n\n    return deferred.promise;\n};\n\nmodule.exports.addMember = function (member) {\n    var deferred = q.defer();\n    var headers = createHeader();\n\n    axios({\n        method: 'POST',\n        url: '/api/member/create',\n        data: member,\n        headers: headers\n    }).then(function (member) {\n        deferred.resolve(member);\n    }).catch(function (err) {\n        deferred.reject(err);\n    });\n    return deferred.promise;\n};\n\nmodule.exports.saveMember = function (member) {\n    var deferred = q.defer();\n    var headers = createHeader();\n\n    axios({\n        method: 'POST',\n        url: '/api/member/update',\n        data: member,\n        headers: headers\n    }).then(function (member) {\n        deferred.resolve(member);\n    }).catch(function (err) {\n        deferred.reject(err);\n    });\n    return deferred.promise;\n};\n\nmodule.exports.deleteMember = function (_id) {\n    var headers = createHeader();\n    var deferred = q.defer();\n\n    axios({\n        method: 'POST',\n        url: '/api/member/delete',\n        data: { _id: _id },\n        headers: headers\n    }).then(function () {\n        deferred.resolve();\n    }).catch(function (err) {\n        deferred.reject(err);\n    });\n\n    return deferred.promise;\n};\n\n//# sourceURL=webpack:///./src/web/database/db.js?");[m
 [m
 /***/ }),[m
 [m
[36m@@ -1514,7 +1514,19 @@[m [meval("\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/i[m
 /***/ (function(module, exports, __webpack_require__) {[m
 [m
 "use strict";[m
[31m-eval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _login = __webpack_require__(/*! ../components/login */ \"./src/web/components/login.js\");\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar Home = function (_Component) {\n    _inherits(Home, _Component);\n\n    function Home() {\n        _classCallCheck(this, Home);\n\n        return _possibleConstructorReturn(this, (Home.__proto__ || Object.getPrototypeOf(Home)).apply(this, arguments));\n    }\n\n    _createClass(Home, [{\n        key: 'render',\n        value: function render() {\n            return _react2.default.createElement(\n                'div',\n                null,\n                _react2.default.createElement(\n                    'h1',\n                    null,\n                    'Read me'\n                ),\n                _react2.default.createElement(_login.Login, null)\n            );\n        }\n    }]);\n\n    return Home;\n}(_react.Component);\n\nexports.default = Home;\n\n\nvar styles = {\n    button: {\n        marginTop: 10,\n        marginBottom: 10\n    }\n};\n\n//# sourceURL=webpack:///./src/web/pages/home.js?");[m
[32m+[m[32meval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _login = __webpack_require__(/*! ../components/login */ \"./src/web/components/login.js\");\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar Home = function (_Component) {\n    _inherits(Home, _Component);\n\n    function Home() {\n        _classCallCheck(this, Home);\n\n        return _possibleConstructorReturn(this, (Home.__proto__ || Object.getPrototypeOf(Home)).apply(this, arguments));\n    }\n\n    _createClass(Home, [{\n        key: 'render',\n        value: function render() {\n            return _react2.default.createElement(\n                'div',\n                null,\n                _react2.default.createElement(\n                    'h1',\n                    null,\n                    'Create new demo/Login'\n                ),\n                _react2.default.createElement(_login.Login, null)\n            );\n        }\n    }]);\n\n    return Home;\n}(_react.Component);\n\nexports.default = Home;\n\n//# sourceURL=webpack:///./src/web/pages/home.js?");[m
[32m+[m
[32m+[m[32m/***/ }),[m
[32m+[m
[32m+[m[32m/***/ "./src/web/pages/intro.js":[m
[32m+[m[32m/*!********************************!*\[m
[32m+[m[32m  !*** ./src/web/pages/intro.js ***![m
[32m+[m[32m  \********************************/[m
[32m+[m[32m/*! no static exports found */[m
[32m+[m[32m/***/ (function(module, exports, __webpack_require__) {[m
[32m+[m
[32m+[m[32m"use strict";[m
[32m+[m[32meval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _login = __webpack_require__(/*! ../components/login */ \"./src/web/components/login.js\");\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar Intro = function (_Component) {\n    _inherits(Intro, _Component);\n\n    function Intro() {\n        _classCallCheck(this, Intro);\n\n        return _possibleConstructorReturn(this, (Intro.__proto__ || Object.getPrototypeOf(Intro)).apply(this, arguments));\n    }\n\n    _createClass(Intro, [{\n        key: 'render',\n        value: function render() {\n            return _react2.default.createElement(\n                'div',\n                null,\n                _react2.default.createElement(\n                    'h1',\n                    null,\n                    'Create new demo/Login'\n                ),\n                _react2.default.createElement(_login.Login, null)\n            );\n        }\n    }]);\n\n    return Intro;\n}(_react.Component);\n\nexports.default = Intro;\n\n//# sourceURL=webpack:///./src/web/pages/intro.js?");[m
 [m
 /***/ }),[m
 [m
[36m@@ -1526,7 +1538,7 @@[m [meval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});[m
 /***/ (function(module, exports, __webpack_require__) {[m
 [m
 "use strict";[m
[31m-eval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\n\nvar _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _reactRouter = __webpack_require__(/*! react-router */ \"./node_modules/react-router/es/index.js\");\n\nvar _inputs = __webpack_require__(/*! ../components/inputs */ \"./src/web/components/inputs.js\");\n\nvar _buttons = __webpack_require__(/*! ../components/buttons */ \"./src/web/components/buttons.js\");\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar db = __webpack_require__(/*! ../database/mocking */ \"./src/web/database/mocking.js\");\n\nvar Member = function (_Component) {\n    _inherits(Member, _Component);\n\n    function Member(props) {\n        _classCallCheck(this, Member);\n\n        var _this = _possibleConstructorReturn(this, (Member.__proto__ || Object.getPrototypeOf(Member)).call(this, props));\n\n        _this.id = props.match.params.id;\n        _this.isNew = !_this.id;\n        _this.isUpdate = !!_this.id;\n        _this.state = {\n            member: {},\n            backToMembers: false\n        };\n\n        _this.save = _this.save.bind(_this);\n        _this.cancel = _this.cancel.bind(_this);\n        return _this;\n    }\n\n    _createClass(Member, [{\n        key: 'componentWillMount',\n        value: function componentWillMount() {\n            var _this2 = this;\n\n            //axios\n            console.log(this.id);\n            if (this.isUpdate) {\n                db.getAccount(this.id).then(function (member) {\n                    _this2.setState({ member: member });\n                });\n            }\n        }\n    }, {\n        key: 'save',\n        value: function save() {\n            var _this3 = this;\n\n            if (this.isNew) {\n                db.addAccount(this.state.member).then(function () {\n                    return _this3.setState({ backToMembers: true });\n                });\n            } else {\n                db.saveAccount(this.state.member).then(function () {\n                    return _this3.setState({ backToMembers: true });\n                });\n            }\n        }\n    }, {\n        key: 'cancel',\n        value: function cancel() {\n            this.setState({ backToMembers: true });\n        }\n    }, {\n        key: 'render',\n        value: function render() {\n            var _this4 = this;\n\n            if (this.state.backToMembers) {\n                return _react2.default.createElement(_reactRouter.Redirect, { to: '/members' });\n            }\n\n            return _react2.default.createElement(\n                'div',\n                null,\n                _react2.default.createElement(_buttons.SaveButton, { onClick: this.save }),\n                _react2.default.createElement(_buttons.CancelButton, { onClick: this.cancel }),\n                _react2.default.createElement(_inputs.TextInput, { id: 'name', caption: 'Name', value: this.state.member.name,\n                    onChange: function onChange(e) {\n                        return _this4.setState({ member: _extends({}, _this4.state.member, { name: e.target.value }) });\n                    }\n                }),\n                _react2.default.createElement(_inputs.TextInput, { id: 'emai', caption: 'Email', value: this.state.member.email,\n                    onChange: function onChange(e) {\n                        return _this4.setState({ member: _extends({}, _this4.state.member, { email: e.target.value }) });\n                    }\n                }),\n                _react2.default.createElement(_inputs.TextInput, { id: 'phone', caption: 'Phone', value: this.state.member.phone,\n                    onChange: function onChange(e) {\n                        return _this4.setState({ member: _extends({}, _this4.state.member, { phone: e.target.value }) });\n                    }\n                }),\n                _react2.default.createElement(_inputs.TextInput, { id: 'website', caption: 'Web site', value: this.state.member.website,\n                    onChange: function onChange(e) {\n                        return _this4.setState({ member: _extends({}, _this4.state.member, { website: e.target.value }) });\n                    }\n                })\n            );\n        }\n    }]);\n\n    return Member;\n}(_react.Component);\n\nexports.default = Member;\n\n\nvar styles = {\n    button: {\n        marginTop: 10,\n        marginBottom: 10\n    }\n};\n\n//# sourceURL=webpack:///./src/web/pages/member.js?");[m
[32m+[m[32meval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});\n\nvar _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _reactRouter = __webpack_require__(/*! react-router */ \"./node_modules/react-router/es/index.js\");\n\nvar _inputs = __webpack_require__(/*! ../components/inputs */ \"./src/web/components/inputs.js\");\n\nvar _buttons = __webpack_require__(/*! ../components/buttons */ \"./src/web/components/buttons.js\");\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar db = __webpack_require__(/*! ../database/db */ \"./src/web/database/db.js\");\n\nvar Member = function (_Component) {\n    _inherits(Member, _Component);\n\n    function Member(props) {\n        _classCallCheck(this, Member);\n\n        var _this = _possibleConstructorReturn(this, (Member.__proto__ || Object.getPrototypeOf(Member)).call(this, props));\n\n        _this.id = props.match.params.id;\n        _this.isNew = !_this.id;\n        _this.isUpdate = !!_this.id;\n        _this.state = {\n            member: {},\n            backToMembers: false\n        };\n\n        _this.save = _this.save.bind(_this);\n        _this.cancel = _this.cancel.bind(_this);\n        return _this;\n    }\n\n    _createClass(Member, [{\n        key: 'componentWillMount',\n        value: function componentWillMount() {\n            var _this2 = this;\n\n            if (this.isUpdate) {\n                db.getMember(this.id).then(function (member) {\n                    _this2.setState({ member: member });\n                });\n            }\n        }\n    }, {\n        key: 'save',\n        value: function save() {\n            var _this3 = this;\n\n            if (this.isNew) {\n                db.addMember(this.state.member).then(function () {\n                    return _this3.setState({ backToMembers: true });\n                });\n            } else {\n                db.saveMember(this.state.member).then(function () {\n                    return _this3.setState({ backToMembers: true });\n                });\n            }\n        }\n    }, {\n        key: 'cancel',\n        value: function cancel() {\n            this.setState({ backToMembers: true });\n        }\n    }, {\n        key: 'render',\n        value: function render() {\n            var _this4 = this;\n\n            if (this.state.backToMembers) {\n                return _react2.default.createElement(_reactRouter.Redirect, { to: '/members' });\n            }\n\n            return _react2.default.createElement(\n                'div',\n                null,\n                _react2.default.createElement(_buttons.SaveButton, { onClick: this.save }),\n                _react2.default.createElement(_buttons.CancelButton, { onClick: this.cancel }),\n                _react2.default.createElement(_inputs.TextInput, { id: 'name', caption: 'Name', value: this.state.member.name,\n                    onChange: function onChange(e) {\n                        return _this4.setState({ member: _extends({}, _this4.state.member, { name: e.target.value }) });\n                    }\n                }),\n                _react2.default.createElement(_inputs.TextInput, { id: 'emai', caption: 'Email', value: this.state.member.email,\n                    onChange: function onChange(e) {\n                        return _this4.setState({ member: _extends({}, _this4.state.member, { email: e.target.value }) });\n                    }\n                }),\n                _react2.default.createElement(_inputs.TextInput, { id: 'phone', caption: 'Phone', value: this.state.member.phone,\n                    onChange: function onChange(e) {\n                        return _this4.setState({ member: _extends({}, _this4.state.member, { phone: e.target.value }) });\n                    }\n                }),\n                _react2.default.createElement(_inputs.TextInput, { id: 'website', caption: 'Web site', value: this.state.member.website,\n                    onChange: function onChange(e) {\n                        return _this4.setState({ member: _extends({}, _this4.state.member, { website: e.target.value }) });\n                    }\n                })\n            );\n        }\n    }]);\n\n    return Member;\n}(_react.Component);\n\nexports.default = Member;\n\n//# sourceURL=webpack:///./src/web/pages/member.js?");[m
 [m
 /***/ }),[m
 [m
[36m@@ -1538,7 +1550,7 @@[m [meval("\n\nObject.defineProperty(exports, \"__esModule\", {\n    value: true\n});[m
 /***/ (function(module, exports, __webpack_require__) {[m
 [m
 "use strict";[m
[31m-eval("\n\nObject.defineProperty(exports, \"__esModule\", {\n  value: true\n});\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _reactTable = __webpack_require__(/*! react-table */ \"./node_modules/react-table/es/index.js\");\n\nvar _reactTable2 = _interopRequireDefault(_reactTable);\n\nvar _reactRouter = __webpack_require__(/*! react-router */ \"./node_modules/react-router/es/index.js\");\n\nvar _buttons = __webpack_require__(/*! ../components/buttons */ \"./src/web/components/buttons.js\");\n\n__webpack_require__(/*! react-table/react-table.css */ \"./node_modules/react-table/react-table.css\");\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar db = __webpack_require__(/*! ../database/mocking */ \"./src/web/database/mocking.js\");\n\nvar Members = function (_Component) {\n  _inherits(Members, _Component);\n\n  function Members(props) {\n    _classCallCheck(this, Members);\n\n    var _this = _possibleConstructorReturn(this, (Members.__proto__ || Object.getPrototypeOf(Members)).call(this, props));\n\n    _this.columns = [{ accessor: '_id', show: false }, {\n      Cell: function Cell(cellProps) {\n        return _react2.default.createElement(_buttons.DeleteButton, { onClick: function onClick() {\n            return _this.delete(cellProps.original._id);\n          } });\n      },\n      width: 50\n    }, { accessor: 'code', Header: 'Code' }, {\n      accessor: 'name',\n      Header: 'Name',\n      Cell: function Cell(cellProps) {\n        return _react2.default.createElement(\n          'a',\n          { href: '#', onClick: function onClick() {\n              return _this.setState({ edit: cellProps.original._id });\n            } },\n          cellProps.original.name\n        );\n      }\n    }, { accessor: 'email', Header: 'Email' }, { accessor: 'phone', Header: 'Phone number' }, { accessor: 'website', Header: 'Web site' }];\n\n    _this.state = {\n      members: [],\n      edit: '',\n      createNew: false\n    };\n\n    _this.createNew = _this.createNew.bind(_this);\n    _this.delete = _this.delete.bind(_this);\n    _this.refresh = _this.refresh.bind(_this);\n    return _this;\n  }\n\n  _createClass(Members, [{\n    key: 'componentWillMount',\n    value: function componentWillMount() {\n      this.refresh();\n    }\n  }, {\n    key: 'refresh',\n    value: function refresh() {\n      var _this2 = this;\n\n      db.getAccounts().then(function (members) {\n        return _this2.setState({ members: members });\n      });\n    }\n  }, {\n    key: 'createNew',\n    value: function createNew() {\n      this.setState({ createNew: true });\n    }\n  }, {\n    key: 'delete',\n    value: function _delete(id) {\n      //console.log(id);\n      db.deleteAccount(id);\n      this.refresh();\n    }\n  }, {\n    key: 'render',\n    value: function render() {\n\n      if (this.state.edit) {\n        return _react2.default.createElement(_reactRouter.Redirect, { to: '/member/' + this.state.edit });\n      }\n\n      if (this.state.createNew) {\n        return _react2.default.createElement(_reactRouter.Redirect, { to: '/member' });\n      }\n\n      return _react2.default.createElement(\n        'div',\n        null,\n        _react2.default.createElement(_buttons.AddButton, { onClick: this.createNew }),\n        _react2.default.createElement(_reactTable2.default, {\n          data: this.state.members,\n          columns: this.columns,\n          defaultPageSize: 10,\n          className: '-striped -highlight'\n        })\n      );\n    }\n  }]);\n\n  return Members;\n}(_react.Component);\n\nexports.default = Members;\n\n\nvar styles = {\n  button: {\n    marginTop: 10,\n    marginBottom: 10\n  }\n};\n\n//# sourceURL=webpack:///./src/web/pages/members.js?");[m
[32m+[m[32meval("\n\nObject.defineProperty(exports, \"__esModule\", {\n  value: true\n});\n\nvar _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if (\"value\" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();\n\nvar _react = __webpack_require__(/*! react */ \"./node_modules/react/index.js\");\n\nvar _react2 = _interopRequireDefault(_react);\n\nvar _reactTable = __webpack_require__(/*! react-table */ \"./node_modules/react-table/es/index.js\");\n\nvar _reactTable2 = _interopRequireDefault(_reactTable);\n\nvar _reactRouter = __webpack_require__(/*! react-router */ \"./node_modules/react-router/es/index.js\");\n\nvar _buttons = __webpack_require__(/*! ../components/buttons */ \"./src/web/components/buttons.js\");\n\n__webpack_require__(/*! react-table/react-table.css */ \"./node_modules/react-table/react-table.css\");\n\nfunction _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }\n\nfunction _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError(\"Cannot call a class as a function\"); } }\n\nfunction _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError(\"this hasn't been initialised - super() hasn't been called\"); } return call && (typeof call === \"object\" || typeof call === \"function\") ? call : self; }\n\nfunction _inherits(subClass, superClass) { if (typeof superClass !== \"function\" && superClass !== null) { throw new TypeError(\"Super expression must either be null or a function, not \" + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }\n\nvar db = __webpack_require__(/*! ../database/db */ \"./src/web/database/db.js\");\n\nvar Members = function (_Component) {\n  _inherits(Members, _Component);\n\n  function Members(props) {\n    _classCallCheck(this, Members);\n\n    var _this = _possibleConstructorReturn(this, (Members.__proto__ || Object.getPrototypeOf(Members)).call(this, props));\n\n    _this.columns = [{ accessor: '_id', show: false }, {\n      Cell: function Cell(cellProps) {\n        return _react2.default.createElement(_buttons.DeleteButton, { onClick: function onClick() {\n            return _this.delete(cellProps.original._id);\n          } });\n      },\n      width: 50\n    }, { accessor: 'code', Header: 'Code' }, {\n      accessor: 'name',\n      Header: 'Name',\n      Cell: function Cell(cellProps) {\n        return _react2.default.createElement(\n          'a',\n          { href: '#', onClick: function onClick() {\n              return _this.setState({ edit: cellProps.original._id });\n            } },\n          cellProps.original.name\n        );\n      }\n    }, { accessor: 'email', Header: 'Email' }, { accessor: 'phone', Header: 'Phone number' }, { accessor: 'website', Header: 'Web site' }];\n\n    _this.state = {\n      members: [],\n      edit: '',\n      createNew: false\n    };\n\n    _this.createNew = _this.createNew.bind(_this);\n    _this.delete = _this.delete.bind(_this);\n    _this.refresh = _this.refresh.bind(_this);\n    return _this;\n  }\n\n  _createClass(Members, [{\n    key: 'componentWillMount',\n    value: function componentWillMount() {\n      this.refresh();\n    }\n  }, {\n    key: 'refresh',\n    value: function refresh() {\n      var _this2 = this;\n\n      db.getMembers().then(function (members) {\n        return _this2.setState({ members: members });\n      });\n    }\n  }, {\n    key: 'createNew',\n    value: function createNew() {\n      this.setState({ createNew: true });\n    }\n  }, {\n    key: 'delete',\n    value: function _delete(id) {\n      db.deleteMember(id);\n      this.refresh();\n    }\n  }, {\n    key: 'render',\n    value: function render() {\n\n      if (this.state.edit) {\n        return _react2.default.createElement(_reactRouter.Redirect, { to: '/member/' + this.state.edit });\n      }\n\n      if (this.state.createNew) {\n        return _react2.default.createElement(_reactRouter.Redirect, { to: '/member' });\n      }\n\n      return _react2.default.createElement(\n        'div',\n        null,\n        _react2.default.createElement(_buttons.AddButton, { onClick: this.createNew }),\n        _react2.default.createElement(_reactTable2.default, {\n          data: this.state.members,\n          columns: this.columns,\n          defaultPageSize: 10,\n          className: '-striped -highlight'\n        })\n      );\n    }\n  }]);\n\n  return Members;\n}(_react.Component);\n\nexports.default = Members;\n\n//# sourceURL=webpack:///./src/web/pages/members.js?");[m
 [m
 /***/ }),[m
 [m
[1mdiff --git a/src/web/components/login.js b/src/web/components/login.js[m
[1mindex fa63538..e0f8434 100644[m
[1m--- a/src/web/components/login.js[m
[1m+++ b/src/web/components/login.js[m
[36m@@ -1,8 +1,7 @@[m
 import React, { Component } from 'react';[m
 import { TextInput } from './inputs';[m
[31m-import { Redirect } from 'react-router-dom';[m
 const axios = require('axios');[m
[31m-const db = require('../database/mocking');[m
[32m+[m[32mconst db = require('../database/db');[m
 [m
 export class Login extends Component {[m
     constructor(props) {[m
[1mdiff --git a/src/web/components/redirect.js b/src/web/components/redirect.js[m
[1mdeleted file mode 100644[m
[1mindex 17449f8..0000000[m
[1m--- a/src/web/components/redirect.js[m
[1m+++ /dev/null[m
[36m@@ -1,20 +0,0 @@[m
[31m-import React, {Component} from 'react';[m
[31m-import {Redirect} from 'react-router-dom';[m
[31m-[m
[31m-export default class RedirectTo extends Component {[m
[31m-    constructor(props){[m
[31m-        super(props);[m
[31m-        this.state = {[m
[31m-            redirect: this.props.redirect,[m
[31m-            toUrl: this.props.directTo || '/'[m
[31m-        }[m
[31m-    }[m
[31m-[m
[31m-    render(){[m
[31m-        if(this.state.redirect){[m
[31m-            return <Redirect to={this.this.toUrl} />;[m
[31m-        }[m
[31m-[m
[31m-        return <div />;[m
[31m-    }[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/src/web/database/mocking.js b/src/web/database/mocking.js[m
[1mdeleted file mode 100644[m
[1mindex 4a6debc..0000000[m
[1m--- a/src/web/database/mocking.js[m
[1m+++ /dev/null[m
[36m@@ -1,111 +0,0 @@[m
[31m-const q = require('q');[m
[31m-const axios = require('axios');[m
[31m-[m
[31m-const createHeader = () => {[m
[31m-    let token = localStorage.getItem('token');[m
[31m-    return {[m
[31m-        'content-Type': 'application/json',[m
[31m-        authorization: `bearer ${token}`[m
[31m-    };[m
[31m-}[m
[31m-[m
[31m-module.exports.createDemo = () => {[m
[31m-    let deferred = q.defer();[m
[31m-    axios.post('/api/misc/createdemo')[m
[31m-    .then(user => {[m
[31m-        deferred.resolve(user.data); [m
[31m-    });[m
[31m-[m
[31m-    return deferred.promise;[m
[31m-}[m
[31m-[m
[31m-module.exports.getAccounts = () => {[m
[31m-    let deferred = q.defer();[m
[31m-    let headers = createHeader();[m
[31m-    axios({[m
[31m-        method: 'GET',[m
[31m-        url: '/api/member/search',[m
[31m-        headers[m
[31m-    })[m
[31m-    .then(members => {[m
[31m-        deferred.resolve(members.data); [m
[31m-    });[m
[31m-[m
[31m-    return deferred.promise;[m
[31m-}[m
[31m-[m
[31m-module.exports.getAccount = (_id) => {[m
[31m-    let deferred = q.defer();[m
[31m-    let headers = createHeader();[m
[31m-    axios({[m
[31m-        method: 'GET',[m
[31m-        url: '/api/member/search',[m
[31m-        params: {_id},[m
[31m-        headers[m
[31m-    })[m
[31m-    .then(members => {[m
[31m-        deferred.resolve(members.data); [m
[31m-    });[m
[31m-[m
[31m-    return deferred.promise;[m
[31m-}[m
[31m-[m
[31m-module.exports.addAccount = (member) => {[m
[31m-    let deferred = q.defer();[m
[31m-    let headers = createHeader();[m
[31m-[m
[31m-    axios({[m
[31m-        method: 'POST',[m
[31m-        url: '/api/member/create',[m
[31m-        data: member,[m
[31m-        headers[m
[31m-    })[m
[31m-    .then(member => {[m
[31m-        deferred.resolve(member);[m
[31m-    })[m
[31m-    .catch(err => {[m
[31m-        deferred.reject(err);[m
[31m-    });[m
[31m-    return deferred.promise;[m
[31m-[m
[31m-}[m
[31m-[m
[31m-module.exports.saveAccount = (member) => {[m
[31m-    let deferred = q.defer();[m
[31m-    let headers = createHeader();[m
[31m-[m
[31m-    axios({[m
[31m-        method: 'POST',[m
[31m-        url: '/api/member/update',[m
[31m-        data: member,[m
[31m-        headers[m
[31m-    })[m
[31m-    .then(member => {[m
[31m-        deferred.resolve(member);[m
[31m-    })[m
[31m-    .catch(err => {[m
[31m-        deferred.reject(err);[m
[31m-    });[m
[31m-    return deferred.promise;[m
[31m-[m
[31m-}[m
[31m-[m
[31m-module.exports.deleteAccount = (_id) => {[m
[31m-    let headers = createHeader();[m
[31m-    let deferred = q.defer();[m
[31m-[m
[31m-    axios({[m
[31m-        method: 'POST',[m
[31m-        url: '/api/member/delete',[m
[31m-        data: {_id},[m
[31m-        headers[m
[31m-    })[m
[31m-    .then(() => {[m
[31m-        deferred.resolve();[m
[31m-    })[m
[31m-    .catch(err => {[m
[31m-        deferred.reject(err);[m
[31m-    });[m
[31m-[m
[31m-    return deferred.promise;[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/src/web/pages/home.js b/src/web/pages/home.js[m
[1mindex 02e4fef..b0503f0 100644[m
[1m--- a/src/web/pages/home.js[m
[1m+++ b/src/web/pages/home.js[m
[36m@@ -6,16 +6,9 @@[m [mexport default class Home extends Component {[m
     render() {[m
         return ([m
             <div>[m
[31m-                <h1>Read me</h1>[m
[32m+[m[32m                <h1>Create new demo/Login</h1>[m
                 <Login />[m
             </div>[m
         );[m
     }[m
 }[m
[31m-[m
[31m-const styles = {[m
[31m-    button: {[m
[31m-        marginTop: 10,[m
[31m-        marginBottom: 10[m
[31m-    }[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/src/web/pages/member.js b/src/web/pages/member.js[m
[1mindex fcb95a5..4b63394 100644[m
[1m--- a/src/web/pages/member.js[m
[1m+++ b/src/web/pages/member.js[m
[36m@@ -2,7 +2,7 @@[m [mimport React, { Component } from 'react';[m
 import { Redirect } from 'react-router';[m
 import { TextInput } from '../components/inputs';[m
 import { SaveButton, CancelButton } from '../components/buttons';[m
[31m-let db = require('../database/mocking');[m
[32m+[m[32mlet db = require('../database/db');[m
 [m
 export default class Member extends Component {[m
 [m
[36m@@ -21,10 +21,8 @@[m [mexport default class Member extends Component {[m
     }[m
 [m
     componentWillMount() {[m
[31m-        //axios[m
[31m-        console.log(this.id);[m
         if (this.isUpdate) {[m
[31m-            db.getAccount(this.id)[m
[32m+[m[32m            db.getMember(this.id)[m
                 .then(member => {[m
                     this.setState({ member });[m
                 });[m
[36m@@ -33,11 +31,11 @@[m [mexport default class Member extends Component {[m
 [m
     save() {[m
         if (this.isNew) {[m
[31m-            db.addAccount(this.state.member)[m
[32m+[m[32m            db.addMember(this.state.member)[m
                 .then(() => this.setState({ backToMembers: true }));[m
         }[m
         else {[m
[31m-            db.saveAccount(this.state.member)[m
[32m+[m[32m            db.saveMember(this.state.member)[m
                 .then(() => this.setState({ backToMembers: true }));[m
         }[m
     }[m
[36m@@ -75,10 +73,3 @@[m [mexport default class Member extends Component {[m
         );[m
     }[m
 }[m
[31m-[m
[31m-const styles = {[m
[31m-    button: {[m
[31m-        marginTop: 10,[m
[31m-        marginBottom: 10[m
[31m-    }[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/src/web/pages/members.js b/src/web/pages/members.js[m
[1mindex b9e8325..2e38772 100644[m
[1m--- a/src/web/pages/members.js[m
[1m+++ b/src/web/pages/members.js[m
[36m@@ -1,9 +1,9 @@[m
 import React, { Component } from 'react';[m
 import ReactTable from 'react-table';[m
 import { Redirect } from 'react-router';[m
[31m-import { AddButton, DeleteButton} from '../components/buttons'[m
[32m+[m[32mimport { AddButton, DeleteButton } from '../components/buttons'[m
 import "react-table/react-table.css";[m
[31m-let db = require('../database/mocking');[m
[32m+[m[32mconst db = require('../database/db');[m
 [m
 export default class Members extends Component {[m
 [m
[36m@@ -23,7 +23,7 @@[m [mexport default class Members extends Component {[m
         accessor: 'name',[m
         Header: 'Name',[m
         Cell: (cellProps) => {[m
[31m-          return <a href='#' onClick={() => this.setState({edit:cellProps.original._id})} >{cellProps.original.name}</a>[m
[32m+[m[32m          return <a href='#' onClick={() => this.setState({ edit: cellProps.original._id })} >{cellProps.original.name}</a>[m
         }[m
       },[m
       { accessor: 'email', Header: 'Email' },[m
[36m@@ -33,7 +33,7 @@[m [mexport default class Members extends Component {[m
 [m
     this.state = {[m
       members: [],[m
[31m-      edit:'',[m
[32m+[m[32m      edit: '',[m
       createNew: false[m
     };[m
 [m
[36m@@ -42,13 +42,13 @@[m [mexport default class Members extends Component {[m
     this.refresh = this.refresh.bind(this);[m
   }[m
 [m
[31m-  componentWillMount(){[m
[32m+[m[32m  componentWillMount() {[m
     this.refresh();[m
   }[m
 [m
   refresh() {[m
[31m-    db.getAccounts()[m
[31m-    .then(members => this.setState({members}));[m
[32m+[m[32m    db.getMembers()[m
[32m+[m[32m      .then(members => this.setState({ members }));[m
   }[m
 [m
   createNew() {[m
[36m@@ -56,14 +56,13 @@[m [mexport default class Members extends Component {[m
   }[m
 [m
   delete(id) {[m
[31m-    //console.log(id);[m
[31m-    db.deleteAccount(id);[m
[32m+[m[32m    db.deleteMember(id);[m
     this.refresh();[m
   }[m
 [m
   render() {[m
 [m
[31m-    if(this.state.edit){[m
[32m+[m[32m    if (this.state.edit) {[m
       return (<Redirect to={'/member/' + this.state.edit} />);[m
     }[m
 [m
[36m@@ -83,11 +82,4 @@[m [mexport default class Members extends Component {[m
       </div>[m
     );[m
   }[m
[31m-}[m
[31m-[m
[31m-const styles = {[m
[31m-  button: {[m
[31m-    marginTop: 10,[m
[31m-    marginBottom: 10[m
[31m-  }[m
 }[m
\ No newline at end of file[m
