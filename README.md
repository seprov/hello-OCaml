# hello-OCaml

Learning OCaml

## [html_gen](/html_gen/)

This project generates web gallery pages just like the ones on [seprov.com](seprov.com).

To use it, you need to layers of folders -- a parent folder for the page, and a subfolder for each row of photos in the gallery.

Edit [main.ml](/html_gen/bin/main.ml#L4) to point to the parent folder. Run the program with `dune exec html_gen`.

Your gallery will be present in a new folder in [html_gen](/html_gen/) called "output".

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
