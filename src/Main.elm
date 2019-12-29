module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (Html, div, p, text)
import Html.Events exposing (onClick)


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


init : Model
init =
    "hello world"



-- MODEL


type alias Model =
    String


type Msg
    = Capitalize
    | Decapitalize



-- UPDATE


update : Msg -> Model -> Model
update msg model =
    case msg of
        Capitalize ->
            String.toUpper model

        Decapitalize ->
            String.toLower model



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ p [ onClick Capitalize ] [ text model ]
        , p [ onClick Decapitalize ] [ text "make it small" ]
        ]
