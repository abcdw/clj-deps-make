# clj-deps-make

Example usage of GNU Make with clojure cli and deps.edn

## Supported features

Clone the repo and execute `make run`, "hello world" should be printed.

Description of other targets listed below:

| Target  | Description                                      |
| :---    | :---                                             |
| run     | Run -main function                               |
| uberjar | Build uberjar and save it to target/             |
| clean   | Clean up all build artifacts                     |
| test    | Run all project tests                            |
| repl    | Run simple Clojure repl with test/ in class path |
| nrepl   | Run nrepl with cider middlewares and spyscope    |

## Prerequisite

[clj](https://clojure.org/guides/getting_started) and [make](https://www.gnu.org/software/make/)

## TODO

Some other nifty things can appear in this repo later:

* [ ] clojars deployment
