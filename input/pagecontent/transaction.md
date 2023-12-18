
Here you will find every transaction. They will have a diagram associated with each one and also the request and response of each transaction.
Every transaction will have a link to an example with all the data (mandatory or not).
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

From the external entity, the FHIR facade receives a POST with the Bundle related to the patient. The facade makes the transformation of the standardized data to send the query to the GIIS. Here is an [example Bundle](Bundle-ExampleBundlePatient.html). This type of Bundle works just fine for either an adult or a child patient. 

> The example bundle comes with a related person, however, if the patient is an adult, it will never come with that information. 
 
<div>
{% include register-patient.svg %}
</div> 

#### Request

The external entity issues an HTTP **POST** type of operation, this operation will have every mandatory data plus any optional one, the FHIR Facade will receive this data and then transform it to standardized data to query it into the GIIS. 

#### Response 

The FHIR Facade respond with a **201 Status Code**, meaning that the data was stored succesfully, if everything is okay. On the other hand, if an error has ocurred, the code will be a **400** type of status code (400, 401, 403...) or a **500 Status Code** meaning that there is a server type of error. 

#### Example Request/Response 

You can see an example of a request and response of this post [HERE](patient_request_response.html)

### Searching of a patient

The external entity does a **GET**  method to the FHIR facade in order for it to retrieve the data related to the searching being made. The FHIR Facade will then return a constructed Bundle resource with the requested data.
Here is an [example Bundle](Bundle-ExampleBundlePatient.html), the main difference is that the **POST** in that Bundle should be changed by a **GET**.
 
<div> 
{% include search-patientdetail.svg %}
</div>

> Notice that this GET has a patient.identifier value, this is to get the detail of this particular patient. 
 
<div>
{% include search-patient.svg %}
</div>

> This GET method on the other hand, has some search parameters inside the GET, so this can get you from none to many patients with this parameters.

#### Request

The external entity issues an HTTP **GET** type of operation, this operation will return every data corresponding to the type of search that is beign made (either by patient detail with the identifier or by search parameters).

#### Response

The FHIR Facade responds with a **200 Status Code**, returning the solicited data. 
If there is any type of error, there will be a **40X Status Code** or a **500 Status Code** meaning that there is a 
server type of error.
If there's a request for any of the two type of searches, it should return the same example bundle linked above.

#### Example Request/Response

### Registration of a new vaccination event/updating a vaccination event

The external entity will **POST** a Bundle resource in order to either register a new vaccination event or updating an existing one. Then the FHIR Facade will transform the data to query it into the GIIS. The updating of the data is handled internally on GIIS, so this [example](Immunization-ExampleVaccinationEvent.html) works just fine for both registering or updating a vaccination event. 

<div>
{% include register-vaccination.svg %}
</div>

#### Request

There will be two cases: 

- For the first case, when a registration of a new vaccination event is happening, the external entity will issue an HTTP **POST** of a new vaccination event with every data related to it, mandatory and optional.

- The second case, when updating a vaccination event (this only happens with calendarized events), the external entity will issue an HTTP **PUT** of the update of the vaccination event, however, this can be kind of tricky cause this update is mainly made for the dates of this vaccination event, and also, it is made internally. 

> Even when the **POST** or **PUT** are not linked with a Bundle, when the request is made, the facade will build this resources as a Bundle. However, it is worth mentioning it here, so there's no doubts about the vaccination events and the patients.

#### Response

The response, for both cases, will be a **201 Status Code**. If there is any type of error on the data, there will be a **40X Status Code** or a **500 Status Code** meaning that there is a server type of error.

#### Example Request/Response

### Searching a vaccination event

For searching a vaccination event we are going to first search a Patient that will have all the vaccination events related to himself/herself, this will lead to the FHIR Facade retrieve data only related to this patient, in order to construct the Immunization Bundle. 
In the case of the childs, they will have from 1..* vaccination events, this is because of the vaccination calendar plus any vaccination made besides it. Adults, however, will have 0..* vaccination events related to them. 

<div>
{% include search-vaccination.svg %}
</div>

#### Request

The external entity issues an HTTP **GET** type of operation by either the vaccination event id or the patient identifier(the case shown in the diagram). 

#### Response

The FHIR Facade will respond with a **200 Status Code** with all the data that can come with the Id used. If there is any type of error on the data, there will be a **40X Status Code** or a **500 Status Code** meaning that there is a server type of error.

> As the response is not a Bundle,it has every resource linked with each other as references. 

#### Example Request/Response

### Registration of an ESAVI 

The ESAVI registration will be made over a QuestionnaireResponse resource. This is made by **reference** on the ESAVI IG (to see more about it [click here](ig_references.html)) but was modified with the minimal set of data required in the case of the GIIS, plus some changes of cardinalities in order to get a better solution. 

The external entity will send the data, this time on a QuestionnaireResponse type of resource (see the example of an answered QuestionnaireResponse [here](QuestionnaireResponse-ExampleESAVIQuestionnaire-1.html)) rather than a Bundle resource and the FHIR Facade will make the INSERT directly into the GIIS database.  
 
<div>
{% include register-esavi.svg %}
</div>

#### Request 

The external entity issues an HTTP **POST** type of operation by sending the data needed in order to create the Aefi Case in the GIIS Database. 
> This QuestionnaireResponse resource is made by answering some questions from a Questionnaire resource that is beign referenced inside the QuestionnaireResponse. In this **POST** you will only find answered those questions related to the **CREATE** inside the database.

#### Response

The FHIR facade response will be a **201 Status Code** if everything goes well. Otherwise there will be a **40X Status Code** or a **500 Status Code** meaning that there is a server type of error.

#### Example Request/Response

### Updating an ESAVI 

This time the QuestionnaireResponse resource will have a Patient linked to it, so firstly, this Patient has to have an existing ESAVI. 
The method for making this update will be a **PUT**, and once again, the FHIR Facade will make the **UPDATE** directly intro the GIIS database. 
 
<div>
{% include update-esavi.svg %}
</div>

#### Request 

The external entity issues an HTTP **PUT** type of operation by sending any data ONLY related to the Aefi Case, this means that if any other data, patient or vaccine related, should NEVER be updated.

#### Response

The FHIR facade response, will be a **201 Status Code** if everything goes well. Otherwise there will be a **40X Status Code** or a **500 Status Code** meaning that there is a server type of error.

#### Example Request/Response

### Searching an ESAVI 

The searching will be made by the Patient identifier or another searching parameter. The FHIR Facade will SELECT the corresponding data from the GIIS database and then return it to the external entity. 

<div>
{% include search-esavi.svg %}
</div>

#### Request 

The external entity issues an HTTP **GET** type of operation, by the Patient identifier, the vaccination event id or a range of dates. 

#### Response

The FHIR facade response will be a **200 Status Code** if everything goes well, with all the QuestionnaireResponse related to the parameter used, so if searched by a vaccination event id there should come all the ESAVIs/AEFIs related to that search, on the other hand, if the search is done by a range of dates, there will come **EVERY ESAVI** on that range. 
If the response is not a **200 Status Code** there will be a **40X Status Code** or a **500 Status Code** meaning that there is a server type of error.

#### Example Request/Response