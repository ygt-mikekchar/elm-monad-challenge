module Tests exposing (..)

import Test exposing (..)
import Expect
import Fuzz exposing (list, int, tuple, string)
import String
import Rand exposing (..)


all : Test
all =
    describe "Rand"
        [ describe "prelude"
            [ describe "toLetter"
                [ test "converts our random numbers to letters" <|
                    \() ->
                        let
                            answer =
                                'A'
                        in
                            Expect.equal answer <| toLetter 1
                ]
            ]
        , describe "fiveRands"
            [ test "produces 5 numbers" <|
                \() ->
                    let
                        answer =
                            [ 1, 2, 3, 4, 5 ]
                    in
                        Expect.equal answer fiveRands
            ]
        ]
