import 'package:flutter/material.dart';
import 'package:medical_store/home/cart.dart';

class Medician extends StatefulWidget {
  const Medician({super.key});

  @override
  State<Medician> createState() => _MedicianState();
}

class _MedicianState extends State<Medician> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 8),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32, left: 295),
              child: Row(
                children: [
                  Icon(
                    Icons.notification_important_outlined,
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.shopping_bag_outlined,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 70, left: 25),
              child: Text(
                'Sugar Free Gold Low Calories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 95, left: 25),
              child: Text('Etiam mollis metus non purus'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140, left: 85),
              child: SizedBox(
                height: 180,
                child: Image.asset(
                    'accets/images/bfedb53f2363ce42dba6abbd8b3f6fe8.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 345, left: 25),
              child: Text(
                'Rs.56',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 365, left: 25),
              child: Text('Etiam mollis'),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 355, left: 279),
              child: Text('Add to cart',
                  style: TextStyle(color: Colors.blueAccent)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 353, left: 250),
              child: Icon(
                Icons.add_box_outlined,
                color: Colors.blueAccent,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 390),
              child: Divider(
                indent: 40,
                endIndent: 40,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 420, left: 25),
              child: Text(
                'Package size',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 460, left: 25),
              child: Row(
                children: [
                  Container(
                    width: 79,
                    height: 68,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orangeAccent),
                    ),
                    child: const Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 13)),
                        Text(
                          'Rs.106',
                          style: TextStyle(color: Colors.orangeAccent),
                        ),
                        Text(
                          '500 pellets',
                          style: TextStyle(
                              color: Colors.orangeAccent, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 79,
                    height: 68,
                    color: Colors.grey[200],
                    child: const Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 13)),
                        Text('Rs.106'),
                        Text('500 pellets', style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 79,
                    height: 68,
                    color: Colors.grey[200],
                    child: const Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 13)),
                        Text('Rs.106'),
                        Text(
                          '500 pellets',
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 555,
                left: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product Details',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.'),
                  Text(
                      'Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Ingredients',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.'),
                  Text(
                      'Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        'Expiry Date',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text('25/12/2023'),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Brand Name',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: 30),
                      Text('Something'),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 920, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        '4.4',
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                  Text('923 Ratings'),
                  Text('and 257 Reviews'),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 920,
                left: 200,
              ),
              child: Column(
                children: [
                  Text('4 ⭐'),
                  Text('4 ⭐'),
                  Text('3 ⭐'),
                  Text('2 ⭐'),
                  Text('1 ⭐'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 930, left: 240, right: 30),
              child: Column(
                children: [
                  LinearProgressIndicator(
                    value: 0.8,
                    minHeight: 5,
                    backgroundColor: Colors.grey[200],
                  ),
                  const SizedBox(height: 15),
                  LinearProgressIndicator(
                    value: 0.6,
                    minHeight: 5,
                    backgroundColor: Colors.grey[200],
                  ),
                  const SizedBox(height: 15),
                  LinearProgressIndicator(
                    value: 0.4,
                    minHeight: 5,
                    backgroundColor: Colors.grey[200],
                  ),
                  const SizedBox(height: 15),
                  LinearProgressIndicator(
                    value: 0.2,
                    minHeight: 5,
                    backgroundColor: Colors.grey[200],
                  ),
                  const SizedBox(height: 15),
                  LinearProgressIndicator(
                    value: 0.5,
                    minHeight: 5,
                    backgroundColor: Colors.grey[200],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1100, left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('⭐4.2'),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Erric Hoffman',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                      'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisiunc risus massa, gravida id egestas '),
                      const SizedBox(height: 30,),
                    SizedBox(
                      height: 50,
                      width: 300,
                      child: 
                  ElevatedButton(onPressed:() {
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Cart(),));
                  } ,style: ElevatedButton.styleFrom(
                    backgroundColor:Colors.deepPurpleAccent
                  ), child: const Text('Go to Cart',style: TextStyle(color: Colors.white) ,),)
                    ),
                    Container(height: 50,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
