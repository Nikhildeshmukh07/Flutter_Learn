import 'package:flutter/material.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class Lazyloader extends StatefulWidget {
  final String titles;

  const Lazyloader({super.key, required this.titles});

  @override
  State<Lazyloader> createState() => _LazyloaderState();
}

class _LazyloaderState extends State<Lazyloader> {
  List<int> data = [];
  int currentLength = 0;

  final int increment = 10;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  Future _loadMore() async {
    setState(() {
      isLoading = true;
    });

    await new Future.delayed(const Duration(seconds: 2));
    for (var i = currentLength; i <= currentLength + increment; i++) {
      data.add(i);
    }
    setState(() {
      isLoading = false;
      currentLength = data.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titles),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: LazyLoadScrollView(
        isLoading: isLoading,
        onEndOfPage: () => _loadMore(),
        child: ListView.builder(itemBuilder: (context, position) {
          return DemoItem(Position: position);

        }),
      ),
    );
  }
}

class DemoItem extends StatelessWidget {
  final int Position;

  const DemoItem({super.key, required this.Position});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Container(
                 color: Colors.deepOrange,
                 height: 40.0,
                 width: 40.0,
               ),
               SizedBox(
                 width: 8.0,
               ),
               Text("Item$Position"),
             ],
           ),
           Text("i am nikhil flutter is future")
         ],
       ),
      ),
    );
  }
}
