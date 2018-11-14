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
	clj -A:test:nrepl

test:
	clj -A:test:runner
