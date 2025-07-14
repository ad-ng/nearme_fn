import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nearme_fn/features/home/data/models/doc_item_model.dart';

///
class ArticlesPage extends StatefulWidget {
  ///
  const ArticlesPage({required this.docItemModel, super.key});

  ///
  final DocItemModel docItemModel;

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  late bool isSaved;

  @override
  void initState() {
    super.initState();
    isSaved = widget.docItemModel.savedItems.isNotEmpty;
  }

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
                  child: Text(
                    widget.docItemModel.title,
                    style: const TextStyle(
                      color: Color(0xFF007DD1),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.15,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_rounded,
                      size: 15,
                      color: Color(0xFF007DD1),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.docItemModel.location,
                      style: const TextStyle(
                        color: Color(0xFF007DD1),
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
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
                        Text(
                          '${widget.docItemModel.author.firstName} ${widget.docItemModel.author.lastName}',
                          style: const TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 10,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          widget.docItemModel.createdAt.substring(0, 10),
                          style: const TextStyle(
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
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              isSaved = !isSaved;
                            });
                          },
                          icon:
                              isSaved
                                  ? const Icon(
                                    Icons.favorite,
                                    color: Color(0xFF007DD1),
                                  )
                                  : const Icon(
                                    Icons.favorite_outline_outlined,
                                    color: Colors.black,
                                  ),
                        ),
                        const Icon(Icons.share_outlined, color: Colors.black),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Summary -',
                          style: TextStyle(
                            color: Color(0xFF191919),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: widget.docItemModel.summary,
                          style: const TextStyle(
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
                  child: Hero(
                    tag: widget.docItemModel.id,
                    child: Image.network(
                      widget.docItemModel.featuredImg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 19),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    widget.docItemModel.description,
                    style: const TextStyle(
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
