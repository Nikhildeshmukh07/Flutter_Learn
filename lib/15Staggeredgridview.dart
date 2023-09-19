import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Staggredgridview extends StatelessWidget {
  const Staggredgridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('15. Staggred Grid view '),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: MasonryGridView.builder(
          itemCount: 15,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/${index + 1}.jpg'),
              )),
    );
  }
}
