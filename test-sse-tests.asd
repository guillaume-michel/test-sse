(asdf:defsystem #:test-sse-tests
  :description "test-sse unit tests"
  :author "Guillaume MICHEL"
  :mailto "guillaume.michel@orilla.fr"
  :license "MIT license (see COPYING)"
  :depends-on (#:test-sse
               #:fiveam)
  :components ((:module "t"
                :serial t
                :components ((:file "package")
                             (:file "tests")))))
