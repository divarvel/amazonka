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
-- Module      : Amazonka.DMS.ModifyEndpoint
-- Copyright   : (c) 2013-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified endpoint.
--
-- For a MySQL source or target endpoint, don\'t explicitly specify the
-- database using the @DatabaseName@ request parameter on the
-- @ModifyEndpoint@ API call. Specifying @DatabaseName@ when you modify a
-- MySQL endpoint replicates all the task tables to this single database.
-- For MySQL endpoints, you specify the database only when you specify the
-- schema in the table-mapping rules of the DMS task.
module Amazonka.DMS.ModifyEndpoint
  ( -- * Creating a Request
    ModifyEndpoint (..),
    newModifyEndpoint,

    -- * Request Lenses
    modifyEndpoint_port,
    modifyEndpoint_elasticsearchSettings,
    modifyEndpoint_redshiftSettings,
    modifyEndpoint_externalTableDefinition,
    modifyEndpoint_engineName,
    modifyEndpoint_mySQLSettings,
    modifyEndpoint_sslMode,
    modifyEndpoint_endpointIdentifier,
    modifyEndpoint_password,
    modifyEndpoint_serverName,
    modifyEndpoint_docDbSettings,
    modifyEndpoint_exactSettings,
    modifyEndpoint_databaseName,
    modifyEndpoint_username,
    modifyEndpoint_gcpMySQLSettings,
    modifyEndpoint_serviceAccessRoleArn,
    modifyEndpoint_extraConnectionAttributes,
    modifyEndpoint_neptuneSettings,
    modifyEndpoint_endpointType,
    modifyEndpoint_kinesisSettings,
    modifyEndpoint_oracleSettings,
    modifyEndpoint_certificateArn,
    modifyEndpoint_dynamoDbSettings,
    modifyEndpoint_redisSettings,
    modifyEndpoint_s3Settings,
    modifyEndpoint_microsoftSQLServerSettings,
    modifyEndpoint_kafkaSettings,
    modifyEndpoint_dmsTransferSettings,
    modifyEndpoint_sybaseSettings,
    modifyEndpoint_postgreSQLSettings,
    modifyEndpoint_iBMDb2Settings,
    modifyEndpoint_mongoDbSettings,
    modifyEndpoint_endpointArn,

    -- * Destructuring the Response
    ModifyEndpointResponse (..),
    newModifyEndpointResponse,

    -- * Response Lenses
    modifyEndpointResponse_endpoint,
    modifyEndpointResponse_httpStatus,
  )
where

import qualified Amazonka.Core as Core
import qualified Amazonka.Core.Lens.Internal as Lens
import Amazonka.DMS.Types
import qualified Amazonka.Data as Data
import qualified Amazonka.Prelude as Prelude
import qualified Amazonka.Request as Request
import qualified Amazonka.Response as Response

