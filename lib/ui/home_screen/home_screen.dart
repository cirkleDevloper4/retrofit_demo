import 'package:demo/core/view_model/base_view.dart';
import 'package:flutter/material.dart';

import '../../core/view_model/home_screen/home_screen_view_model.dart';
import '../widget/textfrom_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeScreenViewModel? model;

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeScreenViewModel>(
      builder: (buildContext, model, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('DEMO')),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Center(
                  child: model.getPaymentStatus.paymentLinks == null
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          itemCount: model.getPaymentStatus.paymentLinks!.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                model.getPaymentStatus.paymentLinks![index].customer!.name.toString(),
                                style: const TextStyle(fontSize: 20),
                              ),
                            );
                          },
                        ),
                ),
                // customTextField(controller: null),
              ],
            ),
          ),
        );
      },
      onModelReady: (model) async {
        this.model = model;
        model.getPayment();
        model.postPayment();
      },
    );
  }
}
