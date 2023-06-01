import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Define MediaQuery to get the specific width and height of the browser
    final size = MediaQuery.of(context).size;
    print(size.height);
    return Scaffold(
      body: Container(
        height: size.height,
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: size.height * 0.02,
                          // width: double.maxFinite,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Stack(
                            children: [
                              const Text(
                                'Bringing Your ideas To Life Through UI Design',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                              Positioned(
                                right: 12,
                                bottom: 0,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.purple,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: const Text(
                                    'Hey Me',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        // SizedBox(
                        //   child: ListView(
                        //     scrollDirection: Axis.horizontal,
                        //     physics: const NeverScrollableScrollPhysics(),
                        //     shrinkWrap: true,
                        //     children: List.generate(designCardBigText.length,
                        //         (index) {
                        //       final bigText = designCardBigText[index];
                        //       final smallText = designCardSmallText[index];
                        //       return DesignCard(
                        //         bigText: bigText,
                        //         smallText: smallText,
                        //         color: bgColors[index],
                        //         bigTextColor: bigTextColors[index],
                        //         smallTextColor: bigTextColors[index],
                        //       );
                        //     }),
                        //   ),
                        // )
                        // Row(
                        //   children: List.generate(designCardBigText.length,
                        //       (index) {
                        //     final bigText = designCardBigText[index];
                        //     final smallText = designCardSmallText[index];
                        //     return DesignCard(
                        //       bigText: bigText,
                        //       smallText: smallText,
                        //       color: bgColors[index],
                        //       bigTextColor: bigTextColors[index],
                        //       smallTextColor: bigTextColors[index],
                        //     );
                        //   }),
                        // ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [],
                  ),
                ],
              ),
              // Expanded(
              //   child: Row(),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  List<String> designCardBigText = [
    '2+',
    '54+',
    '40+',
  ];
  List<String> designCardSmallText = [
    'Workspace',
    'Housing',
    'Cars',
  ];
  List<Color> bgColors = [
    Colors.green[300]!,
    Colors.yellow[600]!,
    Colors.red[400]!
  ];
  List<Color> bigTextColors = [
    Colors.white,
    Colors.black,
    Colors.white,
  ];
}
