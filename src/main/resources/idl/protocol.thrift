/*
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
namespace php org.kie.server.thrift.client.facts
namespace java org.kie.server.thrift.client.facts

include "kieserverjava.thrift"

const i32 HELLO = 0;
const i32 GOODBYE = 1;

struct Global {
    1: optional list<string> listOfStrings;
}

struct Element {
    1: required string elementString;
}

struct Message {
    1: required i32 status = 0
    2: required string messageString;
    3: required EmbeddedMessage embeddedMessage;
}

struct EmbeddedMessage {
    1: required string embeddedMessageString;
    2: required kieserverjava.BigDecimal bigdecimal;
}