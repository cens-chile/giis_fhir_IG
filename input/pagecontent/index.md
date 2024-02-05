# Introduction

The Generic Electronic Immunization Information System, GIIS, helps countries improve the administration of their vaccination programs, improve immunization coverage and produce more accurate, timely and relevant performance. In addition, this system currently helps in the management of patient data, vaccinations, adverse effects (ESAVI), inventory management (stock) and cold chain.

### Explanation of the problematic

The GIIS system currently has an API that allows some non-standardized and sufficient operations, which makes interaction with other systems difficult. Therefore, the main requirement of this project is to add to the GIIS system a data exchange mechanism in a standardized and secure manner (an interoperability layer based on HL7 FHIR) that allows it to interoperate with external systems patient data, vaccinations, adverse effects, inventory and cold chain. 
Inventory and cold chain are not part of this solution, however is seems worth mentioning them. 

### About this implementation guide

Every item in the navigation bar will be: 

* [Home](index.html) is where you will find the introduction to this solution. 
* [Context](context.html) contains the objectives of this solution and it use cases. 
* [Data model & Exchange](data_model_and_exchange.html) will contain technicall data such as transaction with a related diagram, workflow, the data dictionary and an explanation of the inner generated value sets. 
* [Deployments](deployments.html)will have a full explanation about how do we use SMART security and will also have the references to any other implementation guide. 
* [Artifacts](artifacts.html) is the core of the guide, this is where you find every bundle of data, profile, example, terminology(CodeSystem/ValueSet) and extensions related to this solution. 