-- |
--
-- /See:/ 'newModifyEndpoint' smart constructor.
data ModifyEndpoint = ModifyEndpoint'
  { -- | The port used by the endpoint database.
    port :: Prelude.Maybe Prelude.Int,
    -- | Settings in JSON format for the target OpenSearch endpoint. For more
    -- information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration Extra Connection Attributes When Using OpenSearch as a Target for DMS>
    -- in the /Database Migration Service User Guide./
    elasticsearchSettings :: Prelude.Maybe ElasticsearchSettings,
    redshiftSettings :: Prelude.Maybe RedshiftSettings,
    -- | The external table definition.
    externalTableDefinition :: Prelude.Maybe Prelude.Text,
    -- | The database engine name. Valid values, depending on the EndpointType,
    -- include @\"mysql\"@, @\"oracle\"@, @\"postgres\"@, @\"mariadb\"@,
    -- @\"aurora\"@, @\"aurora-postgresql\"@, @\"redshift\"@, @\"s3\"@,
    -- @\"db2\"@, @\"db2-zos\"@, @\"azuredb\"@, @\"sybase\"@, @\"dynamodb\"@,
    -- @\"mongodb\"@, @\"kinesis\"@, @\"kafka\"@, @\"elasticsearch\"@,
    -- @\"documentdb\"@, @\"sqlserver\"@, @\"neptune\"@, and @\"babelfish\"@.
    engineName :: Prelude.Maybe Prelude.Text,
    -- | Settings in JSON format for the source and target MySQL endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib Extra connection attributes when using MySQL as a source for DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib Extra connection attributes when using a MySQL-compatible database as a target for DMS>
    -- in the /Database Migration Service User Guide./
    mySQLSettings :: Prelude.Maybe MySQLSettings,
    -- | The SSL mode used to connect to the endpoint. The default value is
    -- @none@.
    sslMode :: Prelude.Maybe DmsSslModeValue,
    -- | The database endpoint identifier. Identifiers must begin with a letter
    -- and must contain only ASCII letters, digits, and hyphens. They can\'t
    -- end with a hyphen or contain two consecutive hyphens.
    endpointIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The password to be used to login to the endpoint database.
    password :: Prelude.Maybe (Data.Sensitive Prelude.Text),
    -- | The name of the server where the endpoint database resides.
    serverName :: Prelude.Maybe Prelude.Text,
    -- | Settings in JSON format for the source DocumentDB endpoint. For more
    -- information about the available settings, see the configuration
    -- properties section in
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html Using DocumentDB as a Target for Database Migration Service>
    -- in the /Database Migration Service User Guide./
    docDbSettings :: Prelude.Maybe DocDbSettings,
    -- | If this attribute is Y, the current call to @ModifyEndpoint@ replaces
    -- all existing endpoint settings with the exact settings that you specify
    -- in this call. If this attribute is N, the current call to
    -- @ModifyEndpoint@ does two things:
    --
    -- -   It replaces any endpoint settings that already exist with new
    --     values, for settings with the same names.
    --
    -- -   It creates new endpoint settings that you specify in the call, for
    --     settings with different names.
    --
    -- For example, if you call
    -- @create-endpoint ... --endpoint-settings \'{\"a\":1}\' ...@, the
    -- endpoint has the following endpoint settings: @\'{\"a\":1}\'@. If you
    -- then call @modify-endpoint ... --endpoint-settings \'{\"b\":2}\' ...@
    -- for the same endpoint, the endpoint has the following settings:
    -- @\'{\"a\":1,\"b\":2}\'@.
    --
    -- However, suppose that you follow this with a call to
    -- @modify-endpoint ... --endpoint-settings \'{\"b\":2}\' --exact-settings ...@
    -- for that same endpoint again. Then the endpoint has the following
    -- settings: @\'{\"b\":2}\'@. All existing settings are replaced with the
    -- exact settings that you specify.
    exactSettings :: Prelude.Maybe Prelude.Bool,
    -- | The name of the endpoint database. For a MySQL source or target
    -- endpoint, do not specify DatabaseName.
    databaseName :: Prelude.Maybe Prelude.Text,
    -- | The user name to be used to login to the endpoint database.
    username :: Prelude.Maybe Prelude.Text,
    -- | Settings in JSON format for the source GCP MySQL endpoint.
    gcpMySQLSettings :: Prelude.Maybe GcpMySQLSettings,
    -- | The Amazon Resource Name (ARN) for the IAM role you want to use to
    -- modify the endpoint. The role must allow the @iam:PassRole@ action.
    serviceAccessRoleArn :: Prelude.Maybe Prelude.Text,
    -- | Additional attributes associated with the connection. To reset this
    -- parameter, pass the empty string (\"\") as an argument.
    extraConnectionAttributes :: Prelude.Maybe Prelude.Text,
    -- | Settings in JSON format for the target Amazon Neptune endpoint. For more
    -- information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings Specifying graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a target>
    -- in the /Database Migration Service User Guide./
    neptuneSettings :: Prelude.Maybe NeptuneSettings,
    -- | The type of endpoint. Valid values are @source@ and @target@.
    endpointType :: Prelude.Maybe ReplicationEndpointTypeValue,
    -- | Settings in JSON format for the target endpoint for Amazon Kinesis Data
    -- Streams. For more information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping Using object mapping to migrate data to a Kinesis data stream>
    -- in the /Database Migration Service User Guide./
    kinesisSettings :: Prelude.Maybe KinesisSettings,
    -- | Settings in JSON format for the source and target Oracle endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib Extra connection attributes when using Oracle as a source for DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib Extra connection attributes when using Oracle as a target for DMS>
    -- in the /Database Migration Service User Guide./
    oracleSettings :: Prelude.Maybe OracleSettings,
    -- | The Amazon Resource Name (ARN) of the certificate used for SSL
    -- connection.
    certificateArn :: Prelude.Maybe Prelude.Text,
    -- | Settings in JSON format for the target Amazon DynamoDB endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping Using Object Mapping to Migrate Data to DynamoDB>
    -- in the /Database Migration Service User Guide./
    dynamoDbSettings :: Prelude.Maybe DynamoDbSettings,
    -- | Settings in JSON format for the Redis target endpoint.
    redisSettings :: Prelude.Maybe RedisSettings,
    -- | Settings in JSON format for the target Amazon S3 endpoint. For more
    -- information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring Extra Connection Attributes When Using Amazon S3 as a Target for DMS>
    -- in the /Database Migration Service User Guide./
    s3Settings :: Prelude.Maybe S3Settings,
    -- | Settings in JSON format for the source and target Microsoft SQL Server
    -- endpoint. For information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib Extra connection attributes when using SQL Server as a source for DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib Extra connection attributes when using SQL Server as a target for DMS>
    -- in the /Database Migration Service User Guide./
    microsoftSQLServerSettings :: Prelude.Maybe MicrosoftSQLServerSettings,
    -- | Settings in JSON format for the target Apache Kafka endpoint. For more
    -- information about the available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping Using object mapping to migrate data to a Kafka topic>
    -- in the /Database Migration Service User Guide./
    kafkaSettings :: Prelude.Maybe KafkaSettings,
    -- | The settings in JSON format for the DMS transfer type of source
    -- endpoint.
    --
    -- Attributes include the following:
    --
    -- -   serviceAccessRoleArn - The Amazon Resource Name (ARN) used by the
    --     service access IAM role. The role must allow the @iam:PassRole@
    --     action.
    --
    -- -   BucketName - The name of the S3 bucket to use.
    --
    -- Shorthand syntax for these settings is as follows:
    -- @ServiceAccessRoleArn=string ,BucketName=string@
    --
    -- JSON syntax for these settings is as follows:
    -- @{ \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\"} @
    dmsTransferSettings :: Prelude.Maybe DmsTransferSettings,
    -- | Settings in JSON format for the source and target SAP ASE endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib Extra connection attributes when using SAP ASE as a source for DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib Extra connection attributes when using SAP ASE as a target for DMS>
    -- in the /Database Migration Service User Guide./
    sybaseSettings :: Prelude.Maybe SybaseSettings,
    -- | Settings in JSON format for the source and target PostgreSQL endpoint.
    -- For information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib Extra connection attributes when using PostgreSQL as a source for DMS>
    -- and
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib Extra connection attributes when using PostgreSQL as a target for DMS>
    -- in the /Database Migration Service User Guide./
    postgreSQLSettings :: Prelude.Maybe PostgreSQLSettings,
    -- | Settings in JSON format for the source IBM Db2 LUW endpoint. For
    -- information about other available settings, see
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib Extra connection attributes when using Db2 LUW as a source for DMS>
    -- in the /Database Migration Service User Guide./
    iBMDb2Settings :: Prelude.Maybe IBMDb2Settings,
    -- | Settings in JSON format for the source MongoDB endpoint. For more
    -- information about the available settings, see the configuration
    -- properties section in
    -- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration Endpoint configuration settings when using MongoDB as a source for Database Migration Service>
    -- in the /Database Migration Service User Guide./
    mongoDbSettings :: Prelude.Maybe MongoDbSettings,
    -- | The Amazon Resource Name (ARN) string that uniquely identifies the
    -- endpoint.
    endpointArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyEndpoint' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'port', 'modifyEndpoint_port' - The port used by the endpoint database.
--
-- 'elasticsearchSettings', 'modifyEndpoint_elasticsearchSettings' - Settings in JSON format for the target OpenSearch endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration Extra Connection Attributes When Using OpenSearch as a Target for DMS>
-- in the /Database Migration Service User Guide./
--
-- 'redshiftSettings', 'modifyEndpoint_redshiftSettings' - Undocumented member.
--
-- 'externalTableDefinition', 'modifyEndpoint_externalTableDefinition' - The external table definition.
--
-- 'engineName', 'modifyEndpoint_engineName' - The database engine name. Valid values, depending on the EndpointType,
-- include @\"mysql\"@, @\"oracle\"@, @\"postgres\"@, @\"mariadb\"@,
-- @\"aurora\"@, @\"aurora-postgresql\"@, @\"redshift\"@, @\"s3\"@,
-- @\"db2\"@, @\"db2-zos\"@, @\"azuredb\"@, @\"sybase\"@, @\"dynamodb\"@,
-- @\"mongodb\"@, @\"kinesis\"@, @\"kafka\"@, @\"elasticsearch\"@,
-- @\"documentdb\"@, @\"sqlserver\"@, @\"neptune\"@, and @\"babelfish\"@.
--
-- 'mySQLSettings', 'modifyEndpoint_mySQLSettings' - Settings in JSON format for the source and target MySQL endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib Extra connection attributes when using MySQL as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib Extra connection attributes when using a MySQL-compatible database as a target for DMS>
-- in the /Database Migration Service User Guide./
--
-- 'sslMode', 'modifyEndpoint_sslMode' - The SSL mode used to connect to the endpoint. The default value is
-- @none@.
--
-- 'endpointIdentifier', 'modifyEndpoint_endpointIdentifier' - The database endpoint identifier. Identifiers must begin with a letter
-- and must contain only ASCII letters, digits, and hyphens. They can\'t
-- end with a hyphen or contain two consecutive hyphens.
--
-- 'password', 'modifyEndpoint_password' - The password to be used to login to the endpoint database.
--
-- 'serverName', 'modifyEndpoint_serverName' - The name of the server where the endpoint database resides.
--
-- 'docDbSettings', 'modifyEndpoint_docDbSettings' - Settings in JSON format for the source DocumentDB endpoint. For more
-- information about the available settings, see the configuration
-- properties section in
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html Using DocumentDB as a Target for Database Migration Service>
-- in the /Database Migration Service User Guide./
--
-- 'exactSettings', 'modifyEndpoint_exactSettings' - If this attribute is Y, the current call to @ModifyEndpoint@ replaces
-- all existing endpoint settings with the exact settings that you specify
-- in this call. If this attribute is N, the current call to
-- @ModifyEndpoint@ does two things:
--
-- -   It replaces any endpoint settings that already exist with new
--     values, for settings with the same names.
--
-- -   It creates new endpoint settings that you specify in the call, for
--     settings with different names.
--
-- For example, if you call
-- @create-endpoint ... --endpoint-settings \'{\"a\":1}\' ...@, the
-- endpoint has the following endpoint settings: @\'{\"a\":1}\'@. If you
-- then call @modify-endpoint ... --endpoint-settings \'{\"b\":2}\' ...@
-- for the same endpoint, the endpoint has the following settings:
-- @\'{\"a\":1,\"b\":2}\'@.
--
-- However, suppose that you follow this with a call to
-- @modify-endpoint ... --endpoint-settings \'{\"b\":2}\' --exact-settings ...@
-- for that same endpoint again. Then the endpoint has the following
-- settings: @\'{\"b\":2}\'@. All existing settings are replaced with the
-- exact settings that you specify.
--
-- 'databaseName', 'modifyEndpoint_databaseName' - The name of the endpoint database. For a MySQL source or target
-- endpoint, do not specify DatabaseName.
--
-- 'username', 'modifyEndpoint_username' - The user name to be used to login to the endpoint database.
--
-- 'gcpMySQLSettings', 'modifyEndpoint_gcpMySQLSettings' - Settings in JSON format for the source GCP MySQL endpoint.
--
-- 'serviceAccessRoleArn', 'modifyEndpoint_serviceAccessRoleArn' - The Amazon Resource Name (ARN) for the IAM role you want to use to
-- modify the endpoint. The role must allow the @iam:PassRole@ action.
--
-- 'extraConnectionAttributes', 'modifyEndpoint_extraConnectionAttributes' - Additional attributes associated with the connection. To reset this
-- parameter, pass the empty string (\"\") as an argument.
--
-- 'neptuneSettings', 'modifyEndpoint_neptuneSettings' - Settings in JSON format for the target Amazon Neptune endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings Specifying graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a target>
-- in the /Database Migration Service User Guide./
--
-- 'endpointType', 'modifyEndpoint_endpointType' - The type of endpoint. Valid values are @source@ and @target@.
--
-- 'kinesisSettings', 'modifyEndpoint_kinesisSettings' - Settings in JSON format for the target endpoint for Amazon Kinesis Data
-- Streams. For more information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping Using object mapping to migrate data to a Kinesis data stream>
-- in the /Database Migration Service User Guide./
--
-- 'oracleSettings', 'modifyEndpoint_oracleSettings' - Settings in JSON format for the source and target Oracle endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib Extra connection attributes when using Oracle as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib Extra connection attributes when using Oracle as a target for DMS>
-- in the /Database Migration Service User Guide./
--
-- 'certificateArn', 'modifyEndpoint_certificateArn' - The Amazon Resource Name (ARN) of the certificate used for SSL
-- connection.
--
-- 'dynamoDbSettings', 'modifyEndpoint_dynamoDbSettings' - Settings in JSON format for the target Amazon DynamoDB endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping Using Object Mapping to Migrate Data to DynamoDB>
-- in the /Database Migration Service User Guide./
--
-- 'redisSettings', 'modifyEndpoint_redisSettings' - Settings in JSON format for the Redis target endpoint.
--
-- 's3Settings', 'modifyEndpoint_s3Settings' - Settings in JSON format for the target Amazon S3 endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring Extra Connection Attributes When Using Amazon S3 as a Target for DMS>
-- in the /Database Migration Service User Guide./
--
-- 'microsoftSQLServerSettings', 'modifyEndpoint_microsoftSQLServerSettings' - Settings in JSON format for the source and target Microsoft SQL Server
-- endpoint. For information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib Extra connection attributes when using SQL Server as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib Extra connection attributes when using SQL Server as a target for DMS>
-- in the /Database Migration Service User Guide./
--
-- 'kafkaSettings', 'modifyEndpoint_kafkaSettings' - Settings in JSON format for the target Apache Kafka endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping Using object mapping to migrate data to a Kafka topic>
-- in the /Database Migration Service User Guide./
--
-- 'dmsTransferSettings', 'modifyEndpoint_dmsTransferSettings' - The settings in JSON format for the DMS transfer type of source
-- endpoint.
--
-- Attributes include the following:
--
-- -   serviceAccessRoleArn - The Amazon Resource Name (ARN) used by the
--     service access IAM role. The role must allow the @iam:PassRole@
--     action.
--
-- -   BucketName - The name of the S3 bucket to use.
--
-- Shorthand syntax for these settings is as follows:
-- @ServiceAccessRoleArn=string ,BucketName=string@
--
-- JSON syntax for these settings is as follows:
-- @{ \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\"} @
--
-- 'sybaseSettings', 'modifyEndpoint_sybaseSettings' - Settings in JSON format for the source and target SAP ASE endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib Extra connection attributes when using SAP ASE as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib Extra connection attributes when using SAP ASE as a target for DMS>
-- in the /Database Migration Service User Guide./
--
-- 'postgreSQLSettings', 'modifyEndpoint_postgreSQLSettings' - Settings in JSON format for the source and target PostgreSQL endpoint.
-- For information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib Extra connection attributes when using PostgreSQL as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib Extra connection attributes when using PostgreSQL as a target for DMS>
-- in the /Database Migration Service User Guide./
--
-- 'iBMDb2Settings', 'modifyEndpoint_iBMDb2Settings' - Settings in JSON format for the source IBM Db2 LUW endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib Extra connection attributes when using Db2 LUW as a source for DMS>
-- in the /Database Migration Service User Guide./
--
-- 'mongoDbSettings', 'modifyEndpoint_mongoDbSettings' - Settings in JSON format for the source MongoDB endpoint. For more
-- information about the available settings, see the configuration
-- properties section in
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration Endpoint configuration settings when using MongoDB as a source for Database Migration Service>
-- in the /Database Migration Service User Guide./
--
-- 'endpointArn', 'modifyEndpoint_endpointArn' - The Amazon Resource Name (ARN) string that uniquely identifies the
-- endpoint.
newModifyEndpoint ::
  -- | 'endpointArn'
  Prelude.Text ->
  ModifyEndpoint
newModifyEndpoint pEndpointArn_ =
  ModifyEndpoint'
    { port = Prelude.Nothing,
      elasticsearchSettings = Prelude.Nothing,
      redshiftSettings = Prelude.Nothing,
      externalTableDefinition = Prelude.Nothing,
      engineName = Prelude.Nothing,
      mySQLSettings = Prelude.Nothing,
      sslMode = Prelude.Nothing,
      endpointIdentifier = Prelude.Nothing,
      password = Prelude.Nothing,
      serverName = Prelude.Nothing,
      docDbSettings = Prelude.Nothing,
      exactSettings = Prelude.Nothing,
      databaseName = Prelude.Nothing,
      username = Prelude.Nothing,
      gcpMySQLSettings = Prelude.Nothing,
      serviceAccessRoleArn = Prelude.Nothing,
      extraConnectionAttributes = Prelude.Nothing,
      neptuneSettings = Prelude.Nothing,
      endpointType = Prelude.Nothing,
      kinesisSettings = Prelude.Nothing,
      oracleSettings = Prelude.Nothing,
      certificateArn = Prelude.Nothing,
      dynamoDbSettings = Prelude.Nothing,
      redisSettings = Prelude.Nothing,
      s3Settings = Prelude.Nothing,
      microsoftSQLServerSettings = Prelude.Nothing,
      kafkaSettings = Prelude.Nothing,
      dmsTransferSettings = Prelude.Nothing,
      sybaseSettings = Prelude.Nothing,
      postgreSQLSettings = Prelude.Nothing,
      iBMDb2Settings = Prelude.Nothing,
      mongoDbSettings = Prelude.Nothing,
      endpointArn = pEndpointArn_
    }

-- | The port used by the endpoint database.
modifyEndpoint_port :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Int)
modifyEndpoint_port = Lens.lens (\ModifyEndpoint' {port} -> port) (\s@ModifyEndpoint' {} a -> s {port = a} :: ModifyEndpoint)

-- | Settings in JSON format for the target OpenSearch endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration Extra Connection Attributes When Using OpenSearch as a Target for DMS>
-- in the /Database Migration Service User Guide./
modifyEndpoint_elasticsearchSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe ElasticsearchSettings)
modifyEndpoint_elasticsearchSettings = Lens.lens (\ModifyEndpoint' {elasticsearchSettings} -> elasticsearchSettings) (\s@ModifyEndpoint' {} a -> s {elasticsearchSettings = a} :: ModifyEndpoint)

-- | Undocumented member.
modifyEndpoint_redshiftSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe RedshiftSettings)
modifyEndpoint_redshiftSettings = Lens.lens (\ModifyEndpoint' {redshiftSettings} -> redshiftSettings) (\s@ModifyEndpoint' {} a -> s {redshiftSettings = a} :: ModifyEndpoint)

-- | The external table definition.
modifyEndpoint_externalTableDefinition :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_externalTableDefinition = Lens.lens (\ModifyEndpoint' {externalTableDefinition} -> externalTableDefinition) (\s@ModifyEndpoint' {} a -> s {externalTableDefinition = a} :: ModifyEndpoint)

-- | The database engine name. Valid values, depending on the EndpointType,
-- include @\"mysql\"@, @\"oracle\"@, @\"postgres\"@, @\"mariadb\"@,
-- @\"aurora\"@, @\"aurora-postgresql\"@, @\"redshift\"@, @\"s3\"@,
-- @\"db2\"@, @\"db2-zos\"@, @\"azuredb\"@, @\"sybase\"@, @\"dynamodb\"@,
-- @\"mongodb\"@, @\"kinesis\"@, @\"kafka\"@, @\"elasticsearch\"@,
-- @\"documentdb\"@, @\"sqlserver\"@, @\"neptune\"@, and @\"babelfish\"@.
modifyEndpoint_engineName :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_engineName = Lens.lens (\ModifyEndpoint' {engineName} -> engineName) (\s@ModifyEndpoint' {} a -> s {engineName = a} :: ModifyEndpoint)

-- | Settings in JSON format for the source and target MySQL endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib Extra connection attributes when using MySQL as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib Extra connection attributes when using a MySQL-compatible database as a target for DMS>
-- in the /Database Migration Service User Guide./
modifyEndpoint_mySQLSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe MySQLSettings)
modifyEndpoint_mySQLSettings = Lens.lens (\ModifyEndpoint' {mySQLSettings} -> mySQLSettings) (\s@ModifyEndpoint' {} a -> s {mySQLSettings = a} :: ModifyEndpoint)

-- | The SSL mode used to connect to the endpoint. The default value is
-- @none@.
modifyEndpoint_sslMode :: Lens.Lens' ModifyEndpoint (Prelude.Maybe DmsSslModeValue)
modifyEndpoint_sslMode = Lens.lens (\ModifyEndpoint' {sslMode} -> sslMode) (\s@ModifyEndpoint' {} a -> s {sslMode = a} :: ModifyEndpoint)

-- | The database endpoint identifier. Identifiers must begin with a letter
-- and must contain only ASCII letters, digits, and hyphens. They can\'t
-- end with a hyphen or contain two consecutive hyphens.
modifyEndpoint_endpointIdentifier :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_endpointIdentifier = Lens.lens (\ModifyEndpoint' {endpointIdentifier} -> endpointIdentifier) (\s@ModifyEndpoint' {} a -> s {endpointIdentifier = a} :: ModifyEndpoint)

-- | The password to be used to login to the endpoint database.
modifyEndpoint_password :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_password = Lens.lens (\ModifyEndpoint' {password} -> password) (\s@ModifyEndpoint' {} a -> s {password = a} :: ModifyEndpoint) Prelude.. Lens.mapping Data._Sensitive

-- | The name of the server where the endpoint database resides.
modifyEndpoint_serverName :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_serverName = Lens.lens (\ModifyEndpoint' {serverName} -> serverName) (\s@ModifyEndpoint' {} a -> s {serverName = a} :: ModifyEndpoint)

-- | Settings in JSON format for the source DocumentDB endpoint. For more
-- information about the available settings, see the configuration
-- properties section in
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html Using DocumentDB as a Target for Database Migration Service>
-- in the /Database Migration Service User Guide./
modifyEndpoint_docDbSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe DocDbSettings)
modifyEndpoint_docDbSettings = Lens.lens (\ModifyEndpoint' {docDbSettings} -> docDbSettings) (\s@ModifyEndpoint' {} a -> s {docDbSettings = a} :: ModifyEndpoint)

