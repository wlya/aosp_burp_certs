Aosp Burpsuite Certificate

Copy the `xxxxx.0` files to `/aosp/system/ca-certificates/files/`, then build.



# 123456.jks
```
 ubuntu  ~  keytool -v -list -keystore 123456.jks 
Enter keystore password:  
Keystore type: PKCS12
Keystore provider: SUN

Your keystore contains 1 entry

Alias name: 123456
Creation date: Feb 18, 2022
Entry type: PrivateKeyEntry
Certificate chain length: 1
Certificate[1]:
Owner: CN=123456
Issuer: CN=123456
Serial number: 28d4396e
Valid from: Fri Feb 18 12:38:39 CST 2022 until: Tue Feb 12 12:38:39 CST 2047
Certificate fingerprints:
	 SHA1: FF:AC:19:10:54:4E:57:BD:45:B5:E0:FC:E2:88:83:F1:58:3D:8C:88
	 SHA256: 1F:68:9E:98:51:26:FD:65:57:58:A5:82:F6:33:B6:8A:9B:4A:08:60:1C:D3:0A:E3:B7:80:15:AE:17:98:9F:BC
Signature algorithm name: SHA256withRSA
Subject Public Key Algorithm: 2048-bit RSA key
Version: 3

Extensions: 

#1: ObjectId: 2.5.29.14 Criticality=false
SubjectKeyIdentifier [
KeyIdentifier [
0000: 63 6E D9 DD 33 60 34 F3   AD 51 79 88 89 37 5D 54  cn..3`4..Qy..7]T
0010: 05 23 A1 7D                                        .#..
]
]



*******************************************
*******************************************

```
