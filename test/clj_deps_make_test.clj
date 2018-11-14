(ns clj-deps-make-test
  (:require [clj-deps-make :as sut]
            [clojure.test :as t]))

(t/deftest sample-true-test
  (t/is true)
  (t/is true))

(t/deftest additional-true-test
  (t/is true))
