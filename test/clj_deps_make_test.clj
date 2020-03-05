(ns clj-deps-make-test
  (:require [clj-deps-make :as sut]
            [clojure.test :refer :all]))

(deftest sample-true-test
  (is (= 14 (sut/summ 6 8))))

(deftest additional-true-test
  (is true))
