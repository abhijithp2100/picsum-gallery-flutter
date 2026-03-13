import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/image_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        Provider.of<ImageProviderModel>(context, listen: false).fetchImages());
  }

  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<ImageProviderModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Picsum Gallery"),
      ),

      body: provider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              padding: const EdgeInsets.all(10),

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),

              itemCount: provider.images.length,

              itemBuilder: (context, index) {

                final image = provider.images[index];

                return GridTile(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      image.url,
                      fit: BoxFit.cover,
                    ),
                  ),

                  footer: Container(
                    color: Colors.black54,
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      image.author,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
    );
  }
}