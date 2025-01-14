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
-- Module      : Amazonka.DrS.Types.RecoveryInstanceDataReplicationInitiationStepName
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.DrS.Types.RecoveryInstanceDataReplicationInitiationStepName
  ( RecoveryInstanceDataReplicationInitiationStepName
      ( ..,
        RecoveryInstanceDataReplicationInitiationStepName_ATTACH_STAGING_DISKS,
        RecoveryInstanceDataReplicationInitiationStepName_AUTHENTICATE_WITH_SERVICE,
        RecoveryInstanceDataReplicationInitiationStepName_BOOT_REPLICATION_SERVER,
        RecoveryInstanceDataReplicationInitiationStepName_COMPLETE_VOLUME_MAPPING,
        RecoveryInstanceDataReplicationInitiationStepName_CONFIGURE_REPLICATION_SOFTWARE,
        RecoveryInstanceDataReplicationInitiationStepName_CONNECT_AGENT_TO_REPLICATION_SERVER,
        RecoveryInstanceDataReplicationInitiationStepName_CREATE_SECURITY_GROUP,
        RecoveryInstanceDataReplicationInitiationStepName_CREATE_STAGING_DISKS,
        RecoveryInstanceDataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE,
        RecoveryInstanceDataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT,
        RecoveryInstanceDataReplicationInitiationStepName_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION,
        RecoveryInstanceDataReplicationInitiationStepName_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION,
        RecoveryInstanceDataReplicationInitiationStepName_LAUNCH_REPLICATION_SERVER,
        RecoveryInstanceDataReplicationInitiationStepName_LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE,
        RecoveryInstanceDataReplicationInitiationStepName_PAIR_AGENT_WITH_REPLICATION_SOFTWARE,
        RecoveryInstanceDataReplicationInitiationStepName_PAIR_REPLICATION_SERVER_WITH_AGENT,
        RecoveryInstanceDataReplicationInitiationStepName_START_DATA_TRANSFER,
        RecoveryInstanceDataReplicationInitiationStepName_WAIT
      ),
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude

newtype RecoveryInstanceDataReplicationInitiationStepName = RecoveryInstanceDataReplicationInitiationStepName'
  { fromRecoveryInstanceDataReplicationInitiationStepName ::
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

pattern RecoveryInstanceDataReplicationInitiationStepName_ATTACH_STAGING_DISKS :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_ATTACH_STAGING_DISKS = RecoveryInstanceDataReplicationInitiationStepName' "ATTACH_STAGING_DISKS"

pattern RecoveryInstanceDataReplicationInitiationStepName_AUTHENTICATE_WITH_SERVICE :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_AUTHENTICATE_WITH_SERVICE = RecoveryInstanceDataReplicationInitiationStepName' "AUTHENTICATE_WITH_SERVICE"

pattern RecoveryInstanceDataReplicationInitiationStepName_BOOT_REPLICATION_SERVER :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_BOOT_REPLICATION_SERVER = RecoveryInstanceDataReplicationInitiationStepName' "BOOT_REPLICATION_SERVER"

pattern RecoveryInstanceDataReplicationInitiationStepName_COMPLETE_VOLUME_MAPPING :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_COMPLETE_VOLUME_MAPPING = RecoveryInstanceDataReplicationInitiationStepName' "COMPLETE_VOLUME_MAPPING"

pattern RecoveryInstanceDataReplicationInitiationStepName_CONFIGURE_REPLICATION_SOFTWARE :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_CONFIGURE_REPLICATION_SOFTWARE = RecoveryInstanceDataReplicationInitiationStepName' "CONFIGURE_REPLICATION_SOFTWARE"

pattern RecoveryInstanceDataReplicationInitiationStepName_CONNECT_AGENT_TO_REPLICATION_SERVER :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_CONNECT_AGENT_TO_REPLICATION_SERVER = RecoveryInstanceDataReplicationInitiationStepName' "CONNECT_AGENT_TO_REPLICATION_SERVER"

pattern RecoveryInstanceDataReplicationInitiationStepName_CREATE_SECURITY_GROUP :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_CREATE_SECURITY_GROUP = RecoveryInstanceDataReplicationInitiationStepName' "CREATE_SECURITY_GROUP"

pattern RecoveryInstanceDataReplicationInitiationStepName_CREATE_STAGING_DISKS :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_CREATE_STAGING_DISKS = RecoveryInstanceDataReplicationInitiationStepName' "CREATE_STAGING_DISKS"

pattern RecoveryInstanceDataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE = RecoveryInstanceDataReplicationInitiationStepName' "DOWNLOAD_REPLICATION_SOFTWARE"

pattern RecoveryInstanceDataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT = RecoveryInstanceDataReplicationInitiationStepName' "DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT"

pattern RecoveryInstanceDataReplicationInitiationStepName_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION = RecoveryInstanceDataReplicationInitiationStepName' "ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION"

pattern RecoveryInstanceDataReplicationInitiationStepName_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION = RecoveryInstanceDataReplicationInitiationStepName' "ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION"

pattern RecoveryInstanceDataReplicationInitiationStepName_LAUNCH_REPLICATION_SERVER :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_LAUNCH_REPLICATION_SERVER = RecoveryInstanceDataReplicationInitiationStepName' "LAUNCH_REPLICATION_SERVER"

pattern RecoveryInstanceDataReplicationInitiationStepName_LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE = RecoveryInstanceDataReplicationInitiationStepName' "LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE"

pattern RecoveryInstanceDataReplicationInitiationStepName_PAIR_AGENT_WITH_REPLICATION_SOFTWARE :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_PAIR_AGENT_WITH_REPLICATION_SOFTWARE = RecoveryInstanceDataReplicationInitiationStepName' "PAIR_AGENT_WITH_REPLICATION_SOFTWARE"

pattern RecoveryInstanceDataReplicationInitiationStepName_PAIR_REPLICATION_SERVER_WITH_AGENT :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_PAIR_REPLICATION_SERVER_WITH_AGENT = RecoveryInstanceDataReplicationInitiationStepName' "PAIR_REPLICATION_SERVER_WITH_AGENT"

pattern RecoveryInstanceDataReplicationInitiationStepName_START_DATA_TRANSFER :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_START_DATA_TRANSFER = RecoveryInstanceDataReplicationInitiationStepName' "START_DATA_TRANSFER"

pattern RecoveryInstanceDataReplicationInitiationStepName_WAIT :: RecoveryInstanceDataReplicationInitiationStepName
pattern RecoveryInstanceDataReplicationInitiationStepName_WAIT = RecoveryInstanceDataReplicationInitiationStepName' "WAIT"

{-# COMPLETE
  RecoveryInstanceDataReplicationInitiationStepName_ATTACH_STAGING_DISKS,
  RecoveryInstanceDataReplicationInitiationStepName_AUTHENTICATE_WITH_SERVICE,
  RecoveryInstanceDataReplicationInitiationStepName_BOOT_REPLICATION_SERVER,
  RecoveryInstanceDataReplicationInitiationStepName_COMPLETE_VOLUME_MAPPING,
  RecoveryInstanceDataReplicationInitiationStepName_CONFIGURE_REPLICATION_SOFTWARE,
  RecoveryInstanceDataReplicationInitiationStepName_CONNECT_AGENT_TO_REPLICATION_SERVER,
  RecoveryInstanceDataReplicationInitiationStepName_CREATE_SECURITY_GROUP,
  RecoveryInstanceDataReplicationInitiationStepName_CREATE_STAGING_DISKS,
  RecoveryInstanceDataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE,
  RecoveryInstanceDataReplicationInitiationStepName_DOWNLOAD_REPLICATION_SOFTWARE_TO_FAILBACK_CLIENT,
  RecoveryInstanceDataReplicationInitiationStepName_ESTABLISH_AGENT_REPLICATOR_SOFTWARE_COMMUNICATION,
  RecoveryInstanceDataReplicationInitiationStepName_ESTABLISH_RECOVERY_INSTANCE_COMMUNICATION,
  RecoveryInstanceDataReplicationInitiationStepName_LAUNCH_REPLICATION_SERVER,
  RecoveryInstanceDataReplicationInitiationStepName_LINK_FAILBACK_CLIENT_WITH_RECOVERY_INSTANCE,
  RecoveryInstanceDataReplicationInitiationStepName_PAIR_AGENT_WITH_REPLICATION_SOFTWARE,
  RecoveryInstanceDataReplicationInitiationStepName_PAIR_REPLICATION_SERVER_WITH_AGENT,
  RecoveryInstanceDataReplicationInitiationStepName_START_DATA_TRANSFER,
  RecoveryInstanceDataReplicationInitiationStepName_WAIT,
  RecoveryInstanceDataReplicationInitiationStepName'
  #-}
