import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
    required this.urlImage,
  });
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 2.9 / 4,
          child: Padding(
            padding: const EdgeInsets.only(
              right: 12,
            ),
            child: CachedNetworkImage(
              errorWidget: (context, url, error) => const Center(
                child: Icon(Icons.error),
              ),
              imageUrl: urlImage,
              fit: BoxFit.fill,
            ),
          )),
    );
  }
}
