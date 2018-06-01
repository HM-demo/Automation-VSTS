$vstsAccount = "sugendh"
$user = "sugendh"
$accessToken="your-key-here"
$teamProject="k8s"
$body = @'
{
	"source": 2,
	"revision": 3,
	"description": "",
	"createdBy": {
		"displayName": "Sugendh Ganga",
		"url": "https://app.vssps.visualstudio.com/Aa6e1f241-8512-4b44-8d72-e1e93e7bb42d/_apis/Identities/45b5d26c-49bf-623a-81a3-86633a2e2b1a",
		"_links": {
			"avatar": {
				"href": "https://tfsprodsin1.visualstudio.com/A8f6f6933-3dfb-4ced-be10-6f422689e9c2/_apis/GraphProfile/MemberAvatars/aad.NDViNWQyNmMtNDliZi03MjNhLTgxYTMtODY2MzNhMmUyYjFh"
			}
		},
		"id": "45b5d26c-49bf-623a-81a3-86633a2e2b1a",
		"uniqueName": "sugendh.ganga@happiestminds.com",
		"imageUrl": "https://tfsprodsin1.visualstudio.com/A8f6f6933-3dfb-4ced-be10-6f422689e9c2/_api/_common/identityImage?id=45b5d26c-49bf-623a-81a3-86633a2e2b1a",
		"descriptor": "aad.NDViNWQyNmMtNDliZi03MjNhLTgxYTMtODY2MzNhMmUyYjFh"
	},
	"createdOn": "2018-05-31T18:07:04.560Z",
	"modifiedBy": {
		"displayName": "Sugendh Ganga",
		"url": "https://app.vssps.visualstudio.com/Aa6e1f241-8512-4b44-8d72-e1e93e7bb42d/_apis/Identities/45b5d26c-49bf-623a-81a3-86633a2e2b1a",
		"_links": {
			"avatar": {
				"href": "https://tfsprodsin1.visualstudio.com/A8f6f6933-3dfb-4ced-be10-6f422689e9c2/_apis/GraphProfile/MemberAvatars/aad.NDViNWQyNmMtNDliZi03MjNhLTgxYTMtODY2MzNhMmUyYjFh"
			}
		},
		"id": "45b5d26c-49bf-623a-81a3-86633a2e2b1a",
		"uniqueName": "sugendh.ganga@happiestminds.com",
		"imageUrl": "https://tfsprodsin1.visualstudio.com/A8f6f6933-3dfb-4ced-be10-6f422689e9c2/_api/_common/identityImage?id=45b5d26c-49bf-623a-81a3-86633a2e2b1a",
		"descriptor": "aad.NDViNWQyNmMtNDliZi03MjNhLTgxYTMtODY2MzNhMmUyYjFh"
	},
	"modifiedOn": "2018-05-31T18:10:26.720Z",
	"isDeleted": false,
	"variables": {},
	"variableGroups": [],
	"environments": [{
		"id": 4,
		"name": "Environment 2",
		"rank": 1,
		"owner": {
			"displayName": "Sugendh Ganga",
			"url": "https://app.vssps.visualstudio.com/Aa6e1f241-8512-4b44-8d72-e1e93e7bb42d/_apis/Identities/45b5d26c-49bf-623a-81a3-86633a2e2b1a",
			"_links": {
				"avatar": {
					"href": "https://tfsprodsin1.visualstudio.com/A8f6f6933-3dfb-4ced-be10-6f422689e9c2/_apis/GraphProfile/MemberAvatars/aad.NDViNWQyNmMtNDliZi03MjNhLTgxYTMtODY2MzNhMmUyYjFh"
				}
			},
			"id": "45b5d26c-49bf-623a-81a3-86633a2e2b1a",
			"uniqueName": "sugendh.ganga@happiestminds.com",
			"imageUrl": "https://tfsprodsin1.visualstudio.com/A8f6f6933-3dfb-4ced-be10-6f422689e9c2/_api/_common/identityImage?id=45b5d26c-49bf-623a-81a3-86633a2e2b1a",
			"descriptor": "aad.NDViNWQyNmMtNDliZi03MjNhLTgxYTMtODY2MzNhMmUyYjFh"
		},
		"variables": {},
		"variableGroups": [],
		"preDeployApprovals": {
			"approvals": [{
				"rank": 1,
				"isAutomated": true,
				"isNotificationOn": false,
				"id": 10
			}],
			"approvalOptions": {
				"requiredApproverCount": null,
				"releaseCreatorCanBeApprover": false,
				"autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped": false,
				"enforceIdentityRevalidation": false,
				"timeoutInMinutes": 0,
				"executionOrder": 1
			}
		},
		"deployStep": {
			"id": 11
		},
		"postDeployApprovals": {
			"approvals": [{
				"rank": 1,
				"isAutomated": true,
				"isNotificationOn": false,
				"id": 12
			}],
			"approvalOptions": {
				"requiredApproverCount": null,
				"releaseCreatorCanBeApprover": false,
				"autoTriggeredAndPreviousEnvironmentApprovedCanBeSkipped": false,
				"enforceIdentityRevalidation": false,
				"timeoutInMinutes": 0,
				"executionOrder": 2
			}
		},
		"deployStep": [{
			"deploymentInput": {
				"parallelExecution": {
					"parallelExecutionType": "none"
				},
				"skipArtifactsDownload": false,
				"artifactsDownloadInput": null,
				"queueId": 24,
				"demands": [],
				"enableAccessToken": false,
				"timeoutInMinutes": 0,
				"jobCancelTimeoutInMinutes": 1,
				"condition": "succeeded()",
				"overrideInputs": {},
				"dependencies": []
			},
			"rank": 1,
			"phaseType": 1,
			"name": "Agent phase",
			"workflowTasks": [{
				"name": "Run a Docker command",
				"refName": null,
				"enabled": true,
				"timeoutInMinutes": 0,
				"inputs": {
					"containerregistrytype": "Azure Container Registry",
					"dockerRegistryEndpoint": "",
					"azureSubscriptionEndpoint": "",
					"azureContainerRegistry": "",
					"action": "Run a Docker command",
					"dockerFile": "**/Dockerfile",
					"buildArguments": "",
					"defaultContext": "true",
					"context": "",
					"imageName": "$(Build.Repository.Name):$(Build.BuildId)",
					"imageNamesPath": "",
					"qualifyImageName": "true",
					"additionalImageTags": "",
					"includeSourceTags": "false",
					"includeLatestTag": "false",
					"imageDigestFile": "",
					"containerName": "",
					"ports": "",
					"volumes": "",
					"envVars": "",
					"workDir": "",
					"entrypoint": "",
					"containerCommand": "",
					"detached": "true",
					"restartPolicy": "no",
					"restartMaxRetries": "",
					"customCommand": "ps",
					"dockerHostEndpoint": "",
					"enforceDockerNamingConvention": "true",
					"cwd": "$(System.DefaultWorkingDirectory)",
					"memory": ""
				},
				"taskId": "e28912f1-0114-4464-802a-a3a35437fd16",
				"version": "0.*",
				"definitionType": "task",
				"alwaysRun": false,
				"continueOnError": false,
				"overrideInputs": {},
				"condition": "succeeded()"
			}],
			"phaseInputs": {
				"phaseinput_artifactdownloadinput": {
					"artifactsDownloadInput": null,
					"skipArtifactsDownload": false
				}
			}
		}],
		"environmentOptions": {
			"emailNotificationType": "OnlyOnFailure",
			"emailRecipients": "release.environment.owner;release.creator",
			"skipArtifactsDownload": false,
			"timeoutInMinutes": 0,
			"enableAccessToken": false,
			"publishDeploymentStatus": true,
			"badgeEnabled": false,
			"autoLinkWorkItems": false,
			"pullRequestDeploymentEnabled": false
		},
		"demands": [],
		"conditions": [{
			"conditionType": 1,
			"name": "ReleaseStarted",
			"value": ""
		}],
		"executionPolicy": {
			"concurrencyCount": 1,
			"queueDepthCount": 0
		},
		"schedules": [],
		"currentRelease": {
			"id": 0,
			"url": "https://sugendh.vsrm.visualstudio.com/k8s/_apis/Release/releases/0",
			"_links": {}
		},
		"retentionPolicy": {
			"daysToKeep": 30,
			"releasesToKeep": 3,
			"retainBuild": true
		},
		"processParameters": {},
		"properties": {},
		"preDeploymentGates": {
			"id": 0,
			"gatesOptions": null,
			"gates": []
		},
		"postDeploymentGates": {
			"id": 0,
			"gatesOptions": null,
			"gates": []
		},
		"environmentTriggers": [],
		"badgeUrl": "https://rmprodsin1.vsrm.visualstudio.com/A8f6f6933-3dfb-4ced-be10-6f422689e9c2/_apis/public/Release/badge/b3e5d522-28b5-443a-998e-5bcbff666252/2/4"
	}],
	"artifacts": [],
	"triggers": [],
	"releaseNameFormat": "Release-$(rev:r)",
	"comment": "",
	"tags": [],
	"properties": {
		"DefinitionCreationSource": {
			"$type": "System.String",
			"$value": "ReleaseNew"
		}
	},
	"id": 2,
	"name": "Release Definition 2",
	"path": "\\",
	"projectReference": null,
	"url": "https://sugendh.vsrm.visualstudio.com/b3e5d522-28b5-443a-998e-5bcbff666252/_apis/Release/definitions/2",
	"_links": {
		"self": {
			"href": "https://sugendh.vsrm.visualstudio.com/b3e5d522-28b5-443a-998e-5bcbff666252/_apis/Release/definitions/2"
		},
		"web": {
			"href": "https://tfsprodsin1.visualstudio.com/A8f6f6933-3dfb-4ced-be10-6f422689e9c2/b3e5d522-28b5-443a-998e-5bcbff666252/_release?definitionId=2"
		}
	}
}
'@

$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $user,$accessToken)))
 $uri="https://$vstsAccount.vsrm.visualstudio.com/defaultcollection/$teamProject/_apis/release/definitions?api-version=3.0-preview.1"
$result = Invoke-RestMethod -Uri $uri -Method Get -Headers @{Authorization=("Basic {0}" -f $base64AuthInfo)}
