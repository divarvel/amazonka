{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Amazonka.CodeBuild.BatchDeleteBuilds
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes one or more builds.
module Amazonka.CodeBuild.BatchDeleteBuilds
  ( -- * Creating a Request
    BatchDeleteBuilds (..),
    newBatchDeleteBuilds,

    -- * Request Lenses
    batchDeleteBuilds_ids,

    -- * Destructuring the Response
    BatchDeleteBuildsResponse (..),
    newBatchDeleteBuildsResponse,

    -- * Response Lenses
    batchDeleteBuildsResponse_buildsNotDeleted,
    batchDeleteBuildsResponse_buildsDeleted,
    batchDeleteBuildsResponse_httpStatus,
  )
where

import Amazonka.CodeBuild.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newBatchDeleteBuilds' smart constructor.
data BatchDeleteBuilds = BatchDeleteBuilds'
  { -- | The IDs of the builds to delete.
    ids :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteBuilds' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ids', 'batchDeleteBuilds_ids' - The IDs of the builds to delete.
newBatchDeleteBuilds ::
  -- | 'ids'
  Prelude.NonEmpty Prelude.Text ->
  BatchDeleteBuilds
newBatchDeleteBuilds pIds_ =
  BatchDeleteBuilds' {ids = Lens.coerced Lens.# pIds_}

-- | The IDs of the builds to delete.
batchDeleteBuilds_ids :: Lens.Lens' BatchDeleteBuilds (Prelude.NonEmpty Prelude.Text)
batchDeleteBuilds_ids = Lens.lens (\BatchDeleteBuilds' {ids} -> ids) (\s@BatchDeleteBuilds' {} a -> s {ids = a} :: BatchDeleteBuilds) Prelude.. Lens.coerced

instance Core.AWSRequest BatchDeleteBuilds where
  type
    AWSResponse BatchDeleteBuilds =
      BatchDeleteBuildsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchDeleteBuildsResponse'
            Prelude.<$> ( x Core..?> "buildsNotDeleted"
                            Core..!@ Prelude.mempty
                        )
            Prelude.<*> (x Core..?> "buildsDeleted")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchDeleteBuilds

instance Prelude.NFData BatchDeleteBuilds

instance Core.ToHeaders BatchDeleteBuilds where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Core.=# ( "CodeBuild_20161006.BatchDeleteBuilds" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON BatchDeleteBuilds where
  toJSON BatchDeleteBuilds' {..} =
    Core.object
      ( Prelude.catMaybes
          [Prelude.Just ("ids" Core..= ids)]
      )

instance Core.ToPath BatchDeleteBuilds where
  toPath = Prelude.const "/"

instance Core.ToQuery BatchDeleteBuilds where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchDeleteBuildsResponse' smart constructor.
data BatchDeleteBuildsResponse = BatchDeleteBuildsResponse'
  { -- | Information about any builds that could not be successfully deleted.
    buildsNotDeleted :: Prelude.Maybe [BuildNotDeleted],
    -- | The IDs of the builds that were successfully deleted.
    buildsDeleted :: Prelude.Maybe (Prelude.NonEmpty Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'BatchDeleteBuildsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'buildsNotDeleted', 'batchDeleteBuildsResponse_buildsNotDeleted' - Information about any builds that could not be successfully deleted.
--
-- 'buildsDeleted', 'batchDeleteBuildsResponse_buildsDeleted' - The IDs of the builds that were successfully deleted.
--
-- 'httpStatus', 'batchDeleteBuildsResponse_httpStatus' - The response's http status code.
newBatchDeleteBuildsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchDeleteBuildsResponse
newBatchDeleteBuildsResponse pHttpStatus_ =
  BatchDeleteBuildsResponse'
    { buildsNotDeleted =
        Prelude.Nothing,
      buildsDeleted = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about any builds that could not be successfully deleted.
batchDeleteBuildsResponse_buildsNotDeleted :: Lens.Lens' BatchDeleteBuildsResponse (Prelude.Maybe [BuildNotDeleted])
batchDeleteBuildsResponse_buildsNotDeleted = Lens.lens (\BatchDeleteBuildsResponse' {buildsNotDeleted} -> buildsNotDeleted) (\s@BatchDeleteBuildsResponse' {} a -> s {buildsNotDeleted = a} :: BatchDeleteBuildsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The IDs of the builds that were successfully deleted.
batchDeleteBuildsResponse_buildsDeleted :: Lens.Lens' BatchDeleteBuildsResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
batchDeleteBuildsResponse_buildsDeleted = Lens.lens (\BatchDeleteBuildsResponse' {buildsDeleted} -> buildsDeleted) (\s@BatchDeleteBuildsResponse' {} a -> s {buildsDeleted = a} :: BatchDeleteBuildsResponse) Prelude.. Lens.mapping Lens.coerced

-- | The response's http status code.
batchDeleteBuildsResponse_httpStatus :: Lens.Lens' BatchDeleteBuildsResponse Prelude.Int
batchDeleteBuildsResponse_httpStatus = Lens.lens (\BatchDeleteBuildsResponse' {httpStatus} -> httpStatus) (\s@BatchDeleteBuildsResponse' {} a -> s {httpStatus = a} :: BatchDeleteBuildsResponse)

instance Prelude.NFData BatchDeleteBuildsResponse
