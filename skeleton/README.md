# ${{ values.name | dump }}

- [Overview](#overview)
- [Usage](#usage)

## Overview

Deploy this component to create a Data Factory workspace backed by an Azure DevOps repository

Refer to the [witboost Starter Kit repository](https://github.com/agile-lab-dev/witboost-starter-kit) for information on the Specific Provisioner that can be used to deploy components created with this Template.

### What's a Workload

Workload refers to any data processing step (ETL, job, transformation etc.) that is applied to data in a Data Product. Workloads can pull data from sources external to the Data Mesh or from an Output Port of a different Data Product or from Storage Areas inside the same Data Product, and persist it for further processing or serving.

### Data Factory

Azure Data Factory is Azure's cloud ETL service for scale-out serverless data integration and data transformation.

It offers a code-free UI for intuitive authoring and single-pane-of-glass monitoring and management.

Data Factory contains a series of interconnected systems that provide a complete end-to-end platform for data engineers.

Learn more about it on the [official website](https://learn.microsoft.com/en-us/azure/data-factory/)

## Usage

To get information on how to use this template, refer to this [document](./docs/index.md).