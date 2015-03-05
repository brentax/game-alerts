# About Game Wishlist

This is a pet project for me to exercise the Ruby on Rails lessons I've learned working on proprietary applications. I may deploy a working version for people to use, but until then it is just a fun prototype. Please feel free to fork/tweak/play with it as you will.

## Yeah, but what does it do?

This is inspired by how [Steam](http://store.steampowered.com/) lets users maintain a wishlist and notifies them when those games go on sale. This project does the same, but checks prices across multiple digital game stores.

# Running the project

You need to add 'vagrant' role in PostgreSQL. Run the following (The '$' is just the shell prompt, don't include it in your commands):

    $ sudo su - postgres
    $ psql
    postgres=# CREATE ROLE vagrant WITH LOGIN SUPERUSER;

Use 'ctrl+d' twice to get back to your normal shell prompt. I would like to automate this as part of the Vagrant setup.

    $ cd /vagrant
    $ bundle install
    $ bin/rake db:create
    $ bin/rake db:schema:load
    $ bin/rspec
