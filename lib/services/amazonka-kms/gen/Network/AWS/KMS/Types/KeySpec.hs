{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.KeySpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.KeySpec
  ( KeySpec
      ( ..,
        KeySpec_ECC_NIST_P256,
        KeySpec_ECC_NIST_P384,
        KeySpec_ECC_NIST_P521,
        KeySpec_ECC_SECG_P256K1,
        KeySpec_RSA_2048,
        KeySpec_RSA_3072,
        KeySpec_RSA_4096,
        KeySpec_SYMMETRIC_DEFAULT
      ),
  )
where

import qualified Network.AWS.Core as Core
import qualified Network.AWS.Prelude as Prelude

newtype KeySpec = KeySpec' {fromKeySpec :: Core.Text}
  deriving stock
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Generic
    )
  deriving newtype
    ( Prelude.Hashable,
      Prelude.NFData,
      Core.FromText,
      Core.ToText,
      Core.ToByteString,
      Core.ToLog,
      Core.ToHeader,
      Core.ToQuery,
      Core.FromJSON,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromXML,
      Core.ToXML
    )

pattern KeySpec_ECC_NIST_P256 :: KeySpec
pattern KeySpec_ECC_NIST_P256 = KeySpec' "ECC_NIST_P256"

pattern KeySpec_ECC_NIST_P384 :: KeySpec
pattern KeySpec_ECC_NIST_P384 = KeySpec' "ECC_NIST_P384"

pattern KeySpec_ECC_NIST_P521 :: KeySpec
pattern KeySpec_ECC_NIST_P521 = KeySpec' "ECC_NIST_P521"

pattern KeySpec_ECC_SECG_P256K1 :: KeySpec
pattern KeySpec_ECC_SECG_P256K1 = KeySpec' "ECC_SECG_P256K1"

pattern KeySpec_RSA_2048 :: KeySpec
pattern KeySpec_RSA_2048 = KeySpec' "RSA_2048"

pattern KeySpec_RSA_3072 :: KeySpec
pattern KeySpec_RSA_3072 = KeySpec' "RSA_3072"

pattern KeySpec_RSA_4096 :: KeySpec
pattern KeySpec_RSA_4096 = KeySpec' "RSA_4096"

pattern KeySpec_SYMMETRIC_DEFAULT :: KeySpec
pattern KeySpec_SYMMETRIC_DEFAULT = KeySpec' "SYMMETRIC_DEFAULT"

{-# COMPLETE
  KeySpec_ECC_NIST_P256,
  KeySpec_ECC_NIST_P384,
  KeySpec_ECC_NIST_P521,
  KeySpec_ECC_SECG_P256K1,
  KeySpec_RSA_2048,
  KeySpec_RSA_3072,
  KeySpec_RSA_4096,
  KeySpec_SYMMETRIC_DEFAULT,
  KeySpec'
  #-}