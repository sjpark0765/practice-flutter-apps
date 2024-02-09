// ignore_for_file: library_private_types_in_public_api
import 'dart:ffi';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? username;
  final String? address;
  final int? age;
  final String? id;

  UserModel({this.id, this.username, this.address, this.age});

  static UserModel fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    return UserModel(
      username: snapshot['username'],
      address: snapshot['address'],
      age: snapshot['age'],
      id: snapshot['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'address': address,
      'age': age,
      'id': id,
    };
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Stream<List<UserModel>> _readData() {
    final userCollection = FirebaseFirestore.instance.collection('users');
    return userCollection.snapshots().map((querySnapshot) => querySnapshot.docs
        .map(
          (e) => UserModel.fromSnapshot(e),
        )
        .toList());
  }

  void _createData(UserModel userModel) {
    final userCollection = FirebaseFirestore.instance.collection('users');
    String id = userCollection.doc().id;
    final newUser = UserModel(
      username: userModel.username,
      address: userModel.address,
      age: userModel.age,
      id: id,
    ).toJson();
    userCollection.doc(id).set(newUser);
  }

  void _updateData(UserModel userModel) {
    final userCollection = FirebaseFirestore.instance.collection('users');
    final newData = UserModel(
      address: userModel.address,
      age: userModel.age,
      username: userModel.username,
      id: userModel.id,
    ).toJson();
    userCollection.doc(userModel.id).update(newData);
  }

  void _deleteData(UserModel userModel) {
    final userCollection = FirebaseFirestore.instance.collection('users');
    userCollection.doc(userModel.id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Home Page",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _createData(UserModel(
                    username: faker.person.name(),
                    address: faker.address.city(),
                    age: faker.randomGenerator.integer(50, min: 3)));
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Create Data",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            StreamBuilder<List<UserModel>>(
              stream: _readData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text("No Data"),
                  );
                }
                final users = snapshot.data;
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                      children: users!.map((user) {
                    return ListTile(
                      leading: GestureDetector(
                        onTap: () {
                          _deleteData(user);
                        },
                        child: Icon(Icons.delete),
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          _updateData(UserModel(
                            id: user.id,
                            username: "John Wick",
                            address: "Pakistan",
                          ));
                        },
                        child: Icon(Icons.update),
                      ),
                      title: Text(user.username!),
                      subtitle: Text(user.address!),
                    );
                  }).toList()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