-- | If this attribute is Y, the current call to @ModifyEndpoint@ replaces
-- all existing endpoint settings with the exact settings that you specify
-- in this call. If this attribute is N, the current call to
-- @ModifyEndpoint@ does two things:
--
-- -   It replaces any endpoint settings that already exist with new
--     values, for settings with the same names.
--
-- -   It creates new endpoint settings that you specify in the call, for
--     settings with different names.
--
-- For example, if you call
-- @create-endpoint ... --endpoint-settings \'{\"a\":1}\' ...@, the
-- endpoint has the following endpoint settings: @\'{\"a\":1}\'@. If you
-- then call @modify-endpoint ... --endpoint-settings \'{\"b\":2}\' ...@
-- for the same endpoint, the endpoint has the following settings:
-- @\'{\"a\":1,\"b\":2}\'@.
--
-- However, suppose that you follow this with a call to
-- @modify-endpoint ... --endpoint-settings \'{\"b\":2}\' --exact-settings ...@
-- for that same endpoint again. Then the endpoint has the following
-- settings: @\'{\"b\":2}\'@. All existing settings are replaced with the
-- exact settings that you specify.
modifyEndpoint_exactSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Bool)
modifyEndpoint_exactSettings = Lens.lens (\ModifyEndpoint' {exactSettings} -> exactSettings) (\s@ModifyEndpoint' {} a -> s {exactSettings = a} :: ModifyEndpoint)

