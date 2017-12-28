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
        [ checkbox ToggleNotifications "Email Notifications"
        , checkbox ToggleAutoplay "Video Autoplay"
        , checkbox ToggleLocation "Use Location"
        ]


checkbox : Msg -> String -> Html Msg
checkbox msg name =
    label []
        [ input [ type_ "checkbox", onClick msg ] []
        , text name
        ]
