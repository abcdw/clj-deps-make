.PHONY: test

build: uberjar

uberjar:
	clj -A:uberjar

run:
	clj -A:run

pom:
	clj -Spom

deploy:
	echo "Add example of clojars deployment"

clean:
	rm -rf target/

repl:
	clj -A:test

nrepl:
	clojure -A:test:nrepl -m nrepl.cmdline --middleware '["refactor-nrepl.middleware/wrap-refactor" "cider.nrepl/cider-middleware"]'

test:
	clj -A:test:runner
