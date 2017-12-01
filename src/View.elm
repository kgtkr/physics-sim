module View exposing (..)

import Html exposing (Html, div, text, button)
import Msgs exposing (Msg(..))
import Models exposing (Model)
import Routing exposing (Route(..))
import Html.Events exposing (onClick)


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        HomeRoute ->
            homeView

        FreeFallRoute ->
            freeFallView

        NotFoundRoute ->
            notFoundView


freeFallView : Html Msg
freeFallView =
    div []
        [ text "freeFall"
        ]


homeView : Html Msg
homeView =
    div []
        [ text "Home"
        , button
            [ onClick (NewUrl "#free-fall")
            ]
            [ text "ff" ]
        ]


notFoundView : Html Msg
notFoundView =
    div []
        [ text "Not found"
        ]
