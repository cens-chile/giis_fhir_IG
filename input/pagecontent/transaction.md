
Here you will find every transaction detailed as it finest. They will have a diagram associated with each one and also the request and response of each transaction.
To be able to make a transaction possible, you need to answer to the SMART protocol first [here](smart.html) is an explanation of how does that works and [here](https://www.hl7.org/fhir/smart-app-launch/backend-services.html) is a link to the SMART App Launch guide, which can have way more details. 

Also, each transaction that is going to be shown here is a use case, which you can read in [this section](use_cases.html) of the guide, and have brief explanations of what is expected. 
- Patients will have: 
    - Registration
    - Searching
- Immunization will have: 
    - Registration
    - Searching 
    - Update
- ESAVI/AEFI will have: 
    - Registration 
    - Searching
    - Update


### Registration of a patient

From the external entity, the FHIR facade receives a POST with the Bundle related to the patient. The facade makes the transformation of the standardized data to send the query to the GIIS. Here is an [example Bundle](Patient-ExampleGiispatient.html). This type of Bundle works just fine for either an adult or a child patient. 
 
<div>
{% include register-patient.svg %}
</div> 

#### Request

The external entity issues an HTTP **POST** type of operation, this operation will have every mandatory data plus any optional one, the FHIR Facade will receive this data and then transform it to standardized data to query it into the GIIS. 

#### Response 

The FHIR Facade respond with a **201 Status Code**, meaning that the data was stored succesfully. 

#### Example Request/Response 

You can see an example of a request and response of this post [HERE](patient_request_response.html)

### Searching of a patient

The external entity does a GET method to the FHIR facade in order for it to retrieve the data related to the searching being made. The FHIR Facade will then return a constructed Bundle resource with the requested data. 
 
<div> 
{% include search-patientdetail.svg %}
</div>

> Notice that this GET has a patient.identifier value, this is to get the detail of this particular patient. 
 
<div>
{% include search-patient.svg %}
</div>

> This GET method on the other hand, has some search parameters inside the GET, so this can get you from none to many patients with this parameters


### Registration of a new vaccination event/updating a vaccination event

The external entity will POST a Bundle resource in order to either register a new vaccination event or updating an existing one. Then the FHIR Facade will transform the data to query it into the GIIS. The updating of the data is handled internally on GIIS, so this [example Bundle](Immunization-ExampleVaccinationEvent.html) works just fine for both registering or updating a vaccination event. 

<div>
{% include register-vaccination.svg %}
</div>

### Searching a vaccination event

For searching a vaccination event we are going to first search a Patient that will have all the vaccination events related to himself/herself, this will lead to the FHIR Facade retrieve data only related to this patient, in order to construct the Immunization Bundle ([see the example here](Immunization-ExampleVaccinationEvent.html)). 
In the case of the childs, they will have from 1..* vaccination events, this is because of the vaccination calendar plus any vaccination made besides it. Adults, however, will have 0..* vaccination events related to them. 

<div>
{% include search-vaccination.svg %}
</div>

### Registration of an ESAVI 

The ESAVI registration will be made over a QuestionnaireResponse resource. This is based on the ESAVI IG (to see more about it [click here](ig_references.html)) but was modified with the minimal set of data required in the case of the GIIS. 

The external entity will send the data, this time on a QuestionnaireResponse type of resource (see the example of an answered QuestionnaireResponse [here](QuestionnaireResponse-ExampleESAVIQuestionnaire-1.html)) rather than a Bundle resource and the FHIR Facade will make the INSERT directly into the GIIS database.  
 
<div>
{% include register-esavi.svg %}
</div>

### Updating an ESAVI 

This time the QuestionnaireResponse resource will have a Patient linked to it, so firsly, this Patient has to have an existing ESAVI. 
The method for making this update will be a PUT, and once again, the FHIR Facade will make the UPDATE directly intro the GIIS database. 
 
<div>
{% include update-esavi.svg %}
</div>

### Searching an ESAVI 

The searching will be made by the Patient identifier or another searching parameter. The FHIR Facade will SELECT the corresponding data from the GIIS database and then return it to the external entity. 

<div>
{% include search-esavi.svg %}
</div>

 