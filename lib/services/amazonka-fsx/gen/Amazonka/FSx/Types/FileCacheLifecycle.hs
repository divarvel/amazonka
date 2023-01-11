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
-- Module      : Amazonka.FSx.Types.FileCacheLifecycle
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.FSx.Types.FileCacheLifecycle
  ( FileCacheLifecycle
      ( ..,
        FileCacheLifecycle_AVAILABLE,
        FileCacheLifecycle_CREATING,
        FileCacheLifecycle_DELETING,
        FileCacheLifecycle_FAILED,
        FileCacheLifecycle_UPDATING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype FileCacheLifecycle = FileCacheLifecycle'
  { fromFileCacheLifecycle ::
      Data.Text
  }
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
      Data.FromText,
      Data.ToText,
      Data.ToByteString,
      Data.ToLog,
      Data.ToHeader,
      Data.ToQuery,
      Data.FromJSON,
      Data.FromJSONKey,
      Data.ToJSON,
      Data.ToJSONKey,
      Data.FromXML,
      Data.ToXML
    )

pattern FileCacheLifecycle_AVAILABLE :: FileCacheLifecycle
pattern FileCacheLifecycle_AVAILABLE = FileCacheLifecycle' "AVAILABLE"

pattern FileCacheLifecycle_CREATING :: FileCacheLifecycle
pattern FileCacheLifecycle_CREATING = FileCacheLifecycle' "CREATING"

pattern FileCacheLifecycle_DELETING :: FileCacheLifecycle
pattern FileCacheLifecycle_DELETING = FileCacheLifecycle' "DELETING"

pattern FileCacheLifecycle_FAILED :: FileCacheLifecycle
pattern FileCacheLifecycle_FAILED = FileCacheLifecycle' "FAILED"

pattern FileCacheLifecycle_UPDATING :: FileCacheLifecycle
pattern FileCacheLifecycle_UPDATING = FileCacheLifecycle' "UPDATING"

{-# COMPLETE
  FileCacheLifecycle_AVAILABLE,
  FileCacheLifecycle_CREATING,
  FileCacheLifecycle_DELETING,
  FileCacheLifecycle_FAILED,
  FileCacheLifecycle_UPDATING,
  FileCacheLifecycle'
  #-}