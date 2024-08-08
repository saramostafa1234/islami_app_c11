import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c11/core/setting_prov.dart';
import 'package:islami_app_c11/moduls/hadith/hadith_view.dart';
import 'package:islami_app_c11/moduls/quran/quran_view.dart';
import 'package:islami_app_c11/moduls/radio/radio_view.dart';
import 'package:islami_app_c11/moduls/sebha/sebha_view.dart';
import 'package:islami_app_c11/moduls/settings/settings_view.dart';
import 'package:provider/provider.dart';

class LayOutView extends StatefulWidget {
  static const String routeName = "Layouts";

  LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {
  int selectedIndex = 0;
  List<Widget> screensList = [
    QuranView(),
    HadithView(),
    SebhaView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(provider.getBackgroundImage()),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            lang.islami,
          ),
        ),
        body: screensList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/quran-quran-svgrepo-com.png'),
              ),
              label: lang.quran,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/moshaf_gold@3x.png'),
              ),
              label: lang.hadith,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/sebha_blue.png'),
              ),
              label: lang.tasbeh,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/icons/radio.png'),
              ),
              label: lang.radio,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: lang.settings,
            ),
          ],
        ),
      ),
    );
  }
}
