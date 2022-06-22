import 'package:flutter/material.dart';

class ContactWidget extends StatelessWidget {
  final dynamic contactKey;

  const ContactWidget(this.contactKey);

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
          width: double.infinity,
          color: Colors.black,
          key: contactKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Contact",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow.shade400,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('Address', style: TextStyle(color: Colors.white, fontSize: 20),),
                        Divider(color: Colors.white, thickness: 2.0,),
                        Text('15 Dan Nwankwo,\n Enugu, Nigeria', style: TextStyle(color: Colors.white, fontSize: 13),)
                      ],
                    ),

                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                        Text('Contact', style: TextStyle(color: Colors.white, fontSize: 20),),
                        Divider(color: Colors.white,),
                        Text('+234 8025154099 \n okoh_chibuike@yahoo.com', style: TextStyle(color: Colors.white, fontSize: 13))
                        ]
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                        const Text('Social', style: TextStyle(color: Colors.white, fontSize: 20),),
                        const Divider(color: Colors.white,),
                        Row(
                          children: [

                          ],
                        ),
                        ]
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: data.size.height * 0.10,
              ),
            ],
          )),
    );
  }
}

class ContactDetail extends StatelessWidget {
  const ContactDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 250,
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade400,
                    ),
                    child: const Icon(
                      Icons.place,
                      color: Colors.black,
                      size: 30,
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Regent street,London",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade400,
                    ),
                    child: const Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 30,
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "+44 7474876098",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.yellow.shade400,
                    ),
                    child: const Icon(
                      Icons.email,
                      color: Colors.black,
                      size: 30,
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "thomas.hart@gmail.com",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}