# Jungle

A mini e-commerce application built with Rails 4.2.


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Add admin user and password to .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
* Testing: Capybara, Poltergeist, Rspec-Rails



## Screenshots

### Homepage
![Homepage](https://github.com/Josh-lerner/jungle-rails/blob/master/docs/Homepage.png?raw=true)

### Product Description
![Product](https://github.com/Josh-lerner/jungle-rails/blob/master/docs/product.png?raw=true)

### Cart
![Cart](https://github.com/Josh-lerner/jungle-rails/blob/master/docs/my%20cart.png?raw=true)

### Admin Categories
![Admin_categories](https://github.com/Josh-lerner/jungle-rails/blob/master/docs/admin%20categories.png?raw=true)

### Admin Products
![Admin_products](https://github.com/Josh-lerner/jungle-rails/blob/master/docs/admin%20products.png?raw=true)
