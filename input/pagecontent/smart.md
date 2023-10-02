## Security based on Smart on FHIR

This IG propose the use autenthication and authorization based on the   Smart on FHIR IG, which is also based on Oauth2.0, specifically using Client Credentials flow for communication between systems (Backend services communication).

Here participates:

**Client app**: The application requesting access to the resources. This is the client.

**Authorization Server**: The entity that issues access tokens after authenticating the client.

**Resource Server**: The server (FHIR Facade) that hosts the protected resources that the client wants to access.

### The process synthesis is:
Client app registering on authorization server: This is made manually by resources responsible persons, just one time, to indicate the authorization server that there is a new client app. Client must issue a pair of Public and Private Key(see how to issue PPK).

Private Key is saved and protected by the client.

Public Key is used to generate a JWK and registered on Authorization Server. 
To generate the JWK use:

        "kty": "RSA",
        "use": "sig"
        "kid": <use SHA256 and the public key>
        "alg": "RS384"
        "n": <based on public key> 


When client is registered using the JWK, is necessary to indicate the set of resources and opperations that can execute. This is the scopes. 

The client registering process generate the client ID. It must be sent to client, who will use it to create the client assertion needed to request an access token to Authorization server.

After the client is registered, it can interact with the Resource server (FHIR server) following the authorization steps.

### Client Registering

Cliente create a Pair of Public and Private Key.
Here is a Python example, but you can do it with any tool that you want:

    from Crypto.PublicKey import RSA
    key = RSA.generate(2048)
    pv_key_string = key.exportKey()
    publicPem=str()
    
    with open ("private2.pem", "w") as prv_file:
        print("{}".format(pv_key_string.decode()), file=prv_file)
    
    pb_key_string = key.publickey().exportKey()
    with open ("public2.pem", "w") as pub_file:
        print("{}".format(pb_key_string.decode()), file=pub_file)


Client creates a Json Web Key(JWK). Here is an python example of how to do that:


    import base64
    import hashlib
    import json
    from cryptography.hazmat.primitives import serialization
    from math import ceil
    from datetime import datetime, timedelta
    
    def pem_to_jwk(pem_public_key):

        public_key = serialization.load_pem_public_key(pem_public_key.encode(), backend=None)
    
       
        e = public_key.public_numbers().e
        n = public_key.public_numbers().n
    
       
        jwk = {
            "kty": "RSA",
            "e": base64.urlsafe_b64encode(e.to_bytes(ceil(e.bit_length() / 8))).decode().rstrip('='),
            "use": "sig",  
            "kid": generate_kid(pem_public_key),
            "alg": "RS384",  
            "n": base64.urlsafe_b64encode(n.to_bytes(ceil(n.bit_length() / 8))).decode().rstrip('=')
        }
    
        return jwk
    
    def generate_kid(pem_public_key):
       
        public_key = serialization.load_pem_public_key(pem_public_key.encode(), backend=None)
        sha256_hash = hashlib.sha256(public_key.public_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PublicFormat.SubjectPublicKeyInfo
        )).digest()
        kid = base64.urlsafe_b64encode(sha256_hash)[:16].decode()
    
            return kid
    pem_public_key = publicPem
    jwk = pem_to_jwk(pem_public_key)
    print(json.dumps(jwk, indent=2))

Send the JWK to GIIS administrator or responsable person <add email contact here>.
They should give back a client_id.

Save the JWK and Client ID in a secure way, will be needed to request permission to access the resources. 




### Authorization steps:
Client request an Access token to Authorization Server presenting a Client Assertion (a Json Web Token signed with the private key), indicating the resources that wants to interact, and the operations that wants to execute.
Here is an example of how to create a Client Assertion with Python:


    import jwt
    import time
    
    import timedelta
    from datetime import datetime, timedelta
    
    def create_client_assertion(client_id, private_key_path, token_endpoint):
       
        iat = int(time.time())
   
        payload = {
            "iss": client_id,
            "sub": client_id,
            "aud": token_endpoint,
            "iat": iat,
            "exp": datetime.utcnow()+timedelta(minutes=5)
        }
    
        client_assertion = jwt.encode(payload, private_key, algorithm='RS384')
    
        return client_assertion
    
    # This is the Client ID generated on client registering process.
    client_id = "9e4a2858-9e86-406b-958f-b86a5e1ceb3d"

    private_key= privatePem
    token_endpoint = "http://<tokend enpoint given in well-known request, at beginnin>"
    
    client_assertion = create_client_assertion(client_id, private_key, token_endpoint)


Client request authorization to Authorization Server.
Note that, in this part, client define the scope related with operations that needs to execute. It's described on [Smart on Fhir scopes](http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html)
Here is an example about, wrote in Python:

    import requests
    token_data={}
    def make_token_request():
        url = '<token endpoint. It's indicated on well-known>'
        headers = {
            'accept': 'application/json',
            'Content-Type': 'application/x-www-form-urlencoded'
        }
        data = {
            'grant_type': 'client_credentials',
            'scope': "system/Patient.rs",
            'client_assertion_type': 'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
            'client_assertion': client_assertion
        }
    
        response = requests.post(url, headers=headers, data=data)
        
        if response.status_code == 200:
            token_data = response.json()
            access_token = token_data.get('access_token')
            
            
            return access_token
        else:
            print(f"Error: {response.status_code} - {response.text}")
        
    
    access_token=make_token_request()

Authorization server issue an access token. 

Client request an operation over a resource to Resource server, attaching the access token.

Here's an example about how to do that:

```
curl 'https://<resource server>/fhir/Observation?code=4548-4&_sort%3Adesc=date&_count=10' \
  -H 'accept: application/json' \
  -H 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZWVkX3BhdGllbnRfYmFubmVyIjp0cnVlLCJzbWFydF9zdHlsZV91cmwiOiJodHRwczovL3NtYXJ0LmFyZ28ucnVuLy9zbWFydC1zdHlsZS5qc29uIiwicGF0aWVudCI6Ijg3YTMzOWQwLThjYWUtNDE4ZS04OWM3LTg2NTFlNmFhYjNjNiIsInRva2VuX3R5cGUiOiJiZWFyZXIiLCJzY29wZSI6ImxhdW5jaC9wYXRpZW50IHBhdGllbnQvT2JzZXJ2YXRpb24ucnMgcGF0aWVudC9QYXRpZW50LnJzIiwiY2xpZW50X2lkIjoiZGVtb19hcHBfd2hhdGV2ZXIiLCJleHBpcmVzX2luIjozNjAwLCJpYXQiOjE2MzM1MzIwMTQsImV4cCI6MTYzMzUzNTYxNH0.PzNw23IZGtBfgpBtbIczthV2hGwanG_eyvthVS8mrG4'
```