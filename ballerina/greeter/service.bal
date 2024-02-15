import ballerina/http;



configurable string salesAdmin = ?;


service / on new http:Listener(9090) {

    resource function get .() returns string|error {

        if salesAdmin is "" {
            return error("name cannot be empty !");
        }
        return "Hellooo, " + salesAdmin;
    }
}
