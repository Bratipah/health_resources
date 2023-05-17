import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/repository.dart';
import 'widgets/articlesDetails.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          tooltip: 'Back',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                backgroundColor: Colors.lightBlue,
                content: Text(
                  "Return to previous page",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                )));
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Health Resources",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RepositoryProvider(
                        create: (context) => ArticleRepository(),
                        child: ArticlesDetails(),
                      )),
            ),
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset("assets/christin-hume-Hcfwew744z4-unsplash.jpg",),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Press Release".toUpperCase(),
                    // resourcename.toUpperCase(),
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 18,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "In this article, we'll explore how your approach to investing and finance may change at different stages of life and then offer some tips on how to adapt your investment strategy to meet your changing needs.",
                    // contenttext,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.remove_red_eye_sharp,
                            color: Colors.black26),
                        onPressed: () {
                          final snackBar = SnackBar(
                            content: Text("Views"),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                      Text(
                          "1265",
                          // views,
                          style: TextStyle(color: Colors.blue[900])
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.black26,
                          // didLike ? color: Colors.black26 : color:Colors.blue[900],
                        ),
                        onPressed: () {
                          final snackBar = SnackBar(
                            content: Text("Likes"),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                      Text(
                        "4",
                        // likes,
                        style: TextStyle(color: Colors.blue[900]),
                      ),
                    ],
                  ),
                  Divider(thickness: 1),
                ],
              );
            })
          )),
    );
  }
}
