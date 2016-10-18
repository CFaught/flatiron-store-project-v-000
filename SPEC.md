# Flatiron Store Specification

## Models:

### Users
- [x] Have just an email and password (BCrypt?)
- [x] Should be able to log in and log out
- [x] Also sign up
- [x] Have many carts
- [x] Has a current_cart = a Cart object

### Items

- [x] List of available items whether you are logged in or not
- [x] If logged in, each item should have an "Add to Cart" button
- [x] When the user adds an item to the cart it should show them their current cart
- [x] Belongs to a category
- [x] has many line_items consolidated by line_item quantity
- [x] has a method available_items that only returns items with inventory.

### Cart

- [x] Users should be able to checkout from their cart
- [x] This shows them their cart afterwards, and deducts inventory from each item
- [x] Prices should be in the $XX.XX format
- [x] The Checkout process should set that current cart nil
- [x] Has many line_items built through instance method
- [x] Has many items through line_items
- [x] Can calculate its total i.e. @cart.total
- [x] Has a method #add_item which creates a new unsaved line_item for new item or updates an existing line_item



### Category
- [x] Has many items



## Headers/Nav:

- [x] Users should know who they are logged in as
- [x] Users should be able to sign in/out from the navigation bar
- [x] Users should always be able to go "home"
- [x] If the user has a current cart, there should be a "Cart" link to their current cart
