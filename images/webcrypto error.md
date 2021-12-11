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
