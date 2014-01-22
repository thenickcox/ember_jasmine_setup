#= require application
#= require_tree ./

App.Store = DS.Store.extend(
  adapter: App.ApplicationAdapter
)
container = new Ember.Container()
container.register('model:book', App.Book)
@store = App.Store.create(
  container: container
)
Ember.testing = true
