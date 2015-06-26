Tinytest.add 'jss:coffeescript-decorators::isClient', (test) ->
  isClient = false
  func = $isClient() ->
    isClient = true
  func()
  test.equal(isClient, Meteor.isClient);

Tinytest.add 'jss:coffeescript-decorators::isServer', (test) ->
  isServer = false
  func = $isServer() ->
    isServer = true
  func()
  test.equal(isServer, Meteor.isServer);

Tinytest.add 'jss:coffeescript-decorators::isCordova', (test) ->
  isCordova = false
  func = $isCordova() ->
    isCordova = true
  func()
  test.equal(isCordova, Meteor.isCordova);

