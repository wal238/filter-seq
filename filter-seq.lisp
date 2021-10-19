;; In a lisp file called filter-seq.lisp, write a function called filter-seq that takes a sequence s (a string) and an alphabet a (a string), and generates a result sequence (a string) by including only the characters of s that occur in the alphabet a


(defun filter-seq (str a)
  (let ((temp #\a)
        (res (make-array 1 :element-type 'character :adjustable t :fill-pointer 0))
        (arr1 (length str))
        (arr2 (length a)))

    (dotimes (i arr1 res)
      (:= temp (aref str i))
      (dotimes (i arr2)
        (when (equal (aref a i) temp)
          (vector-push-extend temp res))))))

