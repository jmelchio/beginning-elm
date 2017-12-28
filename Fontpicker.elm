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
        [ viewPicker
            [ ( "Small", SwitchTo Small )
            , ( "Medium", SwitchTo Medium )
            , ( "Large", SwitchTo Large )
            ]
        , section [] [ text model.content ]
        ]


viewPicker : List ( String, Msg ) -> Html Msg
viewPicker options =
    fieldset [] (List.map radio options)


radio : ( String, Msg ) -> Html Msg
radio ( name, msg ) =
    label []
        [ input [ type_ "radio", onClick msg ] []
        , text name
        ]
