id:   string
kind: string & =~"(?i)^(dataproduct)$"
components: [#Component, ...#Component]

#Component: {
	id:                       string
	kind:                     string & =~"(?i)^(outputport|workload|storage|observability)$"
	useCaseTemplateId:        string
	infrastructureTemplateId: string
	...
}

_checks: {
	ADFComponents: [for n in components if n.kind == "workload" && n.useCaseTemplateId == "urn:dmb:utm:azure-datafactory-template:0.0.0" {n}]
	_checkMaxOneADFperDataProduct: len(ADFComponents) & <=1
}
