import "list"

import "strings"

#Component: {
	kind:                     string & =~"(?-i)^(outputport|workload|storage|observability)$"
	useCaseTemplateId:        string
	infrastructureTemplateId: string
	if kind != _|_ {
		if kind =~ "(?-i)^(workload)$" && useCaseTemplateId == "urn:dmb:utm:azure-datafactory-template:0.0.0" {
			#Workload
		}
	}
	...
}

#Workload: {
	id: string
	specific: {
		gitRepo!:        string
		projectName!:    string
		repositoryName!: string
		resourceGroup!:  string
		region!:         string
	}
	...
}

original: {
	components: [...#Component]
	...
}

current: {
	components: [...#Component]
	...
}

_checks: {
	// Extract Data Factory and check that certain fields are immutable
	originalADFWorkloads: [for n in original.components if n.kind == "workload" && n.useCaseTemplateId == "urn:dmb:utm:azure-datafactory-template:0.0.0" {
		id:             n.id
		gitRepo:        n.specific.gitRepo
		projectName:    n.specific.projectName
		repositoryName: n.specific.repositoryName
	}]

	currentADFWorkloads: [for n in current.components if n.kind == "workload" && n.useCaseTemplateId == "urn:dmb:utm:azure-datafactory-template:0.0.0" {
		id:             n.id
		gitRepo:        n.specific.gitRepo
		projectName:    n.specific.projectName
		repositoryName: n.specific.repositoryName
	}]

	// Check that all matching Data Factory components have the same values for immutable fields
	mismatchWorkloads: [for missing in originalADFWorkloads if !list.Contains(currentADFWorkloads, missing) {missing}]
	_checkMismatchWorkloads: len(mismatchWorkloads) & <=0
}
