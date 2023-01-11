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
-- Module      : Amazonka.Glue.Types.CrawlerHistoryState
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Glue.Types.CrawlerHistoryState
  ( CrawlerHistoryState
      ( ..,
        CrawlerHistoryState_COMPLETED,
        CrawlerHistoryState_FAILED,
        CrawlerHistoryState_RUNNING,
        CrawlerHistoryState_STOPPED
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype CrawlerHistoryState = CrawlerHistoryState'
  { fromCrawlerHistoryState ::
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

pattern CrawlerHistoryState_COMPLETED :: CrawlerHistoryState
pattern CrawlerHistoryState_COMPLETED = CrawlerHistoryState' "COMPLETED"

pattern CrawlerHistoryState_FAILED :: CrawlerHistoryState
pattern CrawlerHistoryState_FAILED = CrawlerHistoryState' "FAILED"

pattern CrawlerHistoryState_RUNNING :: CrawlerHistoryState
pattern CrawlerHistoryState_RUNNING = CrawlerHistoryState' "RUNNING"

pattern CrawlerHistoryState_STOPPED :: CrawlerHistoryState
pattern CrawlerHistoryState_STOPPED = CrawlerHistoryState' "STOPPED"

{-# COMPLETE
  CrawlerHistoryState_COMPLETED,
  CrawlerHistoryState_FAILED,
  CrawlerHistoryState_RUNNING,
  CrawlerHistoryState_STOPPED,
  CrawlerHistoryState'
  #-}