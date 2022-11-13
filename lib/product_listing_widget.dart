import 'package:easy_debounce/easy_debounce.dart';
// need to create app theme for lending app
import 'package:lending_app/app_theme.dart';
import 'package:lending_app/bloc/event/cart_event.dart';
import 'package:lending_app/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// for cart
import 'bloc/cart_bloc.dart';
import 'bloc/state/cart_state.dart';
import 'models/products.dart';

class ProductListingWidget extends StatefulWidget{
  const ProductListingWidget({Key? key}) : super(key: key);
  
  @override 
  _ProductListingWidgetState createState() => _ProductListingWidgetState();
}

// TO DO: style UI, change colors and text (App Theme and in code)
class ProductListingWidget extends State<ProductListingWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // product list
  // consider replacing with read from database
  List<Product> searchedProducts = [];

  // TO DO: add our products
  final List<Product> products = [
    Product(
        id: 1,
        name: 'Champion',
        image:
            'https://images.unsplash.com/photo-1606107557195-0e29a4b5b4aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
        price: 55.5),
    Product(
        id: 2,
        name: 'Stark',
        image:
            'https://images.unsplash.com/photo-1549298916-b41d501d3772?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1624&q=80',
        price: 65.5),
    Product(
        id: 3,
        name: 'Coloury',
        image:
            'https://images.unsplash.com/photo-1604671801908-6f0c6a092c05?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        price: 75.5),
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