import 'package:flutter/material.dart';
import 'package:herois/presentation/home/widgets/home_bottom_navigation_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LearningOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {return Scaffold(
      appBar: AppBar(
        title: const Text('Informações'),
      ),
      body: const WebView(
        initialUrl: 'https://www.minhavida.com.br/saude/tudo-sobre/18656-doacao-de-sangue',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      bottomNavigationBar: HomeBottomNavigationBar(index: 4,),
    );
  }

}