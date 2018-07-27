(in-package :test-sse)

(defknown %word-sse-xor (simd-pack simd-pack) (simd-pack)
    (movable flushable always-translatable)
  :overwrite-fndb-silently t)
