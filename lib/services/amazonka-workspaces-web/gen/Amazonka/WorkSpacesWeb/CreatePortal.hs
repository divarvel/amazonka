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
-- Module      : Amazonka.WorkSpacesWeb.CreatePortal
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a web portal.
module Amazonka.WorkSpacesWeb.CreatePortal
  ( -- * Creating a Request
    CreatePortal (..),
    newCreatePortal,

    -- * Request Lenses
    createPortal_additionalEncryptionContext,
    createPortal_clientToken,
    createPortal_customerManagedKey,
    createPortal_displayName,
    createPortal_tags,

    -- * Destructuring the Response
    CreatePortalResponse (..),
    newCreatePortalResponse,

    -- * Response Lenses
    createPortalResponse_httpStatus,
    createPortalResponse_portalArn,
    createPortalResponse_portalEndpoint,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response
import Amazonka.WorkSpacesWeb.Types

-- | /See:/ 'newCreatePortal' smart constructor.
data CreatePortal = CreatePortal'
  { -- | The additional encryption context of the portal.
    additionalEncryptionContext :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. Idempotency ensures that an API request
    -- completes only once. With an idempotent request, if the original request
    -- completes successfully, subsequent retries with the same client token
    -- returns the result from the original successful request.
    --
    -- If you do not specify a client token, one is automatically generated by
    -- the AWS SDK.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The customer managed key of the web portal.
    customerManagedKey :: Prelude.Maybe Prelude.Text,
    -- | The name of the web portal. This is not visible to users who log into
    -- the web portal.
    displayName :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | The tags to add to the web portal. A tag is a key-value pair.
    tags :: Prelude.Maybe [Data.Sensitive Tag]
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePortal' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalEncryptionContext', 'createPortal_additionalEncryptionContext' - The additional encryption context of the portal.
--
-- 'clientToken', 'createPortal_clientToken' - A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- returns the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
--
-- 'customerManagedKey', 'createPortal_customerManagedKey' - The customer managed key of the web portal.
--
-- 'displayName', 'createPortal_displayName' - The name of the web portal. This is not visible to users who log into
-- the web portal.
--
-- 'tags', 'createPortal_tags' - The tags to add to the web portal. A tag is a key-value pair.
newCreatePortal ::
  CreatePortal
newCreatePortal =
  CreatePortal'
    { additionalEncryptionContext =
        Prelude.Nothing,
      clientToken = Prelude.Nothing,
      customerManagedKey = Prelude.Nothing,
      displayName = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | The additional encryption context of the portal.
createPortal_additionalEncryptionContext :: Lens.Lens' CreatePortal (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createPortal_additionalEncryptionContext = Lens.lens (\CreatePortal' {additionalEncryptionContext} -> additionalEncryptionContext) (\s@CreatePortal' {} a -> s {additionalEncryptionContext = a} :: CreatePortal) Prelude.. Lens.mapping Lens.coerced

-- | A unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. Idempotency ensures that an API request
-- completes only once. With an idempotent request, if the original request
-- completes successfully, subsequent retries with the same client token
-- returns the result from the original successful request.
--
-- If you do not specify a client token, one is automatically generated by
-- the AWS SDK.
createPortal_clientToken :: Lens.Lens' CreatePortal (Prelude.Maybe Prelude.Text)
createPortal_clientToken = Lens.lens (\CreatePortal' {clientToken} -> clientToken) (\s@CreatePortal' {} a -> s {clientToken = a} :: CreatePortal)

-- | The customer managed key of the web portal.
createPortal_customerManagedKey :: Lens.Lens' CreatePortal (Prelude.Maybe Prelude.Text)
createPortal_customerManagedKey = Lens.lens (\CreatePortal' {customerManagedKey} -> customerManagedKey) (\s@CreatePortal' {} a -> s {customerManagedKey = a} :: CreatePortal)

-- | The name of the web portal. This is not visible to users who log into
-- the web portal.
createPortal_displayName :: Lens.Lens' CreatePortal (Prelude.Maybe Prelude.Text)
createPortal_displayName = Lens.lens (\CreatePortal' {displayName} -> displayName) (\s@CreatePortal' {} a -> s {displayName = a} :: CreatePortal) Prelude.. Lens.mapping Data._Sensitive

-- | The tags to add to the web portal. A tag is a key-value pair.
createPortal_tags :: Lens.Lens' CreatePortal (Prelude.Maybe [Tag])
createPortal_tags = Lens.lens (\CreatePortal' {tags} -> tags) (\s@CreatePortal' {} a -> s {tags = a} :: CreatePortal) Prelude.. Lens.mapping Lens.coerced

instance Core.AWSRequest CreatePortal where
  type AWSResponse CreatePortal = CreatePortalResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          CreatePortalResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Data..:> "portalArn")
            Prelude.<*> (x Data..:> "portalEndpoint")
      )

instance Prelude.Hashable CreatePortal where
  hashWithSalt _salt CreatePortal' {..} =
    _salt
      `Prelude.hashWithSalt` additionalEncryptionContext
      `Prelude.hashWithSalt` clientToken
      `Prelude.hashWithSalt` customerManagedKey
      `Prelude.hashWithSalt` displayName
      `Prelude.hashWithSalt` tags

instance Prelude.NFData CreatePortal where
  rnf CreatePortal' {..} =
    Prelude.rnf additionalEncryptionContext
      `Prelude.seq` Prelude.rnf clientToken
      `Prelude.seq` Prelude.rnf customerManagedKey
      `Prelude.seq` Prelude.rnf displayName
      `Prelude.seq` Prelude.rnf tags

instance Data.ToHeaders CreatePortal where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON CreatePortal where
  toJSON CreatePortal' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("additionalEncryptionContext" Data..=)
              Prelude.<$> additionalEncryptionContext,
            ("clientToken" Data..=) Prelude.<$> clientToken,
            ("customerManagedKey" Data..=)
              Prelude.<$> customerManagedKey,
            ("displayName" Data..=) Prelude.<$> displayName,
            ("tags" Data..=) Prelude.<$> tags
          ]
      )

