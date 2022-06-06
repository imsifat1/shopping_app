import 'package:ecommerce_app/widgets/sectionTitle.dart';
import 'package:flutter/material.dart';

class TopTrending extends StatelessWidget {
  const TopTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Column(
        children: [
          sectionTitle('Top Trending', 'Choose Category'),
          const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.red,

            tabs: <Widget>[
              Tab(
                text: 'All',
              ),
              Tab(
                text: 'Smart Watch',
              ),
              Tab(
                text: 'Headphones',
              ),Tab(
                text: 'Charger',
              ),Tab(
                text: 'Mobile Phones',
              ),Tab(
                text: 'Mobile Accessories',
              ),
            ],
          ),
          SizedBox(height: 10,),
          const SizedBox(
            height: 500,
            child: TabBarView(
              children: <Widget>[
                Center(
                  child: Text("All"),
                ),
                Center(
                  child: Text("Smart Watch"),
                ),
                Center(
                  child: Text("Headphones"),
                ),Center(
                  child: Text("Charger"),
                ),Center(
                  child: Text("Mobile Phones"),
                ),Center(
                  child: Text("Mobile Accessories"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
