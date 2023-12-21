import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/styel.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:url_launcher/url_launcher.dart';

class bootom extends StatelessWidget {
  const bootom({
    super.key, required this.bookModel,
  });

final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 37, right: 38, left: 38),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 48,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16)))),
                  onPressed: (){},
                  child: Text(
                    "free",
                    style: styels.textStyle16.copyWith(color: Colors.black87),
                  )),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 48,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color(0xffEF8262),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12)))),
                  onPressed: () async {
  Uri   uri=Uri.parse(bookModel.volumeInfo?.previewLink??"");
  if (await canLaunchUrl(uri)) {
   await launchUrl(uri);
  }
  else{

  }
                  },
                  child: Text(
                    " preview",
                    style: styels.textStyle16.copyWith(color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
