module SuperSimple exposing (..)

import Html exposing (Attribute, Html, br, button, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)


main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    { counter : Int
    , content : String
    }


model : Model
model =
    { counter = 0
    , content = ""
    }



--  UPDATE


type Msg
    = Increment
    | Decrement
    | Reset
    | Change String


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | counter = model.counter + 1 }

        Decrement ->
            { model | counter = model.counter - 1 }

        Reset ->
            { model | counter = 0 }

        Change newContent ->
            { model | content = newContent }



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (toString model.counter) ]
        , button [ onClick Increment ] [ text "+" ]
        , br [] []
        , button [ onClick Reset ] [ text "Reset" ]
        , div []
            [ input [ placeholder "Text to reverse", onInput Change ] []
            , div [] [ text (String.reverse model.content) ]
            ]
        ]
