.PHONY: test

server/uberjar:
	clojure -A:uberjar

server/nrepl:
	clojure -A:test:nrepl -m nrepl.cmdline --middleware '["refactor-nrepl.middleware/wrap-refactor" "cider.nrepl/cider-middleware"]'

server/test:
	clojure -A:test:runner


ui/watch:
	npx shadow-cljs watch :app
