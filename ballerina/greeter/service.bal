// Copyright (c) 2023, WSO2 LLC. (https://www.wso2.com/) All Rights Reserved.
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License. hjsjbsjdjdjsfkbaskjfblks

import ballerina/http;


# mysql:Options parameter record with default optimized values
type Options record {|
    # connectTimeout - Timeout to be used when establishing a connection
    decimal connectTimeout = 10.0;
|};

# sql:ConnectionPool parameter record with default optimized values
type ConnectionPool record {|
    # maxOpenConnections -   The maximum open connections
    int maxOpenConnections = 10;
    # maxConnectionLifeTime - The maximum lifetime of a connection
    decimal maxConnectionLifeTime = 180.0;
    # minIdleConnections - The minimum idle time of a connection  
    int minIdleConnections = 5;
|};
# [Configurable] HR entity configuration.
type EmployeeServiceConfig record {|
    # URL
    string apiEndpoint;
    # Token Endpoint
    string tokenUrl;
    # Client ID
    string clientId;
    # Client Secret
    string clientSecret;
|};

type DatabaseConfig record {|
    # Database Host
    string host;
    # Database User
    string user;
    # Database Password
    string password;
    # Database Name
    string database;
    # Database Port
    int port;
    # connectTimeout
    Options options?;
    # connectionPool
    ConnectionPool connectionPool;
|};



configurable EmployeeServiceConfig employeeServiceConfigs = ?;
configurable DatabaseConfig databaseConfig = ?;
configurable string salesAdmin = ?;

configurable string[] authorizedRoles = ?;


service / on new http:Listener(9090) {

    resource function get greeting() returns string|error {

        if salesAdmin is "" {
            return error("name cannot be empty !!!");
        }
        return "Hello, " + salesAdmin;
    }
}
