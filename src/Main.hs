{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Data.Text (Text)
import Data.Void ( Void )
import Text.Megaparsec ( (<|>), Parsec )
import Text.Megaparsec.Char ( string )
import qualified Data.Text as T
import qualified Text.Megaparsec.Char.Lexer as L

type Parser = Parsec Void Text

pScheme :: Parser Text
pScheme = string "data"
  <|> string "files"
  <|> string "ftp"
  <|> string "http"
  <|> string "https"
  <|> string "irc"
  <|> string "mailto"

main :: IO ()
main = putStrLn "balh"

