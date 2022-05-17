{
	"contents": {
		"c37bf456-d4db-45f1-ba0a-4cf7d5e19bc5": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.satya.mytestworkflow1",
			"subject": "mytestworkflow1",
			"name": "mytestworkflow1",
			"documentation": "Copy of WS02400012",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"c8f304b1-8ccf-4c80-8067-0bc0f5171ede": {
					"name": "StartEvent2"
				},
				"c6945279-5b49-47b6-81cb-c61f09cc710b": {
					"name": "EndEvent3"
				}
			},
			"activities": {
				"51ab559f-4ce7-4a2d-adc2-6a9ad316a8b3": {
					"name": "context setting"
				},
				"a76f7b5b-8c6f-4ad8-bc9e-b0b7bed0bebc": {
					"name": "User Decision"
				},
				"015816e5-2130-4723-9eef-bc40f7b1939c": {
					"name": "ExclusiveGateway"
				},
				"40354707-e7c4-46c3-894d-c9b92adbd8cc": {
					"name": "Release sub Workflow"
				},
				"1fc9ab40-d06f-4a2c-a8a5-b6f225735db8": {
					"name": "Reject"
				}
			},
			"sequenceFlows": {
				"0d572127-52f3-487e-a04c-0c49a453eae5": {
					"name": "SequenceFlow17"
				},
				"d1991dfc-2b4b-4b34-b010-384aa07f360b": {
					"name": "SequenceFlow18"
				},
				"daa4e07f-03a3-4f6d-b1e7-de9b34878ba2": {
					"name": "SequenceFlow19"
				},
				"ac3feedc-07dd-4641-a0a6-b9cdd8901d81": {
					"name": "Approve"
				},
				"dd8409db-c2e1-4fcf-85ac-9368a1b118a1": {
					"name": "Reject"
				},
				"55e76ee0-46c6-4ef2-9227-f6829e35e033": {
					"name": "SequenceFlow24"
				},
				"bb52f1e8-5e74-45e1-a724-19c5b07c5006": {
					"name": "SequenceFlow25"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"c8f304b1-8ccf-4c80-8067-0bc0f5171ede": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent2",
			"name": "StartEvent2",
			"sampleContextRefs": {
				"e41aaf92-5c8e-4299-b30b-0cde8cf2af27": {}
			}
		},
		"c6945279-5b49-47b6-81cb-c61f09cc710b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "EndEvent3"
		},
		"51ab559f-4ce7-4a2d-adc2-6a9ad316a8b3": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/mytestworkflow1/settingContext.js",
			"id": "scripttask1",
			"name": "context setting"
		},
		"a76f7b5b-8c6f-4ad8-bc9e-b0b7bed0bebc": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "${context.subject}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.approver}",
			"formReference": "/forms/mytestworkflow1/initialData.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "initialdata"
			}, {
				"key": "formRevision",
				"value": "1"
			}],
			"id": "usertask2",
			"name": "User Decision"
		},
		"015816e5-2130-4723-9eef-bc40f7b1939c": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway",
			"default": "dd8409db-c2e1-4fcf-85ac-9368a1b118a1"
		},
		"40354707-e7c4-46c3-894d-c9b92adbd8cc": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "wfsrv",
			"path": "/sap/opu/odata/sap/ZFPS_WF_SRV/ReleaseWFSet",
			"httpMethod": "POST",
			"xsrfPath": "/sap/opu/odata/sap/ZFPS_WF_SRV/",
			"requestVariable": "${context.payload}",
			"responseVariable": "${context.response}",
			"id": "servicetask4",
			"name": "Release sub Workflow"
		},
		"1fc9ab40-d06f-4a2c-a8a5-b6f225735db8": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "wfsrv",
			"path": "/sap/opu/odata/sap/ZFPS_WF_SRV/ReleaseWFSet",
			"httpMethod": "POST",
			"xsrfPath": "/sap/opu/odata/sap/ZFPS_WF_SRV/",
			"requestVariable": "${context.payload}",
			"responseVariable": "${context.response}",
			"id": "servicetask5",
			"name": "Reject"
		},
		"0d572127-52f3-487e-a04c-0c49a453eae5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow17",
			"name": "SequenceFlow17",
			"sourceRef": "c8f304b1-8ccf-4c80-8067-0bc0f5171ede",
			"targetRef": "51ab559f-4ce7-4a2d-adc2-6a9ad316a8b3"
		},
		"d1991dfc-2b4b-4b34-b010-384aa07f360b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow18",
			"name": "SequenceFlow18",
			"sourceRef": "51ab559f-4ce7-4a2d-adc2-6a9ad316a8b3",
			"targetRef": "a76f7b5b-8c6f-4ad8-bc9e-b0b7bed0bebc"
		},
		"daa4e07f-03a3-4f6d-b1e7-de9b34878ba2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow19",
			"name": "SequenceFlow19",
			"sourceRef": "a76f7b5b-8c6f-4ad8-bc9e-b0b7bed0bebc",
			"targetRef": "015816e5-2130-4723-9eef-bc40f7b1939c"
		},
		"ac3feedc-07dd-4641-a0a6-b9cdd8901d81": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.usertask== \"approve\"}",
			"id": "sequenceflow22",
			"name": "Approve",
			"sourceRef": "015816e5-2130-4723-9eef-bc40f7b1939c",
			"targetRef": "40354707-e7c4-46c3-894d-c9b92adbd8cc"
		},
		"dd8409db-c2e1-4fcf-85ac-9368a1b118a1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow23",
			"name": "Reject",
			"sourceRef": "015816e5-2130-4723-9eef-bc40f7b1939c",
			"targetRef": "1fc9ab40-d06f-4a2c-a8a5-b6f225735db8"
		},
		"55e76ee0-46c6-4ef2-9227-f6829e35e033": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow24",
			"name": "SequenceFlow24",
			"sourceRef": "40354707-e7c4-46c3-894d-c9b92adbd8cc",
			"targetRef": "c6945279-5b49-47b6-81cb-c61f09cc710b"
		},
		"bb52f1e8-5e74-45e1-a724-19c5b07c5006": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow25",
			"name": "SequenceFlow25",
			"sourceRef": "1fc9ab40-d06f-4a2c-a8a5-b6f225735db8",
			"targetRef": "c6945279-5b49-47b6-81cb-c61f09cc710b"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"96f36681-8c17-4560-ab6e-015adf0b0226": {},
				"4049a0c9-da5f-477d-b413-d9d9c7c3140c": {},
				"5ef555b3-0abc-470e-8b96-d17f630758df": {},
				"0c167814-1316-43ef-af9f-fd5891c6795c": {},
				"1696ae9e-21ff-4bf6-b62c-fc139ade66c3": {},
				"f1a9c32d-38dc-478b-8f29-eba249b1daf1": {},
				"526c68f1-b3c8-4788-a725-0bacb026b6bc": {},
				"11524471-2c10-411b-a9fe-74f5ac103212": {},
				"5d5f6611-90c8-40e9-83c7-cb10b8149eff": {},
				"b63c92d8-553a-44a7-978b-f2573deba0d7": {},
				"20cb898e-3d93-429e-9d42-1fe32052e99c": {},
				"06be575c-e9ae-4b76-bd43-0767efee32d7": {},
				"2c5368c6-b0f9-40a5-afa9-76d7fe5d7441": {},
				"37794cba-18ef-46bf-94c4-aad4ab445571": {}
			}
		},
		"e41aaf92-5c8e-4299-b30b-0cde8cf2af27": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/mytestworkflow1/initialData.json",
			"id": "default-start-context"
		},
		"96f36681-8c17-4560-ab6e-015adf0b0226": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 81,
			"width": 32,
			"height": 32,
			"object": "c8f304b1-8ccf-4c80-8067-0bc0f5171ede"
		},
		"4049a0c9-da5f-477d-b413-d9d9c7c3140c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "51ab559f-4ce7-4a2d-adc2-6a9ad316a8b3"
		},
		"5ef555b3-0abc-470e-8b96-d17f630758df": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,97 94,97",
			"sourceSymbol": "96f36681-8c17-4560-ab6e-015adf0b0226",
			"targetSymbol": "4049a0c9-da5f-477d-b413-d9d9c7c3140c",
			"object": "0d572127-52f3-487e-a04c-0c49a453eae5"
		},
		"0c167814-1316-43ef-af9f-fd5891c6795c": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 244,
			"y": 67,
			"width": 100,
			"height": 60,
			"object": "a76f7b5b-8c6f-4ad8-bc9e-b0b7bed0bebc"
		},
		"1696ae9e-21ff-4bf6-b62c-fc139ade66c3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,97 244,97",
			"sourceSymbol": "4049a0c9-da5f-477d-b413-d9d9c7c3140c",
			"targetSymbol": "0c167814-1316-43ef-af9f-fd5891c6795c",
			"object": "d1991dfc-2b4b-4b34-b010-384aa07f360b"
		},
		"f1a9c32d-38dc-478b-8f29-eba249b1daf1": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 394,
			"y": 76,
			"object": "015816e5-2130-4723-9eef-bc40f7b1939c"
		},
		"526c68f1-b3c8-4788-a725-0bacb026b6bc": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,97 394,97",
			"sourceSymbol": "0c167814-1316-43ef-af9f-fd5891c6795c",
			"targetSymbol": "f1a9c32d-38dc-478b-8f29-eba249b1daf1",
			"object": "daa4e07f-03a3-4f6d-b1e7-de9b34878ba2"
		},
		"11524471-2c10-411b-a9fe-74f5ac103212": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 505.9999988079071,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "40354707-e7c4-46c3-894d-c9b92adbd8cc"
		},
		"5d5f6611-90c8-40e9-83c7-cb10b8149eff": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 505.9999988079071,
			"y": 122,
			"width": 100,
			"height": 60,
			"object": "1fc9ab40-d06f-4a2c-a8a5-b6f225735db8"
		},
		"b63c92d8-553a-44a7-978b-f2573deba0d7": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,97 470.99999940395355,97 470.99999940395355,42 505.9999988079071,42",
			"sourceSymbol": "f1a9c32d-38dc-478b-8f29-eba249b1daf1",
			"targetSymbol": "11524471-2c10-411b-a9fe-74f5ac103212",
			"object": "ac3feedc-07dd-4641-a0a6-b9cdd8901d81"
		},
		"20cb898e-3d93-429e-9d42-1fe32052e99c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "436,97 470.99999940395355,97 470.99999940395355,152 505.9999988079071,152",
			"sourceSymbol": "f1a9c32d-38dc-478b-8f29-eba249b1daf1",
			"targetSymbol": "5d5f6611-90c8-40e9-83c7-cb10b8149eff",
			"object": "dd8409db-c2e1-4fcf-85ac-9368a1b118a1"
		},
		"06be575c-e9ae-4b76-bd43-0767efee32d7": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 675.9999976158142,
			"y": 79.5,
			"width": 35,
			"height": 35,
			"object": "c6945279-5b49-47b6-81cb-c61f09cc710b"
		},
		"2c5368c6-b0f9-40a5-afa9-76d7fe5d7441": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,42 640.9999982118607,42 640.9999982118607,97 675.9999976158142,97",
			"sourceSymbol": "11524471-2c10-411b-a9fe-74f5ac103212",
			"targetSymbol": "06be575c-e9ae-4b76-bd43-0767efee32d7",
			"object": "55e76ee0-46c6-4ef2-9227-f6829e35e033"
		},
		"37794cba-18ef-46bf-94c4-aad4ab445571": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "605.9999988079071,152 640.9999982118607,152 640.9999982118607,97 675.9999976158142,97",
			"sourceSymbol": "5d5f6611-90c8-40e9-83c7-cb10b8149eff",
			"targetSymbol": "06be575c-e9ae-4b76-bd43-0767efee32d7",
			"object": "bb52f1e8-5e74-45e1-a724-19c5b07c5006"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 25,
			"startevent": 2,
			"endevent": 3,
			"usertask": 2,
			"servicetask": 5,
			"scripttask": 1,
			"exclusivegateway": 1
		}
	}
}