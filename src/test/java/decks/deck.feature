Feature: Interact with one deck of cards

  Scenario: Shuffle a new deck
    Given url 'https://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1'
    When method get
    Then assert responseStatus == 200
    And match response.success == true
    And match response.deck_id == '#string'
    And match response.remaining == 52
    And match response.shuffled == true
