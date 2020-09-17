(lang dune 2.7.1)
(name fiu)

(generate_opam_files true)
(source (github CraigFe/fiu))
(maintainers "Craig Ferguson <me@craigfe.io>")
(authors "Craig Ferguson <me@craigfe.io>")

(package
 (name fiu)
 (synopsis "Bindings to the libfiu fault-injection library")
 (description "\
Bindings to the libfiu fault-injection library
")
 (documentation https://CraigFe.github.io/fiu/)
 (depends alcotest ppx_alcotest))
