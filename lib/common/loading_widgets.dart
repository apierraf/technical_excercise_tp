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

Widget loadingMOvies(BuildContext context) => Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
            10,
            (index) {
              return ListTile(
                dense: true,
                visualDensity: const VisualDensity(vertical: 4),
                title: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                    border: Border.all(
                      color: Colors.grey.shade800,
                      width: 1,
                    ),
                  ),
                  height: 20,
                ),
                subtitle: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                        border: Border.all(
                          color: Colors.grey.shade800,
                          width: 1,
                        ),
                      ),
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: 10,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                        border: Border.all(
                          color: Colors.grey.shade800,
                          width: 1,
                        ),
                      ),
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: 10,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                  ],
                ),
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                    border: Border.all(
                      color: Colors.grey.shade800,
                      width: 1,
                    ),
                  ),
                  width: 70,
                  height: 100,
                ),
              );
            },
          ),
        ),
      ),
    );

Widget loadingDetails(BuildContext context) => Shimmer.fromColors(
      direction: ShimmerDirection.ltr,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
              border: Border.all(
                color: Colors.grey.shade800,
                width: 1,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
              border: Border.all(
                color: Colors.grey.shade800,
                width: 1,
              ),
            ),
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300,
              border: Border.all(
                color: Colors.grey.shade800,
                width: 1,
              ),
            ),
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
        ],
      ),
    );
