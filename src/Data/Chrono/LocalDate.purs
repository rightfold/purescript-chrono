module Data.Chrono.LocalDate
( LocalDate(LocalDate)
) where

import Data.Chrono.Era (Era)
import Data.NonZero (NonZero)

data LocalDate = LocalDate { era :: Era
                           , year :: NonZero Int
                           , month :: Int
                           , day :: Int
                           }
