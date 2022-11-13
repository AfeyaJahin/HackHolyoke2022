import 'package:flutter/material.dart';
import 'package:lending_app/models/item.dart';

import '../bloc/bloc.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt() - 40;
    int height = MediaQuery.of(context).size.height.toInt() - 40;

    List<Item> items = [Item.d, Item.a, Item.f];
    // print(items.length);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: width * 0.5,
              height: height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<ProductsBloc>().add(const FinishEvent());
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Continue Shopping',
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.grey,
                    height: 40,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Shopping Cart',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You have ${items.length} items in your cart',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      // print(items[index].toString());
                      return Card(
                        shadowColor: Colors.black,
                        elevation: 10,
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(
                                image: NetworkImage(
                                  items[index].image,
                                ),
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                              Text(
                                items[index].name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Colors.black),
                              ),
                              Text(
                                '\$${items[index].price}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Colors.black),
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      items.removeAt(index);
                                    });
                                  },
                                  icon: const Icon(Icons.delete)),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.4,
              height: height * 1.0,
              // color: const Color.fromRGBO(86, 90, 187, 1),
              child: Stack(children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage('images/checkout_page.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<ProductsBloc>().add(const GoToCheckOutEvent());
                  },
                  child: const Align(
                    alignment: Alignment(0, 0.9),
                    child: Image(
                      image: AssetImage('images/checkout_button.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ]),
              // child: Column(
              // children: [
              // Row(
              // children: const [
              //   Text(
              //     'Product',
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   SizedBox(
              //     width: 20,
              //   ),
              //   Text(
              //     'Quantity',
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              //   SizedBox(
              //     width: 20,
              //   ),
              //   Text(
              //     'Price',
              //     style: TextStyle(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //     ),
              //   ),
              // ],
              // )
              // ],
              // ),
            )
          ],
        ),
      ),
    );
  }
}
