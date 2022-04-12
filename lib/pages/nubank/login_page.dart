import 'package:fake_bank/components/app_container.dart';
import 'package:fake_bank/routing/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NubankLoginPage extends StatefulWidget {
  const NubankLoginPage({ Key? key }) : super(key: key);

  @override
  State<NubankLoginPage> createState() => _NubankLoginPageState();
}

class _NubankLoginPageState extends State<NubankLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppContainer(
        backgroundColor: Theme.of(context).primaryColor,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(),
            SvgPicture.asset('assets/icons/nubank/nubanklogo.svg',
              width: 45,
              height: 45,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(280, 42),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                )
              ),
              child: const Text('Usar senha do celular',
                style: TextStyle(
                  color: Colors.black
                ),
              ),
              onPressed: (){
                Navigator.pushNamed(context, nubankHomeRoute);
              }, 
            )
          ],
        )
      ),
    );
  }
}