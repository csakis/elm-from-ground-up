module Main exposing (Model, Msg, init, main, update, view)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import String exposing (fromInt)


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }


init : Model
init =
    { message = "Hello World"
    , counter = 0
    }



-- MODEL


type alias Model =
    { message : String
    , counter : Int
    }


type Msg
    = Increment
    | Decrement



-- UPDATE


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            { model | counter = model.counter + 1 }
        Decrement ->
            { model | counter = model.counter - 1 }



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ text model.message
        , div [] [ text (String.fromInt model.counter) ]
        , button [ onClick Increment ] [ text "+" ]
        , button [ onClick Decrement ] [ text "-" ]
        ]
