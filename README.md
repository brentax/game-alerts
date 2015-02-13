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
