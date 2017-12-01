module Update exposing (..)

import Routing exposing (parseLocation)
import Msgs exposing (Msg)
import Models exposing (Model)
import Navigation


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.NewUrl url ->
            ( model, Navigation.newUrl url )

        Msgs.OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )
