(in-package "SB-VM")

(define-vop (test-sse::%word-sse-xor)
  (:translate test-sse::%word-sse-xor)
  (:policy :fast-safe)
  (:args (x :scs (int-sse-reg single-sse-reg double-sse-reg) :target r)
         (y :scs (int-sse-reg single-sse-reg double-sse-reg)))
  (:arg-types simd-pack simd-pack)
  (:results (r :scs (int-sse-reg single-sse-reg double-sse-reg) :from (:argument 0)))
  (:result-types simd-pack)
  (:generator 4
              (cond ((location= r y)
                     (inst pxor y x))
                    (t
                     (move r x)
                     (inst pxor r y)))))
