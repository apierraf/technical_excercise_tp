import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget genreLoading(BuildContext context) => SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: Shimmer.fromColors(
        direction: ShimmerDirection.ltr,
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              4,
              (index) {
                return Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                      border: Border.all(
                        color: Colors.grey.shade800,
                        width: 1,
                      ),
                    ),
                    width: 100,
                    height: MediaQuery.sizeOf(context).height * 0.05,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
