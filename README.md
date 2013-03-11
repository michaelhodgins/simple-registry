#Simple Registry

A simple registry for saving and retrieving objects and values in Node.js.

##Install

npm install simple-registry

##Use

    registry = require('simple-registry');

    registry.set('my-object', myObject);
    registry.has('my-object');
    var obj = registry.get('my-object');
    registry.remove('my-object');

Easy!
