<style>
    details summary{
        cursor: pointer; 
    }

    summary{
        display: list-item;
    }

    summary::marker{
        text-transform: none;
        font-variant-numeric: tabular-nums;
        text-transform: none;
        text-indent: 0px !important;
        text-align: start !important;
        text-align-last: start !important;
    }

    code{
        display: block;
        white-space: pre-wrap; 
    }
</style>

## Security based on Smart on FHIR

This IG propose the use autenthication and authorization based on the   Smart on FHIR IG, which is also based on Oauth2.0, specifically using Client Credentials flow for communication between systems (Backend services communication).

The purpouse is to separate the client authentication and authorization stage from the transactional communication between the client and the resources server. This way, an authentication and authorization is responsible to allow or reject clients who wants to retrieve or give information to /from FHIR Facade Server(resource server) that is in front of a GIIS server. 

Here participates:

**Client app**: The application requesting access to the resources. This is the client.

**Authorization Server**: The entity that issues access tokens after authenticating the client.

**Resource Server**: The server (FHIR Facade) that hosts the protected resources that the client wants to access.

### Synthesis of the Communication between clients and FHRI Facade server:

1. The client who wants to communicate with FHIR Facade Server should generate a pair of Public and Private Key (see [PPK on asymmetric encryption](https://www.rfc-editor.org/rfc/rfc4949.txt) and [wiki](https://en.wikipedia.org/wiki/Public-key_cryptography), and [generate public and private keys in JWK format](https://mkjwk.org/)  ).

2. Share the Public Key to FHIR Facade administrators.
 
3. Administrators will register the new client Public key on the authorization server, registering also which resources and which operations will be allowed for that new client(i.e. read Patients data, or write Vaccination Events data, etc.)
 
4. When that new client wants to communicate with the FHIR Facade server, first should ask authorization to the authorization server using the Private Key to sign the request. 
 
5. The authorization server will authorizate giving an Access Token.
 

#### Client Registering

##### Client create a Pair of Public and Private Key.

To be registered on Authorization server, the Client's public key must be on Json Web Key Store format(JWKS).


JWKS is a JSON that includes a "keys" key with a list of JWK. 

<details>
<summary>This is how JWKS looks like (click here to see it)</summary>

<code>
    {
        "keys":[
        {
        "kty": "RSA",
        "e": "AQAB",
        "use": "sig",
        "kid": "xprjIcx94sSj_opw",
        "alg": "RS384",
        "n": "wnNZRLN_bjgBLe5BujbSzv0ehKr1txlNAZK2Bgr9BI1Y7HQjYM-8btv5KN5YEsF99Q49l4kz0eQjBF8pz3ywxf9Dj0DBvF6i-tuUtn1tc80R2gV99-MK85kbic7odNHS_VMPMZr_wL3VMu7_4y-gDOve4EWOWney532-kAla_L4xZxjGmoR7GiN2iuxx-2L4J7szIcWG6hdlA0sXPhTOKZ6jmjzUngdihOrnTVkC9UKUBTD-DgL6FMcptiP4SKmIlE4glcWvVvgJfZ2miFp5W3MYGJjd70KFAP6wVw-Axudcpus7NpZUoojtPjKVKVISvQ1bzH5OA3rqD5ZhulwOtQ"
        }
        ]
    }

</code>
    
</details>

You can create the keys pair directly on a [website](https://mkjwk.org/), or create the keys on PEM format ( i.e. using [OpenSSL](https://www.openssl.org/docs/man1.1.1/man1/genrsa.html)) and after that, transform it to JWK (i.e. using  [JWK Creator](https://russelldavies.github.io/jwk-creator/)):

<details>
<summary> Also is possible to use Python code to create Public and Private Keys in PEM (click here to see) </summary>
<code>
    #package versionscrypto==1.4.1 cryptography==41.0.2
    from Crypto.PublicKey import RSA
    key = RSA.generate(2048)
    pv_key_string = key.exportKey()
    publicPem=str()
    
    with open ("private2.pem", "w") as prv_file:
        print("{}".format(pv_key_string.decode()), file=prv_file)
    
    pb_key_string = key.publickey().exportKey()
    with open ("public2.pem", "w") as pub_file:
        print("{}".format(pb_key_string.decode()), file=pub_file)    
       
</code>
</details>



<details>
<summary>This is how a Private and Public Keys pair in PEM format looks like :</summary>
<code>
    -----BEGIN PUBLIC KEY-----
    MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwnNZRLN/bjgBLe5BujbS
    zv0ehKr1txlNAZK2Bgr9BI1Y7HQjYM+8btv5KN5YEsF99Q49l4kz0eQjBF8pz3yw
    xf9Dj0DBvF6i+tuUtn1tc80R2gV99+MK85kbic7odNHS/VMPMZr/wL3VMu7/4y+g
    DOve4EWOWney532+kAla/L4xZxjGmoR7GiN2iuxx+2L4J7szIcWG6hdlA0sXPhTO
    KZ6jmjzUngdihOrnTVkC9UKUBTD+DgL6FMcptiP4SKmIlE4glcWvVvgJfZ2miFp5
    W3MYGJjd70KFAP6wVw+Axudcpus7NpZUoojtPjKVKVISvQ1bzH5OA3rqD5ZhulwO
    tQIDAQAB
    -----END PUBLIC KEY-----

    -----BEGIN RSA PRIVATE KEY-----
    MIIEowIBAAKCAQEAwnNZRLN/bjgBLe5BujbSzv0ehKr1txlNAZK2Bgr9BI1Y7HQj
    YM+8btv5KN5YEsF99Q49l4kz0eQjBF8pz3ywxf9Dj0DBvF6i+tuUtn1tc80R2gV9
    9+MK85kbic7odNHS/VMPMZr/wL3VMu7/4y+gDOve4EWOWney532+kAla/L4xZxjG
    moR7GiN2iuxx+2L4J7szIcWG6hdlA0sXPhTOKZ6jmjzUngdihOrnTVkC9UKUBTD+
    DgL6FMcptiP4SKmIlE4glcWvVvgJfZ2miFp5W3MYGJjd70KFAP6wVw+Axudcpus7
    NpZUoojtPjKVKVISvQ1bzH5OA3rqD5ZhulwOtQIDAQABAoIBAByPJ4HNIT61cAro
    bvPkIHMxPv26REuHpkVAYIajr4SvI+vapOWPrTvVCBPGEEZ078SBum8awicmLDR0
    q6XjSO1Tr/8Gwk2h0qsoe/+PjXdQG7qbSuSRDqc3ihFj98VMmgIF5HnjK4QJ/Zm0
    +5VJBedP71SeMqm74eVZFRd/oEL1hFe2cm3fIL5cpe+KqpBZkTXpZvTdGeaq7lMr
    bwI1fj4mukV9C/FK9u/9eQlpYy9Ipmg4s79ZxqQKx013BUKfB00mzvxqWmpexkFJ
    WZhaOf8jDtm0aTzmILceleTlpD9afwr5+LDfGvCo6tJz0xOgM1m2CCtvnVlaFycx
    K1lv2AMCgYEAyXl0Zb50OT61oA/+/KuRzcZdQSj2NtId5JsXuZiYp0IN7q6NrD81
    GOAVbHZBE1jx4UjhYTQCBCg/Mt1hBrznXo2Uc8OTZoamF0NDsoaromsKpFXWzGWc
    F9RPaNo2NSsKva7qOfog9VHpQBe0x4a92mS2K+3kF2whAJBtcCS/wh8CgYEA9xNE
    jJMzwodqRBqbfIukLUDWSEunprJKCNeJu0zu9+ECl8rQ/VsIsm7z56yYVskKc/jv
    B7Mep8NZbOL+DBXB7Uay+B8rafJKnZxvSUts2HjUssXnGuDBcepVOYnd2kvvLKjo
    L7C3Ecs1Zi6t2SOg+TjGM7NBsbEZB+2oZ222HKsCgYEAiRwWkociITMD94HrTZiV
    CSzNmeJ+bKBhp4nEg5HNkUXqpVw1HduGDv+wlLeFYd1N/rrSZow2Mw4QtFTkCunT
    qw0+0elvDn7j2UD1eTEc7NNb0qp4G3Gq4Kyjvf+ClHxOOvgmfn4yn8C2s99uL7sK
    yO1w7ERgzW/QpcmkMIVR2pECgYBulP0VPbzoz9rL6Gy27XjpmB9P9Cxw+1MPagiH
    AAPkhZy3e1rWSiw2UFpx0lnMXeaDyWKSO6T4yQH5Lg8uMX6+R+pKCwlPPdYPfLiC
    QXPR3yKzcMfiy71I0uyZ+A6HaXz+rApfbeRB3oVj2niMutmNMc/jy9MXSIA/gCrj
    P8NGSQKBgEqvoq2H4p5h832tuysc4QPF1NIw9bgWfIrCuAXkYk1D62kVdNvhh+tg
    w9pPP+hguEw5DTkZrpMJ+yIqRTEcks9MbvCoRQ/x1hrVMR30IX+YCTNfBsxIuppO
    +H5umpJBZPHpGkzUyRCJlxO0V1zFWzYFEuXsQ8HDPDrtXvarLHZ+
    -----END RSA PRIVATE KEY-----

</code>
</details>


Once the client generated the public and private keys, should send the public key to FHIR Facade administrator. (If it is PEM format, administrator must convert to JWKS).

It can be done using [JWK creator web site](https://russelldavies.github.io/jwk-creator/). 

<details>
<summary>Also, it can be done using this Python code that is an example of how to do that:</summary>
<code>
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

</code>
</details>

Administrator should give back a client_id to the Client.

### Authorization steps:
Client request an Access token to Authorization Server presenting a Client Assertion (a Json Web Token signed with the private key), also indicating the resources that wants to interact and the operations that he wants to execute(scopes), and other parameters. The process in detail is described at [Smart On FHIR Implementation Guide - Obtain Access Token](https://hl7.org/fhir/smart-app-launch/backend-services.html#obtain-access-token) 

#### Create the client assertion (signed JWT)
<details>
<summary>This example shows how an encoded JWT looks like(click to see):</summary>
<code>
        `eyJhbGciOiJSUzM4NCIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJhNmFjMTRhOC1lODdhLTRiMGMtOGIyZC00MDdmZWRhYjljNjIiLCJzdWIiOiJhNmFjMTRhOC1lODdhLTRiMGMtOGIyZC00MDdmZWRhYjljNjIiLCJhdWQiOiJodHRwOi8vMTkyLjE2OC40MC4xMzM6ODA4MS9vcGVuaWQtY29ubmVjdC1zZXJ2ZXItd2ViYXBwL3Rva2VuIiwiaWF0IjoxNzA5MTU3NjYzLCJleHAiOjE3MDkxOTM2NjN9.TKd9kb3R2oujnIFRm3fdTqt2faC42txlbiE8KIgxDuOx7-SaMw78H7EL3PLMvySkedm8zH-wJnULW3lkwjyBwEXeHj6xLMeEhzOSW8rUaSwDNTWggk6ElMnXOHLd-Fafkc6RP1ySE13OtOf2v7QmzVDzeyDXvapneRVz1-HPAIeo2FQ0DY7zKwQddIvyO_pZaoHSjj1i8FGUAbApbJQZwlrExqWqIq0s2ln-dPfxYu4VlFTkGSkoPiDWxdzAJadrp4SJy27HZnZwBQn5sx2z7fNpQNcDf6_p59K9UsmvN9zHSEwnxzfbcQPWfUC_m4sfvjbg15WY8wirkhQ2tGNOCQ`

</code>
</details>

<details>
<summary>This is an example of a decoded JWT(click to see)</summary>
<code>
    Header:        
    {
    "alg": "RS384",
    "typ": "JWT"
    }
        
    Payload:
    {
    "iss": "a6ac14a8-e87a-4b0c-8b2d-407fedab9c62",
    "sub": "a6ac14a8-e87a-4b0c-8b2d-407fedab9c62",
    "aud": "http://192.168.40.133:8081/openid-connect-server-webapp/token",
    "iat": 1709157663,
    "exp": 1709193663
    }

</code>       
</details>


The following web site can help you to create a JWT using the Private and Public Keys (PEM), and the right fields for payload: [JSON Web Tokens Debugger web site](https://jwt.io/) 


<details>
    <summary>Additionaly, here is an example of how to create a Client Assertion with Python(click to see):</summary>
<code>
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
    token_endpoint = "http://<token endpoint given in well-known request, at beginning>"
    
    client_assertion = create_client_assertion(client_id, private_key, token_endpoint)

</code>   
</details>

    
#### Client request authorization to Authorization Server

This is a HTTP request from Client to Authorization Server, giving some parameters as:
    
Scopes: It's described on [Smart on Fhir scopes](http://hl7.org/fhir/smart-app-launch/scopes-and-launch-context.html)
    
Grant type and Client Assertion Type: This is fixed values. [See the definition here](https://hl7.org/fhir/smart-app-launch/backend-services.html#request-1)
    
Client Assertion: Signed JWT.

    
More details on [Smart on FHIR Implementation Guide-Obtain access token](https://hl7.org/fhir/smart-app-launch/backend-services.html#obtain-access-token)

<details>
<summary>Here is an example about, wrote in Python: </summary>
<code>
    #package version requests==2.28.2
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

</code>        
</details>

    
#### Authorization server issue an access token.

<details>
<summary>This is an example of an access token given by the Authorization server </summary>
<code>
        {'access_token': 'eyJraWQiOiJyc2ExIiwiYWxnIjoiUlMyNTYifQ.eyJzdWIiOiJhNmFjMTRhOC1lODdhLTRiMGMtOGIyZC00MDdmZWRhYjljNjIiLCJhenAiOiJhNmFjMTRhOC1lODdhLTRiMGMtOGIyZC00MDdmZWRhYjljNjIiLCJpc3MiOiJodHRwOlwvXC8xOTIuMTY4LjQwLjEzMzo4MDgxXC9vcGVuaWQtY29ubmVjdC1zZXJ2ZXItd2ViYXBwXC8iLCJleHAiOjE3MDkxNjE3NzYsImlhdCI6MTcwOTE1ODE3NiwianRpIjoiYjFiODNjNDMtZGZmZC00Yjg5LTlkNDktNDhkYmYyZmFmNmQ0In0.c5LKD7XgwE08_KF35J8waoNQzWGwo9raWxznaRD3BcEyeuA5U1Jxq_rnpTppPHkvwfy6iD8uyKn6C6eOGUlAWejRUNkjg-5kmVYcZBK9tkA-ooEzzT0JQWwTu_7RK5GtyOkG3kpUFwL3z7WK-4DxQcIXLUWXiwSXjB9JDmTQGpAKi5W4fhfY-ytOCiUtfFsgdEfUEXA96m0BKzjkQUl6T90ZySBJxWWHnkLsyWrr7ag13G3T-hhn1HqCd60ZouMaRa0vaVGwmEL558wmi7JyfIus745z6oCJJxK_8OJEC3fvlAjxXUFjVsLDsq1yrjCgYXNVuw-rStgheoCs1sI2LQ', 'token_type': 'Bearer', 'expires_in': 3599, 'scope': 'system/Patient.*'}

</code>
    
</details>


    
#### Client request an operation over a resource to Resource server, attaching the access token.


<details>
<summary> Here's an example about how to do that:</summary>
<code>
        curl 'https://<resource server>/fhir/Observation?code=4548-4&_sort%3Adesc=date&_count=10' \
        -H 'accept: application/json' \
        -H 'authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuZWVkX3BhdGllbnRfYmFubmVyIjp0cnVlLCJzbWFydF9zdHlsZV91cmwiOiJodHRwczovL3NtYXJ0LmFyZ28ucnVuLy9zbWFydC1zdHlsZS5qc29uIiwicGF0aWVudCI6Ijg3YTMzOWQwLThjYWUtNDE4ZS04OWM3LTg2NTFlNmFhYjNjNiIsInRva2VuX3R5cGUiOiJiZWFyZXIiLCJzY29wZSI6ImxhdW5jaC9wYXRpZW50IHBhdGllbnQvT2JzZXJ2YXRpb24ucnMgcGF0aWVudC9QYXRpZW50LnJzIiwiY2xpZW50X2lkIjoiZGVtb19hcHBfd2hhdGV2ZXIiLCJleHBpcmVzX2luIjozNjAwLCJpYXQiOjE2MzM1MzIwMTQsImV4cCI6MTYzMzUzNTYxNH0.PzNw23IZGtBfgpBtbIczthV2hGwanG_eyvthVS8mrG4'

</code>
</details>
    