import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_c11/core/setting_prov.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  List<String> _language = ["English", "عربي"];
  List<String> _themes = ["light", "Dark"];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lang.language,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: _language,
            initialItem:
                provider.currentLanguage == "en" ? _language[0] : _language[1],
            onChanged: (value) {
              if (value == "English") {
                provider.changeCurrentLanguage("en");
              }
              if (value == "عربي") {
                provider.changeCurrentLanguage("ar");
              }
              log('changing value to: $value');
            },
            decoration: CustomDropdownDecoration(
              closedFillColor:
                  provider.isDark() ? Color(0xFF141A2E) : Colors.white,
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color:
                    provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedFillColor:
                  provider.isDark() ? Color(0xFF141A2E) : Colors.white,
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color:
                    provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            lang.theme_mode,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: _themes,
            initialItem: provider.currentThemeMode == ThemeMode.dark
                ? _themes[0]
                : _themes[1],
            onChanged: (value) {
              if (value == "light") {
                provider.changeCurrentTheme(ThemeMode.light);
              }
              if (value == "Dark") {
                provider.changeCurrentTheme(ThemeMode.dark);
              }
              log('changing value to: $value');
            },
            decoration: CustomDropdownDecoration(
              closedFillColor:
                  provider.isDark() ? Color(0xFF141A2E) : Colors.white,
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color:
                    provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedFillColor:
                  provider.isDark() ? Color(0xFF141A2E) : Colors.white,
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color:
                    provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
