module Msgs exposing (..)

import Navigation exposing (Location)


type Msg
    = NewUrl String
    | OnLocationChange Location
