module Main where

import Prelude
import Effect (Effect)
import Effect.Console (logShow)
--import Control.Monad.Eff
import Control.Monad
import Partial.Unsafe (unsafePartial)
import Data.Maybe (fromJust, Maybe)
import Data.Array (head)

import Config (getConfig)

--showConfig :: forall eff2. Show (Array String a) => a -> Effect {- (console :: CONSOLE | eff2) -} Unit
--showConfig :: forall m a. Monad m => m a -> m Unit
--showConfig m a = logShow a

-- stripEffect :: forall e. Effect e => e (Array String) -> Array String
--stripEffect :: forall a. Effect a -> a
--stripEffect a = a

--headEffect :: forall m a. Effect m => m (Array a) -> Maybe a
--headEffect m xs = head xs

--main :: Effect Unit
main :: Effect Unit
main = getConfig -- do
--  showConfig getConfig
--  logShow $ stripEffect getConfig
--  logShow $ unsafePartial $ fromJust $ headEffect $ getConfig
  -- let fn = getConfig
  -- logShow fn
