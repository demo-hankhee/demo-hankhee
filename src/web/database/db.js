const q = require('q');
const axios = require('axios');

const createHeader = () => {
    let token = localStorage.getItem('token');
    return {
        'content-Type': 'application/json',
        authorization: `bearer ${token}`
    };
}

module.exports.createDemo = () => {
    let deferred = q.defer();
    axios.post('/api/misc/createdemo')
    .then(user => {
        deferred.resolve(user.data); 
    });

    return deferred.promise;
}

module.exports.getMembers = () => {
    let deferred = q.defer();
    let headers = createHeader();
    axios({
        method: 'GET',
        url: '/api/member/search',
        headers
    })
    .then(members => {
        deferred.resolve(members.data); 
    });

    return deferred.promise;
}

module.exports.getMember = (_id) => {
    let deferred = q.defer();
    let headers = createHeader();
    axios({
        method: 'GET',
        url: '/api/member/search',
        params: {_id},
        headers
    })
    .then(members => {
        deferred.resolve(members.data); 
    });

    return deferred.promise;
}

module.exports.addMember = (member) => {
    let deferred = q.defer();
    let headers = createHeader();

    axios({
        method: 'POST',
        url: '/api/member/create',
        data: member,
        headers
    })
    .then(member => {
        deferred.resolve(member);
    })
    .catch(err => {
        deferred.reject(err);
    });
    return deferred.promise;

}

module.exports.saveMember = (member) => {
    let deferred = q.defer();
    let headers = createHeader();

    axios({
        method: 'POST',
        url: '/api/member/update',
        data: member,
        headers
    })
    .then(member => {
        deferred.resolve(member);
    })
    .catch(err => {
        deferred.reject(err);
    });
    return deferred.promise;

}

module.exports.deleteMember = (_id) => {
    let headers = createHeader();
    let deferred = q.defer();

    axios({
        method: 'POST',
        url: '/api/member/delete',
        data: {_id},
        headers
    })
    .then(() => {
        deferred.resolve();
    })
    .catch(err => {
        deferred.reject(err);
    });

    return deferred.promise;
}