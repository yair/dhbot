module Config where

import Prelude
import Effect (Effect)
import Effect.Console (logShow)
--import Node.Yargs.Applicative (flag, yarg, runY)
import Node.Yargs.Applicative -- (yarg, runY)
import Node.Yargs.Setup (usage, example)
import Data.Maybe (Maybe(..))
import Data.Either (Either(..))
import Control.Applicative
import Control.Apply

--delme
--import Data.Array (reverse)

{-
app :: Array String -> Boolean -> Effect Unit
app []  _     = pure unit
app ss false = logShow ss
--app ss true  = logShow (reverse ss)
app ss true  = logShow (ss)
-}

app2 :: Array String -> Effect Unit
app2 [] = pure unit
app2 ss = do
  logShow ss

app3 :: Array String -> Effect (Array String)
app3 [] = pure []
app3 ss = do
  logShow ss
  pure ss

--strip :: (Apply Y) a -> a
--strip Y a = a

--getConfig :: Effect (Array String) -- Unit
getConfig :: Effect Unit
getConfig = do
  let setup = usage "$0 -w Word1 -w Word2"
              <> example "$0 -w Hello -w World" "Say hello!"
  let fn = yarg "w" ["word"] (Just "A word") (Right "At least one word is required") false

--runY setup $ app <$> yarg "w" ["word"] (Just "A word") (Right "At least one word is required") false
  runY setup $ app2 <$> fn -- yarg "w" ["word"] (Just "A word") (Right "At least one word is required") false
--  logShow $ strip fn
--                   <*> flag "r" []       (Just "Reverse the words")
--  pure fn
--  pure ["yada"]
{-
app :: Array String -> Boolean -> Effect Unit
--app :: String -> Boolean -> Effect Unit
app [] _     = pure unit
--app ss false = logShow $ "Fail: " <> ss
--app ss true  = logShow $ "Success: " <> ss
app ss false = logShow ss
app ss true  = logShow ss

getConfig :: Effect Unit
getConfig = do
  let setup = usage "$0 -c <dhbot config file>"

  runY setup $ app <$> yarg "c" ["word"] (Just "A word") (Right "Configuration file name is required") false
                   <*> flag "r" []       (Just "Reverse the words")
-}
