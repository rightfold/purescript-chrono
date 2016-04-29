module Data.Chrono.LocalDate
( LocalDate(LocalDate)
) where

import Data.Chrono.Gregorian (Era, Month, Year)

data LocalDate = LocalDate { era :: Era
                           , year :: Year
                           , month :: Month
                           , day :: Int
                           }
