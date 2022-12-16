import 'package:client/core/views/blogs_detail_view/blogs_detail.view.dart';
import 'package:client/core/views/blogs_view/blogs.viewmodel.dart';
import 'package:client/core/views/blogs_view/widgets/blog_model.dart';
import 'package:flutter/material.dart';

class BlogsListTile extends StatefulWidget {
  BlogsListTile(this.data, {Key? key}) : super(key: key);
  BlogsData data;
  @override
  State<BlogsListTile> createState() => _BlogsListTileState();
}

class _BlogsListTileState extends State<BlogsListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlogsDetailView(widget.data),
            ));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20.0),
        padding: EdgeInsets.all(12.0),
        height: 130,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(26.0),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 5,
              child: Column(
                children: [
                  Text(
                    widget.data.title!,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    widget.data.content!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Flexible(
              flex: 3,
              child: Hero(
                tag: "${widget.data.title}",
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(widget.data.urlToImage!),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
