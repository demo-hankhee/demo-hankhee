# demo-hankhee



## Introduction
Simple CRUD application on member build with `node.js`, `express.js`, `mongodb with mongoose.js` and `react.js`. 

## Links:
- Demo: https://demo-hankhee.herokuapp.com/
- Source code: https://github.com/demo-hankhee/demo-hankhee

## How it works
- visit[Demo](https://demo-hankhee.herokuapp.com/)
- go to `Getting start`
- `Create new demo` or `just login` with existing login name and password
- `Create new demo` will create new `Company`, new `login` and default 10 members by `faker.js`
- `Login` will get token via api
- go to `Members`, fake data will be list, `react-table` used
- `add`, `edit`(by clicking name) and `delete` are availabe

## Points of interest
- application build with MVC like pattern.
- using `jsonWebToken` as authentication token.
- `express.js` as server for both API and web server, frontend call `api` for CRUD

## Source structure
```
- src 
  - api
    - controllers
    - models
  - routes
  - web (view)
```

## Addition technical information
- `axios` for api call
- `mongoose` for `mongodb` data manipulation
- `simple-encryptor` for password encrytion
- `q` for promise
- `react-table` for listing

## On the way / in progress
- [x] react-native mobile app - consume same API to provide mobile functionality
- [ ] E2E testing with cypress.io
- [ ] Enhance with Redux
