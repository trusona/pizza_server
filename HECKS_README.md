Benefits
* Ruby/Rails friendly
* Patterns!
* Scalability
* Testability
* Pluggability
* Portability
* Composability
* Convention over configuration

Hexagonal Architecture vs DDD
* Related to DDD
* No special libraries
* Commands are dead!  Long live Commands!

Commands
* Result Object
* In the controller
* In tests

Domain Models (DDD?)
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
* Great Test ratio


FEEDBACK
* Use existing libraries such as ROM, Dry
* Show how to we handle a simple join/relationship (Demo: pizza.toppings.each)
* Controller Action only running a single command
* Handle concurrent writes in Repositories::AR
* Work with some Legacy code (Export Domain?)
* Show how to build with it (From story to implementation.  say oops a lot)
