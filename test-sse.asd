(asdf:defsystem "test-sse"
  :description "Test sse intrinsics with SBCL"
  :version "0.0.1"
  :author "Guillaume MICHEL"
  :mailto "guillaume.michel@orilla.fr"
  :homepage "http://orilla.fr"
  :license "MIT license (see COPYING)"
  :components ((:static-file "COPYING")
               (:static-file "README.md")
               (:module "src"
                        :serial t
                        :components ((:file "package")
                                     (:file "definitions")
                                     (:file "vops")
                                     (:file "intrinsics"))))
  :in-order-to ((asdf:test-op (asdf:test-op "test-sse-tests"))))

(defmethod asdf:perform ((o asdf:test-op)
                         (c (eql (asdf:find-system '#:test-sse))))
  (asdf:oos 'asdf:load-op '#:test-sse-tests)
  (funcall (intern (symbol-name '#:run-tests) (find-package '#:test-sse-tests))))