-- | The name of the endpoint database. For a MySQL source or target
-- endpoint, do not specify DatabaseName.
modifyEndpoint_databaseName :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_databaseName = Lens.lens (\ModifyEndpoint' {databaseName} -> databaseName) (\s@ModifyEndpoint' {} a -> s {databaseName = a} :: ModifyEndpoint)

-- | The user name to be used to login to the endpoint database.
modifyEndpoint_username :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_username = Lens.lens (\ModifyEndpoint' {username} -> username) (\s@ModifyEndpoint' {} a -> s {username = a} :: ModifyEndpoint)

-- | Settings in JSON format for the source GCP MySQL endpoint.
modifyEndpoint_gcpMySQLSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe GcpMySQLSettings)
modifyEndpoint_gcpMySQLSettings = Lens.lens (\ModifyEndpoint' {gcpMySQLSettings} -> gcpMySQLSettings) (\s@ModifyEndpoint' {} a -> s {gcpMySQLSettings = a} :: ModifyEndpoint)

-- | The Amazon Resource Name (ARN) for the IAM role you want to use to
-- modify the endpoint. The role must allow the @iam:PassRole@ action.
modifyEndpoint_serviceAccessRoleArn :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_serviceAccessRoleArn = Lens.lens (\ModifyEndpoint' {serviceAccessRoleArn} -> serviceAccessRoleArn) (\s@ModifyEndpoint' {} a -> s {serviceAccessRoleArn = a} :: ModifyEndpoint)

