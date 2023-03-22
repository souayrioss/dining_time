import 'package:flutter/material.dart';
import '../styles/typo.dart';
import 'package:dining_time/database/sqldb.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({Key? key}) : super(key: key);

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  SqlDb sqlDb = SqlDb();
  Future<List<Map>> readData() async {
    List<Map> response = await sqlDb.readData("SELECT p* FROM plat");
    return response;
  }
  @override
  Widget build(BuildContext context) {
    print(readData());
    return Scaffold(
      body: SafeArea(
        child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Menu',
                    style: subheader,
                  ),
                  const SizedBox(height: 16),
                  Scrollbar(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children: [
                          FutureBuilder(
                              future: readData(),
                              builder: (BuildContext context, AsyncSnapshot<List<Map >> snapshot){
                                if(snapshot.hasData){
                                  return ListView.builder(
                                    scrollDirection: Axis.vertical,
                                      itemCount: snapshot.data!.length,
                                    physics: const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context,i){
                                        return Card(
                                            child:Row(
                                        children: [
                                        Image.asset(
                                        'assets/images/sate.png',
                                        height: 80,
                                        ),
                                        const SizedBox(width: 12),
                                        Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Text(
                                        'Sate Madura',
                                        style: product,
                                        ),
                                        const SizedBox(height: 2),
                                        Text(
                                        '\$51,200',
                                        style: price,
                                        ),
                                        ],
                                        ),
                                        const Spacer(),
                                        Row(
                                        children: List.generate(7, (index) => Image.asset('assets/images/star.png', height: 18))
                                        ),
                                        ],
                                        ),
                                      );
                                    },
                                  );
                                }
                                return const Center(child: CircularProgressIndicator());
                              }),
                        ],
                      ),
                  )
                ],
              ),
            )
      ),
    );
  }
}
