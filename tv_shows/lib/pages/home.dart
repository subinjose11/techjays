import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:tv_shows/pages/show_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<dynamic>> getShows() async {
    try {
      final res = await http.get(Uri.parse('https://api.tvmaze.com/shows'));
      final List<dynamic> data = jsonDecode(res.body);
      return data;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TV Shows",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
        future: getShows(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          final List<dynamic> data = snapshot.data as List<dynamic>;

          return Padding(
            padding: const EdgeInsets.all(2),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final show = data[index];

                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    child: Card(
                      elevation: 15,
                      child: GridTile(
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Ink.image(
                            image: NetworkImage(
                              "${show['image']['medium']}",
                            ),
                            fit: BoxFit.fill,
                            child: InkWell(onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ShowInfo(jsondata: show)),
                              );
                            }),
                          ),
                          Text(
                            "${show['name']}",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
