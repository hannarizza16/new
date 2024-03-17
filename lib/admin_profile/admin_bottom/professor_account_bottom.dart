import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminBottomProfessorAccountState extends StatefulWidget {
  @override
  _AdminBottomProfessorAccountStateState createState() =>
      _AdminBottomProfessorAccountStateState();
}

class _AdminBottomProfessorAccountStateState
    extends State<AdminBottomProfessorAccountState> {
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('professor_instructor')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            QuerySnapshot<Map<String, dynamic>>? querySnapshot =
                snapshot.data;
            return ListView.builder(
              itemCount: querySnapshot?.docs.length ?? 0,
              itemBuilder: (context, index) {
                DocumentSnapshot<Map<String, dynamic>>? professor =
                querySnapshot?.docs[index];
                if (professor != null) {
                  return ListTile(
                    title: Text(
                      '${professor['last_name']}, ${professor['first_name']} ${professor['middle_initial'] ?? 'N/A'}',
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email: ${professor['email']}'),
                        Text(
                            'Professor Number: ${professor['professorNumber']}'),
                        Text('Password: ENCRYPTED'),
                        Text('Confirm Password: ENCRYPTED'),
                      ],
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Delete Professor"),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Are you sure you want to delete this professor?"),
                                  SizedBox(height: 10),
                                  TextField(
                                    controller: _passwordController,
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      labelText: 'Enter Admin Password',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(null); // Close dialog with null result
                                  _passwordController.clear(); // Clear password field
                                },
                                child: Text("Cancel"),
                              ),
                              TextButton(
                                onPressed: () {
                                  String password = _passwordController.text;
                                  if (password == 'Admin@L1b3rtad') {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: Text("Confirm Deletion"),
                                          content: Text(
                                              "This action cannot be undone. Are you sure?"),
                                          actions: [
                                            TextButton(
                                              onPressed: () async {
                                                await FirebaseFirestore
                                                    .instance
                                                    .collection(
                                                    'professor_instructor')
                                                    .doc(professor.id)
                                                    .delete();
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                        "Professor deleted successfully"),
                                                  ),
                                                );
                                                Navigator.of(context).pop();
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("Yes"),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("No"),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(
                                      SnackBar(
                                        content: Text(
                                            "Incorrect admin password"),
                                      ),
                                    );
                                  }
                                },
                                child: Text("Delete"),
                              ),
                            ],
                          );
                        },
                      ).then((value) {
                        // Clear password field when dialog is dismissed
                        _passwordController.clear();
                      });
                    },
                  );
                } else {
                  return SizedBox(); // Return an empty widget if professor is null
                }
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
