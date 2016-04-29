-- | `Data.Chrono` implements a versatile time library.
-- |
-- | `Data.Chrono` has some limitations:
-- |
-- |  - Only the Gregorian calendar is supported.
-- |  - Relativity is not considered.
module Data.Chrono
( module Data.Chrono.Arithmetic
, module Data.Chrono.Clock
, module Data.Chrono.Duration
, module Data.Chrono.Era
, module Data.Chrono.Instant
, module Data.Chrono.LocalDate
, module Data.Chrono.LocalTime
, module Data.Chrono.Period
) where

import Data.Chrono.Arithmetic
import Data.Chrono.Clock
import Data.Chrono.Duration
import Data.Chrono.Era
import Data.Chrono.Instant
import Data.Chrono.LocalDate
import Data.Chrono.LocalTime
import Data.Chrono.Period
