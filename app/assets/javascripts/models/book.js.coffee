App.Book = DS.Model.extend
  price: DS.attr('number')
  unitsOrdered: DS.attr('number')

  revenue: (->
    @get('price') * @get('unitsOrdered')
  ).property('price', 'unitsOrdered')

