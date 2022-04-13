import 'package:fake_bank/core/components/app_container.dart';
import 'package:fake_bank/ui/nubank/components/circle_button.dart';
import 'package:fake_bank/ui/nubank/theme/colors.dart';
import 'package:fake_bank/ui/nubank/theme/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NubankHomePage extends StatefulWidget {
  const NubankHomePage({ Key? key }) : super(key: key);

  @override
  State<NubankHomePage> createState() => _NubankHomePageState();
}

class _NubankHomePageState extends State<NubankHomePage> {
  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size;

    return Scaffold(
      body: AppContainer(
        child: ListView(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              padding: const EdgeInsets.all(25.0),
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
                  const SizedBox(height: 40.0,),
                  const Text('Olá, Alexandre', style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                  ))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text('Conta', style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600
                    )),
                    trailing: Icon(Icons.navigate_next),
                  ),
                  Text('R\$ 0,00', style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600
                  ))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CircleButton(
                      child: Icon(
                        Icons.pix_outlined,
                        size: 24.0, 
                        color: Colors.black
                      ),
                      text: "Área Pix",
                    ),
                    CircleButton(
                      child: Icon(
                        NuIcons.ic_savings_global_action_pay,
                        size: 24.0, 
                        color: Colors.black
                      ),
                      text: "Pagar",
                    ),
                    CircleButton(
                      child: Icon(
                        NuIcons.ic_savings_global_action_transfer_out,
                        size: 24.0, 
                        color: Colors.black
                      ),
                      text: "Transferir",
                    ),
                    CircleButton(
                      child: Icon(
                        NuIcons.ic_savings_global_action_transfer_in,
                        size: 24.0, 
                        color: Colors.black
                      ),
                      text: "Depositar",
                    ),
                    CircleButton(
                      child: Icon(
                         NuIcons.nuds_ic_personal_loan,
                        size: 24.0, 
                        color: Colors.black
                      ),
                      text: "Empréstimos",
                    ),
                    CircleButton(
                      child: Icon(
                        NuIcons.ic_phone,
                        size: 24.0, 
                        color: Colors.black
                      ),
                      text: "Recarga de celular",
                    ),
                    CircleButton(
                      child: Icon(
                        NuIcons.nuds_ic_request_money,
                        size: 24.0, 
                        color: Colors.black
                      ),
                      text: "Cobrar",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: kBgButtonColor,
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
                icon: SvgPicture.asset('assets/icons/nubank/mobile.svg'), 
                label: const Text('  Meus cartões', style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600
                )),
                onPressed: (){}, 
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 25, 0, 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 250.0,
                      height: 100.0,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(14.0),
                      decoration: BoxDecoration(
                        color: kBgButtonColor,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            height: 1.4
                          ),
                          children: [
                            TextSpan(
                              text: 'Você tem até ',
                            ),
                            TextSpan(
                              text: 'R\$ 25.000,00 ',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w600
                              )
                            ),
                            TextSpan(
                              text: 'disponivel para empréstimo'
                            ),
                          ]
                        )
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Container(
                      width: 250.0,
                      height: 100.0,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(14.0),
                      decoration: BoxDecoration(
                        color: kBgButtonColor,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Text('Você tem até R\$ 25.000,00 disponivel para empréstimo', style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        height: 1.4
                      )),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 5.0,)
          ],
        ),
      ),
    );
  }
}