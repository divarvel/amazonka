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
-- Module      : Network.AWS.SWF.RecordActivityTaskHeartbeat
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by activity workers to report to the service that the ActivityTask
-- represented by the specified 'taskToken' is still making progress. The
-- worker can also (optionally) specify details of the progress, for
-- example percent complete, using the 'details' parameter. This action can
-- also be used by the worker as a mechanism to check if cancellation is
-- being requested for the activity task. If a cancellation is being
-- attempted for the specified task, then the boolean 'cancelRequested'
-- flag returned by the service is set to 'true'.
--
-- This action resets the 'taskHeartbeatTimeout' clock. The
-- 'taskHeartbeatTimeout' is specified in RegisterActivityType.
--
-- This action does not in itself create an event in the workflow execution
-- history. However, if the task times out, the workflow execution history
-- will contain a 'ActivityTaskTimedOut' event that contains the
-- information from the last heartbeat generated by the activity worker.
--
-- The 'taskStartToCloseTimeout' of an activity type is the maximum
-- duration of an activity task, regardless of the number of
-- RecordActivityTaskHeartbeat requests received. The
-- 'taskStartToCloseTimeout' is also specified in RegisterActivityType.
--
-- This operation is only useful for long-lived activities to report
-- liveliness of the task and to determine if a cancellation is being
-- attempted.
--
-- If the 'cancelRequested' flag returns 'true', a cancellation is being
-- attempted. If the worker can cancel the activity, it should respond with
-- RespondActivityTaskCanceled. Otherwise, it should ignore the
-- cancellation request.
--
-- __Access Control__
--
-- You can use IAM policies to control this action\'s access to Amazon SWF
-- resources as follows:
--
-- -   Use a 'Resource' element with the domain name to limit the action to
--     only specified domains.
-- -   Use an 'Action' element to allow or deny permission to call this
--     action.
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller does not have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s __cause__ parameter will
-- be set to OPERATION_NOT_PERMITTED. For details and example IAM policies,
-- see
-- <http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>.
--
-- /See:/ <http://docs.aws.amazon.com/amazonswf/latest/apireference/API_RecordActivityTaskHeartbeat.html AWS API Reference> for RecordActivityTaskHeartbeat.
module Network.AWS.SWF.RecordActivityTaskHeartbeat
    (
    -- * Creating a Request
      recordActivityTaskHeartbeat
    , RecordActivityTaskHeartbeat
    -- * Request Lenses
    , rathDetails
    , rathTaskToken

    -- * Destructuring the Response
    , recordActivityTaskHeartbeatResponse
    , RecordActivityTaskHeartbeatResponse
    -- * Response Lenses
    , rathrsResponseStatus
    , rathrsCancelRequested
    ) where

import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response
import           Network.AWS.SWF.Types
import           Network.AWS.SWF.Types.Product

-- | /See:/ 'recordActivityTaskHeartbeat' smart constructor.
data RecordActivityTaskHeartbeat = RecordActivityTaskHeartbeat'
    { _rathDetails   :: !(Maybe Text)
    , _rathTaskToken :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RecordActivityTaskHeartbeat' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rathDetails'
--
-- * 'rathTaskToken'
recordActivityTaskHeartbeat
    :: Text -- ^ 'rathTaskToken'
    -> RecordActivityTaskHeartbeat
recordActivityTaskHeartbeat pTaskToken_ =
    RecordActivityTaskHeartbeat'
    { _rathDetails = Nothing
    , _rathTaskToken = pTaskToken_
    }

-- | If specified, contains details about the progress of the task.
rathDetails :: Lens' RecordActivityTaskHeartbeat (Maybe Text)
rathDetails = lens _rathDetails (\ s a -> s{_rathDetails = a});

-- | The 'taskToken' of the ActivityTask.
--
-- 'taskToken' is generated by the service and should be treated as an
-- opaque value. If the task is passed to another process, its 'taskToken'
-- must also be passed. This enables it to provide its progress and respond
-- with results.
rathTaskToken :: Lens' RecordActivityTaskHeartbeat Text
rathTaskToken = lens _rathTaskToken (\ s a -> s{_rathTaskToken = a});

instance AWSRequest RecordActivityTaskHeartbeat where
        type Rs RecordActivityTaskHeartbeat =
             RecordActivityTaskHeartbeatResponse
        request = postJSON sWF
        response
          = receiveJSON
              (\ s h x ->
                 RecordActivityTaskHeartbeatResponse' <$>
                   (pure (fromEnum s)) <*> (x .:> "cancelRequested"))

instance ToHeaders RecordActivityTaskHeartbeat where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("SimpleWorkflowService.RecordActivityTaskHeartbeat"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.0" :: ByteString)])

instance ToJSON RecordActivityTaskHeartbeat where
        toJSON RecordActivityTaskHeartbeat'{..}
          = object
              (catMaybes
                 [("details" .=) <$> _rathDetails,
                  Just ("taskToken" .= _rathTaskToken)])

instance ToPath RecordActivityTaskHeartbeat where
        toPath = const "/"

instance ToQuery RecordActivityTaskHeartbeat where
        toQuery = const mempty

-- | Status information about an activity task.
--
-- /See:/ 'recordActivityTaskHeartbeatResponse' smart constructor.
data RecordActivityTaskHeartbeatResponse = RecordActivityTaskHeartbeatResponse'
    { _rathrsResponseStatus  :: !Int
    , _rathrsCancelRequested :: !Bool
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RecordActivityTaskHeartbeatResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rathrsResponseStatus'
--
-- * 'rathrsCancelRequested'
recordActivityTaskHeartbeatResponse
    :: Int -- ^ 'rathrsResponseStatus'
    -> Bool -- ^ 'rathrsCancelRequested'
    -> RecordActivityTaskHeartbeatResponse
recordActivityTaskHeartbeatResponse pResponseStatus_ pCancelRequested_ =
    RecordActivityTaskHeartbeatResponse'
    { _rathrsResponseStatus = pResponseStatus_
    , _rathrsCancelRequested = pCancelRequested_
    }

-- | The response status code.
rathrsResponseStatus :: Lens' RecordActivityTaskHeartbeatResponse Int
rathrsResponseStatus = lens _rathrsResponseStatus (\ s a -> s{_rathrsResponseStatus = a});

-- | Set to 'true' if cancellation of the task is requested.
rathrsCancelRequested :: Lens' RecordActivityTaskHeartbeatResponse Bool
rathrsCancelRequested = lens _rathrsCancelRequested (\ s a -> s{_rathrsCancelRequested = a});