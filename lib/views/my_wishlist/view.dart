import 'package:flutter/material.dart';
import 'package:suits_app/views/my_wishlist/widgets/item_category.dart';

class MyWishlistView extends StatefulWidget {
  const MyWishlistView({super.key});

  @override
  State<MyWishlistView> createState() => _MyWishlistViewState();
}

int selectedCategory = 0;
final list = ['All', 'Blazer', 'Shirt', 'Pants', 'Shoes'];

class _MyWishlistViewState extends State<MyWishlistView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new)
        ),
        title: Text(
          'My Wishlist',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 49),
          Container(
          height: 29,
          width: double.infinity,
          child: ListView.separated(
              itemBuilder: (context, index) => ItemCategory(
                  text: list[index],
                isSelected: index == selectedCategory,
                onTap: () {
                    setState(() {
                      selectedCategory = index;
                    });
                },
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              separatorBuilder: (context, index) => SizedBox(width: 8),
              scrollDirection: Axis.horizontal,
              itemCount: list.length
          ),
          ),
          SizedBox(height: 32),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 151/188,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      crossAxisCount: 2,
                  ),
                itemCount: 10,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.topEnd,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          'https://imgs.search.brave.com/txLeNJRqCAIzDnkh-5WhBsM8Dzwqd2FbedRMf8QmEF8/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzg5LzJl/LzVkLzg5MmU1ZGFj/ZDVhZmE3Y2FhODQx/MDIzODljMGRjNmFi/LmpwZw',
                          height: 147,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 8, end: 8),
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.5),
                          child: IconButton(onPressed: (){},
                              icon: Icon(
                                  Icons.favorite,
                                color: Color(0xFFDD8560),
                              )
                          ),
                        ),
                      )
                    ],),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: Text(
                            'Classic Blazer',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500
                          ),
                        )),
                        SizedBox(width: 2),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                            '4.9',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF979696)
                          ),
                        )
                      ],
                    ),
                    Text(
                        '\$83.97',
                      style: TextStyle(
                        color: Color(0xFFAB94A6),
                      ),
                    )
                  ],
                )
              ),
            )
          )
        ],
      ),
    );
  }
}