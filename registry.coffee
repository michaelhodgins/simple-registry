class Registry

    variables: null

    constructor: ->
        @variables = {}

    set: (key, value) ->
        @variables[key] = value

    get: (key) ->
        @variables[key]

    has: (key) ->
        key of @variables

    remove: (key) ->
        if @has key
            delete @variables[key]

module.exports = new Registry()
