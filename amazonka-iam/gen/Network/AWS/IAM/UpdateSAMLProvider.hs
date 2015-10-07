{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.UpdateSAMLProvider
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the metadata document for an existing SAML provider.
--
-- This operation requires
-- <http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html Signature Version 4>.
--
-- /See:/ <http://docs.aws.amazon.com/IAM/latest/APIReference/API_UpdateSAMLProvider.html AWS API Reference> for UpdateSAMLProvider.
module Network.AWS.IAM.UpdateSAMLProvider
    (
    -- * Creating a Request
      updateSAMLProvider
    , UpdateSAMLProvider
    -- * Request Lenses
    , usamlpSAMLMetadataDocument
    , usamlpSAMLProviderARN

    -- * Destructuring the Response
    , updateSAMLProviderResponse
    , UpdateSAMLProviderResponse
    -- * Response Lenses
    , usamlprsSAMLProviderARN
    , usamlprsResponseStatus
    ) where

import           Network.AWS.IAM.Types
import           Network.AWS.IAM.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'updateSAMLProvider' smart constructor.
data UpdateSAMLProvider = UpdateSAMLProvider'
    { _usamlpSAMLMetadataDocument :: !Text
    , _usamlpSAMLProviderARN      :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateSAMLProvider' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usamlpSAMLMetadataDocument'
--
-- * 'usamlpSAMLProviderARN'
updateSAMLProvider
    :: Text -- ^ 'usamlpSAMLMetadataDocument'
    -> Text -- ^ 'usamlpSAMLProviderARN'
    -> UpdateSAMLProvider
updateSAMLProvider pSAMLMetadataDocument_ pSAMLProviderARN_ =
    UpdateSAMLProvider'
    { _usamlpSAMLMetadataDocument = pSAMLMetadataDocument_
    , _usamlpSAMLProviderARN = pSAMLProviderARN_
    }

-- | An XML document generated by an identity provider (IdP) that supports
-- SAML 2.0. The document includes the issuer\'s name, expiration
-- information, and keys that can be used to validate the SAML
-- authentication response (assertions) that are received from the IdP. You
-- must generate the metadata document using the identity management
-- software that is used as your organization\'s IdP.
usamlpSAMLMetadataDocument :: Lens' UpdateSAMLProvider Text
usamlpSAMLMetadataDocument = lens _usamlpSAMLMetadataDocument (\ s a -> s{_usamlpSAMLMetadataDocument = a});

-- | The Amazon Resource Name (ARN) of the SAML provider to update.
usamlpSAMLProviderARN :: Lens' UpdateSAMLProvider Text
usamlpSAMLProviderARN = lens _usamlpSAMLProviderARN (\ s a -> s{_usamlpSAMLProviderARN = a});

instance AWSRequest UpdateSAMLProvider where
        type Rs UpdateSAMLProvider =
             UpdateSAMLProviderResponse
        request = postQuery iAM
        response
          = receiveXMLWrapper "UpdateSAMLProviderResult"
              (\ s h x ->
                 UpdateSAMLProviderResponse' <$>
                   (x .@? "SAMLProviderArn") <*> (pure (fromEnum s)))

instance ToHeaders UpdateSAMLProvider where
        toHeaders = const mempty

instance ToPath UpdateSAMLProvider where
        toPath = const "/"

instance ToQuery UpdateSAMLProvider where
        toQuery UpdateSAMLProvider'{..}
          = mconcat
              ["Action" =: ("UpdateSAMLProvider" :: ByteString),
               "Version" =: ("2010-05-08" :: ByteString),
               "SAMLMetadataDocument" =:
                 _usamlpSAMLMetadataDocument,
               "SAMLProviderArn" =: _usamlpSAMLProviderARN]

-- | Contains the response to a successful UpdateSAMLProvider request.
--
-- /See:/ 'updateSAMLProviderResponse' smart constructor.
data UpdateSAMLProviderResponse = UpdateSAMLProviderResponse'
    { _usamlprsSAMLProviderARN :: !(Maybe Text)
    , _usamlprsResponseStatus  :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'UpdateSAMLProviderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usamlprsSAMLProviderARN'
--
-- * 'usamlprsResponseStatus'
updateSAMLProviderResponse
    :: Int -- ^ 'usamlprsResponseStatus'
    -> UpdateSAMLProviderResponse
updateSAMLProviderResponse pResponseStatus_ =
    UpdateSAMLProviderResponse'
    { _usamlprsSAMLProviderARN = Nothing
    , _usamlprsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the SAML provider that was updated.
usamlprsSAMLProviderARN :: Lens' UpdateSAMLProviderResponse (Maybe Text)
usamlprsSAMLProviderARN = lens _usamlprsSAMLProviderARN (\ s a -> s{_usamlprsSAMLProviderARN = a});

-- | The response status code.
usamlprsResponseStatus :: Lens' UpdateSAMLProviderResponse Int
usamlprsResponseStatus = lens _usamlprsResponseStatus (\ s a -> s{_usamlprsResponseStatus = a});