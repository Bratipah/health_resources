import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

// import 'package:health_resources/core/features/healthResources/domain/models/article_model.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_blocs.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_events.dart';
import 'package:health_resources/core/features/healthResources/domain/repository/repository.dart';
import 'package:health_resources/core/features/healthResources/presentation/blocs/article_states.dart';
import 'package:flutter_html/flutter_html.dart';
import '../comments.dart';

class ArticlesDetails extends StatefulWidget {
  const ArticlesDetails({Key? key}) : super(key: key);

  @override
  State<ArticlesDetails> createState() => _ArticlesDetailsState();
}

class _ArticlesDetailsState extends State<ArticlesDetails> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArticleBloc(
        RepositoryProvider.of<ArticleRepository>(context),
      )..add(LoadArticleEvent()),
      child: Scaffold(
        extendBody: true,
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
          title: Text(
            "Press Release",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        body: BlocBuilder<ArticleBloc, ArticleState>(builder: (context, state) {
          // final ArticleRepository articleRepository;

          if (state is ArticleLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ArticleLoadedState) {
            // List<ArticleModel> articles = state.articles;
            // TextEditingController commentController = TextEditingController();
            // TextEditingController likeController = TextEditingController();
            return Container(
              padding: EdgeInsets.all(10),
              child: Stack(
                children: [
                  LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return SizedBox(
                      height: constraints.maxHeight / 1.1,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Press Release".toUpperCase()),
                            // Text(resourcename.toUpperCase()),
                            Text("By Reynolds Rein"),
                            // Text(user_id),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Last Updated 23/02/2023"),
                                // Text(updated_at),
                                IconButton(
                                  onPressed: () {
                                    final snackBar = SnackBar(
                                      content: Text("1265 view(s)"),
                                      // content: Text("$views view(s)"),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  },
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              "assets/christin-hume-Hcfwew744z4-unsplash.jpg",
                              // imageurl
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                            IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(Icons.chat_bubble_outlined,
                                      color: Colors.black26),
                                  Text(
                                    "Comments(10)",
                                    // "Comments($comments)",
                                  ),
                                  VerticalDivider(
                                    color: Colors.black26,
                                    thickness: 2,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.blue[900],
                                  ),
                                  Text("Likes(4)"
                                      // "Likes($likeController)"
                                      ),
                                ],
                              ),
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            // Html(
                            //     data: "<p>Global natural gas prices tumbled in the second half of 2022, from the heights reached in August. Unseasonably warm weather, improved energy efficiency, and behavioral changes in gas consumption contributed to the decline. A reduction in Russian natural gas production and exports to Europe took place, "
                            //         "and shifting LNG trade help fill the gap in European supply. "
                            //         "Lower demand and strong LNG inflows resulted in European natural gas inventories being at a record high for this time of the year. "
                            //         "The outlook for 2023 will depend on the speed of China’s reopening as well as LNG market dynamics.Natural gas prices saw large falls and were exceptionally volatile in the second half of 2022, driven by dynamics in the European markets.</p> <b>read more</b>"),
                            Text(
                                "Global natural gas prices tumbled in the second half of 2022, from the heights reached in August. Unseasonably warm weather, improved energy efficiency, and behavioral changes in gas consumption contributed to the decline. A reduction in Russian natural gas production and exports to Europe took place, "
                                "and shifting LNG trade help fill the gap in European supply. "
                                "Lower demand and strong LNG inflows resulted in European natural gas inventories being at a record high for this time of the year. "
                                "The outlook for 2023 will depend on the speed of China’s reopening as well as LNG market dynamics.Natural gas prices saw large falls and were exceptionally volatile in the second half of 2022, driven by dynamics in the European markets. "
                                "The European gas price has fallen more than 70% after reaching an all-time high in August 2022 and is now below its price prior the end of 2021 Q3. In the United States, prices have dropped to an 18-month low, a stark turnaround from last year when they reached their highest level since 2008. In Japan, the benchmark reached an all-time high in September 2022; this benchmark remains high due to the predominance of contracted prices. Historically, regional gas benchmarks differ significantly, largely due to transportation constraints, although price gaps have narrowed in recent years due to rising flows of LNG. The war in Ukraine changed this underlying dynamic by impacting trade flows and benchmarks worldwide. Russian natural gas production was 15% lower than the 2017-21 average in the latter half of 2022 as Russia's was unable to redirect its pipeline exports "
                                " average. U.S. exports, however, have been limited by the continued outage of the Freeport LNG export terminal and this has put downward pressure on prices. "
                                "LNG trade underwent a marked redirection in 2022 as EU demand for LNG surged to replace Russian pipeline imports. "
                                "Amid high European prices, global LNG cargoes were redirected to Europe. In the third quarter of 2022, two-thirds of US LNG exports went to Europe, "
                                "which was three times more than in 2021Q3. Meanwhile, China’s LNG imports were 85% lower as demand for natural gas shrank due to COVID-19 restrictions, helping to ease the shortage of LNG. Nonetheless, "
                                "the surge in demand for LNG from Europe reduced the amount available for other countries like Bangladesh and Pakistan, leading to electricity outages. "
                                "Risks to the natural gas outlook. Futures markets predict lower natural gas prices in 2023, but higher than the 2017-21 average until end-2026.  "
                                "This may change with the ongoing conflict in Ukraine, potential reductions in Russian pipeline exports to Europe (still 10% of Europe's supply), and increased global competition for LNG as China lifts its lockdown policies. "
                                "In the longer term, the drop in demand for Russian gas and shifts in LNG trade are expected to continue due to increased focus on energy security in Europe. This is driving diversification of energy sources, for example, Europe will boost LNG import capacity by 40 bcm by 2023 and increase investment in renewable energy. "),
                            Divider(
                              thickness: 1,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text("Up next"),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/christin-hume-Hcfwew744z4-unsplash.jpg",
                                  // imageurl
                                  height: 100,
                                  width: 70,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Lest We Forget .......".toUpperCase(),
                                  // "$resourcename .......".toUpperCase(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              "Recent Comment",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.3),
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Stack(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Comments()),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 25, vertical: 20),
                                        padding: EdgeInsets.all(20),
                                        height: 95,
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.black12.withOpacity(0.1),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "awesome",
                                              // content,
                                              style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w200,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                "23-09-2021",
                                                // updated_at,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w200),
                                              ),
                                            ),
                                            Text(
                                              "Bratipah Kioko",
                                              // user_id,
                                              style: TextStyle(
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              spreadRadius: 2,
                                              blurRadius: 10,
                                              color: Colors.black26
                                                  .withOpacity(0.2),
                                            )
                                          ],
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "assets/large_half_engineer_and_half_ai_person_47b8c9f24d.png"),
                                          )),
                                    ),
                                    Positioned(
                                      right: 25.0,
                                      bottom: 8.0,
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            color: Colors.white,
                                            border: Border.all(
                                                width: 0.5,
                                                color: Colors.black12)),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              size: 20,
                                              color: Colors.blue[900],
                                            ),
                                            Text(
                                                // " $likeController likes"
                                                " 2 likes"),
                                            // Text(" ${likes.length} likes"),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ],
              ),
            );
          }
          if (state is ArticleErrorState) {
            return Center(
              child: Text("Error 404"),
            );
          }
          return SizedBox();
        }),
      ),
    );
  }
}
