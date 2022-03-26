import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  const CachedImage({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String? url;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      errorWidget: (context, url, error) => const Icon(Icons.error),
      placeholder: (BuildContext context, url) => const Center(
          child: CircularProgressIndicator(
        color: Colors.green,
        backgroundColor: Colors.grey,
      )),
      fit: BoxFit.cover,
      imageUrl: url!,
      height: 70,
      width: 80,
    );
  }
}
