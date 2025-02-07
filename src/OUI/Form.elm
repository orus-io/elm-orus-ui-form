module OUI.Form exposing (..)

import Form
import Form.Field
import Form.FieldStack as FieldStack
import Form.InputType as InputType
import OUI.TextField


textInput :
    String
    -> Form.FieldViewState customError String stackMsg
    -> OUI.TextField.TextField (Form.Msg stackMsg)
textInput label { state, onInput, onFocus, onBlur } =
    OUI.TextField.new label (onInput InputType.Text) (state.value |> Maybe.withDefault "")
        |> OUI.TextField.withFocused state.hasFocus
        |> OUI.TextField.onFocusBlur onFocus onBlur
