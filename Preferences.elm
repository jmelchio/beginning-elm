module Preferences exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


-- MODEL


type alias Model =
    { notifications : Bool
    , autoplay : Bool
    , location : Bool
    }



-- UPDATE


type Msg
    = ToggleNotifications
    | ToggleAutoplay
    | ToggleLocation


update : Msg -> Model -> Model
update msg model =
    case msg of
        ToggleNotifications ->
            { model | notifications = not model.notifications }

        ToggleAutoplay ->
            { model | autoplay = not model.autoplay }

        ToggleLocation ->
            { model | location = not model.location }



-- VIEW


view : Model -> Html Msg
view model =
    fieldset []
        [ label []
            [ input [ type_ "checkbox", onClick ToggleNotifications ] []
            , text "Email Notifications"
            ]
        , label []
            [ input [ type_ "checkbox", onClick ToggleAutoplay ] []
            , text "Video Autoplay"
            ]
        , label []
            [ input [ type_ "checkbox", onClick ToggleLocation ] []
            , text "Use Location"
            ]
        ]
