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
-- Module      : Amazonka.Route53Resolver.Types.FirewallRuleGroupStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.Route53Resolver.Types.FirewallRuleGroupStatus
  ( FirewallRuleGroupStatus
      ( ..,
        FirewallRuleGroupStatus_COMPLETE,
        FirewallRuleGroupStatus_DELETING,
        FirewallRuleGroupStatus_UPDATING
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Prelude as Prelude

newtype FirewallRuleGroupStatus = FirewallRuleGroupStatus'
  { fromFirewallRuleGroupStatus ::
      Core.Text
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

pattern FirewallRuleGroupStatus_COMPLETE :: FirewallRuleGroupStatus
pattern FirewallRuleGroupStatus_COMPLETE = FirewallRuleGroupStatus' "COMPLETE"

pattern FirewallRuleGroupStatus_DELETING :: FirewallRuleGroupStatus
pattern FirewallRuleGroupStatus_DELETING = FirewallRuleGroupStatus' "DELETING"

pattern FirewallRuleGroupStatus_UPDATING :: FirewallRuleGroupStatus
pattern FirewallRuleGroupStatus_UPDATING = FirewallRuleGroupStatus' "UPDATING"

{-# COMPLETE
  FirewallRuleGroupStatus_COMPLETE,
  FirewallRuleGroupStatus_DELETING,
  FirewallRuleGroupStatus_UPDATING,
  FirewallRuleGroupStatus'
  #-}