import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:projectcore/shared/constants/lang_constants.dart';

import '../../providers/localization_provider.dart';

class ChangeLanguageWidget extends ConsumerWidget {
  const ChangeLanguageWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ListView.builder(
        itemCount: LangConstants.languages.length,
        itemBuilder: (context, index) {
          final language = LangConstants.languages[index];
          final languageIndex =
              ref.watch(localizationProvider.notifier).languageIndex;
          return ListTile(
            title: Text(language.languageName),
            trailing: languageIndex == index ? const Icon(Icons.check) : null,
            onTap: () {
              Get.back();
              ref.read(localizationProvider.notifier).setLanguage(index);
            },
          );
        },
      ),
    );
  }
}
