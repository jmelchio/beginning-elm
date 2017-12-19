module RippleCarryAdder exposing (..)

import Bitwise


underSeventy : { a | age : Int } -> Bool
underSeventy { age } =
    age < 70


andGate : Int -> Int -> Int
andGate a b =
    Bitwise.and a b
