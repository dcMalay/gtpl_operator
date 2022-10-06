import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gtpl_operator/api_layer/model/raring_model.dart';
import 'package:gtpl_operator/api_layer/networking.dart';

class StarRating extends StatefulWidget {
  const StarRating({Key? key, required this.ticketId}) : super(key: key);
  final String ticketId;
  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  late Future<List<Rating>> ratingData;
  @override
  void initState() {
    ratingData = getRating(widget.ticketId);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder<List<Rating>>(
            future: ratingData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SizedBox(
                  height: 50,
                  child: Center(
                    child: RatingBar.builder(
                      initialRating: snapshot.data![0].star.toDouble(),
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
                      ignoreGestures: true,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const Center(child: CircularProgressIndicator());
            }),
      ],
    );
  }
}
