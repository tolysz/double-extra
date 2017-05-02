module Data.Double.Extra.Cassava where

import Data.Double.Extra.Types
import Data.Double.Conversion.ByteString
import qualified Data.Csv as CSV

-- Writing 

instance KnownNat n => CSV.ToField (DoubleFixed n) where
  toField x = toFixed (fromIntegral (natVal x)) $ coerce x

instance KnownNat n => CSV.ToField (DoublePrecision n) where
  toField x = toPrecision (fromIntegral (natVal x)) $ coerce x

instance KnownNat n => CSV.ToField (DoubleExponential n) where
  toField x = toExponential (fromIntegral (natVal x)) $ coerce x

instance CSV.ToField DoubleShortest where
  toField = coerce toShortest

-- Reading

instance KnownNat n => CSV.FromField (DoubleFixed n) where
  parseField = coerce (CSV.parseField :: CSV.Field -> CSV.Parser Double)

instance KnownNat n => CSV.FromField (DoublePrecision n) where
  parseField = coerce (CSV.parseField :: CSV.Field -> CSV.Parser Double)

instance KnownNat n => CSV.FromField (DoubleExponential n) where
  parseField = coerce (CSV.parseField :: CSV.Field -> CSV.Parser Double)

instance CSV.FromField DoubleShortest where
  parseField = coerce (CSV.parseField :: CSV.Field -> CSV.Parser Double)
