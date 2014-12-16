#ui-form
A form is a container and wrapper for inputs.


    Polymer 'ui-form',

##Events
###edit
This is like a `change` event, but only fires if the user has provided input
via the keyboard or mouse. The idea is that change events can fire

##Attributes and Change Handlers

##Methods

##Event Handlers

This is the state bit, if a user interacts, set the editing flag. This isn't
a DOM attribute, no sense strobing the DOM on each key press.

      userInput: ->
        @editing = true

And, any change, if we are editing, fires off an edit event, with a tiny
bit of debounce.

      editIfUserInput: ->
        clearTimeout @editTimer
        if @editing
          @editTimer = setTimeout =>
            @editing = false
            @fire 'edit'
          , 300

##Polymer Lifecycle

      created: ->

      ready: ->

      attached: ->

      domReady: ->

      detached: ->
