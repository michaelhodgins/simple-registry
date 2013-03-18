class Registry

    variables: null

    ###
    Constructs an instance of Registry. Called when simple-registry
    is first required.
    ###
    constructor: ->
        @variables = {}

    ###
    Associates a value with a key. The key should be a string
    @param [String] key
    @param [Object] value
    ###
    set: (key, value) ->
        @variables[key] = value

    ###
    Returns the value previously associated with the given key.
    @param [String] key
    @return [Object]
    ###
    get: (key) ->
        @variables[key]

    ###
    Returns true if the given key has been associated with
    a value.
    @param [String] key
    @return [Boolean]
    ###
    has: (key) ->
        key of @variables

    ###
    Removes any value associated with the given key.
    @param [String] key
    ###
    remove: (key) ->
        if @has key
            delete @variables[key]

module.exports = new Registry()
