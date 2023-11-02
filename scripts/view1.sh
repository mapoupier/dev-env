curl -s --location 'http://kibana:5601/api/saved_objects/search' \
--header 'kbn-xsrf: true' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic ZWxhc3RpYzpwYXNzQDEyMzQ=' \
--data-raw '{
    "attributes": {
        "kibanaSavedObjectMeta": {
            "searchSourceJSON": "{\"query\":{\"query\":\"\",\"language\":\"kuery\"},\"filter\":[],\"indexRefName\":\"kibanaSavedObjectMeta.searchSourceJSON.index\"}"
        },
        "title": "all records",
        "sort": [
            [
                "@timestamp",
                "desc"
            ]
        ],
        "columns": [
            "level",
            "fields.ActionId",
            "message"
        ],
        "description": "",
        "grid": {
            "columns": {
                "level": {
                    "width": 100
                },
                "fields.ActionId": {
                    "width": 100
                }
            }
        },
        "hideChart": true,
        "isTextBasedQuery": false,
        "usesAdHocDataView": false,
        "timeRestore": false
    },
    "references": [
        {
        "name": "kibanaSavedObjectMeta.searchSourceJSON.index",
        "type": "index-pattern",
        "id": "scc-wcm*"
        }
    ]
}'


curl --location 'http://kibana:5601/api/saved_objects/search' \
--header 'kbn-xsrf: true' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic ZWxhc3RpYzpwYXNzQDEyMzQ=' \
--data-raw '{
    "attributes": {
        "kibanaSavedObjectMeta": {
            "searchSourceJSON": "{\"query\":{\"query\":\"\",\"language\":\"kuery\"},\"filter\":[{\"meta\":{\"alias\":null,\"negate\":true,\"disabled\":false,\"type\":\"phrase\",\"key\":\"level\",\"params\":{\"query\":\"Information\"},\"indexRefName\":\"kibanaSavedObjectMeta.searchSourceJSON.filter[0].meta.index\"},\"query\":{\"match_phrase\":{\"level\":\"Information\"}},\"$state\":{\"store\":\"appState\"}}],\"indexRefName\":\"kibanaSavedObjectMeta.searchSourceJSON.index\"}"
        },
        "title": "no information",
        "sort": [
            [
                "@timestamp",
                "desc"
            ]
        ],
        "columns": [
            "level",
            "fields.ActionId",
            "message"
        ],
        "description": "",
        "grid": {
            "columns": {
                "level": {
                    "width": 100
                },
                "fields.ActionId": {
                    "width": 100
                }
            }
        },
        "hideChart": true,
        "isTextBasedQuery": false,
        "usesAdHocDataView": false,
        "timeRestore": false
    },
    "references": [
        {
            "name": "kibanaSavedObjectMeta.searchSourceJSON.index",
            "type": "index-pattern",
            "id": "scc-wcm*"
        },
        {
            "name": "kibanaSavedObjectMeta.searchSourceJSON.filter[0].meta.index",
            "type": "index-pattern",
            "id": "scc-wcm*"
        }
    ]
}'


curl --location 'http://kibana:5601/api/saved_objects/search' \
--header 'kbn-xsrf: true' \
--header 'Content-Type: application/json' \
--header 'Authorization: Basic ZWxhc3RpYzpwYXNzQDEyMzQ=' \
--data-raw '{
    "attributes": {
        "kibanaSavedObjectMeta": {
            "searchSourceJSON": "{\"query\":{\"query\":\"\",\"language\":\"kuery\"},\"filter\":[{\"meta\":{\"alias\":null,\"negate\":true,\"disabled\":false,\"type\":\"phrase\",\"key\":\"fields.SourceContext.keyword\",\"params\":{\"query\":\"Microsoft.AspNetCore.Routing.EndpointMiddleware\"},\"indexRefName\":\"kibanaSavedObjectMeta.searchSourceJSON.filter[0].meta.index\"},\"query\":{\"match_phrase\":{\"fields.SourceContext.keyword\":\"Microsoft.AspNetCore.Routing.EndpointMiddleware\"}},\"$state\":{\"store\":\"appState\"}},{\"meta\":{\"alias\":null,\"negate\":true,\"disabled\":false,\"type\":\"phrase\",\"key\":\"fields.SourceContext.keyword\",\"params\":{\"query\":\"Microsoft.AspNetCore.Mvc.Infrastructure.ObjectResultExecutor\"},\"indexRefName\":\"kibanaSavedObjectMeta.searchSourceJSON.filter[1].meta.index\"},\"query\":{\"match_phrase\":{\"fields.SourceContext.keyword\":\"Microsoft.AspNetCore.Mvc.Infrastructure.ObjectResultExecutor\"}},\"$state\":{\"store\":\"appState\"}}],\"indexRefName\":\"kibanaSavedObjectMeta.searchSourceJSON.index\"}"
        },
        "title": "all records (no ef)",
        "sort": [
            [
                "@timestamp",
                "desc"
            ]
        ],
        "columns": [
            "level",
            "fields.ActionId",
            "message"
        ],
        "description": "",
        "grid": {
            "columns": {
                "level": {
                    "width": 100
                },
                "fields.ActionId": {
                    "width": 100
                }
            }
        },
        "hideChart": true,
        "isTextBasedQuery": false,
        "usesAdHocDataView": false,
        "timeRestore": false
    },
    "references": [
        {
            "name": "kibanaSavedObjectMeta.searchSourceJSON.index",
            "type": "index-pattern",
            "id": "scc-wcm*"
        },
        {
            "name": "kibanaSavedObjectMeta.searchSourceJSON.filter[0].meta.index",
            "type": "index-pattern",
            "id": "scc-wcm*"
        },
        {
            "name": "kibanaSavedObjectMeta.searchSourceJSON.filter[1].meta.index",
            "type": "index-pattern",
            "id": "scc-wcm*"
        }
    ]
}'