(ns clj-deps-make
  (:require [clojure.string :as string]))

(defn -main [& args]
  (println "hello world"))

(defn summ [a b]
  (+ a b))


(defn add-player-age [player]
  (assoc player :age (- 2020 (:year player))))

(defn double [request]
  {:status 200
   :body
   (->> request
        :body
        Integer.
        (* 2)
        str)})

