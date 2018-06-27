import React, { Component } from 'react';
import ReactTable from 'react-table';
import { Redirect } from 'react-router';
import { AddButton, DeleteButton } from '../components/buttons'
import "react-table/react-table.css";
import toastr from 'toastr';
import toastrCss from '../css/toastr.css';

const db = require('../database/db');

export default class Members extends Component {

  constructor(props) {
    super(props);

    this.columns = [
      { accessor: '_id', show: false },
      {
        Cell: (cellProps) => {
          return <DeleteButton onClick={() => this.delete(cellProps.original._id)} />
        },
        width: 50
      },
      { accessor: 'code', Header: 'Code' },
      {
        accessor: 'name',
        Header: 'Name',
        Cell: (cellProps) => {
          return <a href='#' onClick={() => this.setState({ edit: cellProps.original._id })} >{cellProps.original.name}</a>
        }
      },
      { accessor: 'email', Header: 'Email' },
      { accessor: 'phone', Header: 'Phone number' },
      { accessor: 'website', Header: 'Web site' },
    ];

    this.state = {
      members: [],
      edit: '',
      createNew: false
    };

    this.createNew = this.createNew.bind(this);
    this.delete = this.delete.bind(this);
    this.refresh = this.refresh.bind(this);
  }

  componentWillMount() {
    this.refresh();
  }

  refresh() {

    if(!localStorage.getItem('token')){
      toastr.error('Please login for action.', 'Error')
      return;
    }

    db.getMembers()
      .then(members => this.setState({ members }));
  }

  createNew() {
    this.setState({ createNew: true });
  }

  delete(id) {
    db.deleteMember(id);
    this.refresh();
  }

  render() {

    if (this.state.edit) {
      return (<Redirect to={'/member/' + this.state.edit} />);
    }

    if (this.state.createNew) {
      return (<Redirect to='/member' />);
    }

    return (
      <div>
        <AddButton onClick={this.createNew} />
        <ReactTable
          data={this.state.members}
          columns={this.columns}
          defaultPageSize={10}
          className="-striped -highlight"
        />
      </div>
    );
  }
}