import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../model/category_model.dart';
import '../model/product_model.dart';
import '../ui_item/category_tile.dart';
import '../ui_item/product_tile.dart';
import 'category_open_page.dart';
import 'general_ui_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    List<Widget> bodyList = [
      buildActionButtons(),
      buildCategoryGrid(),
      buildListedProducts(),
    ];
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200,
          elevation: 8,
          backgroundColor: Colors.green,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Text(
                      "What are you looking for?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 24,
                      ),
                    ),
                    Spacer(),
                    Card(
                      elevation: 0,
                      child: TextField(
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "Type your search here",
                          prefixIcon: Icon(
                            Icons.search,
                            size: 16,
                          ),
                          suffixIcon: Icon(
                            Icons.settings_input_component,
                            color: Colors.green,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            bodyList,
          ),
        )
      ],
    );
  }

  Widget buildListedProducts() {
    return Wrap(
      // shrinkWrap: true,
      children: List.generate(
          15,
          (index) => ProductTile(
                product: ProductModel(
                  imageUrl:
                      "https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW50ZXJpb3IlMjBkZXNpZ258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                  address: "Lagos",
                  price: "200,000",
                  title: "MacBook 2019",
                  uploadDate: "July 9",
                ),
              )),
    );
  }

  Widget buildCategoryGrid() {
    return GridView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(0),
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        childAspectRatio: 1,
      ),
      children: List.generate(
        15,
        (index) {
          return InkWell(
            onTap: () {
              pushRoute(context, CategoryOpenPage());
            },
            child: CategoryTile(
              category: CategoryModel("Books",
                  "https://images.unsplash.com/photo-1532007271951-c487760934ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80"),
            ),
          );
        },
      ),
    );
  }

  Widget buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: CarouselSlider(
          items: [
            actionButtons(
                "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aG9tZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60",
                Icons.home,
                "Home"),
            actionButtons(
                "https://images.unsplash.com/photo-1618220179428-22790b461013?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW50ZXJpb3IlMjBkZXNpZ258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60",
                Icons.home,
                "Home"),
            actionButtons(
                "https://images.unsplash.com/photo-1532007271951-c487760934ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80",
                Icons.home,
                "Home"),
          ],
          options: CarouselOptions(
            height: 200,
            scrollDirection: Axis.horizontal,
          ),
        ),
        // Swiper(
        //   itemCount: 3,
        //   itemBuilder: (context, index) => Image.network(
        //       "assets/img${index + 1}.jpg",
        //       height: MediaQuery.of(context).size.height * .3,
        //       width: double.infinity,
        //       fit: BoxFit.fill),
        // ),
      ),
    );
  }

  Widget actionButtons(String imgUrl, IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
            imgUrl,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            horizontalSpace(),
            Expanded(
                child: Text(
              title,
              style: TextStyle(color: Colors.white),
            )),
          ],
        ),
      ),
    );
  }
}
