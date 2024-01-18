import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Center(child: Text('profile')),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder:  (context, index){

                }
                
                ),
            ),

            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/indoor-picture-cheerful-handsome-young-man-having-folded-hands-looking-directly-smiling-sincerely-wearing-casual-clothes_176532-10257.jpg?w=740&t=st=1705560008~exp=1705560608~hmac=5e2b80c3d8ff3e19ec721501c0b9be53ebbe3e947407c7dd23f689831fedabd9'),
              ),
              title: Text('Tanseer Hussain'),
              subtitle: Text('flutter developer'),
              trailing: Text('5:58 pm'),
            ),
           
            const Divider(
              color: Colors.black,
              thickness: .5,
            ),
            const SizedBox(
              height: 30,
            ),

            //PROFILE IMAGE
            const Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-photo/indoor-picture-cheerful-handsome-young-man-having-folded-hands-looking-directly-smiling-sincerely-wearing-casual-clothes_176532-10257.jpg?w=740&t=st=1705560008~exp=1705560608~hmac=5e2b80c3d8ff3e19ec721501c0b9be53ebbe3e947407c7dd23f689831fedabd9'),
              ),
            ),
            //email address
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.grey.shade800,
                enabled: true,
                style: const TextStyle(
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.2),
                    filled: true,
                    hintText: 'Enter Email Address',
                    labelText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    labelStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.orange, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    )),
                onChanged: (value) {
                  // print  (value);
                },
              ),
            ),
            // password
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.grey.shade800,
              enabled: true,
              style: const TextStyle(
                fontSize: 14,
              ),
              decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  hintText: 'Enter Password',
                  labelText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  labelStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.orange, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.orange, width: 2),
                    borderRadius: BorderRadius.circular(10),
                  )),
              onChanged: (value) {
                // print  (value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
