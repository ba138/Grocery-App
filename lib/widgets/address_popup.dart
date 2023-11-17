import 'package:flutter/material.dart';

class AddressPopup extends StatefulWidget {
  const AddressPopup({super.key});

  @override
  State<AddressPopup> createState() => _AddressPopupState();
}

class _AddressPopupState extends State<AddressPopup> {
  final TextEditingController addressController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    addressController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Update"),
            TextField(
              controller: addressController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "Your Address,"),
            ),
          ],
        ),
      ),
    );
  }
}
