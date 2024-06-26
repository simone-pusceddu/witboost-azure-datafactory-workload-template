<p align="center">
    <a href="https://www.agilelab.it/witboost">
        <img src="docs/img/witboost_logo.svg" alt="witboost" width=600 >
    </a>
</p>

Designed by [Agile Lab](https://www.agilelab.it/), Witboost is a versatile platform that addresses a wide range of sophisticated data engineering challenges. It enables businesses to discover, enhance, and productize their data, fostering the creation of automated data platforms that adhere to the highest standards of data governance. Want to know more about Witboost? Check it out [here](https://www.agilelab.it/witboost) or [contact us!](https://www.agilelab.it/contacts).

This repository is part of our [Starter Kit](https://github.com/agile-lab-dev/witboost-starter-kit) meant to showcase Witboost integration capabilities and provide a "batteries-included" product.

# Azure Data Factory Workload Template

- [Overview](#overview)
- [Usage](#usage)


## Overview

Use this template to automatically create a Data Factory workspace backed by an Azure DevOps repository

### What's a Template?

A Template is a tool that helps create components inside a Data Mesh. Templates help establish a standard across the organization. This standard leads to easier understanding, management and maintenance of components. Templates provide a predefined structure so that developers don't have to start from scratch each time, which leads to faster development and allows them to focus on other aspects, such as testing and business logic.

For more information, please refer to the [official documentation](https://docs.witboost.agilelab.it/docs/p1_user/p6_advanced/p6_1_templates/#getting-started).


### What's a Workload?

Workload refers to any data processing step (ETL, job, transformation etc.) that is applied to data in a Data Product. Workloads can pull data from sources external to the Data Mesh or from an Output Port of a different Data Product or from Storage Areas inside the same Data Product, and persist it for further processing or serving.

### Data Factory

Azure Data Factory is Azure's cloud ETL service for scale-out serverless data integration and data transformation.

It offers a code-free UI for intuitive authoring and single-pane-of-glass monitoring and management.

Data Factory contains a series of interconnected systems that provide a complete end-to-end platform for data engineers.

Learn more about it on the [official website](https://learn.microsoft.com/en-us/azure/data-factory/)

## Usage

When importing this template onto your organization for the first time, replace the `input.values.organizationName` field in the `template` step in the `template.yaml` with your Azure DevOps organization name. Do the same on the `input.values.destination` field on the same step in the `template.yaml` by replacing our placeholder "AgileDMBSandbox" in the URL: `dev.azure.com?organization=AgileDMBSandbox&...` with your organization name. 

To get information on how to use this template, refer to this [document](./docs/index.md).

### Component Testing

To verify the component before deploying it along with the Data Product, the component needs to be tested against a CUE Policy defined for [Azure Data Factory](./policies/adf.cue). This policy needs to be defined inside the **Governance** section of the Witboost Platform.

For more information, please refer to the [official documentation](https://docs.witboost.agilelab.it/docs/p1_user/p5_managing_policies/p5_1_overview).

## License

This project is available under the [Apache License, Version 2.0](https://opensource.org/licenses/Apache-2.0); see [LICENSE](LICENSE) for full details.

## About us

<p align="center">
    <a href="https://www.agilelab.it">
        <img src="docs/img/agilelab_logo.svg" alt="Agile Lab" width=600>
    </a>
</p>

Agile Lab creates value for its Clients in data-intensive environments through customizable solutions to establish performance driven processes, sustainable architectures, and automated platforms driven by data governance best practices.

Since 2014 we have implemented 100+ successful Elite Data Engineering initiatives and used that experience to create Witboost: a technology-agnostic, modular platform, that empowers modern enterprises to discover, elevate and productize their data both in traditional environments and on fully compliant Data mesh architectures.

[Contact us](https://www.agilelab.it/contacts) or follow us on:
- [LinkedIn](https://www.linkedin.com/company/agile-lab/)
- [Instagram](https://www.instagram.com/agilelab_official/)
- [YouTube](https://www.youtube.com/channel/UCTWdhr7_4JmZIpZFhMdLzAA)
- [Twitter](https://twitter.com/agile__lab)

