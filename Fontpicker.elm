module Fontpicker exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


main =
    Html.beginnerProgram
        { view = view
        , model = model
        , update = update
        }



-- MODEL


type alias Model =
    { fontSize : FontSize
    , content : String
    }


type FontSize
    = Small
    | Medium
    | Large


model : Model
model =
    Model Medium "Some random text so we can see it ..."



-- UPDATE


type Msg
    = SwitchTo FontSize


update : Msg -> Model -> Model
update msg model =
    case msg of
        SwitchTo newFontSize ->
            let
                _ =
                    Debug.log "**** SwitchTo ****" newFontSize
            in
            { model | fontSize = newFontSize }



-- VIEW


view : Model -> Html Msg
view model =
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
radio ( labeltext, msg ) =
    label []
        [ input
            [ type_ "radio"
            , onClick msg
            , name "sumtin"
            ]
            []
        , text labeltext
        ]
