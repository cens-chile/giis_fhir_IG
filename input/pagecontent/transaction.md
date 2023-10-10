
### Registration of a patient

From the external entity, the FHIR facade receives a POST with the Bundle related to the patient. The facade makes the transformation of the standardized data to send the query to the GIIS. Here is an [example Bundle](Patient-ExampleGiispatient.html). This type of Bundle works just fine for either for an adult or a child patient. 
 
<div>
{% include register-patient.svg %}
</div> 

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

 