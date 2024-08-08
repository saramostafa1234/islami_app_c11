import 'package:flutter/material.dart';

import '../quran_view.dart';

class SuraTitle extends StatefulWidget {
  final SuraData data;

  const SuraTitle({
    super.key,
    required this.data,
  });

  @override
  State<SuraTitle> createState() => _SuraTitleState();
}

class _SuraTitleState extends State<SuraTitle> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.data.suraNumber,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        SizedBox(height: 35, child: VerticalDivider()),
        Expanded(
          child: Text(
            widget.data.suraName,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
