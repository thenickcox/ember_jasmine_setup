describe 'Book', ->
  describe 'revenue', ->
    it 'is a computed property of price and units ordered', ->
      Ember.run ->
        book = store.createRecord('book',
          price: '13.00',
          unitsOrdered: '25'
        )
        expect(book.get('revenue')).toEqual 325
