#!/bin/sh

# MongoDB Java driver won't run authentication twice on the same DB instance,
# so we need to use multiple DBs.
mongo --eval 'db.createUser({"user": "clojurewerkz/monger", "pwd": "monger", roles: ["dbAdmin"], mechanisms: ["SCRAM-SHA-1"], passwordDigestor: "client"})' monger-test
mongo --eval 'db.createUser({"user": "clojurewerkz/monger", "pwd": "monger", roles: ["dbAdmin"], mechanisms: ["SCRAM-SHA-1"], passwordDigestor: "client"})' monger-test2
mongo --eval 'db.createUser({"user": "clojurewerkz/monger", "pwd": "monger", roles: ["dbAdmin"], mechanisms: ["SCRAM-SHA-1"], passwordDigestor: "client"})' monger-test3
mongo --eval 'db.createUser({"user": "clojurewerkz/monger", "pwd": "monger", roles: ["dbAdmin"], mechanisms: ["SCRAM-SHA-1"], passwordDigestor: "client"})' monger-test4
