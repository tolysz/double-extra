module Data.Double.Extra.Cassava where

import Data.Double.Extra.Types
import Data.Double.Conversion.ByteString
import qualified Data.Csv as CSV

instance KnownNat n => CSV.ToField (DoubleFixed n) where
  toField x = toFixed (fromIntegral (natVal x)) $ coerce x

instance KnownNat n => CSV.ToField (DoublePrecision n) where
  toField x = toPrecision (fromIntegral (natVal x)) $ coerce x

instance KnownNat n => CSV.ToField (DoubleExponential n) where
  toField x = toExponential (fromIntegral (natVal x)) $ coerce x

instance CSV.ToField DoubleShortest where
  toField = coerce toShortest
