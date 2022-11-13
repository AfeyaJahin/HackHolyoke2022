import 'package:flutter/material.dart';
import 'package:lending_app/products/bloc/bloc.dart';

class ConfirmOrder extends StatefulWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

  @override
  State<ConfirmOrder> createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  final List<String> causes = [
    'Help an International Student to get to college',
    "Help Black queer African woman afford mental health services and a computer",
    "Alvar (Service dog) training support",
    "Help Meghadeepa Thrive and finish School",
    "Help Perez Family Recover from Hurricane Fiona",
    "Help a single mother of 3 get back on her feet",
  ];
  final List<bool> _selected = List.generate(6, (i) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Order Confirmed',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '"You are one step away from helping a fellow community member.\n Please select a mutual aid you want percentage of your purchase to go to."',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 1000,
                height: 350,
                child: ListView.builder(
                  itemCount: causes.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        tileColor: _selected[index] ? Colors.greenAccent : null,
                        onTap: () => setState(
                            () => _selected[index] = !_selected[index]),
                        title: Center(
                          child: Text(
                            causes[index],
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 250,
                height: 80,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  onPressed: () {
                    context.read<ProductsBloc>().add(const FinishEvent());
                  },
                  child: Text(
                    'Confirm Order',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