-- | Additional attributes associated with the connection. To reset this
-- parameter, pass the empty string (\"\") as an argument.
modifyEndpoint_extraConnectionAttributes :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_extraConnectionAttributes = Lens.lens (\ModifyEndpoint' {extraConnectionAttributes} -> extraConnectionAttributes) (\s@ModifyEndpoint' {} a -> s {extraConnectionAttributes = a} :: ModifyEndpoint)

-- | Settings in JSON format for the target Amazon Neptune endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings Specifying graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a target>
-- in the /Database Migration Service User Guide./
modifyEndpoint_neptuneSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe NeptuneSettings)
modifyEndpoint_neptuneSettings = Lens.lens (\ModifyEndpoint' {neptuneSettings} -> neptuneSettings) (\s@ModifyEndpoint' {} a -> s {neptuneSettings = a} :: ModifyEndpoint)

-- | The type of endpoint. Valid values are @source@ and @target@.
modifyEndpoint_endpointType :: Lens.Lens' ModifyEndpoint (Prelude.Maybe ReplicationEndpointTypeValue)
modifyEndpoint_endpointType = Lens.lens (\ModifyEndpoint' {endpointType} -> endpointType) (\s@ModifyEndpoint' {} a -> s {endpointType = a} :: ModifyEndpoint)

