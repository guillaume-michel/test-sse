(in-package :test-sse)

(defun unpack-sse-values (pack)
  (multiple-value-bind (v1 v2 v3 v4)
      (%simd-pack-ub32s pack)
    (list v1 v2 v3 v4)))

(defun word-sse-xor (x y)
  (%word-sse-xor x y))
