module RippleCarryAdderTests exposing (main)

import Expect
import RippleCarryAdder exposing (..)
import Test exposing (describe, test)
import Test.Runner.Html exposing (run)


main =
    run <|
        describe "Additionnelle"
            [ test "1 + 1 = 2" <|
                \() ->
                    (1 + 1) |> Expect.equal 2
            ]
