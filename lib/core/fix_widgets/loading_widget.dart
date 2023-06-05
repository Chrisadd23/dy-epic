import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children:  [
          SpinKitCircle(
            duration: const Duration(seconds: 2),
            size: 110,
            itemBuilder: (context,index){
              final colors = [const Color.fromRGBO(247, 165, 64, 1), const Color.fromRGBO(95, 95, 95, 0.6) ];
              final color = colors[index % colors.length];

              return DecoratedBox(decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black,width: 1),
              ));
            },
          ),
          const SpinKitSpinningLines(color: Colors.white, size: 60,
          itemCount: 8,duration: Duration(seconds: 5),)
        ],
      ),
    );
  }
}