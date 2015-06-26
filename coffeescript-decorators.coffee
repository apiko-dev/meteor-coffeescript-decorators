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
  Meteor.startup(func)


@$wrapAsync = (context) -> (func) -> ->
  Meteor.wrapAsync func, context


@$setTimeout = (delay) -> (func) -> ->
  Meteor.setTimeout(func, delay)


@$setInterval = (delay) -> (func) -> ->
  Meteor.setInterval(func, delay)