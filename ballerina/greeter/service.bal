import ballerina/http;

service / on new http:Listener(9090) {

    // This function responds with `string` value `Hello, World!` to HTTP GET requests.
    resource function get [string... paths]() returns string {
        return "Hello, World!";
    }
}
