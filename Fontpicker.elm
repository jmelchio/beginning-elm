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
            [ label []
                [ input [ type_ "radio", onClick (SwitchTo Small) ] []
                , text "Small"
                ]
            , label []
                [ input [ type_ "radio", onClick (SwitchTo Medium) ] []
                , text "Medium"
                ]
            , label []
                [ input [ type_ "radio", onClick (SwitchTo Large) ] []
                , text "Large"
                ]
            ]
        , section [] [ text model.content ]
        ]
