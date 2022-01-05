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
-- Module      : Amazonka.SWF.Types.WorkflowExecutionCancelRequestedEventAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Amazonka.SWF.Types.WorkflowExecutionCancelRequestedEventAttributes where

import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import Amazonka.SWF.Types.WorkflowExecution
import Amazonka.SWF.Types.WorkflowExecutionCancelRequestedCause

-- | Provides the details of the @WorkflowExecutionCancelRequested@ event.
--
-- /See:/ 'newWorkflowExecutionCancelRequestedEventAttributes' smart constructor.
data WorkflowExecutionCancelRequestedEventAttributes = WorkflowExecutionCancelRequestedEventAttributes'
  { -- | The external workflow execution for which the cancellation was
    -- requested.
    externalWorkflowExecution :: Prelude.Maybe WorkflowExecution,
    -- | The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event
    -- corresponding to the @RequestCancelExternalWorkflowExecution@ decision
    -- to cancel this workflow execution.The source event with this ID can be
    -- found in the history of the source workflow execution. This information
    -- can be useful for diagnosing problems by tracing back the chain of
    -- events leading up to this event.
    externalInitiatedEventId :: Prelude.Maybe Prelude.Integer,
    -- | If set, indicates that the request to cancel the workflow execution was
    -- automatically generated, and specifies the cause. This happens if the
    -- parent workflow execution times out or is terminated, and the child
    -- policy is set to cancel child executions.
    cause :: Prelude.Maybe WorkflowExecutionCancelRequestedCause
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'WorkflowExecutionCancelRequestedEventAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'externalWorkflowExecution', 'workflowExecutionCancelRequestedEventAttributes_externalWorkflowExecution' - The external workflow execution for which the cancellation was
-- requested.
--
-- 'externalInitiatedEventId', 'workflowExecutionCancelRequestedEventAttributes_externalInitiatedEventId' - The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event
-- corresponding to the @RequestCancelExternalWorkflowExecution@ decision
-- to cancel this workflow execution.The source event with this ID can be
-- found in the history of the source workflow execution. This information
-- can be useful for diagnosing problems by tracing back the chain of
-- events leading up to this event.
--
-- 'cause', 'workflowExecutionCancelRequestedEventAttributes_cause' - If set, indicates that the request to cancel the workflow execution was
-- automatically generated, and specifies the cause. This happens if the
-- parent workflow execution times out or is terminated, and the child
-- policy is set to cancel child executions.
newWorkflowExecutionCancelRequestedEventAttributes ::
  WorkflowExecutionCancelRequestedEventAttributes
newWorkflowExecutionCancelRequestedEventAttributes =
  WorkflowExecutionCancelRequestedEventAttributes'
    { externalWorkflowExecution =
        Prelude.Nothing,
      externalInitiatedEventId =
        Prelude.Nothing,
      cause = Prelude.Nothing
    }

-- | The external workflow execution for which the cancellation was
-- requested.
workflowExecutionCancelRequestedEventAttributes_externalWorkflowExecution :: Lens.Lens' WorkflowExecutionCancelRequestedEventAttributes (Prelude.Maybe WorkflowExecution)
workflowExecutionCancelRequestedEventAttributes_externalWorkflowExecution = Lens.lens (\WorkflowExecutionCancelRequestedEventAttributes' {externalWorkflowExecution} -> externalWorkflowExecution) (\s@WorkflowExecutionCancelRequestedEventAttributes' {} a -> s {externalWorkflowExecution = a} :: WorkflowExecutionCancelRequestedEventAttributes)

-- | The ID of the @RequestCancelExternalWorkflowExecutionInitiated@ event
-- corresponding to the @RequestCancelExternalWorkflowExecution@ decision
-- to cancel this workflow execution.The source event with this ID can be
-- found in the history of the source workflow execution. This information
-- can be useful for diagnosing problems by tracing back the chain of
-- events leading up to this event.
workflowExecutionCancelRequestedEventAttributes_externalInitiatedEventId :: Lens.Lens' WorkflowExecutionCancelRequestedEventAttributes (Prelude.Maybe Prelude.Integer)
workflowExecutionCancelRequestedEventAttributes_externalInitiatedEventId = Lens.lens (\WorkflowExecutionCancelRequestedEventAttributes' {externalInitiatedEventId} -> externalInitiatedEventId) (\s@WorkflowExecutionCancelRequestedEventAttributes' {} a -> s {externalInitiatedEventId = a} :: WorkflowExecutionCancelRequestedEventAttributes)

-- | If set, indicates that the request to cancel the workflow execution was
-- automatically generated, and specifies the cause. This happens if the
-- parent workflow execution times out or is terminated, and the child
-- policy is set to cancel child executions.
workflowExecutionCancelRequestedEventAttributes_cause :: Lens.Lens' WorkflowExecutionCancelRequestedEventAttributes (Prelude.Maybe WorkflowExecutionCancelRequestedCause)
workflowExecutionCancelRequestedEventAttributes_cause = Lens.lens (\WorkflowExecutionCancelRequestedEventAttributes' {cause} -> cause) (\s@WorkflowExecutionCancelRequestedEventAttributes' {} a -> s {cause = a} :: WorkflowExecutionCancelRequestedEventAttributes)

instance
  Core.FromJSON
    WorkflowExecutionCancelRequestedEventAttributes
  where
  parseJSON =
    Core.withObject
      "WorkflowExecutionCancelRequestedEventAttributes"
      ( \x ->
          WorkflowExecutionCancelRequestedEventAttributes'
            Prelude.<$> (x Core..:? "externalWorkflowExecution")
              Prelude.<*> (x Core..:? "externalInitiatedEventId")
              Prelude.<*> (x Core..:? "cause")
      )

instance
  Prelude.Hashable
    WorkflowExecutionCancelRequestedEventAttributes
  where
  hashWithSalt
    _salt
    WorkflowExecutionCancelRequestedEventAttributes' {..} =
      _salt
        `Prelude.hashWithSalt` externalWorkflowExecution
        `Prelude.hashWithSalt` externalInitiatedEventId
        `Prelude.hashWithSalt` cause

instance
  Prelude.NFData
    WorkflowExecutionCancelRequestedEventAttributes
  where
  rnf
    WorkflowExecutionCancelRequestedEventAttributes' {..} =
      Prelude.rnf externalWorkflowExecution
        `Prelude.seq` Prelude.rnf externalInitiatedEventId
        `Prelude.seq` Prelude.rnf cause
