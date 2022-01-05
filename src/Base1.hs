{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE RankNTypes        #-}
{-# LANGUAGE UnicodeSyntax     #-}

{- | A Prelude replacement, collecting all my favourite base imports and
     low-level local imports; not including testing base. -}

module Base1
  ( module Base0

    ------------------------------------
    --         has-callstack          --
    ------------------------------------
  , module HasCallstack

    ------------------------------------
    --             index              --
    ------------------------------------
  , module Index

    ------------------------------------
    --         monaderror-io          --
    ------------------------------------
  , module MonadError
  , module MonadError.IO
  , module MonadError.IO.Error

    ------------------------------------
    --          more-unicode          --
    ------------------------------------
  , module Data.MoreUnicode.Applicative
  , module Data.MoreUnicode.Bool
  , module Data.MoreUnicode.Char
  , module Data.MoreUnicode.Either
  , module Data.MoreUnicode.Functor
  , module Data.MoreUnicode.Lens
  , module Data.MoreUnicode.Maybe
  , module Data.MoreUnicode.Monad
  , module Data.MoreUnicode.Monoid
  , module Data.MoreUnicode.Semigroup
  , module Data.MoreUnicode.String
  , module Data.MoreUnicode.Text

    ------------------------------------
    --              tfmt              --
    ------------------------------------
  , module Text.Fmt
  )
where

import Base0

-- has-callstack -----------------------

import HasCallstack  ( HasCallstack( callstack ) )

-- index -------------------------------

import Index  ( HasIndex( Elem, Indexer, index ), (!), (!!) )

-- monaderror-io -----------------------

import MonadError           ( ѥ, splitMError )
import MonadError.IO        ( asIOError )
import MonadError.IO.Error  ( AsIOError( _IOError ), userE )

-- more-unicode ------------------------

import Data.MoreUnicode.Applicative  ( (∤), (⊵), (⊴), (⋫), (⋪) )
import Data.MoreUnicode.Bool         ( 𝔹 )
import Data.MoreUnicode.Char         ( ℂ )
import Data.MoreUnicode.Either       ( 𝔼, pattern 𝕷, pattern 𝕽 )
import Data.MoreUnicode.Functor      ( (⊳), (⊳⊳), (⊳⊳⊳), (⊲), (⩺) )
import Data.MoreUnicode.Lens         ( (⊣), (⊢), (⫥) )
import Data.MoreUnicode.Maybe        ( 𝕄, pattern 𝕵, pattern 𝕹 )
import Data.MoreUnicode.Monad        ( (≫), (⪼), (≪) )
import Data.MoreUnicode.Monoid       ( ю, ф )
import Data.MoreUnicode.Semigroup    ( (◇) )
import Data.MoreUnicode.String       ( 𝕊 )
import Data.MoreUnicode.Text         ( 𝕋 )

-- tfmt --------------------------------

import Text.Fmt  ( fmt, fmtS, fmtT )

-- that's all, folks! ----------------------------------------------------------
