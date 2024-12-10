import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String sourceLanguage = 'English';
  String targetLanguage = 'Gujarati';
  final List<String> languages = ['English', 'Gujarati', 'Hindi', 'Spanish', 'French'];
  String translatedText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Translate App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                // source language
                Expanded(
                  child: DropdownButtonFormField(
                    value: sourceLanguage,
                    decoration: const InputDecoration(labelText: "Source Language"),
                    items: languages
                        .map((lang) => DropdownMenuItem(
                      value: lang,
                      child: Text(lang),
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        sourceLanguage = value!;
                      },
                      );
                    },
                  ),
                ),
                const SizedBox(width: 10),
                //  target language
                Expanded(
                  child: DropdownButtonFormField(
                    value: targetLanguage,
                    decoration: const InputDecoration(labelText: "Target Language"),
                    items: languages
                        .map((lang) => DropdownMenuItem(
                      value: lang,
                      child: Text(lang),
                    ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        targetLanguage = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            // enter language text
            const TextField(
              decoration: InputDecoration(
                labelText: "Enter text to translate",
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            const SizedBox(height: 20),
            // output language text
            const TextField(
              decoration: InputDecoration(
                labelText: "Output Your Translated Text",
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}