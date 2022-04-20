import 'package:flutter/material.dart';
import 'package:insync/widgets/button.dart';
import 'package:insync/widgets/interest_tile.dart';

class Addinterests extends StatefulWidget {
  const Addinterests({Key? key}) : super(key: key);

  @override
  State<Addinterests> createState() => _AddinterestsState();
}

List interestarr = [
  const InterestTile(title: 'sport', emoji: '⚽'),
  const InterestTile(title: 'finance', emoji: '💲'),
  const InterestTile(title: 'technology', emoji: '💻'),
  const InterestTile(title: 'politics', emoji: '🤵'),
  const InterestTile(title: 'food', emoji: '🍔'),
  const InterestTile(title: 'international', emoji: '🌎'),
  const InterestTile(title: 'education', emoji: '📚'),
  const InterestTile(title: 'business', emoji: '📈'),
  const InterestTile(title: 'cars', emoji: '🚗'),
  const InterestTile(title: 'health', emoji: '🩺'),
  const InterestTile(title: 'religion', emoji: '🙏'),
  const InterestTile(title: 'entertainment', emoji: '🍿'),
  const InterestTile(title: 'science', emoji: '🔬'),
];

class _AddinterestsState extends State<Addinterests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Select interests",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const Text(
                    "Please select 3 or more topics to personalize your feed"),
                Expanded(
                  child: ListView.builder(
                    itemCount: interestarr.length,
                    itemBuilder: (context, index) {
                      return interestarr[index];
                    },
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 64,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: PrimaryButton(
                      buttonTitle: "Continue",
                      onPressed: () {
                        Navigator.of(context).pushNamed("/mainapp");
                      }),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ],
      ),
    );
  }
}
