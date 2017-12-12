module Playground exposing (..)

import Html


weekday : Int -> String
weekday dayInNumber =
    case dayInNumber of
        0 ->
            "Sunday"

        1 ->
            "Monday"

        2 ->
            "Tuesday"

        3 ->
            "Wednesday"

        4 ->
            "Thursday"

        5 ->
            "Friday"

        6 ->
            "Saturday"

        _ ->
            "Unknown day"


hashtag : Int -> String
hashtag dayInNumber =
    case weekday dayInNumber of
        "Sunday" ->
            "#SinDay"

        "Monday" ->
            "#MondayBlues"

        "Tuesday" ->
            "#TakeMeBackTuesday"

        "Wednesday" ->
            "#HumpDay"

        "Thursday" ->
            "#ThrowbackThursday"

        "Friday" ->
            "#FlashbackFriday"

        "Saturday" ->
            "#Caturday"

        _ ->
            "#Whatever"


escapeEarth : String -> Float -> Float -> String
escapeEarth fuelStatus velocity speed =
    let
        escapeVelocityInKmPerSec =
            11.186

        orbitalSpeedInKmPerSec =
            7.67

        whereToLand fuelStatus =
            if fuelStatus == "low" then
                "Land on droneship"
            else
                "Land on launchpad"
    in
    if velocity > escapeVelocityInKmPerSec then
        "Godspeed"
    else if speed == orbitalSpeedInKmPerSec then
        "Stay in orbit"
    else
        whereToLand fuelStatus


speed : Float -> Int -> Float
speed distance time =
    distance / toFloat time


time : Int -> Int -> Int
time startTime endTime =
    endTime - startTime


main : Html.Html msg
main =
    -- Html.text (escapeEarth 11 (speed 7.67 (time 2 3)))
    time 2 3
        |> speed 7.67
        |> escapeEarth "low" 11
        |> Html.text



-- That's All Folks !!
