import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
class ArticlesPage extends StatelessWidget {
  ///
  const ArticlesPage({required this.title, super.key});

  ///
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF007DD1),
          ),
        ),
        centerTitle: false,
        title: const Text(
          'Back',
          style: TextStyle(
            color: Color(0xFF007DD1),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'How to renew your Resident permit in Rwanda',
                    style: TextStyle(
                      color: Color(0xFF007DD1),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.15,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      size: 15,
                      color: Color(0xFF007DD1),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Kigali, Rwanda',
                      style: TextStyle(
                        color: Color(0xFF007DD1),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'https://media.licdn.com/dms/image/v2/D4D03AQGsvWpE2W_dMw/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1723027703094?e=1756944000&v=beta&t=i2PnLd1iCTEmqOcfjgqvV93Kc0jJ7rP0H4Oe94mRiXc',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 7),
                        const Text(
                          'Adolph',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          '13 Dec 2025',
                          style: TextStyle(
                            color: Color(0xFF959595),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1A8EEA),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'Article',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.black,
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.share_outlined, color: Colors.black),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'East Java, Indonesia -',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' The landscape of East Java Province is dotted with several towering mountains. Some of the mountains in East Java are also known to have captivating views and challenging hiking trails for climbers. Climbers usually visit these mountains during each climbing season to enjoy the panoramic view of East Java from the highest peak',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      'Read also:',
                      style: TextStyle(
                        color: Color(0xFF191919),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Merapi Mountain erupts again',
                      style: TextStyle(
                        color: Color(0xFF1A8EEA),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 257,
                  child: Image.network(
                    'https://ik.imgkit.net/3vlqs5axxjf/TP/ik-seo/images/99999999-9999-9999-9999-999999999999/ef43fbc2-e20c-484b-8be7-05dae47f9915/source/The-gardens-and-pool-at-the-Governor%27s-Residence.png?tr=w-684%2Cfo-auto',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 19),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    'Mount Semeru is the highest mountain in East Java with an altitude of 3,676 meters above sea level, making it also the highest mountain on the island of Java. The peak of Mount Semeru is named Mahameru and the crater is named Jonggring Saloko. The location of Mount Semeru is included in the Malang, Lumajang, Probolinggo, and Pasuruan regions, precisely within the Bromo Tengger Semeru National Park (KTN BTS). \nMount Semeru is a strato-shaped active Quaternary volcano type, with a lava dome. The type of eruption of Mount Semeru is explosive followed by the occurrence of hot cloud flows that flow into the valleys and strombolian type eruptions which are usually followed by the formation of new lava domes and tongues. To reach the summit, there are several climbing routes of Mount Semeru such as via Pasar Tumpang and via Ranupani. While on the slopes of Mount Semeru there are also several tourist destinations such as Ranu Kumbolo, Oro-oro Ombo, Cemoro Kandang, Kalimati, and Arcopodo.',
                    style: TextStyle(
                      color: Color(0xFF191919),
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
