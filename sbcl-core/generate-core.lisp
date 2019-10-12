(mapc 'require '(sb-bsd-sockets sb-posix sb-introspect sb-cltl2 asdf))
(push #p"~/repos/cl/asdf-links/" asdf:*central-registry*)

(save-lisp-and-die "sbcl.core-for-slime")