-- | Settings in JSON format for the target endpoint for Amazon Kinesis Data
-- Streams. For more information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping Using object mapping to migrate data to a Kinesis data stream>
-- in the /Database Migration Service User Guide./
modifyEndpoint_kinesisSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe KinesisSettings)
modifyEndpoint_kinesisSettings = Lens.lens (\ModifyEndpoint' {kinesisSettings} -> kinesisSettings) (\s@ModifyEndpoint' {} a -> s {kinesisSettings = a} :: ModifyEndpoint)

-- | Settings in JSON format for the source and target Oracle endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib Extra connection attributes when using Oracle as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib Extra connection attributes when using Oracle as a target for DMS>
-- in the /Database Migration Service User Guide./
modifyEndpoint_oracleSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe OracleSettings)
modifyEndpoint_oracleSettings = Lens.lens (\ModifyEndpoint' {oracleSettings} -> oracleSettings) (\s@ModifyEndpoint' {} a -> s {oracleSettings = a} :: ModifyEndpoint)

-- | The Amazon Resource Name (ARN) of the certificate used for SSL
-- connection.
modifyEndpoint_certificateArn :: Lens.Lens' ModifyEndpoint (Prelude.Maybe Prelude.Text)
modifyEndpoint_certificateArn = Lens.lens (\ModifyEndpoint' {certificateArn} -> certificateArn) (\s@ModifyEndpoint' {} a -> s {certificateArn = a} :: ModifyEndpoint)

-- | Settings in JSON format for the target Amazon DynamoDB endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping Using Object Mapping to Migrate Data to DynamoDB>
-- in the /Database Migration Service User Guide./
modifyEndpoint_dynamoDbSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe DynamoDbSettings)
modifyEndpoint_dynamoDbSettings = Lens.lens (\ModifyEndpoint' {dynamoDbSettings} -> dynamoDbSettings) (\s@ModifyEndpoint' {} a -> s {dynamoDbSettings = a} :: ModifyEndpoint)

-- | Settings in JSON format for the Redis target endpoint.
modifyEndpoint_redisSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe RedisSettings)
modifyEndpoint_redisSettings = Lens.lens (\ModifyEndpoint' {redisSettings} -> redisSettings) (\s@ModifyEndpoint' {} a -> s {redisSettings = a} :: ModifyEndpoint)

-- | Settings in JSON format for the target Amazon S3 endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring Extra Connection Attributes When Using Amazon S3 as a Target for DMS>
-- in the /Database Migration Service User Guide./
modifyEndpoint_s3Settings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe S3Settings)
modifyEndpoint_s3Settings = Lens.lens (\ModifyEndpoint' {s3Settings} -> s3Settings) (\s@ModifyEndpoint' {} a -> s {s3Settings = a} :: ModifyEndpoint)

-- | Settings in JSON format for the source and target Microsoft SQL Server
-- endpoint. For information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib Extra connection attributes when using SQL Server as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib Extra connection attributes when using SQL Server as a target for DMS>
-- in the /Database Migration Service User Guide./
modifyEndpoint_microsoftSQLServerSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe MicrosoftSQLServerSettings)
modifyEndpoint_microsoftSQLServerSettings = Lens.lens (\ModifyEndpoint' {microsoftSQLServerSettings} -> microsoftSQLServerSettings) (\s@ModifyEndpoint' {} a -> s {microsoftSQLServerSettings = a} :: ModifyEndpoint)

-- | Settings in JSON format for the target Apache Kafka endpoint. For more
-- information about the available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping Using object mapping to migrate data to a Kafka topic>
-- in the /Database Migration Service User Guide./
modifyEndpoint_kafkaSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe KafkaSettings)
modifyEndpoint_kafkaSettings = Lens.lens (\ModifyEndpoint' {kafkaSettings} -> kafkaSettings) (\s@ModifyEndpoint' {} a -> s {kafkaSettings = a} :: ModifyEndpoint)

-- | The settings in JSON format for the DMS transfer type of source
-- endpoint.
--
-- Attributes include the following:
--
-- -   serviceAccessRoleArn - The Amazon Resource Name (ARN) used by the
--     service access IAM role. The role must allow the @iam:PassRole@
--     action.
--
-- -   BucketName - The name of the S3 bucket to use.
--
-- Shorthand syntax for these settings is as follows:
-- @ServiceAccessRoleArn=string ,BucketName=string@
--
-- JSON syntax for these settings is as follows:
-- @{ \"ServiceAccessRoleArn\": \"string\", \"BucketName\": \"string\"} @
modifyEndpoint_dmsTransferSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe DmsTransferSettings)
modifyEndpoint_dmsTransferSettings = Lens.lens (\ModifyEndpoint' {dmsTransferSettings} -> dmsTransferSettings) (\s@ModifyEndpoint' {} a -> s {dmsTransferSettings = a} :: ModifyEndpoint)

