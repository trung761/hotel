var Http = {
    get(params) {
        let data = {
            type: 'GET',
        };
        data = Object.assign(data, params);
        return this.send(data);
    },
    post(params) {
        let data = {
            type: 'POST',
        };
        data = Object.assign(data, params);
        return this.send(data);
    },
    delete(params) {
        let data = {
            type: 'DELETE',
        };
        data = Object.assign(data, params);
        return this.send(data);
    },
    put(params) {
        let data = {
            type: 'PUT',
        };
        data = Object.assign(data, params);
        return this.send(data);
    },
    send(opt) {
        let data = {
            async: true,
            url: '',
            type: 'GET',
            data: {},
            dataType: 'json',
        };
        data = Object.assign(data, opt);
        return $.ajax(data);
    }
};
export default Http;
