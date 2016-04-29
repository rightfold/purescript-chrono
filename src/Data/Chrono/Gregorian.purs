module Data.Chrono.Gregorian
( Era(..)
, Year
, Month(..)
) where

import Data.Positive (Positive)

data Era = BeforeChrist | AnnoDomini

type Year = Positive Int

data Month = January | February | March | April | May | June
           | July | August | September | October | November | December
