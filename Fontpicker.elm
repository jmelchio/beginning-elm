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



-- UPDATE


update : Msg -> Model -> Model
update msg model =
    case msg of
        SwitchTo newFontSize ->
            { model | fontSize = newFontSize }



-- VIEW


view : Msg -> Model -> Html Msg
view msg model =
    div []
        [ viewPicker "colorful"
            [ ( "Small", SwitchTo Small )
            , ( "Medium", SwitchTo Medium )
            , ( "Large", SwitchTo Large )
            ]
        , section [] [ text model.content ]
        ]


viewPicker : String -> List ( String, Msg ) -> Html Msg
viewPicker pickerClass options =
    fieldset [ class pickerClass ] (List.map radio options)


radio : ( String, Msg ) -> Html Msg
radio ( name, msg ) =
    label []
        [ input [ type_ "radio", onClick msg ] []
        , text name
        ]
