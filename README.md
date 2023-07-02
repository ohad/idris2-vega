# Idris2-Vega

Binding for [Vega](https://github.com/vega/vega).

Wraps the [`ipyvega`](https://github.com/vega/ipyvega/) library.

This package splits a part of @madman-bob's
[idris2-jupyter-vega](https://github.com/madman-bob/idris2-jupyter-vega/)
package to remove the dependency on
[idris2-jupyter](https://github.com/madman-bob/idris2-jupyter) and
[idris2-python](https://github.com/madman-bob/idris2-python).

## Installation

Install the [`ipyvega`](https://github.com/vega/ipyvega/) library.

Note that the `not needed in notebook >= 5.3` comment, in the `ipyvega` installation instructions, refers to the `--sys-prefix` flag, not the command as a whole.


### Plain Idris2 installation
To build:
``` bash
idris2 --build idris2-vega.ipkg
```

To install:
``` bash
idris2 --install idris2-vega.ipkg
```
### Pack installation
If you're using [pack](https://github.com/stefan-hoeck/idris2-pack):

``` bash
pack build idris2-vega.ipkg
```

## Updating the VegaLite version (untested)

We generate the bindings from a json schema. We hope to be able to
smoothly generate new binding when VegaLite's version updates.

Ensure the [Idris 2 JSON Schema tool](https://github.com/madman-bob/idris2-json-schema)
are installed, in a sibling directory of this repository.

If you're using [pack](https://github.com/stefan-hoeck/idris2-pack):

``` bash
pack install-app json-schema
```
