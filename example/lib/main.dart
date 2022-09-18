import 'package:flutter/material.dart';
import 'package:spotify_flutter/generated/l10n.dart';
import 'package:spotify_flutter/spotify_flutter.dart';
import 'api_keys.dart';

void main() {
  runApp(HelpMe());
}

class HelpMe extends StatelessWidget {
  const HelpMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      localizationsDelegates: [
        S.delegate,
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Pacman {}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () => _authenticate(context),
                  child: Text('Authorize')))
        ],
      ),
    );
  }
}

void _authenticate(BuildContext context) async {
  final response = await SpotifyApi.instance.authenticate(
      redirectUri: 'clash://clash.flutter.com',
      clientId: kClientId,
      callbackUrlScheme: 'clash',
      secretKey: kSecretKey);
  if (response != null) {
    response.when(success: (success) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const NextScreen()));
    }, failure: (failure) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            NetworkExceptions.getErrorMessage(failure),
          ),
        ),
      );
    });
  }

  //AQD4CORJ1MiFAOQBi67B7YRSu-bkVE7QcLUF-DnCW5cbE6LyR4xRcM6pXwgz646_
  // Bgn2NxkPLjPPVI6GY6qtJXMPDb6JdlcSzfL9DN0PXveoWDEaGomBavUdYIxb5mU66EdKZ8-
  // ZCskO_lh7UZHyEkGTFurf_ka1PUcxZC1XyrRam34oUHRA_X4VgnNMR-aHFpI3iwikip7Br7FRl
  // gY6J2CRuld_ocxThR64LUWTo1xN0pSw8KiFlUuKej5DUAkCSs8Y4NCvLKTadjsJFA_YZKBIEBZCIz
  // ISyh_dpeINygmOZBK4Og_cSqyJW5YycTUpfMC-NmAW7EW2dYjD_JOodPUd4XdR2XA27Vw
}

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

//TODO: add to docs that Minimum android version is 18 to correlate with flutter_secure_storage
