import 'package:cloud_firestore/cloud_firestore.dart';
import 'user.dart';

String collectionName = "user";

getUsers() {
  return Firestore.instance.collection(collectionName).snapshots();
}

addUser(String Name){
  User user = User(name: Name);
  try{
    Firestore.instance.runTransaction(
          (Transaction transaction) async{
        await Firestore.instance
            .collection(collectionName)
            .document()
            .setData(user.toJson());
      },
    );
  } catch(e){
    print(e.toString());
  }
}

update(User user, String newName){
  try {
    Firestore.instance.runTransaction((transaction) async {
      await transaction.update(user.reference, {'name': newName});
    });
  } catch(e) {
    print(e.toString());
  }
}

delete(User user){
  Firestore.instance.runTransaction(
        (Transaction transaction) async{
      await transaction.delete(user.reference);
    },
  );
}
