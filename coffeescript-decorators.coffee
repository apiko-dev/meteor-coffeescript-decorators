@$isClient = () -> (func) -> ->
  if Meteor.isClient
    func.apply @, arguments


@$isServer = () -> (func) -> ->
  if Meteor.isServer
    func.apply @, arguments


@$isCordova = () -> (func) -> ->
  if Meteor.isCordova
    func.apply @, arguments


@$startup = () -> (func) -> ->
  self = @
  args = arguments
  cb = () -> func.apply self, args
  Meteor.startup cb


@$wrapAsync = (context) -> (func) -> ->
  self = @
  args = arguments
  cb = () -> func.apply self, args
  Meteor.wrapAsync cb, context


@$setTimeout = (delay) -> (func) -> ->
  self = @
  args = arguments
  cb = () -> func.apply self, args
  Meteor.setTimeout cb, delay


@$setInterval = (delay) -> (func) -> ->
  self = @
  args = arguments
  cb = () -> func.apply self, args
  Meteor.setInterval cb, delay