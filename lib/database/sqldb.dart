import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDb {
  static Database? _db;
  Future<Database?> get db async{
    if(_db == null){
      _db = await intialDb();
    }
    return _db;
  }
  intialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'diningTime.db') ;
    Database mydb = await openDatabase (path, onCreate: _onCreate, version: 1  , onUpgrade:_onUpgrade);
    return mydb;
  }
  _onUpgrade(Database db , int oldversion , int newversion ) {
    print("onUpgrade =====================================") ;

  }

  _onCreate (Database db, int version) async {
    await db.execute('''
    CREATE TABLE "restaurant" (
      id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      image TEXT NOT NULL
   
    )
    ''');
    await db.execute('''
    CREATE TABLE "plat" (
      id INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      image TEXT NOT NULL,
      RestaurantId INTEGER NOT NULL,
      FOREIGN KEY(RestaurantId) REFERENCES restaurant(id)
    )
    ''');
    print("object created db");

  }
  clearTable(String sql) async {
    Database? mydb = await db ;
    int  response = await  mydb!.rawInsert(sql);
    print(response);
    print("clea inserted");
    return response ;
  }
  readData(String sql) async {
    Database? mydb = await db ;
    List<Map> response = await  mydb!.rawQuery(sql);
    print(response);
    return response ;

  }

  insertData(String sql) async {
    Database? mydb = await db ;
    int  response = await  mydb!.rawInsert(sql);
    print(response);
    print("object inserted");
    return response ;
  }

  updateData(String sql) async {

    Database? mydb = await db ;

    int  response = await  mydb!.rawUpdate(sql);

    return response ;

  }

  deleteData(String sql) async {

    Database? mydb = await db ;

    int  response = await  mydb!.rawDelete(sql);

    return response ;

  }

}