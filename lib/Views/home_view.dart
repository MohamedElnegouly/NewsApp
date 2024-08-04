import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categories_List_View.dart';
import '../widgets/News_List_View_Builder.dart';

class Home_view extends StatelessWidget {
  const Home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        //no shadow
        backgroundColor: Colors.transparent,
        //to be no color
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              ' News',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(
                child: SizedBox(
              height: 32,
            )),
            NewsListViewBuilder(
              category: 'general',
              country: 'eg',
            ),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoriesListView(),
        //     SizedBox(
        //       height: 33,
        //     ),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
