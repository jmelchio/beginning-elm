module BeginningElm exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


view model =
    div [ class "jumbotron" ]
        [ h1 [] [ text "Welcom to Dunder MIfflin!" ]
        , p []
            [ text "Dunder Mifflin Inc. (stock symbol "
            , strong [] [ text "DMI" ]
            , text ") is a micro-cap regional paper and office supply distributor with an emphasis on servicing small-business clients."
            ]
        ]


main =
    view "dummy model"
