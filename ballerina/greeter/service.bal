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

configurable string name=?;
configurable string name_test1=?;
configurable string name_test2=?;
configurable string name_test3=?;
configurable string[] authorizedRoles = [];


service / on new http:Listener(9090) {

    resource function get greeting() returns string|error {

        if name is "" {
            return error("name cannot be empty !!!");
        }
        return "Hello, " + name;
    }
}

