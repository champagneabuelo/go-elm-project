module Main exposing (..)

import Commands exposing (fetchPlayers)
import Models exposing (Model, initialModel)
import Msgs exposing (Msg)
import Update exposing (update)
import View exposing (view)
import Routing
import Navigation exposing (Location)


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Routing.parseLocation location
    in
        ( initialModel currentRoute, fetchPlayers )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Never Model Msg
main =
    Navigation.program Msgs.OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
