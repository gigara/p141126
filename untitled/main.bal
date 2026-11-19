import ballerina/http;
import ballerina/log;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service / on httpDefaultListener {
    resource function get hello() returns json|error {
        do {
            string stringResult = check Hello_World_Service_greeting->/greeting.get();
            log:printInfo(string `${stringResult}`);
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

}
