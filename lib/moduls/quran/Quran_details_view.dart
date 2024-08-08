import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c11/core/setting_prov.dart';
import 'package:islami_app_c11/moduls/quran/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeNames = "QuranDetails";

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as SuraData;
    var provider = Provider.of<SettingsProvider>(context);
    if (content.isEmpty) loadQuranData(data.suraNumber);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.getBackgroundImage()),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Container(
          margin: EdgeInsets.only(
            top: 10,
            left: 30,
            right: 30,
            bottom: 80,
          ),
          padding: EdgeInsets.only(
            top: 30,
            left: 30,
            right: 30,
            bottom: 80,
          ),
          decoration: BoxDecoration(
              color: provider.isDark()
                  ? const Color(0xFF141A2E).withOpacity(0.8)
                  : const Color(0xFFF8F8F8).withOpacity(0.8),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سوة${data.suraName}",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: provider.isDark()
                          ? theme.primaryColorDark
                          : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.play_circle_fill_rounded,
                    color: provider.isDark()
                        ? theme.primaryColorDark
                        : Colors.black,
                  ),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "{${index + 1}${versesList[index]}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: provider.isDark()
                            ? theme.primaryColorDark
                            : Colors.black,
                      ),
                    ),
                  ),
                  itemCount: versesList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String content = "";
  List<String> versesList = [];
  Future<void> loadQuranData(String suraNumber) async {
    content =
        await await rootBundle.loadString("assets/files/quran/$suraNumber.txt");
    versesList = content.split("\n");
    setState(() {});
  }
}
