module Fontpicker exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


-- MODEL


type alias Model =
    { fontSize : FontSize
    , content : String
    }


type FontSize
    = Small
    | Medium
    | Large



-- UPDATE


type Msg
    = SwitchTo FontSize


update : Msg -> Model -> Html Msg
update msg model =
    div []
        [ fieldset []
            [ radio (SwitchTo Small) "Small"
            , radio (SwitchTo Medium) "Medium"
            , radio (SwitchTo Large) "Large"
            ]
        , section [] [ text model.content ]
        ]


radio : Msg -> String -> Html Msg
radio msg name =
    label []
        [ input [ type_ "radio", onClick msg ] []
        , text name
        ]
