(ns clj-deps-make-test
  (:require [clj-deps-make :as sut]
            [clojure.test :refer :all]))

(deftest sample-true-test
  (is (= 14 (sut/summ 6 8))))

(deftest get-player-age
  (let [player {:name "Player Name"
                :year 1980}

        player-age 40

        updated-player (sut/add-player-age player)]
    (is (contains? updated-player :age))
    (is (= player-age (:age updated-player)))))


(deftest test-double-endpoint
  (let [number   123
        request  {:method  "POST"
                  :headers {"X-Header" "Value"}
                  :url     "/double"
                  :body    (str number)}
        response (sut/double request)]
    (is (= 200 (:status response)))
    (is (= (str (* 2 number)) (:body response)))))

(deftest additional-true-test
  (is true))
