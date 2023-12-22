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

configurable string dbHost1=?;
configurable string dbHost2=?;
configurable string dbHost3=?;
configurable string dbHost4=?;
configurable string dbHost5=?;
configurable string dbHost6=?;
configurable string dbHost7=?;
configurable string dbHost8=?;
configurable string dbHost9=?;
configurable string dbHost10=?;
configurable string dbHost11=?;
configurable string dbHost12=?;
configurable string dbHost13=?;
configurable string dbHost14=?;
configurable string dbHost15=?;
configurable string dbHost16=?;
configurable string dbHost17=?;
configurable string dbHost18=?;
configurable string dbHost19=?;
configurable string dbHost20=?;
configurable string dbHost21=?;
configurable string dbHost22=?;
configurable string dbHost23=?;
configurable string dbHost24=?;
configurable string dbHost25=?;
configurable string dbHost26=?;
configurable string dbHost27=?;
configurable string dbHost28=?;
configurable string dbHost29=?;
configurable string dbHost30=?;
configurable string dbHost31=?;
configurable string dbHost32=?;
configurable string dbHost33=?;
configurable string dbHost34=?;
configurable string dbHost35=?;
configurable string dbHost36=?;
configurable string dbHost37=?;
configurable string dbHost38=?;
configurable string dbHost39=?;
configurable string dbHost40=?;
configurable string dbHost41=?;
configurable string dbHost42=?;
configurable string dbHost43=?;
configurable string dbHost44=?;
configurable string dbHost45=?;
configurable string dbHost46=?;
configurable string dbHost47=?;
configurable string dbHost48=?;
configurable string dbHost49=?;
configurable string dbHost50=?;

service / on new http:Listener(9090) {

    resource function get greeting(string name) returns string|error {

        if name is "" {
            return error("name cannot be empty !!!");
        }
        return "Hello, " + name;
    }
}