-- | Settings in JSON format for the source and target SAP ASE endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib Extra connection attributes when using SAP ASE as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib Extra connection attributes when using SAP ASE as a target for DMS>
-- in the /Database Migration Service User Guide./
modifyEndpoint_sybaseSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe SybaseSettings)
modifyEndpoint_sybaseSettings = Lens.lens (\ModifyEndpoint' {sybaseSettings} -> sybaseSettings) (\s@ModifyEndpoint' {} a -> s {sybaseSettings = a} :: ModifyEndpoint)

-- | Settings in JSON format for the source and target PostgreSQL endpoint.
-- For information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib Extra connection attributes when using PostgreSQL as a source for DMS>
-- and
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib Extra connection attributes when using PostgreSQL as a target for DMS>
-- in the /Database Migration Service User Guide./
modifyEndpoint_postgreSQLSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe PostgreSQLSettings)
modifyEndpoint_postgreSQLSettings = Lens.lens (\ModifyEndpoint' {postgreSQLSettings} -> postgreSQLSettings) (\s@ModifyEndpoint' {} a -> s {postgreSQLSettings = a} :: ModifyEndpoint)

-- | Settings in JSON format for the source IBM Db2 LUW endpoint. For
-- information about other available settings, see
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib Extra connection attributes when using Db2 LUW as a source for DMS>
-- in the /Database Migration Service User Guide./
modifyEndpoint_iBMDb2Settings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe IBMDb2Settings)
modifyEndpoint_iBMDb2Settings = Lens.lens (\ModifyEndpoint' {iBMDb2Settings} -> iBMDb2Settings) (\s@ModifyEndpoint' {} a -> s {iBMDb2Settings = a} :: ModifyEndpoint)

-- | Settings in JSON format for the source MongoDB endpoint. For more
-- information about the available settings, see the configuration
-- properties section in
-- <https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration Endpoint configuration settings when using MongoDB as a source for Database Migration Service>
-- in the /Database Migration Service User Guide./
modifyEndpoint_mongoDbSettings :: Lens.Lens' ModifyEndpoint (Prelude.Maybe MongoDbSettings)
modifyEndpoint_mongoDbSettings = Lens.lens (\ModifyEndpoint' {mongoDbSettings} -> mongoDbSettings) (\s@ModifyEndpoint' {} a -> s {mongoDbSettings = a} :: ModifyEndpoint)

-- | The Amazon Resource Name (ARN) string that uniquely identifies the
-- endpoint.
modifyEndpoint_endpointArn :: Lens.Lens' ModifyEndpoint Prelude.Text
modifyEndpoint_endpointArn = Lens.lens (\ModifyEndpoint' {endpointArn} -> endpointArn) (\s@ModifyEndpoint' {} a -> s {endpointArn = a} :: ModifyEndpoint)

instance Core.AWSRequest ModifyEndpoint where
  type
    AWSResponse ModifyEndpoint =
      ModifyEndpointResponse
  request overrides =
    Request.postJSON (overrides defaultService)
  response =
    Response.receiveJSON
      ( \s h x ->
          ModifyEndpointResponse'
            Prelude.<$> (x Data..?> "Endpoint")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ModifyEndpoint where
  hashWithSalt _salt ModifyEndpoint' {..} =
    _salt `Prelude.hashWithSalt` port
      `Prelude.hashWithSalt` elasticsearchSettings
      `Prelude.hashWithSalt` redshiftSettings
      `Prelude.hashWithSalt` externalTableDefinition
      `Prelude.hashWithSalt` engineName
      `Prelude.hashWithSalt` mySQLSettings
      `Prelude.hashWithSalt` sslMode
      `Prelude.hashWithSalt` endpointIdentifier
      `Prelude.hashWithSalt` password
      `Prelude.hashWithSalt` serverName
      `Prelude.hashWithSalt` docDbSettings
      `Prelude.hashWithSalt` exactSettings
      `Prelude.hashWithSalt` databaseName
      `Prelude.hashWithSalt` username
      `Prelude.hashWithSalt` gcpMySQLSettings
      `Prelude.hashWithSalt` serviceAccessRoleArn
      `Prelude.hashWithSalt` extraConnectionAttributes
      `Prelude.hashWithSalt` neptuneSettings
      `Prelude.hashWithSalt` endpointType
      `Prelude.hashWithSalt` kinesisSettings
      `Prelude.hashWithSalt` oracleSettings
      `Prelude.hashWithSalt` certificateArn
      `Prelude.hashWithSalt` dynamoDbSettings
      `Prelude.hashWithSalt` redisSettings
      `Prelude.hashWithSalt` s3Settings
      `Prelude.hashWithSalt` microsoftSQLServerSettings
      `Prelude.hashWithSalt` kafkaSettings
      `Prelude.hashWithSalt` dmsTransferSettings
      `Prelude.hashWithSalt` sybaseSettings
      `Prelude.hashWithSalt` postgreSQLSettings
      `Prelude.hashWithSalt` iBMDb2Settings
      `Prelude.hashWithSalt` mongoDbSettings
      `Prelude.hashWithSalt` endpointArn

instance Prelude.NFData ModifyEndpoint where
  rnf ModifyEndpoint' {..} =
    Prelude.rnf port
      `Prelude.seq` Prelude.rnf elasticsearchSettings
      `Prelude.seq` Prelude.rnf redshiftSettings
      `Prelude.seq` Prelude.rnf externalTableDefinition
      `Prelude.seq` Prelude.rnf engineName
      `Prelude.seq` Prelude.rnf mySQLSettings
      `Prelude.seq` Prelude.rnf sslMode
      `Prelude.seq` Prelude.rnf endpointIdentifier
      `Prelude.seq` Prelude.rnf password
      `Prelude.seq` Prelude.rnf serverName
      `Prelude.seq` Prelude.rnf docDbSettings
      `Prelude.seq` Prelude.rnf exactSettings
      `Prelude.seq` Prelude.rnf databaseName
      `Prelude.seq` Prelude.rnf username
      `Prelude.seq` Prelude.rnf gcpMySQLSettings
      `Prelude.seq` Prelude.rnf serviceAccessRoleArn
      `Prelude.seq` Prelude.rnf
        extraConnectionAttributes
      `Prelude.seq` Prelude.rnf neptuneSettings
      `Prelude.seq` Prelude.rnf endpointType
      `Prelude.seq` Prelude.rnf kinesisSettings
      `Prelude.seq` Prelude.rnf oracleSettings
      `Prelude.seq` Prelude.rnf certificateArn
      `Prelude.seq` Prelude.rnf
        dynamoDbSettings
      `Prelude.seq` Prelude.rnf
        redisSettings
      `Prelude.seq` Prelude.rnf
        s3Settings
      `Prelude.seq` Prelude.rnf
        microsoftSQLServerSettings
      `Prelude.seq` Prelude.rnf
        kafkaSettings
      `Prelude.seq` Prelude.rnf
        dmsTransferSettings
      `Prelude.seq` Prelude.rnf
        sybaseSettings
      `Prelude.seq` Prelude.rnf
        postgreSQLSettings
      `Prelude.seq` Prelude.rnf
        iBMDb2Settings
      `Prelude.seq` Prelude.rnf
        mongoDbSettings
      `Prelude.seq` Prelude.rnf
        endpointArn

instance Data.ToHeaders ModifyEndpoint where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Data.=# ( "AmazonDMSv20160101.ModifyEndpoint" ::
                          Prelude.ByteString
                      ),
            "Content-Type"
              Data.=# ( "application/x-amz-json-1.1" ::
                          Prelude.ByteString
                      )
          ]
      )

