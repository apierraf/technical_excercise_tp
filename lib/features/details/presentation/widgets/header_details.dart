import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderDetails extends StatelessWidget {
  final String image;
  const HeaderDetails({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () => context.pop(),
      ),
      expandedHeight: 250.0,
      flexibleSpace: FlexibleSpaceBar(
        background: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, progress) => Center(
            child: CircularProgressIndicator(
              value: progress.progress,
            ),
          ),
        ),
      ),
    );
  }
}
