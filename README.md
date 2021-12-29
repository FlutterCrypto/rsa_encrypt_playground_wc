# rsa_encrypt_playground_wc

RSA encryption

For more information see here: http://fluttercrypto.bplaced.net/rsa-encrypt-playground-webcrypto/

```plaintext
https://pub.dev/packages/webcrypto
https://github.com/google/webcrypto.dart
webcrypto: ^0.5.2

https://pub.dev/packages/url_launcher
url_launcher: ^6.0.12

https://pub.dev/packages/path_provider
path_provider: ^2.0.5

in AndroidManifest.xml ergänzen:

    <queries>
        <!-- If your app opens https URLs -->
        <intent>
            <action android:name="android.intent.action.VIEW" />
            <data android:scheme="https" />
        </intent>
    </queries>
```    

```plaintext
-----BEGIN PRIVATE KEY-----
MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCsZYmvuM6Oxsyd
WDRojTw5KO+0K2WRr7WvnXuIgQyy96zwTFKVA87eBjiKg+Sp9urCS0SfczxvqP8V
c1U/XWrOUyNDbrxIopFwjd7e2hh0ixxQsSBSIIHWOTOLCdfC0jBhDLE2yiO8jsML
2hbIIt/W+YbSmq6V989gK0xK3dHhJIdDymV4EWrIADNDPyTzGaqcgHt6xBJTjoOh
Th53MzHY2F5MF6g4jIYOUmv/a/u1IeUKWpJlhLefyjISismPCLXZkCIg2OX0pkpd
PrJ22vF2NFDvaN2OCy1ZANF1ciT0Q+jkEBg1vv2KUeosjaBwhb+OHdL8OV0eFVjJ
IiL/ZS//AgIQAQKCAQBwhME2xBmXXBKTDwRGfMwkDpiS9aVUZo8TVHn93WGUPKz7
kBpn4Z5SzKLfP2axCkFeAYMUZtRnHsGaxz6TFKsPQRJUQGakgNklCE2aYnsPZFqW
hDn1/hjhbAEGFGu0VDKSMkYMg+5Vk1nffsgy5JYX1ijBsSAnpOzy2Rac9kBAFeQL
0kAdd1sQCEbL+yiO2sslMIpoKMar++6VkxVDmtVbCihquJEj20kxY3/BWFUmQW4E
NgX0GBDEMbXkdxeJ8B3I5QDPY5vVuNxjR2P1Xwt5MwYOvcL3BEpDRPEsc+PLmGOx
eJNjApeLfoMbR1d96rkgu26P/l1sGMf9aEUHLvOxAoGBAOW6lcheTzDjHnr2lLkR
six/I+iOCupcKgaGJR5QancQVgaMMcTBFrzvCya46TS5Ur6Nl9IDkn6OMsI8d1wI
mepnvAwYe2PohZnAAD5v2sW6NagT/IsevRLJPvGmX36mV/lHb8ylcPXA3MJeYfOA
3+9dPxs0dkdhK+QZKskEa8OLAoGBAMAchsWvJhCAZfv7oAhOVJRo+fr8VSbc7eGB
z6/9hvbbFT6WWlMEr8LEk4l62jeAMLGGxoZvZriPBM9h6kRixDYH7y9PfoZb1tRR
VtDSi/AgdHTIF5ofV7XMl1WXgXJbMsw9J5n+ov+enrwtLtvsL4gfjoZWv6eIi/Wu
Yst0kEPdAoGAYNZOIkke8b2mz4tent34MB/ZNkn/Gj6YDp9FUiLltTgfw2aF04fx
BziWOj/y1H2beYA7L2lq/Yw7wwkuAH3Yh7yhD0id/JAQ03Yst4fQ0LEn7Q8cWSKz
rODr60RhnVxs8NuA+0lMu9JD7/SsIdkI2m653+pv97kM4K5RlQf8r/cCgYAdEoA+
aFx9N5v2JPQp/ztZwUfCQY3KxUStl4y3GC6q8vpHlMjfgv1q5JML3pqePMOSpfwt
FotjuWpjvdZYdGvsbuyFoO5X8Oe2J+1lRYpV84poBskmAd5o3ioFlFWStiKOQV2o
tL/gMz9TBqZtYyn/OtMlo0dOJwi+5Dcw2NdI0QKBgQDZhIQg5tmedFZ1hvkqo4NN
AYESFvJTFyVBvTkgwxWzovr7AD4WJ2xsJmAFU9YINqQnMXTlP0nILob+g/zzw6aJ
FVvr0TPDCRRePC7DtzBg/LQ4Ip7RRASewGg3EkC/WdurS3Ra3cTufar2GcwxRPMV
VKnsBpJdUzGAevot23Fbzw==
-----END PRIVATE KEY-----
```


