{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

module Data.CSV.Conduit.Monoid
    ( (<>)
    ) where

import           Data.Monoid

#if !MIN_VERSION_base(4,5,0)
infixr 6 <>
-- | An infix synonym for 'mappend'.
(<>) :: Monoid m => m -> m -> m
(<>) = mappend
{-# INLINE (<>) #-}
#endif
