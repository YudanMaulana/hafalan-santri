import 'package:flutter/material.dart';

class ChoiceHafalan extends StatelessWidget {
  const ChoiceHafalan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF009788),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
        color: const Color(0xFF009788),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Pilih Kitab Hafalan",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // List of buttons
            ...["Jurumiah", "Halul Maqsud", "Imrithi", "Alfiyah"].map((kitab) {
              return Container(
                padding: const EdgeInsets.all(10),
                width: 500,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF009788),
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    debugPrint("$kitab dipilih");
                  },
                  child: Text(
                    kitab,
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