```plaintext
-----BEGIN PUBLIC KEY-----
MIIBITANBgkqhkiG9w0BAQEFAAOCAQ4AMIIBCQKCAQEArGWJr7jOjsbMnVg0aI08
OSjvtCtlka+1r517iIEMsves8ExSlQPO3gY4ioPkqfbqwktEn3M8b6j/FXNVP11q
zlMjQ268SKKRcI3e3toYdIscULEgUiCB1jkziwnXwtIwYQyxNsojvI7DC9oWyCLf
1vmG0pqulffPYCtMSt3R4SSHQ8pleBFqyAAzQz8k8xmqnIB7esQSU46DoU4edzMx
2NheTBeoOIyGDlJr/2v7tSHlClqSZYS3n8oyEorJjwi12ZAiINjl9KZKXT6ydtrx
djRQ72jdjgstWQDRdXIk9EPo5BAYNb79ilHqLI2gcIW/jh3S/DldHhVYySIi/2Uv
/wICEAE=
-----END PUBLIC KEY-----
```

Klartext:
```plaintext
The quick brown fox jumps over the lazy dog
```

```plaintext

```

Sample OAEP SHA-1 encryption max 241
```plaintext
{
  "algorithm": "RSA-2048 OAEP SHA-1",
  "ciphertext": "kP/kXzSYF9n5O7EpEawW5LHYbOplwi8l3GF5SIqcXGKvlXdB08QJfUYSDtmiBS12DEqEJfFFSTzc0Uo4ceGEczsMlnhSxJ22Tqjxwl/5L71za4rt5YnIVMlqW7g69ImWwaIt0+vxVz7QgGWHbG2xcuoyEoZ7N59/CbmLg+C6kwo8oQmYj8RaKLZVmlAStH1khfzK7ihraEw3a+3xNkuSHgAPHzvp18pYP64UKa5WJJeYPblnjZtS407WgHbA41tdF33jzcfT6hOjePGuOBcc0mDCnXZbaCi+q5Gx6EVowABzMfE3F5NhfN2IY/YsftxgRZG69Jrxi27JX7YgFfFs3g=="
}
```

Sample OAEP SHA-256 encryption max 190 chars
```plaintext
{
  "algorithm": "RSA-2048 OAEP SHA-256",
  "ciphertext": "NacRMIJcrBVGVyWQtbr11u8odH7gw9LqRftMi3mwGOaBaN7W0ygqzsubgJE2LvjS+wkYIdX+jnT6i8K6bexJV0tuFb6yuZ4LY/bDKfpezdR0dipmoCIFwqw5yErKJgxkOnkDqksp2HKeav8hgIvifLxWdlWAwWimmvkFOrsQVv5vHKDdmVHT/oIi6uKDatRQkSO+9Nk5dha3u4JLHy7Bl76ZJ8rsN/2jXZaNdumrqpLrDEapyO5r/uss7TNy2Sz5yoYssLDGHvcKjLcfpNEXymTOnyn241YmEybv5VT6jnkum7BwSk1UILGqdz4cE5eZF7TuGDUPaXlYRtVekDZLLg=="
}
```

```plaintext
ACHTUNG: error in impl_ffi.utils.dart bei aktuellem Dart (2.5+)

Zeile 28ff

void _attachFinalizerEVP_PKEY(ffi.Pointer<EVP_PKEY> key) {
final ret = dl.webcrypto_dart_dl_attach_finalizer(
key,
key.cast(),
ssl.addresses.EVP_PKEY_free.cast(),
// We don't really have an estimate of how much space the EVP_PKEY structure
// takes up, but if we make it some non-trivial size then hopefully the GC
// will prioritize freeing them.
4096,
);
if (ret != 1) {
throw AssertionError('package:webcrypto failed to attached finalizer');
}
}

geändert in void _attachFinalizerEVP_PKEY(ffi.Pointer<EVP_PKEY> key) {
final ret = dl.webcrypto_dart_dl_attach_finalizer(
key,
key.cast(),
ssl.addresses.EVP_PKEY_free.cast(),
// We don't really have an estimate of how much space the EVP_PKEY structure
// takes up, but if we make it some non-trivial size then hopefully the GC
// will prioritize freeing them.
4096,
);
if (ret != 1) {
print('error in impl_ffi.utils.dart: package:webcrypto failed to attached finalizer');
//throw AssertionError('package:webcrypto failed to attached finalizer');
}
}

Das Programm funktioniert dann, aber der Schlüssel wird nicht mehr schnell aus dem Speicher gelöscht

siehe: https://github.com/google/webcrypto.dart/issues/10

oder auch in https://github.com/google/webcrypto.dart/issues/21
```

development environment:
```plaintext
Android Studio Arctic Fox Version 2020.3.1 Patch 3
Build #AI-203.7717.56.2031.7784292
Runtime version: 11.0.10+0-b96-7249189 aarch64
VM: OpenJDK 64-Bit Server VM
Flutter 2.5.3 channel stable Framework Revision 18116933e7
Dart 2.14.4
```

tested on:
```plaintext
Android Simulator: 
  Android 11 (SDK 30) Emulator,
  Android 12 SV2 (SDK 31) Emulator, 
  Android 6 (SDK 23) Emulator,
  Android 5 (SDK 21) Emulator.
iOS Simulator:  
  iOS 15 Emulator
  iOS 11.4 Emulator 
```

```plaintext
/Users/michaelfehr/.pub-cache/hosted/pub.dartlang.org/webcrypto-0.5.2
rm -r webcrypto-0.5.2
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
