import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/articles_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleMoldel});

  final ArticleMoldel articleMoldel;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6), bottomLeft: Radius.circular(6))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              // cashed network internet
              child: Image.network(
                articleMoldel.image!,
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            articleMoldel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            articleMoldel.subTitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.black54, fontSize: 14),
          )
        ],
      ),
    );
  }
}

void imageError() {
  Image.network(
      'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.drupal.org%2Fproject%2Fmedia_colorbox%2Fissues%2F1606792&psig=AOvVaw3OT_FXiBbtE_Yj51-e4HIj&ust=1722786103396000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNDs_8eU2YcDFQAAAAAdAAAAABAE');
}
