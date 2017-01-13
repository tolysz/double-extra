{-# LANGUAGE RoleAnnotations #-}
module Data.Double.Extra.Types
 ( DoublePrecision(..)
 , DoubleExponential(..)
 , DoubleFixed(..)
 , DoubleShortest(..)
 , module X
 ) where

import Control.DeepSeq (NFData)
import GHC.TypeLits as X
import Data.Coerce as X
import GHC.Generics

newtype DoublePrecision (i :: Nat) = DoublePrecision Double
  deriving (Eq,Enum,Ord,Show,Read,Generic,NFData,Num,Fractional,Floating,Real,RealFrac)
type role DoublePrecision phantom

newtype DoubleExponential (i :: Nat) = DoubleExponential Double
  deriving (Eq,Enum,Ord,Show,Read,Generic,NFData,Num,Fractional,Floating,Real,RealFrac)
type role DoubleExponential phantom

newtype DoubleFixed (i :: Nat) = DoubleFixed Double
  deriving (Eq,Enum,Ord,Show,Read,Generic,NFData,Num,Fractional,Floating,Real,RealFrac)
type role DoubleFixed phantom

newtype DoubleShortest = DoubleShortest Double
  deriving (Eq,Enum,Ord,Show,Read,Generic,NFData,Num,Fractional,Floating,Real,RealFrac)
