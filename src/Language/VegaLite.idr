module Language.VegaLite

import Data.String
import Language.JSON

import public Language.VegaLite.V5 as Language.VegaLite

%default total

export
display : HasIO io => VegaLite -> io ()
display vegaLite = putStrLn $ "DisplayVegaLite " ++ show (assert_total $ cast {to = JSON} vegaLite)

export
record RawVegaLite where
    constructor MkRawVegaLite
    json : String
