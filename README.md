# double-extra [![Hackage version](https://img.shields.io/hackage/v/double-extra.svg?label=Hackage)](https://hackage.haskell.org/package/double-extra) [![Stackage version](https://www.stackage.org/package/double-extra/badge/lts?label=Stackage)](https://www.stackage.org/package/double-extra) [![Build Status](https://secure.travis-ci.org/haskell/double-extra.svg?branch=master)](http://travis-ci.org/tolysz/double-extra) 
Missing presentations for Double numbers (fixed, scientific etc.)

please use `coerce` to convert from double before presenting

```haskell
DoublePrecision (i :: Nat)
DoubleExponential (i :: Nat)
DoubleFixed (i :: Nat)
DoubleShortest
```

# Please Note

For GHCJS you need to use the settings from stack till https://github.com/bos/double-conversion/pull/16