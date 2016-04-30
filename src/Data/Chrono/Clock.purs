module Data.Chrono.Clock
( Clock

, SYSTEM_CLOCK
, systemClock
) where

import Control.Monad.Eff (Eff)
import Data.Chrono.Instant (Instant)

type Clock m = m Instant

-- | The effect of reading the system time.
foreign import data SYSTEM_CLOCK :: !

foreign import systemClock :: forall eff. Clock (Eff (systemClock :: SYSTEM_CLOCK | eff))
