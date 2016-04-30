module Data.Chrono.Clock
( Clock

, SYSTEMCLOCK
, systemClock
) where

import Control.Monad.Eff (Eff)
import Data.Chrono.Instant (Instant)

type Clock m = m Instant

-- | The effect of reading the system time.
foreign import data SYSTEMCLOCK :: !

foreign import systemClock :: forall eff. Clock (Eff (systemClock :: SYSTEMCLOCK | eff))
