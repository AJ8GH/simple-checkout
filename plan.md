# Project: Simple Checkout

## Design Plan

#### item
- attributes: (hash)
  - price
  - name

#### checkout
- attributes:
  - basket (array of item objects)
- methods:
  - scan (takes item as argument and returns price)
  - remove_scanned_item (removes scanned item from basket)
  - total (increments the total cost of the shop with price of each scanned item)

#### shopper
- attributes:
  - basket (array of item objects)
- methods:
  - pick (takes an item argument and adds it to basket)
  - checkout (initializes a new Checkout object and passes shopper's basket as the basket argument)

#### core_extensions
- numeric
  - format (puts the price into £xx.xx format)

### To achieve these goals:

- "I know how my language works"
- "I can build with objects"
- "I can test-drive my code"

## Action Plan

Write the code for a supermarket checkout that can calculate the price of a number of items.

Each item should be priced individually, and the checkout should be able to scan them in any order.

### The requirements for the system are as follows:

##### As a shopper:

- So I know how much an item costs, I would like to be able to see its price
- So that I can buy an item, I would like to be able to scan items at the checkout
- So that I know how much to pay, I would like to be able to see a total for all scanned items
- So that I know how much to pay, I would like to see all prices correctly formatted (£xx.xx)

##### Your main focus here should be to follow a rigorous TDD process: RED, GREEN, REFACTOR!

## Evidence Plan

- You'll be able to explain the approach you took to writing your code and justify some of the decisions you made (emotional)
- You will have a well tested, working implementation of the system described above (empirical)
- You will discuss your approach with a coach, describing your TDD process, and will receive feedback (credible)
