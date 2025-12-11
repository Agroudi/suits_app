import 'package:flutter/material.dart';
import 'package:suits_app/views/widgets/social_button.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back_ios_new)
        ),
        title: Text(
          'Add Address',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          children: [
            SizedBox(height: 36),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                labelText: "Title",
                contentPadding: EdgeInsets.symmetric(vertical: 23, horizontal: 12)
              ),
            ),
            SizedBox(height: 33),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  labelText: "Address",
                  contentPadding: EdgeInsets.symmetric(vertical: 23, horizontal: 12)
              ),
            ),
            SizedBox(height: 33),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  labelText: "Building No.",
                  contentPadding: EdgeInsets.symmetric(vertical: 23, horizontal: 12)
              ),
            ),
            SizedBox(height: 33),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  labelText: "Floor No.",
                  contentPadding: EdgeInsets.symmetric(vertical: 23, horizontal: 12)
              ),
            ),
            SizedBox(height: 33),
            TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
                  labelText: "Apartment No.",
                  contentPadding: EdgeInsets.symmetric(vertical: 23, horizontal: 12)
              ),
            ),
            SizedBox(height: 127),
            SocialButton(onPressed: (){}, text: 'Save')
          ],
        ),
      ),
    );
  }
}
