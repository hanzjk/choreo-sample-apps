import ballerina/http;
import ballerina/os;

string serviceURL = os:getEnv("SVC_URL");

service / on new http:Listener(9090) {
    resource function get greeting() returns string|error {

        if serviceURL is "" {
            return error("name cannot be empty !");
        }
        return "Hello, " + serviceURL;
    }
}
