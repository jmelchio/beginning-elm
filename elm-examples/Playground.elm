module Playground exposing (..)

import Html


type alias Person =
    { firstName : String
    , lastName : String
    , nationality : String
    , age : Int
    }


personList : List Person
personList =
    [ { firstName = "Joris", lastName = "Melchior", nationality = "CA", age = 53 }
    , { firstName = "Andrea", lastName = "Melchior", nationality = "CA", age = 52 }
    , { firstName = "Jasper", lastName = "Melchior", nationality = "CA", age = 18 }
    , { firstName = "Alanna", lastName = "Melchior", nationality = "CA", age = 15 }
    ]


filterPersonByAge : Int -> Person -> Bool
filterPersonByAge age person =
    person.age == age


revelation : String
revelation =
    """
    It became very clear to me sitting out there today
    that every decision I've made in my entire life has
    been wrong. My life is the complete "opposite" of
    everything I want it to be. Every instinct I have,
    in every aspect of life, be it something to wear,
    something to eat - it's all been wrong.
    """


msFunRunftc : String
msFunRunftc =
    "Michael Scott's Rabies Awareness \"Fun Run\" Race for the Cure"


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
    -- time 2 3
    --     |> speed 7.67
    --     |> escapeEarth "low" 11
    --     |> Html.text
    List.filter (filterPersonByAge 18) personList
        |> toString
        |> Html.text



-- That's All Folks !!
