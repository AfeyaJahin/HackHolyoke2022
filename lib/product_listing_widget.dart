// need to create/modify app theme for lending app
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ecomm_app/app_theme.dart';
import 'package:ecomm_app/bloc/event/cart_event.dart';
import 'package:ecomm_app/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// for cart
import 'bloc/cart_bloc.dart';
import 'bloc/state/cart_state.dart';
import 'models/product.dart';

class ProductListingWidget extends StatefulWidget {
  const ProductListingWidget({Key? key}) : super(key: key);

  @override
  _ProductListingWidgetState createState() => _ProductListingWidgetState();
}

// TO DO: style UI, change colors and text (App Theme and in code)
class _ProductListingWidgetState extends State<ProductListingWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool isSearchStarted = false;

  // product list
  // consider replacing with read from database
  List<Product> searchedProducts = [];

  // TO DO: add our products
  final List<Product> products = [
    Product(
        id: 1,
        name: 'Cracking the Coding Interview',
        category: 'books',
        image:
            'https://i.ebayimg.com/images/g/OQ4AAOSweXdfBiAy/s-l500.jpg',
        price: 10,
        period: 'week',
        condition: 'fair',
        lenderName: 'Angel Ebebi',
        lenderContact: 'angel24e@mtholyoke.edu'),
    Product(
        id: 2,
        name: 'Introduction to Algorithms',
        category: 'books',
        image:
            'https://medium.com/craft-academy/introduction-to-algorithms-chapter-two-part-one-fe76fe513024',
        price: 2,
        period: '1 day',
        condition: 'fair',
        lenderName: 'Mary Lyon',
        lenderContact: 'lyon18m@mtholyoke.edu'),
    Product(
        id: 3,
        name: 'Girl Decoded',
        category: 'books',
        image:
            'https://m.media-amazon.com/images/I/71rbFzJKahL._CR0,133,800,800_UX256.jpg',
        price: 0,
        period: 'week',
        condition: 'new',
        lenderName: 'Mary Lyon',
        lenderContact: 'lyon18m@mtholyoke.edu'),
    Product(
        id: 4,
        name: 'Dr. Martens',
        category: 'clothes',
        image:
            'https://i.etsystatic.com/8377697/r/il/3a3ec3/4321900376/il_794xN.4321900376_ad4s.jpg',
        price: 3,
        period: '2 days',
        condition: 'used',
        lenderName: 'Mary Lyon',
        lenderContact: 'lyon18m@mtholyoke.edu'),
    Product(
        id: 5,
        name: 'Baking Sheet',
        category: 'cooking',
        image:
            'https://i.ebayimg.com/images/g/qBQAAOSwOaperLsR/s-l500.jpg',
        price: 0,
        period: '3 days',
        condition: 'used',
        lenderName: 'Mary Lyon',
        lenderContact: 'lyon18m@mtholyoke.edu'),
    Product(
        id: 6,
        name: 'Calculus I Tutoring',
        category: 'tutoring',
        image:
            'https://cdntrust.s3.us-east-2.amazonaws.com/images/247a5dff-c606-436a-bdb3-8d8caf66e1f6.jpg',
        price: 15,
        period: '1',
        condition: 'great',
        lenderName: 'Mary Lyon',
        lenderContact: 'lyon18m@mtholyoke.edu'),
    Product(
        id: 7,
        name: 'Ride to Bradley',
        category: 'transportation',
        image:
            'https://www.afoodiestaysfit.com/wp-content/uploads/2020/06/9A9E9994-FADE-4B2A-BC7E-87C855E25D85.jpg',
        price: 45,
        period: '1 ride',
        condition: '',
        lenderName: 'Mary Lyon',
        lenderContact: 'lyon18m@mtholyoke.edu'),
    Product(
        id: 8,
        name: 'Dog Walking',
        category: 'Pet Services',
        image:
            'https://i.guim.co.uk/img/media/73658dd39bf0d9cbee60add383acd3edccef4955/0_318_5340_3205/master/5340.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=28481a15a5a72f76fa029fc867771958',
        price: 5,
        period: '1 hour',
        condition: 'great',
        lenderName: 'Mary Lyon',
        lenderContact: 'lyon18m@mtholyoke.edu'),
    Product(
        id: 9,
        name: 'Hair Braiding',
        category: 'beauty',
        image:
            'https://i.pinimg.com/736x/ba/37/69/ba3769a87413aa933f935ecb27913472.jpg',
        price: 50,
        period: '3 hours',
        condition: 'great',
        lenderName: 'Mary Lyon',
        lenderContact: 'lyon18m@mtholyoke.edu'),
  ];

  @override
  void initState(){
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      // navbar
      appBar: AppBar(
        title: Text(
          'All Products and Services',
          style: AppTheme.of(context).title1,
        ),
        elevation: 0;
        backgroundColor: Colors.white,
        actions: <Widget>[
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: TextButton.icon(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: (){
                    //Navigator.pushNamed(context, CartPage.routeName);
                  },
                  icon: Icon(Icons.shopping_cart),
                  label: Text(''),
                  key: Key('cart'),
                ),
              ),
            ],
          ),
        ],
      ),
      // Search bar
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 50,
              decoration: BoxDecoration(
                color: AppTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppTheme.of(context).primaryBackground,
                  width: 2,
                ),
              ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                    // search icon
                    child: Icon(
                      Icon.search_rounded,
                      color: Color(0xFF95A1AC),
                      size: 24,
                    ),
                  ),
                  // search input
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: TextFormField(
                        controller: textController,
                        obscureText: false,
                          onChanged: (_) => EasyDebounce.debounce(
                            'tFMemberController',
                            Duration(milliseconds: 0),
                            () {
                              // search starts if user inputs something in search bar
                              isSearchStarted = textController!.text.isNotEmpty && textController!.text.trim().length > 0;
                              print('isSearchStarted $isSearchStarted');
                              if (isSearchStarted) {
                                print('${textController!.text.trim()}');
                                searchedProducts = products
                                    .where((item) => item.name.toLowerCase().contains(textController!.text.trim().toLowerCase()))
                                    .toList();
                              }
                              setState(() {});
                            },
                          ),
                          // Search bar default text
                          decoration: InputDecoration(
                            labelText: 'Search product here...',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,                            
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style: AppTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF95A1AC),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // enable switch from grid view to list view
                  BlockBuilder<CartBloc, CartState>(builder: (_, cartState){
                    bool isGidView = cartState.isGridView;
                    return IconButton(
                      onPressed: (){
                        BlocProvider.of<CartBloc>(context).add(ChangeGallaryView(!isGridView));
                      },
                      icon: !isGridView ? Icon(Icons.grid_on) : Icon(Icons.list));  
                }),
              ],
            ),
          ),
          Expanded(
            child: ProductList(
              products: isSearchStarted ? searchProducts : products,
            ),
          ),
        ],
      ),
    );
  }
}