instance Data.ToJSON ModifyEndpoint where
  toJSON ModifyEndpoint' {..} =
    Data.object
      ( Prelude.catMaybes
          [ ("Port" Data..=) Prelude.<$> port,
            ("ElasticsearchSettings" Data..=)
              Prelude.<$> elasticsearchSettings,
            ("RedshiftSettings" Data..=)
              Prelude.<$> redshiftSettings,
            ("ExternalTableDefinition" Data..=)
              Prelude.<$> externalTableDefinition,
            ("EngineName" Data..=) Prelude.<$> engineName,
            ("MySQLSettings" Data..=) Prelude.<$> mySQLSettings,
            ("SslMode" Data..=) Prelude.<$> sslMode,
            ("EndpointIdentifier" Data..=)
              Prelude.<$> endpointIdentifier,
            ("Password" Data..=) Prelude.<$> password,
            ("ServerName" Data..=) Prelude.<$> serverName,
            ("DocDbSettings" Data..=) Prelude.<$> docDbSettings,
            ("ExactSettings" Data..=) Prelude.<$> exactSettings,
            ("DatabaseName" Data..=) Prelude.<$> databaseName,
            ("Username" Data..=) Prelude.<$> username,
            ("GcpMySQLSettings" Data..=)
              Prelude.<$> gcpMySQLSettings,
            ("ServiceAccessRoleArn" Data..=)
              Prelude.<$> serviceAccessRoleArn,
            ("ExtraConnectionAttributes" Data..=)
              Prelude.<$> extraConnectionAttributes,
            ("NeptuneSettings" Data..=)
              Prelude.<$> neptuneSettings,
            ("EndpointType" Data..=) Prelude.<$> endpointType,
            ("KinesisSettings" Data..=)
              Prelude.<$> kinesisSettings,
            ("OracleSettings" Data..=)
              Prelude.<$> oracleSettings,
            ("CertificateArn" Data..=)
              Prelude.<$> certificateArn,
            ("DynamoDbSettings" Data..=)
              Prelude.<$> dynamoDbSettings,
            ("RedisSettings" Data..=) Prelude.<$> redisSettings,
            ("S3Settings" Data..=) Prelude.<$> s3Settings,
            ("MicrosoftSQLServerSettings" Data..=)
              Prelude.<$> microsoftSQLServerSettings,
            ("KafkaSettings" Data..=) Prelude.<$> kafkaSettings,
            ("DmsTransferSettings" Data..=)
              Prelude.<$> dmsTransferSettings,
            ("SybaseSettings" Data..=)
              Prelude.<$> sybaseSettings,
            ("PostgreSQLSettings" Data..=)
              Prelude.<$> postgreSQLSettings,
            ("IBMDb2Settings" Data..=)
              Prelude.<$> iBMDb2Settings,
            ("MongoDbSettings" Data..=)
              Prelude.<$> mongoDbSettings,
            Prelude.Just ("EndpointArn" Data..= endpointArn)
          ]
      )

instance Data.ToPath ModifyEndpoint where
  toPath = Prelude.const "/"

instance Data.ToQuery ModifyEndpoint where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newModifyEndpointResponse' smart constructor.
data ModifyEndpointResponse = ModifyEndpointResponse'
  { -- | The modified endpoint.
    endpoint :: Prelude.Maybe Endpoint,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Generic)

-- |
-- Create a value of 'ModifyEndpointResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'endpoint', 'modifyEndpointResponse_endpoint' - The modified endpoint.
--
-- 'httpStatus', 'modifyEndpointResponse_httpStatus' - The response's http status code.
newModifyEndpointResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyEndpointResponse
newModifyEndpointResponse pHttpStatus_ =
  ModifyEndpointResponse'
    { endpoint = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The modified endpoint.
modifyEndpointResponse_endpoint :: Lens.Lens' ModifyEndpointResponse (Prelude.Maybe Endpoint)
modifyEndpointResponse_endpoint = Lens.lens (\ModifyEndpointResponse' {endpoint} -> endpoint) (\s@ModifyEndpointResponse' {} a -> s {endpoint = a} :: ModifyEndpointResponse)

-- | The response's http status code.
modifyEndpointResponse_httpStatus :: Lens.Lens' ModifyEndpointResponse Prelude.Int
modifyEndpointResponse_httpStatus = Lens.lens (\ModifyEndpointResponse' {httpStatus} -> httpStatus) (\s@ModifyEndpointResponse' {} a -> s {httpStatus = a} :: ModifyEndpointResponse)

instance Prelude.NFData ModifyEndpointResponse where
  rnf ModifyEndpointResponse' {..} =
    Prelude.rnf endpoint
      `Prelude.seq` Prelude.rnf httpStatus
