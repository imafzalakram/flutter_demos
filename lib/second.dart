import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  late WebViewController controler;
  Set<String> urls = {"https://burst.shopify.com/","https://burst.shopify.com/photos?sort=downloads","https://burst.shopify.com/business-ideas/"};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'All Photos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Business Ideas',
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index){
          setState(() {
            controler.loadUrl(urls.elementAt(_selectedIndex));
            _selectedIndex = index;
          });
        },
      ),

      body: Center(
        child: WebView(
          initialUrl: "https://burst.shopify.com/",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (c){
            controler=c;
          },
        ),
      ),
    );
  }
}



