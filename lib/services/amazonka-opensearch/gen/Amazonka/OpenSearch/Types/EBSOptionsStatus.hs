{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.OpenSearch.Types.EBSOptionsStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.OpenSearch.Types.EBSOptionsStatus where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import Amazonka.OpenSearch.Types.EBSOptions
import Amazonka.OpenSearch.Types.OptionStatus
import qualified Amazonka.Prelude as Prelude

-- | Status of the EBS options for the specified domain.
--
-- /See:/ 'newEBSOptionsStatus' smart constructor.
data EBSOptionsStatus = EBSOptionsStatus'
  { -- | The EBS options for the specified domain.
    options :: EBSOptions,
    -- | The status of the EBS options for the specified domain.
    status :: OptionStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'EBSOptionsStatus' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'options', 'eBSOptionsStatus_options' - The EBS options for the specified domain.
--
-- 'status', 'eBSOptionsStatus_status' - The status of the EBS options for the specified domain.
newEBSOptionsStatus ::
  -- | 'options'
  EBSOptions ->
  -- | 'status'
  OptionStatus ->
  EBSOptionsStatus
newEBSOptionsStatus pOptions_ pStatus_ =
  EBSOptionsStatus'
    { options = pOptions_,
      status = pStatus_
    }

-- | The EBS options for the specified domain.
eBSOptionsStatus_options :: Lens.Lens' EBSOptionsStatus EBSOptions
eBSOptionsStatus_options = Lens.lens (\EBSOptionsStatus' {options} -> options) (\s@EBSOptionsStatus' {} a -> s {options = a} :: EBSOptionsStatus)

-- | The status of the EBS options for the specified domain.
eBSOptionsStatus_status :: Lens.Lens' EBSOptionsStatus OptionStatus
eBSOptionsStatus_status = Lens.lens (\EBSOptionsStatus' {status} -> status) (\s@EBSOptionsStatus' {} a -> s {status = a} :: EBSOptionsStatus)

instance Core.FromJSON EBSOptionsStatus where
  parseJSON =
    Core.withObject
      "EBSOptionsStatus"
      ( \x ->
          EBSOptionsStatus'
            Prelude.<$> (x Core..: "Options")
            Prelude.<*> (x Core..: "Status")
      )

instance Prelude.Hashable EBSOptionsStatus

instance Prelude.NFData EBSOptionsStatus