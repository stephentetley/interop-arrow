# interop-arrow

Wrappers to use Apache Arrow from Flix.

Very early stages / work in progress.

Needs a version of Flix higher than 0.38.0 to handle Maven jar dependencies
with non-standard version tags.

To run tests add `--add-opens=java.base/java.nio=ALL-UNNAMED` to the command line, e.g.

> java --add-opens=java.base/java.nio=ALL-UNNAMED -jar ..\bin\flix.jar test

License: Apache 2.0