instance Data.ToPath CreatePortal where
  toPath = Prelude.const "/portals"

instance Data.ToQuery CreatePortal where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreatePortalResponse' smart constructor.
data CreatePortalResponse = CreatePortalResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The ARN of the web portal.
    portalArn :: Prelude.Text,
    -- | The endpoint URL of the web portal that users access in order to start
    -- streaming sessions.
    portalEndpoint :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreatePortalResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'createPortalResponse_httpStatus' - The response's http status code.
--
-- 'portalArn', 'createPortalResponse_portalArn' - The ARN of the web portal.
--
-- 'portalEndpoint', 'createPortalResponse_portalEndpoint' - The endpoint URL of the web portal that users access in order to start
-- streaming sessions.
newCreatePortalResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'portalArn'
  Prelude.Text ->
  -- | 'portalEndpoint'
  Prelude.Text ->
  CreatePortalResponse
newCreatePortalResponse
  pHttpStatus_
  pPortalArn_
  pPortalEndpoint_ =
    CreatePortalResponse'
      { httpStatus = pHttpStatus_,
        portalArn = pPortalArn_,
        portalEndpoint = pPortalEndpoint_
      }

-- | The response's http status code.
createPortalResponse_httpStatus :: Lens.Lens' CreatePortalResponse Prelude.Int
createPortalResponse_httpStatus = Lens.lens (\CreatePortalResponse' {httpStatus} -> httpStatus) (\s@CreatePortalResponse' {} a -> s {httpStatus = a} :: CreatePortalResponse)

-- | The ARN of the web portal.
createPortalResponse_portalArn :: Lens.Lens' CreatePortalResponse Prelude.Text
createPortalResponse_portalArn = Lens.lens (\CreatePortalResponse' {portalArn} -> portalArn) (\s@CreatePortalResponse' {} a -> s {portalArn = a} :: CreatePortalResponse)

-- | The endpoint URL of the web portal that users access in order to start
-- streaming sessions.
createPortalResponse_portalEndpoint :: Lens.Lens' CreatePortalResponse Prelude.Text
createPortalResponse_portalEndpoint = Lens.lens (\CreatePortalResponse' {portalEndpoint} -> portalEndpoint) (\s@CreatePortalResponse' {} a -> s {portalEndpoint = a} :: CreatePortalResponse)

instance Prelude.NFData CreatePortalResponse where
  rnf CreatePortalResponse' {..} =
    Prelude.rnf httpStatus
      `Prelude.seq` Prelude.rnf portalArn
      `Prelude.seq` Prelude.rnf portalEndpoint