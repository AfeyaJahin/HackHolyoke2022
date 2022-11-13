export 'products_body.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Item {
  const Item(this.name, this.price, this.image);
  final String name;
  final String price;
  final String image;

  static get a {
    return const Item('Used Doc Martens Boots', '80',
        'https://cdn2.stylicy.com/global/image-1223-238966045-1-big-hr.jpg');
  }

  static get b {
    const Item('Introduction to Algorithms Book', '10 for 4 months',
        'https://media.karousell.com/media/photos/products/2020/6/11/bnib_introduction_to_algorithm_1591879552_3c11ed06_progressive.jpg');
  }

  static get c {
    const Item('Zara Suit Set', '10 for 7 days',
        'https://static.zara.net/photos///2022/I/0/2/p/0340/305/527/2/w/1920/0340305527_2_1_1.jpg');
  }

  static get d {
    const Item('Zara Suit Set', '10 for 7 days',
        'https://static.zara.net/photos///2022/I/0/2/p/0706/314/403/2/w/438/0706314403_2_1_1.jpg?ts=1654848607207');
  }

  static get e {
    const Item('Calculus 1 Tutor', '20 for 1 hour',
        'https://p.tutorme.click/media/e04e3889e26b58d5806518d22f690b9e.jpeg');
  }

  static get f {
    const Item('Ride to Bradley', '45',
        'https://www.intelligenttransport.com/wp-content/uploads/ola-1-750x450.jpg');
  }

  static List<Item> get getItems {
    return const <Item>[
      Item('Used Doc Martens Boots', '80',
          'https://media.karousell.com/media/photos/products/2021/4/11/used_dr_martens_boots_1618116431_d7777ad1.jpg'),
      Item('Introduction to Algorithms Book', '10 for 4 months',
          'https://media.karousell.com/media/photos/products/2020/6/11/bnib_introduction_to_algorithm_1591879552_3c11ed06_progressive.jpg'),
      Item('Zara Suit Set', '10 for 7 days',
          'https://i.ebayimg.com/images/g/m3kAAOSwcCljArI1/s-l400.jpg'),
      Item('Dogwalking', '20 for 1 hour',
          'https://blog.petloverscentre.com/wp-content/uploads/2020/06/Darren-walking-dogs.jpg'),
      Item('Calculus 1 Tutor', '20 for 1 hour',
          'https://images.squarespace-cdn.com/content/v1/5c44ea9771069967effbe11d/19e48791-1ea1-4296-91b1-fd754c9ea328/tutor.jpg'),
      Item('Dog Walking', '50 for 3 hours',
          'https://nationaltoday.com/wp-content/uploads/2022/01/National-Dog-Walker-Appreciation-Day.jpg'),
      Item('Ride to Bradley', '45',
          'https://www.goget.com.au/wp-content/uploads/2018/05/Three-young-people-sharing-the-back-seat-of-a-car-carpooling-their-way-to-work-this-is-carpooling-rather-than-car-sharing-what-is-carpool.jpg'),
      Item('Professional Makeup Kit', '90',
          'https://m.media-amazon.com/images/I/810HhM5SC6L._AC_SL1500_.jpg'),
    ];
  }
}

class ProductSellPage extends StatefulWidget {
  const ProductSellPage({Key? key}) : super(key: key);

  @override
  State<ProductSellPage> createState() => _ProductSellPageState();
}

class _ProductSellPageState extends State<ProductSellPage> {
  late TextEditingController _searchQueryController;
  String searchQuery = "";
  String menuValue = "All";

  @override
  void initState() {
    super.initState();
    _searchQueryController = TextEditingController();
  }

  @override
  void dispose() {
    _searchQueryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const Text('Cup of Sugar'),
            const SizedBox(width: 20),
            SizedBox(
              width: 570,
              child: TextField(
                onSubmitted: (value) {},
                controller: _searchQueryController,
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  labelStyle: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  fillColor: Colors.grey,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/logo.png', fit: BoxFit.contain),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30,
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person_rounded,
              color: Colors.black,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 40,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            color: Colors.grey[100],
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text('Home',
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const SizedBox(width: 10),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text('Categories',
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const SizedBox(width: 10),

                  // const SizedBox(width: 10),
                  PopupMenuButton(
                    // style: Theme.of(context).textTheme.headline6,
                    itemBuilder: (context) => const [
                      PopupMenuItem(
                        value: 'All',
                        child: Text('All'),
                      ),
                      PopupMenuItem(value: 'Beauty', child: Text('Beauty')),
                      PopupMenuItem(value: 'Tutoring', child: Text('Tutoring')),
                      PopupMenuItem(
                          value: 'Pet Services', child: Text('Pet Services')),
                      PopupMenuItem(
                          value: 'Transportation',
                          child: Text('Transportation')),
                      PopupMenuItem(value: 'Gear', child: Text('Gear')),
                      PopupMenuItem(value: 'Apparel', child: Text('Apparel')),
                      PopupMenuItem(value: 'Books', child: Text('Books')),
                      PopupMenuItem(value: 'Others', child: Text('Others')),
                    ],
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    ),
                    onSelected: (value) {
                      setState(() {
                        menuValue = value.toString();
                      });
                    },
                  ),
                  const SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Text(menuValue,
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  const SizedBox(width: 770),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text('Add a service or product',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.black)),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle_outline,
                        color: Colors.black,
                        size: 30,
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            const SizedBox(
              width: 200,
              height: 800,
              child: Align(
                  alignment: Alignment(0, 0.0),
                  child: Image(
                    image: AssetImage('images/side_menu.png'),
                    width: 200,
                    height: 800,
                    fit: BoxFit.fill,
                  )),
            ),
            const SizedBox(width: 50),
            SizedBox(
              width: 950,
              height: 1000,
              child: CustomScrollView(
                  slivers: [UserView(items: Item.getItems)], shrinkWrap: true),
            ),
          ],
        ),
      ),
    );
  }
}

class UserView extends StatelessWidget {
  const UserView({required this.items, Key? key}) : super(key: key);
  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300.0,
        mainAxisExtent: 290.0,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        ((context, index) {
          return UserViewBox(
            item: items[index],
          );
        }),
        childCount: items.length,
      ),
    );
  }
}

// One Box - SliverGridBox
class UserViewBox extends StatefulWidget {
  const UserViewBox({required this.item, Key? key}) : super(key: key);
  final Item item;

  @override
  State<UserViewBox> createState() => _UserViewBoxState();
}

class _UserViewBoxState extends State<UserViewBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          // count++;
          // TODO: Update count
        });
        // get friend data from user id
        // FriendPage.route(FriendData.janeDoeData);
      },
      child: Stack(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Container(
              margin: const EdgeInsets.all(4.0),
              height: 300.0,
              width: 200.0,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.black, Colors.black])
                      .createShader(
                          Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image(
                    image: NetworkImage(widget.item.image), fit: BoxFit.fill),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(1, 1),
            child: Container(
              margin: const EdgeInsets.all(4.0),
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                    size: 20,
                  )),
            ),
          ),
          Align(
              alignment: const Alignment(-0.8, 0.8),
              child: Text(
                widget.item.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              )),
          Align(
              alignment: const Alignment(-0.8, 0.96),
              child: Text(
                "\$${widget.item.price}",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
