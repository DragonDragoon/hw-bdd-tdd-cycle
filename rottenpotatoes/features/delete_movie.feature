Feature: User can delete movie

Scenario: Delete movie
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  And   I am on the details page for "Star Wars"
  When  I press "Delete"
  Then  I am on the RottenPotatoes home page
  And   I should not see "Star Wars"
  And   I should see "Blade Runner"