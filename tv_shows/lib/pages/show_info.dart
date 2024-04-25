import 'package:flutter/material.dart';
import 'package:tv_shows/modules/show_module.dart';

class ShowInfo extends StatefulWidget {
  final Map<String, dynamic> showdata;

  const ShowInfo({Key? key, required this.showdata}) : super(key: key);

  @override
  State<ShowInfo> createState() => _ShowInfoState();
}

class _ShowInfoState extends State<ShowInfo> {
  @override
  Widget build(BuildContext context) {
    final data = widget.showdata;
    final show = ShowModule.fromJson(data);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Show Details",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Image
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(170),
                    child: Image(
                      image: NetworkImage(
                        "${show.image?.original}",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              // TV Show Tittle
              Center(
                child: Text(
                  "${show.name}",
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${show.premiered} ".substring(0, 4),
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    " | ${show.language} |",
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    " ${show.runtime}m |",
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Text(
                    " ${show.genres?[0]}",
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              //Story line of the Show
              Text(
                stripHtmlTags('${show.summary}'),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              // TV Show Information
              const Divider(),
              const SizedBox(height: 8),
              TVShowInfo(
                title: "Network",
                value: " ${show.network?.name}",
              ),
              const SizedBox(height: 8),
              TVShowInfo(
                title: "Country",
                value: " ${show.network?.country?.name}",
              ),
              const SizedBox(height: 8),
              TVShowInfo(
                title: "Schedule",
                value: " ${show.schedule?.days?[0]} at ${show.schedule?.time}",
              ),
              const SizedBox(height: 8),
              TVShowInfo(
                title: "Status",
                value: " ${show.status}",
              ),
              const SizedBox(height: 8),
              TVShowInfo(
                title: "Show Type",
                value: " ${show.type}",
              ),
              const SizedBox(height: 8),
              TVShowInfo(
                title: "Genres",
                value: " ${show.genres}",
              ),
              const SizedBox(height: 8),
              TVShowInfo(
                title: "Rating",
                value: " ${show.rating?.average}",
              ),
              const SizedBox(height: 8),
              TVShowInfo(
                title: "Official site",
                value: " ${show.officialSite}",
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class TVShowInfo extends StatelessWidget {
  final String title;
  final String value;
  const TVShowInfo({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: '$title :',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          )),
      TextSpan(
        text: ' $value',
      ),
    ]));
  }
}

//Function to remove any HTML tags from the HTML string
String stripHtmlTags(String htmlString) {
  RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
  return htmlString.replaceAll(exp, '');
}
