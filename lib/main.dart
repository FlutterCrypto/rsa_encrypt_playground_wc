import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'rsa_2048_key_generation_route.dart';
import 'rsa_2048_oaep_sha1_encryption_route.dart';
import 'rsa_2048_oaep_sha1_decryption_route.dart';
import 'rsa_2048_oaep_sha256_encryption_route.dart';
import 'rsa_2048_oaep_sha256_decryption_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFormPage(title: 'RSA Encryption Playground'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainFormPage extends StatefulWidget {
  MainFormPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MainFormPageState createState() => _MainFormPageState();
}

class _MainFormPageState extends State<MainFormPage> {
  @override
  void initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();
  String dropdownValue = 'Bitte wählen Sie einen Algorithmus'; // please choose an algorithm

  BoxDecoration linkBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
        width: 2.0,
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(10.0) // <--- border radius here
          ),
    );
  }

  Widget linkWidget() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: linkBoxDecoration(), // <--- BoxDecoration here
      child: Text(
        'Beschreibung des Programms: http://fluttercrypto.bplaced.net/rsa-encrypt-playground-webcrypto/',
        //'Program description: http://fluttercrypto.bplaced.net/rsa-encrypt-playground-webcrypto/',
        style: TextStyle(
          fontSize: 18,
          color: Colors.blue,
          //decoration: TextDecoration.underline,
          decoration: TextDecoration.none,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget libraryLinkWidget() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: linkBoxDecoration(), // <--- BoxDecoration here
      child: Text(
        'Verwendete Kryptographie Bibliothek:'
        //'Used crypto library:'
        '\nwebcrypto Version 0.5.2'
        '\nhttps://pub.dev/packages/webcrypto',
        style: TextStyle(
          fontSize: 18,
          color: Colors.blue,
          decoration: TextDecoration.none,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Diese App demonstriert die asymmetrische Verschlüsselung auf Basis des RSA Algorithmus.',
                  // 'This app is demonstrating the asymmetric cryptography on base of RSA algorithm.',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Bitte wählen Sie einen Algorithmus\naus der Liste aus:',
                  // 'Please choose an algorithm:',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  isExpanded: true,
                  isDense: false,
                  itemHeight: 48,
                  //what you need for height
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  decoration: InputDecoration(
                    labelText: 'wählen Sie einen Algorithmus',
                    //labelText: 'choose an algorithm',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                    if (dropdownValue ==
                        'RSA OAEP-SHA-1 Padding\nVerschluesselung') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Rsa2048OaepSha1EncryptionRoute()),
                      );
                    }
                    if (dropdownValue ==
                        'RSA OAEP-SHA-1 Padding\nEntschluesselung') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Rsa2048OaepSha1DecryptionRoute()),
                      );
                    }
                    if (dropdownValue ==
                        'RSA OAEP-SHA-256 Padding\nVerschluesselung') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Rsa2048OaepSha256EncryptionRoute()),
                      );
                    }
                    if (dropdownValue ==
                        'RSA OAEP-SHA-256 Padding\nEntschluesselung') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const Rsa2048OaepSha256DecryptionRoute()),
                      );
                    }
                    if (dropdownValue ==
                        'RSA-2048 Schluessel\nGenerierung') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Rsa2048KeyGenerationRoute()),
                      );
                    };
                  },
                  items: <String>[
                    'Bitte wählen Sie einen Algorithmus',
                    'RSA OAEP-SHA-1 Padding\nVerschluesselung',
                    'RSA OAEP-SHA-1 Padding\nEntschluesselung',
                    'RSA OAEP-SHA-256 Padding\nVerschluesselung',
                    'RSA OAEP-SHA-256 Padding\nEntschluesselung',
                    'RSA-2048 Schluessel\nGenerierung',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          textStyle: TextStyle(color: Colors.white)),
                      onPressed: () {
                        // own license
                        LicenseRegistry.addLicense(() async* {
                          yield LicenseEntryWithLineBreaks(
                            ['FlutterCrypto RSA Encryption Playgound'],
                            'Das Programm unterliegt keiner Lizenz und kann frei verwendet werden (Public Domain).',
                          );
                        });
                        // show license dialog
                        showAboutDialog(
                          context: context,
                          applicationName: widget.title,
                          applicationVersion: '1.0.0',
                          //applicationIcon: MyAppIcon(),
                          applicationIcon: Image.asset('assets/images/flutter_crypto_raw2.png', height: 86, width: 86),
                          applicationLegalese:
                              'Das Programm kann frei verwendet werden (Public Domain)',
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                  'Die App demonstriert die Verschlüsselung mit'
                                  ' dem RSA Algorithmus mit den Paddings OAEP-SHA-1 und OAEP-SHA-256.'
                                  '\nDas RSA Schlüsselpaar kann erzeugt und lokal gespeichert werden.'),
                            ),
                          ],
                        );
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content:
                                  Text('bereitgestellt von FlutterCrypto')),
                        );
                      },
                      child: Text('über das Programm und Lizenzen'),
                    ),
                  ],
                ),

                // link to fluttercrypto.bplaced.net
                SizedBox(height: 10),
                Link(
                  target: LinkTarget.blank, // new browser, not in app
                  uri: Uri.parse('http://fluttercrypto.bplaced.net/rsa-encrypt-playground-webcrypto/'),
                  builder: (context, followLink) => GestureDetector(
                    onTap: followLink,
                    child: linkWidget(),
                  ),
                ),

                // link to pub.dev
                SizedBox(height: 10),
                Link(
                  target: LinkTarget.blank, // new browser, not in app
                  uri: Uri.parse('https://pub.dev/packages/webcrypto'),
                  builder: (context, followLink) => GestureDetector(
                    onTap: followLink,
                    child: libraryLinkWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
