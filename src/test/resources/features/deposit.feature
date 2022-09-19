Feature: Deposit
  As a customer, I want to deposit my cash

Background:
  Given a customer with id 1 and pin 111 with balance 200 exists
  When I login to ATM with id 1 and pin 111

Scenario: Add 0 balances
  When I deposit 0 to my Account
  Then my account balance is 200

Scenario: Add >0 balances
  When I deposit 200.50 to my Account
  Then my account balance is 400.50

Scenario: Add <0 balances
  When I deposit -1 to my Account
  Then my account balance is 200