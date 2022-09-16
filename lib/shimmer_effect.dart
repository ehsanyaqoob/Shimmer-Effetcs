import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffects extends StatefulWidget {
  const ShimmerEffects({Key? key}) : super(key: key);

  @override
  State<ShimmerEffects> createState() => _ShimmerEffectsState();
}

class _ShimmerEffectsState extends State<ShimmerEffects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: Text('Shimmer '),
          centerTitle: true,
        ),
        body: Column(mainAxisSize: MainAxisSize.max, children: [
          Expanded(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Shimmer.fromColors(
                  baseColor: Colors.grey.shade600,
                  highlightColor: Colors.grey.shade100,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                    title: Container(
                      color: Colors.white,
                      height: 15,
                      width: 10,
                    ),
                    subtitle: Container(
                      color: Colors.white,
                      height: 15,
                      width: 10,
                    ),
                  ));
            },
          ))
        ]));
  }
}
