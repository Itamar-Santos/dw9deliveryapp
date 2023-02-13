import 'package:aberturadartweek/app/core/delivery_button.dart';
import 'package:aberturadartweek/app/core/ui/helpers/size_extensions.dart';
import 'package:aberturadartweek/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OrderCompletedPage extends StatelessWidget {
  const OrderCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: context.percentHeight(.2),
              child: Image.asset('assets/images/logo_rounded.png'),
            ),
            Text(
              'Pedido realizado com sucesso, em breve você receberá a confirmação do seu pedido',
              textAlign: TextAlign.center,
              style: context.textStyles.textExtraBold.copyWith(fontSize: 18),
            ),
            SizedBox(
              height: 40,
              child: DeliveryButton(
                width: context.percentWidth(.8),
                label: 'FECHAR', onPressed: () {
                  Navigator.pop(context); 
                }),
            ),
          ],
        ),
      ),
    );
  }
}
