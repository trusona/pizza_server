Hexagonal Architecture vs DDD
* Related to DDD
* No special libraries

Commands
* Result Object
* In the controller
* In tests

Domain Models
* Entities
* Values
* Aggregates

Validators
* Use Active Model
* Return a list of errors

#call
* takes arguments
* returns a value
* raises errors

Repositories
* In Memory Repository
  * Fast tests without stubbing!!
  * Default for domain
  * Inject new dbs (see AR and Couch)
  * Could provide a fallback when db becomes unavailable
* Repositories are CRUD
* Active Record is dead.  Long live active record (AR Repo)
* Couch repo

Cmd
* DomainFun is dead, long live Cmd
* Cmd initializer
* Cmd config
* Cmd::Command :/

Testing
* Guard
* Simple Cov
* Test ratio

TODO
# Handle concurrent writes in Repositories::AR
# Work with some Legacy code (Export Domain)
