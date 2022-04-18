# README

Important information (4/11/22): UPDATED (4/18/22):

* Run with Ruby version 3.0.3 ("uru 303" command in Windows with uru.)

* Seeds file contains the following 5 "dummy" users:
    Han, 'han@example.com'
    Luke, 'luke@example.com'
    Leia, 'leia@example.com'
    Padme, 'padme@example.com'
    Anakin, 'anakin@example.com'

* In production, the password to Anakin's account is still 'lightsaber'.
    For all other dummy users, I have changed the passwords in production to prevent misuse.
* DEVELOPER / DEVELOPMENT NOTE: you must be signed out of the web app before repopulating 
    the database otherwise the id of the last signed in user will be stuck as the user in 
    session id purgatory. My only fix to this is manually setting id: "#" to one of the seed file users where # is the id of the destroyed user that was trapped in session id purgatory.
* In development, "rails db:seed:replant" can be run to de/re-populate all databases.
* Seeds file also creates the brands (which can be altered from console by protected production server 
    console only) and optional "complaints" users may have about the items.
* Only people with access to the production server can create admin users (user.admin = true)
    and view audit files for each user (user.own_and_associated_audits).

More to be added regarding:

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

