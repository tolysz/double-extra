module Data.Double.Extra.RawString where

import Data.Text.ToText
import Data.Text.ToTextBuilder
import Data.Double.Extra.Types
import Data.Double.Conversion.Text
import Data.Text.Lazy.Builder as B
import qualified Data.Text.Lazy as TL

instance KnownNat n => ToTextBuilder (DoubleFixed n) where
  toTextBuilder x = B.fromText . toFixed (fromIntegral (natVal x)) $ coerce x
instance KnownNat n => ToTextBuilder (DoublePrecision n) where
  toTextBuilder x = B.fromText . toPrecision (fromIntegral (natVal x)) $ coerce x
instance KnownNat n => ToTextBuilder (DoubleExponential n) where
  toTextBuilder x = B.fromText . toExponential (fromIntegral (natVal x)) $ coerce x
instance ToTextBuilder DoubleShortest where
  toTextBuilder = B.fromText . toShortest . coerce


instance KnownNat n => ToText (DoubleFixed n) where
  toText x = toFixed (fromIntegral (natVal x)) $ coerce x
  toLazyText = TL.fromStrict . toText
instance KnownNat n => ToText (DoublePrecision n) where
  toText x = toPrecision (fromIntegral (natVal x)) $ coerce x
  toLazyText = TL.fromStrict . toText
instance KnownNat n => ToText (DoubleExponential n) where
  toText x = toExponential (fromIntegral (natVal x)) $ coerce x
  toLazyText = TL.fromStrict . toText
instance ToText DoubleShortest where
  toText = toShortest . coerce
  toLazyText = TL.fromStrict . toText
