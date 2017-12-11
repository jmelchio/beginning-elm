module Playground exposing (..)

import Html


escapeEarth : Float -> Float -> String
escapeEarth velocity speed =
    if velocity > 11.186 then
        "Godspeed"
    else if speed == 7.67 then
        "Stay in orbit"
    else
        "Come back"


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
        |> escapeEarth 11
        |> Html.text



-- That's All Folks !!
