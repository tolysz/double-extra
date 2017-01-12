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
  deriving (Eq,Ord,Show,Read,Generic,NFData,Num,Fractional,Real,RealFrac)

newtype DoubleExponential (i :: Nat) = DoubleExponential Double
  deriving (Eq,Ord,Show,Read,Generic,NFData,Num,Fractional,Real,RealFrac)

newtype DoubleFixed (i :: Nat) = DoubleFixed Double
  deriving (Eq,Ord,Show,Read,Generic,NFData,Num,Fractional,Real,RealFrac)

newtype DoubleShortest = DoubleShortest Double
  deriving (Eq,Ord,Show,Read,Generic,NFData,Num,Fractional,Real,RealFrac)
