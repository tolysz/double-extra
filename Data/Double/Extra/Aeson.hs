module Data.Double.Extra.Aeson where

import Data.Double.Extra.Types
import qualified Data.ByteString.Builder as B
import Data.Aeson (FromJSON(..), ToJSON(..))
import qualified Data.Aeson.Types as AI
import Data.Double.Conversion.ByteString

instance FromJSON (DoubleFixed n) where
  parseJSON = coerce . (parseJSON :: AI.Value -> AI.Parser Double)
instance KnownNat n => ToJSON (DoubleFixed n) where
 toJSON = (toJSON :: Double -> AI.Value) . coerce
 toEncoding x = AI.unsafeToEncoding $  B.byteString . toFixed (fromIntegral (natVal x)) $ coerce x

instance FromJSON (DoublePrecision n) where
  parseJSON = coerce . (parseJSON :: AI.Value -> AI.Parser Double)
instance KnownNat n => ToJSON (DoublePrecision n) where
 toJSON = (toJSON :: Double -> AI.Value) . coerce
 toEncoding x = AI.unsafeToEncoding $  B.byteString . toPrecision (fromIntegral (natVal x)) $ coerce x

instance FromJSON (DoubleExponential n) where
  parseJSON = coerce . (parseJSON :: AI.Value -> AI.Parser Double)
instance KnownNat n => ToJSON (DoubleExponential n) where
 toJSON = (toJSON :: Double -> AI.Value) . coerce
 toEncoding x = AI.unsafeToEncoding $  B.byteString . toExponential (fromIntegral (natVal x)) $ coerce x

instance FromJSON DoubleShortest where
  parseJSON = coerce . (parseJSON :: AI.Value -> AI.Parser Double)
instance ToJSON DoubleShortest where
 toJSON = (toJSON :: Double -> AI.Value) . coerce
 toEncoding = AI.unsafeToEncoding . B.byteString . toShortest . coerce
