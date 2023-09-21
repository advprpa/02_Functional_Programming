{-# LANGUAGE OverloadedStrings #-}
module Main where

import Web.Scotty

main = scotty 3000 $
    get "/:word" $ do
        word <- param "word"
        html ("<h1>AdvPrPa " <> word <> "</h1>")
