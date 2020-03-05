.PHONY: test

clean:
	rm -rf target/

server/uberjar:
	clojure -A:server:uberjar

server/nrepl:
	clojure -A:server:test:nrepl -m nrepl.cmdline --middleware '["refactor-nrepl.middleware/wrap-refactor" "cider.nrepl/cider-middleware"]'

server/test:
	clojure -A:server:test:test-runner


ui/watch:
	npx shadow-cljs watch :app
