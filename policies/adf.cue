name!:                     string
fullyQualifiedName?:       null | string
description!:              string
kind!:                     "workload"
version!:                  string
infrastructureTemplateId!: string
useCaseTemplateId!:        string
platform:                  "Azure"
technology:                "Data Factory"
workloadType:              "batch"
connectionType:            "DataPipeline"
tags: [...#OM_Tag]
dependsOn: [...string]
readsFrom: [...string]
specific: {
	gitRepo!:        string & =~"^https://.+@dev\\.azure\\.com/.+/_git/.+$"
	projectName!:    string & #AzureNameRestrictions
	repositoryName!: string & #AzureNameRestrictions
	resourceGroup!:  string
	region!:         string
}

// Restrictions based on https://learn.microsoft.com/en-us/azure/devops/organizations/settings/naming-restrictions?view=azure-devops#azure-repos-git
#AzureNameRestrictions: =~"[^\\\/:*?\"<>;#${},+=\\[\\]_.][^\\\/:*?\"<>;#${},+=\\[\\]]{,62}[^\\\/:*?\"<>;#${},+=\\[\\].]"

#OM_Tag: {
	tagFQN:       string
	description?: string | null
	source:       string & =~"(?i)^(Tag|Glossary)$"
	labelType:    string & =~"(?i)^(Manual|Propagated|Automated|Derived)$"
	state:        string & =~"(?i)^(Suggested|Confirmed)$"
	href?:        string | null
}
