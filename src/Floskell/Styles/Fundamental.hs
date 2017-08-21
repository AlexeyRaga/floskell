{-# LANGUAGE OverloadedStrings #-}

-- | Fundamental built-in style. Defines no additional extensions or
-- configurations beyond the default printer.
module Floskell.Styles.Fundamental where

import           Floskell.Types

-- | Empty state.
data State = State

-- | The printer style.
fundamental :: Style
fundamental =
    Style { styleName = "fundamental"
          , styleAuthor = "Chris Done"
          , styleDescription = "This style adds no extensions to the built-in printer."
          , styleInitialState = State
          , styleExtenders = []
          , styleDefConfig = defaultConfig
          , styleCommentPreprocessor = return
          , styleLinePenalty = defaultLinePenalty
          }
