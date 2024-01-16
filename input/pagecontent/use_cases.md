## Patient's use cases 

### Registration of a patient
* The Bundle used to handle a patient's registration will be [this](Bundle-ExampleBundlePatient.html).
> The caretaker data comes with this example just because it is an example, an adult patient will never have the caretaker data shown.

### Searching of a patient
* The searching of a patient will return a Bundle similar to [this](Bundle-ExampleBundlePatient.html). Even if an adult patient happens to have caretaker data, it will never be shown. 

## Vaccination's use cases

### Registration of a new vaccination event
* As the title says, this use case handle the registration of a new vaccination event, this vaccination events happens outside of a child's vaccination calendar
* It will be made without a bundle, the data in the profiles should be more than enough. 

### Searching a vaccination event
* The searching of a vaccination event will come with every necessary data, this searching will be directly linked with the patient search, due to both of them being related with each other, because there can't be an immunization event if there is no patient existance. 

### Updating a vaccination event
* This will be made internally, due to this type of vaccination events are related to a child's vaccination callendar.

## ESAVI's use cases

### Registration of a ESAVI related to a patient/vaccination event

* It will be through answering a questionnaire resource.
* You can see an example of an answered questionnaire [here](QuestionnaireResponse-ExampleESAVIQuestionnaireResponse.html). 

### Searching an ESAVI 
* The searching of an ESAVI will return an aswered questionnaire, just like [this one](QuestionnaireResponse-ExampleESAVIQuestionnaireResponse.html). 

### Updating an ESAVI
* Updating an ESAVI will retun an answered questionnaire that it will updated. This updated questionnaire can have some usefull data added to it, like some phamalogical history or even the update of a previously answered data. 