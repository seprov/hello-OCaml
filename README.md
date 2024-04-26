# hello-OCaml

Learning OCaml

## [hello](/hello/)

### [Greeting](hello/lib/greeting_sig.ml)

Just specifies the "Hello world!" greeting in a language.

#### Specification

* `hello` returns a string with that language's word for "hello" 
* `v` returns a string with "Hello world!" translated into that language

#### Implementations

* [en.ml](hello/lib/en.ml)
* [es.ml](hello/lib/es.ml)

### [Greeter](hello/lib/greeter.ml)

Given a `Greeting`, prints it.
