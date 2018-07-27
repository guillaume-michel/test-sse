;;;; (asdf:operate 'asdf:test-op :test-sse)

(in-package :test-sse-tests)

(fiveam:def-suite test-sse-test-suite
    :description "test-sse test suite.")

(fiveam:in-suite test-sse-test-suite)

(fiveam:test word-sse-xor
  (fiveam:is (equal
              (let ((v1 (sb-ext:%make-simd-pack-ub32 1 2 3 4))
                    (v2 (sb-ext:%make-simd-pack-ub32 1 2 3 4)))
                (unpack-sse-values (word-sse-xor v1 v2)))
              (list 0 0 0 0))))

(defun run-tests ()
  (princ "Running all test-sse unit tests")
  (fiveam:run! 'test-sse-test-suite))
