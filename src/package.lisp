(defpackage #:test-sse
  (:documentation "Test for sse intrinsics with SBCL")
  (:use :cl :sb-ext :sb-c)
  (:export
   #:unpack-sse-values
   #:word-sse-xor
   ))
