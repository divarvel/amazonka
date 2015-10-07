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
-- Module      : Network.AWS.AutoScaling.DescribeAdjustmentTypes
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the policy adjustment types for use with PutScalingPolicy.
--
-- /See:/ <http://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_DescribeAdjustmentTypes.html AWS API Reference> for DescribeAdjustmentTypes.
module Network.AWS.AutoScaling.DescribeAdjustmentTypes
    (
    -- * Creating a Request
      describeAdjustmentTypes
    , DescribeAdjustmentTypes

    -- * Destructuring the Response
    , describeAdjustmentTypesResponse
    , DescribeAdjustmentTypesResponse
    -- * Response Lenses
    , datrsAdjustmentTypes
    , datrsResponseStatus
    ) where

import           Network.AWS.AutoScaling.Types
import           Network.AWS.AutoScaling.Types.Product
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'describeAdjustmentTypes' smart constructor.
data DescribeAdjustmentTypes =
    DescribeAdjustmentTypes'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DescribeAdjustmentTypes' with the minimum fields required to make a request.
--
describeAdjustmentTypes
    :: DescribeAdjustmentTypes
describeAdjustmentTypes = DescribeAdjustmentTypes'

instance AWSRequest DescribeAdjustmentTypes where
        type Rs DescribeAdjustmentTypes =
             DescribeAdjustmentTypesResponse
        request = postQuery autoScaling
        response
          = receiveXMLWrapper "DescribeAdjustmentTypesResult"
              (\ s h x ->
                 DescribeAdjustmentTypesResponse' <$>
                   (x .@? "AdjustmentTypes" .!@ mempty >>=
                      may (parseXMLList "member"))
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeAdjustmentTypes where
        toHeaders = const mempty

instance ToPath DescribeAdjustmentTypes where
        toPath = const "/"

instance ToQuery DescribeAdjustmentTypes where
        toQuery
          = const
              (mconcat
                 ["Action" =:
                    ("DescribeAdjustmentTypes" :: ByteString),
                  "Version" =: ("2011-01-01" :: ByteString)])

-- | /See:/ 'describeAdjustmentTypesResponse' smart constructor.
data DescribeAdjustmentTypesResponse = DescribeAdjustmentTypesResponse'
    { _datrsAdjustmentTypes :: !(Maybe [AdjustmentType])
    , _datrsResponseStatus  :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DescribeAdjustmentTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'datrsAdjustmentTypes'
--
-- * 'datrsResponseStatus'
describeAdjustmentTypesResponse
    :: Int -- ^ 'datrsResponseStatus'
    -> DescribeAdjustmentTypesResponse
describeAdjustmentTypesResponse pResponseStatus_ =
    DescribeAdjustmentTypesResponse'
    { _datrsAdjustmentTypes = Nothing
    , _datrsResponseStatus = pResponseStatus_
    }

-- | The policy adjustment types.
datrsAdjustmentTypes :: Lens' DescribeAdjustmentTypesResponse [AdjustmentType]
datrsAdjustmentTypes = lens _datrsAdjustmentTypes (\ s a -> s{_datrsAdjustmentTypes = a}) . _Default . _Coerce;

-- | The response status code.
datrsResponseStatus :: Lens' DescribeAdjustmentTypesResponse Int
datrsResponseStatus = lens _datrsResponseStatus (\ s a -> s{_datrsResponseStatus = a});