## Messages Requests

## AlertFamily

get system alert Families

Url: /api/Alert/family  
Action: GET  
Request Params:  addSubFamilies (optional)  
Response : 
```javascrip
{
  "data": [
    {
      "id": 0,
      "nameId": "System",
      "description": "Geo fence, speed, analog, car status alerts",
      "label": null
    },
    {
      "id": 1,
      "nameId": "Unit",
      "description": "Unit alerts",
      "label": null
    },
    {
      "id": 2,
      "nameId": "Reminder",
      "description": "Reminders  (Vehicle maintenance, Driver expired license)",
      "label": null
    }
  ],
  "isSucceded": true,
  "error": null
}

```


## AlertSubFamily

get system alert sub Families

Url: /api/Alert/Subfamily  
Action: GET  
Request Params:    
Response : 
```javascrip
{
  "data": [
    {
      "id": 16,
      "alertFamily": 1,
      "description": "CAN MIL",
      "label": null
    },
    {
      "id": 17,
      "alertFamily": 0,
      "description": "CAN Sensor",
      "label": null
    }
  ],
  "isSucceded": true,
  "error": null
}

```

## GetNotification

get all account notification

Url:  /api/Notification  
Action: GET  
Request Params:  MaxId (optional)  
Response : 
```javascrip
{
  "data": [
    {
      "id": 9681672,
      "accountId": 4317,
      "severity": 2,
      "dateTime": "2017-12-02T13:08:31",
      "eventName": "Speed Test",
      "licensePlate": "70820670",
      "vehicleGroup": "Others",
      "driverName": null,
      "eventType": 7
    },
    {
      "id": 9681674,
      "accountId": 4317,
      "severity": 2,
      "dateTime": "2017-12-02T13:08:31",
      "eventName": "Another Test",
      "licensePlate": "293087",
      "vehicleGroup": "Others",
      "driverName": null,
      "eventType": 11
    }
    ],
  "isSucceded": true,
  "error": null
}

```

## GetNotificationDetails

get more details for notification

Url:  /api/Notification/details 
Action: GET  
Request Params: NotificationId, LangId (optional)  
Response : 
```javascrip
{
  "data": {
    "id": 9679764,
    "details": "msgDriveSpeedAtDate,2017/11/28 16:28:30,Pdsfsdfsdf,,,73,,50,,,,,,,,,,,",
    "lastTransmission": 4618,
    "feedback": ""
  },
  "isSucceded": true,
  "error": null
}
```
## GetNotificationDashboard

get the events card details
Last update in version: 0.1.2
Url:  /api/Notification/dashboard 
Action: GET  
Request Params: MaxId (optional)  
Response : 
```javascrip
{
  "data": {
    "severity": [
      {
        "severity": 0,
        "count": 65
      },
      {
        "severity": 1,
        "count": 70
      },
      {
        "severity": 2,
        "count": 65
      }
    ],
    "events": {
      "header": [
        {
          "eventType": 12,
          "count": 18,
          "eventName": "Tasks status"
        },
        {
          "eventType": 13,
          "count": 15,
          "eventName": "Fuel"
        },
        {
          "eventType": 6,
          "count": 14,
          "eventName": "Odometer"
        }
      ],
      "sum": 153,
      "categoriesSum": 15,
      "all": 200
    }
  },
  "isSucceded": true,
  "error": null
}
```

## GetReminderList

get account reminder list
Last update in version: 0.1.2
Url:  /api/reminder
Action: GET  
Response : 
```javascrip
{
  "data": [
    {
      "id": 55,
      "name": "vehicle rem 1",
      "vehicleId": 53599,
      "licensePlate": "sdasdasd",
      "driverId": null,
      "driverName": "",
      "eventType": 17,
      "nextMaitanence": "2016-11-24T00:00:00"
    },
    {
      "id": 56,
      "name": "vehicle rem 2",
      "vehicleId": 53581,
      "licensePlate": "T505274C1",
      "driverId": null,
      "driverName": "",
      "eventType": 18,
      "nextMaitanence": null
    }
    ]
  "isSucceded": true,
  "error": null
}
```

## GetDTCList

get account dtc list
Last update in version: 0.1.2
Url:  /api/dtc
Action: GET  
Response : 
```javascrip
{
  "data": [
    {
      "id": 3,
      "licensePlate": "S 93333",
      "status": 1,
      "type": "Powertrain",
      "event": "Fuel Pump Secondary Circuit High",
      "code": "P0232",
      "receivedTime": "2017-11-27T17:15:33.18",
      "receivedOdometer": 0,
      "updatedTime": "2017-11-27T17:18:50.19",
      "updatedOdometer": 0,
      "closedTime": null,
      "closedOdometer": null,
      "isRead": null
    },
    {
      "id": 5,
      "licensePlate": "S 93333",
      "status": 1,
      "type": "Body",
      "event": "Wiper Washer Fluid Level Sensor Circuit Short To Battery",
      "code": "B1481",
      "receivedTime": "2017-11-27T17:18:50.19",
      "receivedOdometer": 0,
      "updatedTime": null,
      "updatedOdometer": null,
      "closedTime": null,
      "closedOdometer": null,
      "isRead": null
    }
    ]
  "isSucceded": true,
  "error": null
}
```
