import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/pages/patterns/proxy/proxy_repository.dart';

class ProxyPage extends StatelessWidget {
  const ProxyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proxy'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                final movies = await LazyProxyRepository().getMovies();
                print(movies[0].movieName);
              },
              child: const Text('print moveie'),
            )
          ],
        ),
      ),
    );
  }
}
