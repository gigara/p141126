import ballerina/os;

configurable string ServiceURL1 = os:getEnv("HELLO_WORLD_SERVICE_GREETING_SERVICE_URL");
configurable string APIKey1 = os:getEnv("HELLO_WORLD_SERVICE_GREETING_API_KEY");
