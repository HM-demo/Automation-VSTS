$vstsAccount = "sugendh"
$user = "sugendh"
$accessToken="your-key-here"
$teamProject="k8s"

$base64AuthInfo = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $user,$accessToken)))
$uri="https://$vstsAccount.visualstudio.com/$teamProject/_apis/build/definitions?api-version=4.1"

$body = @'
{
	"options": [{
		"enabled": false,
		"inputs": {
			"branchFilters": "[\"+refs/heads/*\"]",
			"additionalFields": "{}"
		},
		"definition": {
			"id": "5d58cc01-7c75-450c-be18-a388ddb129ec"
		}
	}, {
		"enabled": false,
		"inputs": {
			"workItemType": "1524438",
			"assignToRequestor": "true",
			"additionalFields": "{}"
		},
		"definition": {
			"id": "a9db38f9-9fdc-478c-b0f9-464221e58316"
		}
	}],
	"variables": {
		"system.debug": {
			"allowOverride": true,
			"isSecret": false,
			"value": "false"
		}
	},
	"retentionRules": [{
		"branches": ["+refs/heads/*"],
		"daysToKeep": 10,
		"minimumToKeep": 1,
		"deleteBuildRecord": true,
		"deleteTestResults": true,
		"artifacts": [],
		"artifactTypesToDelete": ["FilePath", "SymbolStore"]
	}],
	"properties": {},
	"tags": [],
	"_links": {
		"self": {
			"href": "https://sugendh.visualstudio.com/b3e5d522-28b5-443a-998e-5bcbff666252/_apis/build/Definitions/4?revision=34"
		},
		"web": {
			"href": "https://sugendh.visualstudio.com/b3e5d522-28b5-443a-998e-5bcbff666252/_build/definition?definitionId=4"
		},
		"editor": {
			"href": "https://sugendh.visualstudio.com/b3e5d522-28b5-443a-998e-5bcbff666252/_build/designer?id=4&_a=edit-build-definition"
		}
	},
	"jobAuthorizationScope": 1,
	"jobTimeoutInMinutes": 60,
	"jobCancelTimeoutInMinutes": 5,
	"process": {
		"phases": [{
			"condition": "succeeded()",
			"dependencies": [],
			"jobAuthorizationScope": 1,
			"jobCancelTimeoutInMinutes": 1,
			"jobTimeoutInMinutes": 0,
			"name": "Phase 1",
			"refName": "Phase_1",
			"steps": [{
				"displayName": "Build an image",
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
				"inputs": {
					"containerregistrytype": "Container Registry",
					"dockerRegistryEndpoint": "108ad346-9db5-4011-a33e-6c52b7c8b06e",
					"azureSubscriptionEndpoint": "",
					"azureContainerRegistry": "",
					"action": "Build an image",
					"dockerFile": "**/Dockerfile",
					"buildArguments": "",
					"defaultContext": "true",
					"context": "",
					"imageName": "sugendh/acme:$(Build.BuildId)",
					"imageNamesPath": "",
					"qualifyImageName": "true",
					"additionalImageTags": "",
					"includeSourceTags": "false",
					"includeLatestTag": "true",
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
					"customCommand": "",
					"dockerHostEndpoint": "",
					"enforceDockerNamingConvention": "true",
					"cwd": "$(System.DefaultWorkingDirectory)",
					"memory": ""
				},
				"overrideInputs": {},
				"task": {
					"id": "e28912f1-0114-4464-802a-a3a35437fd16",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}, {
				"displayName": "Push an image",
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
				"inputs": {
					"containerregistrytype": "Container Registry",
					"dockerRegistryEndpoint": "108ad346-9db5-4011-a33e-6c52b7c8b06e",
					"azureSubscriptionEndpoint": "",
					"azureContainerRegistry": "",
					"action": "Push an image",
					"dockerFile": "**/Dockerfile",
					"buildArguments": "",
					"defaultContext": "true",
					"context": "",
					"imageName": "sugendh/acme:$(Build.BuildId)",
					"imageNamesPath": "",
					"qualifyImageName": "true",
					"additionalImageTags": "",
					"includeSourceTags": "false",
					"includeLatestTag": "true",
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
					"customCommand": "",
					"dockerHostEndpoint": "",
					"enforceDockerNamingConvention": "true",
					"cwd": "$(System.DefaultWorkingDirectory)",
					"memory": ""
				},
				"overrideInputs": {},
				"task": {
					"id": "e28912f1-0114-4464-802a-a3a35437fd16",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}, {
				"displayName": "Run a Docker command",
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
				"inputs": {
					"containerregistrytype": "Container Registry",
					"dockerRegistryEndpoint": "108ad346-9db5-4011-a33e-6c52b7c8b06e",
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
					"customCommand": "run --name sugendh -itd  -p 80:80 sugendh/acme:$(Build.BuildId)",
					"dockerHostEndpoint": "",
					"enforceDockerNamingConvention": "true",
					"cwd": "$(System.DefaultWorkingDirectory)",
					"memory": ""
				},
				"overrideInputs": {},
				"task": {
					"id": "e28912f1-0114-4464-802a-a3a35437fd16",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}, {
				"displayName": "Local tests",
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
				"inputs": {
					"code": "echo \"Run local tests\"\necho \"to do\""
				},
				"overrideInputs": {},
				"task": {
					"id": "670be730-f416-11e6-be17-19bd09ccd9ea",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}, {
				"displayName": "#Helm - Disabled",
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
				"inputs": {
					"code": "HELM_PSW=\"AP8j5ZZuUam1u3zX\"\nHELM_USR=\"admin\"\nHELM_REPO=\"http://35.224.229.155/artifactory/helm-local\"\necho \"Packing helm chart\"\nls -lrth\nchmod 777 build.sh\n\n#./build.sh --pack_helm --push_helm --helm_repo $HELM_REPO --helm_usr $HELM_USR --helm_psw $HELM_PSW"
				},
				"overrideInputs": {},
				"task": {
					"id": "670be730-f416-11e6-be17-19bd09ccd9ea",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}, {
				"displayName": "Install Helm 2.8.2",
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
				"inputs": {
					"helmVersion": "2.8.2",
					"checkLatestHelmVersion": "true",
					"installKubeCtl": "true",
					"kubectlVersion": "1.8.9",
					"checkLatestKubeCtl": "true"
				},
				"overrideInputs": {},
				"task": {
					"id": "068d5909-43e6-48c5-9e01-7c8a94816220",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}, {
				"displayName": "helm init",
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
				"inputs": {
					"connectionType": "Kubernetes Service Connection",
					"azureSubscriptionEndpoint": "",
					"azureResourceGroup": "",
					"kubernetesCluster": "",
					"kubernetesServiceEndpoint": "8210d038-1655-4b47-b490-b8ffd75dc2c1",
					"namespace": "local",
					"command": "init",
					"chartType": "Name",
					"chartName": "",
					"chartPath": "",
					"version": "",
					"releaseName": "",
					"overrideValues": "",
					"valueFile": "",
					"destination": "$(Build.ArtifactStagingDirectory)",
					"canaryimage": "false",
					"upgradetiller": "true",
					"updatedependency": "false",
					"save": "true",
					"install": "true",
					"recreate": "false",
					"resetValues": "false",
					"force": "false",
					"waitForExecution": "true",
					"arguments": "",
					"enableTls": "false",
					"caCert": "",
					"certificate": "",
					"privatekey": "",
					"tillernamespace": ""
				},
				"overrideInputs": {},
				"task": {
					"id": "afa7d54d-537b-4dc8-b60a-e0eeea2c9a87",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}, {
				"displayName": "helm package",
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
				"inputs": {
					"connectionType": "Kubernetes Service Connection",
					"azureSubscriptionEndpoint": "",
					"azureResourceGroup": "",
					"kubernetesCluster": "",
					"kubernetesServiceEndpoint": "8210d038-1655-4b47-b490-b8ffd75dc2c1",
					"namespace": "local",
					"command": "package",
					"chartType": "Name",
					"chartName": "",
					"chartPath": "helm/acme",
					"version": "$(Build.BuildId)",
					"releaseName": "",
					"overrideValues": "",
					"valueFile": "",
					"destination": "$(Build.ArtifactStagingDirectory)",
					"canaryimage": "false",
					"upgradetiller": "true",
					"updatedependency": "false",
					"save": "true",
					"install": "true",
					"recreate": "false",
					"resetValues": "false",
					"force": "false",
					"waitForExecution": "true",
					"arguments": "",
					"enableTls": "false",
					"caCert": "",
					"certificate": "",
					"privatekey": "",
					"tillernamespace": ""
				},
				"overrideInputs": {},
				"task": {
					"id": "afa7d54d-537b-4dc8-b60a-e0eeea2c9a87",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}, {
				"displayName": "Publish Helm chart",
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
				"inputs": {
					"code": "HELM_PSW=\"AP8j5ZZuUam1u3zX\"\nHELM_USR=\"admin\"\nHELM_REPO=\"http://35.224.229.155/artifactory/helm-local\"\n\necho -e \"\\nPushing Helm chart\"\n#chart_name=$(ls -1 ./helm/*.tgz 2> /dev/null)\n#echo \"Helm chart: ${chart_name}\"\n#[ ! -z \"$chart_name\" ] || errorExit \"Did not find the helm chart to deploy\"\n\nchart_name=\"acme-\"$(Build.BuildId)\".tgz\"\nchart_name_path=\"/opt/vsts/work/1/a/acme-\"$(Build.BuildId)\".tgz\"\n\n\n\n#curl -u${HELM_USR}:${HELM_PSW} -T ${chart_name} \"${HELM_REPO}/${chart_name}\" || errorExit \"Uploading helm chart failed\"\ncurl -u${HELM_USR}:${HELM_PSW} -T ${chart_name_path} \"${HELM_REPO}/${chart_name}\" || errorExit \"Uploading helm chart failed\"\necho \"successfully published helm chart\"\n\necho \"#############################################\"\n\necho \"chart name is:\"\necho ${chart_name}\necho ${HELM_USR}\necho \"${HELM_REPO}/${chart_name}\" \necho ${chart_name_path}"
				},
				"overrideInputs": {},
				"task": {
					"id": "670be730-f416-11e6-be17-19bd09ccd9ea",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}, {
				"displayName": "Run a Docker command",
				"refName": null,
				"enabled": true,
				"continueOnError": false,
				"timeoutInMinutes": 0,
				"alwaysRun": false,
				"condition": "succeeded()",
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
				"overrideInputs": {},
				"task": {
					"id": "e28912f1-0114-4464-802a-a3a35437fd16",
					"definitionType": "task",
					"versionSpec": "0.*"
				}
			}],
			"target": {
				"type": 1,
				"demands": [],
				"allowScriptsAuthAccessOption": false,
				"executionOptions": {
					"type": 0
				},
				"queue": {
					"id": 23
				}
			},
			"variables": {}
		}],
		"type": 1
	},
	"repository": {
		"properties": {
			"cleanOptions": "0",
			"labelSources": "0",
			"labelSourcesFormat": "$(build.buildNumber)",
			"reportBuildStatus": "true",
			"gitLfsSupport": "false",
			"skipSyncSource": "false",
			"checkoutNestedSubmodules": "false",
			"fetchDepth": "0"
		},
		"id": "985a36e9-63b6-485a-9a4f-811e66e3df6d",
		"type": "TfsGit",
		"name": "k8s",
		"url": "https://sugendh.visualstudio.com/k8s/_git/k8s",
		"defaultBranch": "refs/heads/master",
		"clean": "false",
		"checkoutSubmodules": false
	},
	"processParameters": {},
	"quality": 1,
	"authoredBy": {
		"displayName": "Sugendh Ganga",
		"url": "https://app.vssps.visualstudio.com/Aa6e1f241-8512-4b44-8d72-e1e93e7bb42d/_apis/Identities/45b5d26c-49bf-623a-81a3-86633a2e2b1a",
		"_links": {
			"avatar": {
				"href": "https://sugendh.visualstudio.com/_apis/GraphProfile/MemberAvatars/aad.NDViNWQyNmMtNDliZi03MjNhLTgxYTMtODY2MzNhMmUyYjFh"
			}
		},
		"id": "45b5d26c-49bf-623a-81a3-86633a2e2b1a",
		"uniqueName": "sugendh.ganga@happiestminds.com",
		"imageUrl": "https://sugendh.visualstudio.com/_api/_common/identityImage?id=45b5d26c-49bf-623a-81a3-86633a2e2b1a",
		"descriptor": "aad.NDViNWQyNmMtNDliZi03MjNhLTgxYTMtODY2MzNhMmUyYjFh"
	},
	"drafts": [],
	"queue": {
		"id": 24,
		"name": "Hosted VS2017",
		"pool": {
			"id": 4,
			"name": "Hosted VS2017"
		}
	},
	"id": 4,
	"name": "k8s-CI-testing",
	"url": "https://sugendh.visualstudio.com/b3e5d522-28b5-443a-998e-5bcbff666252/_apis/build/Definitions/4?revision=34",
	"uri": "vstfs:///Build/Definition/4",
	"path": "\\",
	"type": 2,
	"queueStatus": 0,
	"revision": 34,
	"createdDate": "2018-05-23T10:27:12.063Z",
	"project": {
		"id": "b3e5d522-28b5-443a-998e-5bcbff666252",
		"name": "k8s",
		"url": "https://sugendh.visualstudio.com/_apis/projects/b3e5d522-28b5-443a-998e-5bcbff666252",
		"state": 1,
		"revision": 42,
		"visibility": 0
	},
	"retentionSettings": {
		"defaultRetentionPolicy": {
			"branches": ["+refs/heads/*"],
			"artifacts": [],
			"artifactTypesToDelete": ["FilePath", "SymbolStore", "SymbolRequest"],
			"daysToKeep": 10,
			"minimumToKeep": 1,
			"deleteBuildRecord": true,
			"deleteTestResults": true
		},
		"maximumRetentionPolicy": {
			"branches": ["+refs/heads/*"],
			"artifacts": [],
			"artifactTypesToDelete": ["FilePath", "SymbolStore"],
			"daysToKeep": 30,
			"minimumToKeep": 10,
			"deleteBuildRecord": true,
			"deleteTestResults": true
		},
		"daysToKeepDeletedBuildsBeforeDestroy": 0
	},
	"badgeEnabled": false,
	"draftOf": null,
	"triggers": [],
	"variableGroups": [],
	"demands": [],
	"comment": ""
}
'@

Invoke-RestMethod -Uri $uri -Method Get -Headers @{Authorization=("Basic {0}" -f $base64AuthInfo)}
