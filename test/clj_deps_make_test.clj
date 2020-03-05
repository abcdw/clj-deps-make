(ns clj-deps-make-test
  (:require [clj-deps-make :as sut]
            [clojure.test :refer :all]))

(deftest sample-true-test
  (is true)
  (is true))

(deftest additional-true-test
  (is true))
