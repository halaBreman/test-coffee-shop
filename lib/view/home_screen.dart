import 'package:flutter/material.dart';
import 'package:test333333333333333333333333333/view/favorite-screen.dart';
import 'package:test333333333333333333333333333/view/tab_bar_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const FavoriteScreen(),),);
                    },
                    icon: const Icon(Icons.favorite),
                  ),
                ],
              ),
              const Text(
                "It's a Great Day for coffee ",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Find Your Coffee',
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: TabBarV(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
