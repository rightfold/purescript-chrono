module Data.Chrono.LocalDate
( LocalDate
, localDate
, localDateEra
, localDateYear
, localDateMonth
, localDateDay
) where

import Data.Chrono.Gregorian (Era, Month, Year)
import Data.Maybe (Maybe(Just, Nothing))

data LocalDate = LocalDate { era :: Era
                           , year :: Year
                           , month :: Month
                           , day :: Int
                           }

localDate :: Era -> Year -> Month -> Int -> Maybe LocalDate
localDate era year month day = Just (LocalDate {era, year, month, day})

localDateEra :: LocalDate -> Era
localDateEra (LocalDate {era}) = era

localDateYear :: LocalDate -> Year
localDateYear (LocalDate {year}) = year

localDateMonth :: LocalDate -> Month
localDateMonth (LocalDate {month}) = month

localDateDay :: LocalDate -> Int
localDateDay (LocalDate {day}) = day
