JSON-SCHEMA ?= json-schema

build:
	idris2 --build idris2-vega.ipkg

src/Language/VegaLite/V5.idr: lib/v5.json Makefile
	$(JSON-SCHEMA) --module-name Language.VegaLite.V5 --schema-name VegaLite --json-casts lib/v5.json
	mv lib/v5.idr src/Language/VegaLite/V5.idr

lib/v5.json:
	wget https://vega.github.io/schema/vega-lite/v5.json -O lib/v5.json

update-vega-sources: lib/v5.json src/Language/VegaLite/V5.idr

#clean:
#	$(RM) src/Language/VegaLite/V5.idr
