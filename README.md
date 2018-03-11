# dweetio2openHAB
Listens on a stream from dweet.io and publishes updates to items in openHAB.

This example uses a DataConnector from Disruptive Technologies that feeds the dweets.
The content of the dweet could be any JSON sent to dweet.io.
THIS example gets the following JSON from dweet-stream.
The content is what you are sending dweet.io named MY_DWEET_NAME

```
{
    "thing":    "MY_DWEET_NAME",
    "created":  "2018-03-11T13:42:52.561Z",
    "content": {
        "event":{
            "eventId": "baij4mqaase6q506mu80",
            "targetName": "projects/MY_PROJECT_ID/devices/DEVICE_ID",
            "eventType": "temperature",
            "data": {
                "temperature": {
                    "value": 23.75,
                    "updateTime": "2018-03-11T13:42:51.837663592Z"
                }
            },
            "timestamp": "2018-03-11T13:42:51.837663592Z"
        },
        "labels": {
            "name": "Temperature Sensor No 5"
        }
    }
} 
```
See http://dweet.io for more examples - this code uses the NodeJS-Library


## Requirements:
The file settings.ns holds some variables to connect to dweet.io and the local openHAB-installation
This file is not in git for security reasons.

filename: settings.ns
```
const DWEET_THING = '<name of your thing at dweet.io>';
const OPENHAB_URL = '<url to your local openHAB-installations REST API>';
const OPENHAB_ITEM = '<name of your openHAB-item that should be updated for events from dweet-stream>';
const DT_PROJECT_ID = '<your project id from DT Studio>';
const DT_DEVICE_ID_TEMP_1 = '<the device_id for your temperature sensor>';
```
