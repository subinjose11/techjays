import 'package:flutter/material.dart';
import 'package:tv_shows/pages/show_info.dart';
import 'package:tv_shows/services/show_api.dart';

import '../modules/show_module.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TV Shows",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder<List<ShowModule>>(
        future: ShowApi().getShows(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          final List<ShowModule>? everyShow = snapshot.data;

          //Body of UI ,Grid View for each Shows
          return everyShow != null
              ? Padding(
                  padding: const EdgeInsets.all(2),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: everyShow.length,
                    itemBuilder: (context, index) {
                      final eachshow = everyShow[index];

                      return Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                            child: Card(
                              elevation: 15,
                              child: GridTile(
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Ink.image(
                                        image: NetworkImage(
                                          "${eachshow.image?.medium}",
                                        ),
                                        fit: BoxFit.fill,
                                        child: InkWell(onTap: () async {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => ShowInfo(
                                                    showdata: eachshow)),
                                          );
                                        }),
                                      ),
                                      Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.black54,
                                        ),
                                        child: Text(
                                          "${eachshow.name}",
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : const SizedBox();
        },
      ),
    );
  }
}
