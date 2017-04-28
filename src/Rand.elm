module Rand exposing (..)

{-| Monad for random values

# Exposed values
@docs Seed
@docs rand
@docs toLetter
@docs mkSeed
-}

import Char exposing (fromCode)


{-| Random value seed
-}
type Seed
    = Seed Int


{-| Creates a "random" numer
    Really just the seed value
-}
rand : Seed -> ( Int, Seed )
rand (Seed s) =
    ( s, Seed (s + 1) )


{-| Makes a seed value
-}
mkSeed : Int -> Seed
mkSeed i =
    Seed (i)


{-| Converts an integer to a char
-}
toLetter : Int -> Char
toLetter x =
    fromCode (x + 64)



-- Your code goes here :-)
