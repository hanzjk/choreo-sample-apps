import ballerina/http;

service on new http:Listener(9090) {

    resource function get [string... paths](http:Request req) returns string {
        return string `method: ${req.method}, path: ${paths.toString()}`;
    }
}
