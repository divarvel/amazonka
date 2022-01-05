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
-- Module      : Amazonka.AmplifyBackend.CreateToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Generates a one-time challenge code to authenticate a user into your
-- Amplify Admin UI.
module Amazonka.AmplifyBackend.CreateToken
  ( -- * Creating a Request
    CreateToken (..),
    newCreateToken,

    -- * Request Lenses
    createToken_appId,

    -- * Destructuring the Response
    CreateTokenResponse (..),
    newCreateTokenResponse,

    -- * Response Lenses
    createTokenResponse_ttl,
    createTokenResponse_appId,
    createTokenResponse_sessionId,
    createTokenResponse_challengeCode,
    createTokenResponse_httpStatus,
  )
where

import Amazonka.AmplifyBackend.Types
import qualified Amazonka.Core as Core
import qualified Amazonka.Lens as Lens
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- | /See:/ 'newCreateToken' smart constructor.
data CreateToken = CreateToken'
  { -- | The app ID.
    appId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateToken' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appId', 'createToken_appId' - The app ID.
newCreateToken ::
  -- | 'appId'
  Prelude.Text ->
  CreateToken
newCreateToken pAppId_ =
  CreateToken' {appId = pAppId_}

-- | The app ID.
createToken_appId :: Lens.Lens' CreateToken Prelude.Text
createToken_appId = Lens.lens (\CreateToken' {appId} -> appId) (\s@CreateToken' {} a -> s {appId = a} :: CreateToken)

instance Core.AWSRequest CreateToken where
  type AWSResponse CreateToken = CreateTokenResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateTokenResponse'
            Prelude.<$> (x Core..?> "ttl")
            Prelude.<*> (x Core..?> "appId")
            Prelude.<*> (x Core..?> "sessionId")
            Prelude.<*> (x Core..?> "challengeCode")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateToken where
  hashWithSalt _salt CreateToken' {..} =
    _salt `Prelude.hashWithSalt` appId

instance Prelude.NFData CreateToken where
  rnf CreateToken' {..} = Prelude.rnf appId

instance Core.ToHeaders CreateToken where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Core.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Core.ToJSON CreateToken where
  toJSON = Prelude.const (Core.Object Prelude.mempty)

instance Core.ToPath CreateToken where
  toPath CreateToken' {..} =
    Prelude.mconcat
      ["/backend/", Core.toBS appId, "/challenge"]

instance Core.ToQuery CreateToken where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateTokenResponse' smart constructor.
data CreateTokenResponse = CreateTokenResponse'
  { -- | The expiry time for the one-time generated token code.
    ttl :: Prelude.Maybe Prelude.Text,
    -- | The app ID.
    appId :: Prelude.Maybe Prelude.Text,
    -- | A unique ID provided when creating a new challenge token.
    sessionId :: Prelude.Maybe Prelude.Text,
    -- | One-time challenge code for authenticating into the Amplify Admin UI.
    challengeCode :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'CreateTokenResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ttl', 'createTokenResponse_ttl' - The expiry time for the one-time generated token code.
--
-- 'appId', 'createTokenResponse_appId' - The app ID.
--
-- 'sessionId', 'createTokenResponse_sessionId' - A unique ID provided when creating a new challenge token.
--
-- 'challengeCode', 'createTokenResponse_challengeCode' - One-time challenge code for authenticating into the Amplify Admin UI.
--
-- 'httpStatus', 'createTokenResponse_httpStatus' - The response's http status code.
newCreateTokenResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateTokenResponse
newCreateTokenResponse pHttpStatus_ =
  CreateTokenResponse'
    { ttl = Prelude.Nothing,
      appId = Prelude.Nothing,
      sessionId = Prelude.Nothing,
      challengeCode = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The expiry time for the one-time generated token code.
createTokenResponse_ttl :: Lens.Lens' CreateTokenResponse (Prelude.Maybe Prelude.Text)
createTokenResponse_ttl = Lens.lens (\CreateTokenResponse' {ttl} -> ttl) (\s@CreateTokenResponse' {} a -> s {ttl = a} :: CreateTokenResponse)

-- | The app ID.
createTokenResponse_appId :: Lens.Lens' CreateTokenResponse (Prelude.Maybe Prelude.Text)
createTokenResponse_appId = Lens.lens (\CreateTokenResponse' {appId} -> appId) (\s@CreateTokenResponse' {} a -> s {appId = a} :: CreateTokenResponse)

-- | A unique ID provided when creating a new challenge token.
createTokenResponse_sessionId :: Lens.Lens' CreateTokenResponse (Prelude.Maybe Prelude.Text)
createTokenResponse_sessionId = Lens.lens (\CreateTokenResponse' {sessionId} -> sessionId) (\s@CreateTokenResponse' {} a -> s {sessionId = a} :: CreateTokenResponse)

-- | One-time challenge code for authenticating into the Amplify Admin UI.
createTokenResponse_challengeCode :: Lens.Lens' CreateTokenResponse (Prelude.Maybe Prelude.Text)
createTokenResponse_challengeCode = Lens.lens (\CreateTokenResponse' {challengeCode} -> challengeCode) (\s@CreateTokenResponse' {} a -> s {challengeCode = a} :: CreateTokenResponse)

-- | The response's http status code.
createTokenResponse_httpStatus :: Lens.Lens' CreateTokenResponse Prelude.Int
createTokenResponse_httpStatus = Lens.lens (\CreateTokenResponse' {httpStatus} -> httpStatus) (\s@CreateTokenResponse' {} a -> s {httpStatus = a} :: CreateTokenResponse)

instance Prelude.NFData CreateTokenResponse where
  rnf CreateTokenResponse' {..} =
    Prelude.rnf ttl
      `Prelude.seq` Prelude.rnf appId
      `Prelude.seq` Prelude.rnf sessionId
      `Prelude.seq` Prelude.rnf challengeCode
      `Prelude.seq` Prelude.rnf httpStatus
