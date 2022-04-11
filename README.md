# README

Important information (4/11/22):

* Run with Ruby version 3.0.3 ("uru 303" command in Windows with uru.)

* Seeds file contains the following 5 "dummy" users:
    Han, username "SoloSolo", email 'han@example.com'
    Luke, username "JustLuke", email 'luke@example.com'
    Leia, username "Princess", email 'leia@example.com'
    Padme, username "FashionQueen", email 'padme@example.com'
    Anakin, username "Annie", email 'anakin@example.com'

* Password to access each user is 'lightsaber'
* NOTE: you must be signed out of the web app before repopulating the database otherwise, 
    the id of the last signed in user will be stuck as the user in session id purgatory.
    My only fix to this is manually setting id: "#" to one of the seed file users where # is 
    the id of the destroyed user that was trapped in session id purgatory.
* In development, "rails db:seed:replant" can be run to de/re-populate all databases.
* Seeds file also creates the optional "complaints" users may have about the items.

More to be added regarding:

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
