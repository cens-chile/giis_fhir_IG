<style>
  table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    font-size: 16px;
    text-align: left;
  }
  th, td {
    padding: 12px 15px;
    border: 1px solid #ddd;
  }
  th {
    background-color: #f4f4f4;
    font-weight: bold;
  }
  tr:nth-child(even) {
    background-color: #f9f9f9;
  }
</style>

# Introduction

The Generic Electronic Immunization Information System, GIIS, helps countries improve the administration of their vaccination programs, improve immunization coverage and produce more accurate, timely and relevant performance. In addition, this system currently helps in the management of patient data, vaccinations, adverse effects (ESAVI), inventory management (stock) and cold chain.

### Explanation of the problematic

The GIIS system currently has an API that allows some non-standardized and sufficient operations, which makes interaction with other systems difficult. Therefore, the main requirement of this project is to add to the GIIS system a data exchange mechanism in a standardized and secure manner (an interoperability layer based on HL7 FHIR) that allows it to interoperate with external systems patient data, vaccinations, adverse effects, inventory and cold chain. 
Inventory and cold chain are not part of this solution, however is seems worth mentioning them. 

### Proposed Solution 

The proposed solution is a facade to work as standardize interface. With that, external entities who wants to interoperate with GIIS systems can execute only allowed operations, going throw an authentication and authorization server, and those operations should be FHIR R6 compliant.

The onboarding process is described as follows:

<table>
  <tr>
    <th>Discovery and Planning (Phase 1)</th>
    <th>Development and Testing (Phase 2)</th>
    <th>Production Approval and Go-Live (Phase 3)</th>
  </tr>
  <tr>
    <td>
      1. Provider completes onboarding registration form<br>
      2. Provider completes onboarding questionnaire<br>
      3. Provider reviews GIIS FHIR documentation<br>
      4. Review of onboarding registration form<br>
      5. Review of onboarding questionnaire<br>
      6. Discovery onboarding kickoff call<br>
      7. Define project scope
    </td>
    <td>
      1. Generate and share GIIS test environment credentials<br>
      2. Establish connectivity with test systems<br>
      3. Perform test of the various API endpoints<br>
      4. Conduct review call to discuss findings (data quality, and validation)<br>
      5. Confirm and share approval to proceed with go-live
    </td>
    <td>
      1. Generate and share GIIS production environment credentials<br>
      2. Establish connectivity with production systems<br>
      3. Commence monitoring post-go live<br>
      4. Conduct review call to discuss findings and to close out the onboarding project<br>
      5. Ongoing – continue to monitor the provider organization interface
    </td>
  </tr>
</table>


### About this implementation guide

Every item in the navigation bar will be: 

* [Home](index.html) is where you will find the introduction to this solution. 
* [Context](context.html) contains the objectives of this solution and it use cases. 
* [Data model & Exchange](data_model_and_exchange.html) will contain technicall data such as transaction with a related diagram, workflow, the data dictionary and an explanation of the inner generated value sets. 
* [Deployments](deployments.html)will have a full explanation about how do we use SMART security and will also have the references to any other implementation guide. 
* [Artifacts](artifacts.html) is the core of the guide, this is where you find every bundle of data, profile, example, terminology(CodeSystem/ValueSet) and extensions related to this solution. 
