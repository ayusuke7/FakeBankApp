import 'package:fake_bank/components/app_container.dart';
import 'package:flutter/material.dart';

class NubankHomePage extends StatefulWidget {
  const NubankHomePage({ Key? key }) : super(key: key);

  @override
  State<NubankHomePage> createState() => _NubankHomePageState();
}

class _NubankHomePageState extends State<NubankHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: AppContainer(
        child: ListView(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: size.height * .3,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 28.0,
                        backgroundColor: Colors.white.withOpacity(0.4),
                        child: const Icon(Icons.person_outlined, 
                          color: Colors.white,
                          size: 32.0,
                        ),
                      ),
                      const Spacer(),
                      const Icon(Icons.visibility_outlined, 
                        color: Colors.white,
                        size: 28.0,
                      ),
                      const SizedBox(width: 28.0),
                      const Icon(Icons.help_outline, 
                        color: Colors.white,
                        size: 28.0,
                      ),
                      const SizedBox(width: 28.0),
                      const Icon(Icons.person_add_alt, 
                        color: Colors.white,
                        size: 28.0,
                      ),
                    ],
                  ),
                  const Text('Olá, Alexandre', style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500
                  ))
                ],
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.fromLTRB(30, 20, 10, 10),
              title: Text('Conta', style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600
              )),
              trailing: Icon(Icons.navigate_next),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text('R\$ 0,00', style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600
              )),
            )
          ],
        ),
      ),
    );
  }
}