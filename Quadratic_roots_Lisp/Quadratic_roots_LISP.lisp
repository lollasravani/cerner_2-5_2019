;cerner_2^5_2019
;The code prints the roots of a quadratic function
(defun roots (a b c)
   (cond
      ((not (and (numberp a) (numberp b) (numberp c)))
            (format nil "invalid coefficients~%"))
      ((and (= a 0) (= b 0) (= c 0))
            (format nil "Infinite (all values of x)~%"))
      ((and (= a 0) (= b 0))
            (format nil "(none)~%"))
      ((= a 0) (/ (- c) b))
      (t (let
         (
            (b2m4ac (- (* b b) (* 4 a c))))
         (cond
             ((= 0 b2m4ac) (/ (- b) (* 2 a)))
             ((> 0 b2m4ac) (format nil "complex roots~%"))
             (t (list (/ (- (sqrt b2m4ac) b) (* 2 a))
                      (/ (- (+ (sqrt b2m4ac) b)) (* 2 a)))))))))
(format t "~%Enter coefficients a b and c for ax^2 + bx + c~%")
(let* ((a (read)) (b (read)) (c (read)) (res (roots a b c)))
    (format t "The roots for ~Ax^2 + ~Ax + ~A = 0 are: " a b c)
    (if (listp res) (format t "~A and ~A~%~%" (car res) (cadr res))
                    (format t "~A~%~%" res)))