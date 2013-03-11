registry = require '../registry'
should = require 'should'

describe 'registry', ->

    it 'should add and retrieve an object', (done) ->
        val =
            moo: 'Michael'
        registry.set 'val', val

        retrieved = registry.get 'val'
        retrieved.should.equal val
        retrieved.moo.should.eql val.moo

        done()

    it 'should remember a variable was added', (done) ->
        val = 'moo'
        registry.set 'val', val
        registry.has('val').should.be.true

        done()

    it 'should delete a variable', (done) ->
        val = 'moo'
        registry.set 'val', val
        registry.remove 'val'
        registry.has('val').should.be.false

        done()

    it 'should remember a null variable', (done) ->
        val = null
        registry.set 'val', null
        registry.has('val').should.be.true
        done()

    it 'should remember more than one variable', (done) ->
        val1 =
            moo: 'me'

        val2 = 'dave'

        registry.set 'val1', val1
        registry.set 'val2', val2

        registry.has('val1').should.be.true
        registry.has('val2').should.be.true

        done()

    it 'should should only delete the variable it is asked to', (done) ->
        val1 =
            moo: 'me'

        val2 = 'dave'

        registry.set 'val1', val1
        registry.set 'val2', val2

        registry.remove 'val2'

        registry.has('val1').should.be.true
        registry.has('val2').should.be.false

        done()