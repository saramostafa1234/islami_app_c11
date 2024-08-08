import 'package:flutter/material.dart';
import 'package:islami_app_c11/moduls/hadith/hadith_view.dart';
import 'package:provider/provider.dart';

import '../../core/setting_prov.dart';

class HadithDetailsView extends StatelessWidget {
  static const String routeName = "HadithDetails";

  const HadithDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as HadithData;
    var provider = Provider.of<SettingsProvider>(context);

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
              Text(
                data.title,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color:
                      provider.isDark() ? theme.primaryColorDark : Colors.black,
                ),
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      data.bodyContent,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: provider.isDark()
                            ? theme.primaryColorDark
                            : Colors.black,
                      ),
                    ),
                  ),
                  itemCount: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
