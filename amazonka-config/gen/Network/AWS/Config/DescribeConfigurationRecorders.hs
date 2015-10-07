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
-- Module      : Network.AWS.Config.DescribeConfigurationRecorders
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the name of one or more specified configuration recorders. If
-- the recorder name is not specified, this action returns the names of all
-- the configuration recorders associated with the account.
--
-- Currently, you can specify only one configuration recorder per account.
--
-- /See:/ <http://docs.aws.amazon.com/config/latest/APIReference/API_DescribeConfigurationRecorders.html AWS API Reference> for DescribeConfigurationRecorders.
module Network.AWS.Config.DescribeConfigurationRecorders
    (
    -- * Creating a Request
      describeConfigurationRecorders
    , DescribeConfigurationRecorders
    -- * Request Lenses
    , dcrConfigurationRecorderNames

    -- * Destructuring the Response
    , describeConfigurationRecordersResponse
    , DescribeConfigurationRecordersResponse
    -- * Response Lenses
    , dcrrsConfigurationRecorders
    , dcrrsResponseStatus
    ) where

import           Network.AWS.Config.Types
import           Network.AWS.Config.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | The input for the DescribeConfigurationRecorders action.
--
-- /See:/ 'describeConfigurationRecorders' smart constructor.
newtype DescribeConfigurationRecorders = DescribeConfigurationRecorders'
    { _dcrConfigurationRecorderNames :: Maybe [Text]
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DescribeConfigurationRecorders' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrConfigurationRecorderNames'
describeConfigurationRecorders
    :: DescribeConfigurationRecorders
describeConfigurationRecorders =
    DescribeConfigurationRecorders'
    { _dcrConfigurationRecorderNames = Nothing
    }

-- | A list of configuration recorder names.
dcrConfigurationRecorderNames :: Lens' DescribeConfigurationRecorders [Text]
dcrConfigurationRecorderNames = lens _dcrConfigurationRecorderNames (\ s a -> s{_dcrConfigurationRecorderNames = a}) . _Default . _Coerce;

instance AWSRequest DescribeConfigurationRecorders
         where
        type Rs DescribeConfigurationRecorders =
             DescribeConfigurationRecordersResponse
        request = postJSON config
        response
          = receiveJSON
              (\ s h x ->
                 DescribeConfigurationRecordersResponse' <$>
                   (x .?> "ConfigurationRecorders" .!@ mempty) <*>
                     (pure (fromEnum s)))

instance ToHeaders DescribeConfigurationRecorders
         where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("StarlingDoveService.DescribeConfigurationRecorders"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON DescribeConfigurationRecorders where
        toJSON DescribeConfigurationRecorders'{..}
          = object
              (catMaybes
                 [("ConfigurationRecorderNames" .=) <$>
                    _dcrConfigurationRecorderNames])

instance ToPath DescribeConfigurationRecorders where
        toPath = const "/"

instance ToQuery DescribeConfigurationRecorders where
        toQuery = const mempty

-- | The output for the DescribeConfigurationRecorders action.
--
-- /See:/ 'describeConfigurationRecordersResponse' smart constructor.
data DescribeConfigurationRecordersResponse = DescribeConfigurationRecordersResponse'
    { _dcrrsConfigurationRecorders :: !(Maybe [ConfigurationRecorder])
    , _dcrrsResponseStatus         :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DescribeConfigurationRecordersResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcrrsConfigurationRecorders'
--
-- * 'dcrrsResponseStatus'
describeConfigurationRecordersResponse
    :: Int -- ^ 'dcrrsResponseStatus'
    -> DescribeConfigurationRecordersResponse
describeConfigurationRecordersResponse pResponseStatus_ =
    DescribeConfigurationRecordersResponse'
    { _dcrrsConfigurationRecorders = Nothing
    , _dcrrsResponseStatus = pResponseStatus_
    }

-- | A list that contains the descriptions of the specified configuration
-- recorders.
dcrrsConfigurationRecorders :: Lens' DescribeConfigurationRecordersResponse [ConfigurationRecorder]
dcrrsConfigurationRecorders = lens _dcrrsConfigurationRecorders (\ s a -> s{_dcrrsConfigurationRecorders = a}) . _Default . _Coerce;

-- | The response status code.
dcrrsResponseStatus :: Lens' DescribeConfigurationRecordersResponse Int
dcrrsResponseStatus = lens _dcrrsResponseStatus (\ s a -> s{_dcrrsResponseStatus = a});