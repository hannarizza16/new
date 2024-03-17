import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RecordsBottomScreen extends StatefulWidget {
  @override
  _RecordsBottomScreenState createState() => _RecordsBottomScreenState();
}

class _RecordsBottomScreenState extends State<RecordsBottomScreen> {
  String? _selectedSection;
  int? _selectedYearLevel;
  String? _selectedSortBy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterDropdown(
                  'Section',
                  _selectedSection,
                  _buildDropdownItems(),
                      (String? newValue) {
                    setState(() {
                      _selectedSection = newValue;
                    });
                  },
                ),
                SizedBox(width: 16.0), // Add some space between the filters
                _buildFilterDropdown(
                  'Year Level',
                  _selectedYearLevel,
                  _buildYearLevelDropdownItems(),
                      (int? newValue) {
                    setState(() {
                      _selectedYearLevel = newValue;
                    });
                  },
                ),
                SizedBox(width: 16.0), // Add space for the sorting dropdown
                _buildFilterDropdown(
                  'Sort By',
                  _selectedSortBy,
                  _buildSortByDropdownItems(),
                      (String? newValue) {
                    setState(() {
                      _selectedSortBy = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: FutureBuilder(
                future: _getRecords(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  List<QueryDocumentSnapshot> documents = snapshot.data!.docs;

                  if (documents.isEmpty) {
                    return Center(child: Text('No records found'));
                  }

                  return Column(
                    children: documents.map((document) {
                      Map<String, dynamic> data = document.data() as Map<String, dynamic>;

                      // Format the details
                      String fullName =
                      '${data['lastName'] ?? ''}, ${data['firstName'] ?? ''} ${data['middleInitial'] ?? ''}'.trim();
                      String section = data['section'] ?? '';
                      int yearLevel = data['yearLevel'] ?? 0; // Assuming default value is 0

                      return ListTile(
                        onTap: () {
                          _showDeleteConfirmationDialog(context, document);
                        },
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Name: $fullName'),
                            Text('Section: $section'),
                            Text('Year Level: $yearLevel'),
                          ],
                        ),
                        subtitle: Text('Score: ${data['score'] ?? ''}'), // Display the score
                      );
                    }).toList(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterDropdown<T>(
      String label,
      T? value,
      List<DropdownMenuItem<T>> items,
      ValueChanged<T?> onChanged,
      ) {
    return Row(
      children: [
        Text(label + ': '),
        DropdownButton<T>(
          value: value,
          hint: Text('None'),
          onChanged: onChanged,
          items: items,
        ),
      ],
    );
  }

  Future<QuerySnapshot> _getRecords() {
    Query query = FirebaseFirestore.instance.collection('scores').where('selected_teacher', isEqualTo: FirebaseAuth.instance.currentUser!.email);

    if (_selectedSection != null) {
      query = query.where('section', isEqualTo: _selectedSection);
    }
    if (_selectedYearLevel != null) {
      query = query.where('yearLevel', isEqualTo: _selectedYearLevel);
    }

    // Add sorting
    if (_selectedSortBy != null) {
      query = query.orderBy(_selectedSortBy!);
    }

    return query.get();
  }

  void _showDeleteConfirmationDialog(BuildContext context, QueryDocumentSnapshot document) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing the dialog by tapping outside
      builder: (context) {
        return DeleteConfirmationDialog(
          document: document,
        );
      },
    );
  }

  List<DropdownMenuItem<String>> _buildDropdownItems() {
    List<DropdownMenuItem<String>> items = [];
    items.add(DropdownMenuItem(child: Text('All'), value: null));
    // Replace this with your own implementation to retrieve sections
    // For now, I'll assume you have a predefined list of sections
    List<String> sections = ['101P', '102P', '202P', '401P', '501P', '801P'];
    for (String section in sections) {
      items.add(DropdownMenuItem(child: Text(section), value: section));
    }
    return items;
  }

  List<DropdownMenuItem<int>> _buildYearLevelDropdownItems() {
    List<DropdownMenuItem<int>> items = [];
    items.add(DropdownMenuItem(child: Text('All'), value: null));
    // Replace this with your own implementation to retrieve year levels
    // For now, I'll assume you have a predefined list of year levels
    List<int> yearLevels = [1, 2, 3, 4];
    for (int yearLevel in yearLevels) {
      items.add(DropdownMenuItem(child: Text(yearLevel.toString()), value: yearLevel));
    }
    return items;
  }

  List<DropdownMenuItem<String>> _buildSortByDropdownItems() {
    List<DropdownMenuItem<String>> items = [];
    items.add(DropdownMenuItem(child: Text('Last Name'), value: 'lastName'));
    items.add(DropdownMenuItem(child: Text('Score'), value: 'score'));
    return items;
  }
}

class DeleteConfirmationDialog extends StatefulWidget {
  final QueryDocumentSnapshot document;

  const DeleteConfirmationDialog({
    Key? key,
    required this.document,
  }) : super(key: key);

  @override
  _DeleteConfirmationDialogState createState() => _DeleteConfirmationDialogState();
}

class _DeleteConfirmationDialogState extends State<DeleteConfirmationDialog> {
  bool _showSecondDialog = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: _showSecondDialog ? Text('Confirm Deletion Again') : Text('Confirm Deletion'),
      content: _showSecondDialog
          ? Text('Are you sure you want to delete this record? This action cannot be undone.')
          : Text('Are you sure you want to delete this record?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('No'),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              if (_showSecondDialog) {
                _deleteRecord(context); // Call the delete method
              } else {
                _showSecondDialog = true; // Show the second confirmation dialog
              }
            });
          },
          child: Text('Yes'),
        ),
      ],
    );
  }

  void _deleteRecord(BuildContext context) async {
    try {
      await widget.document.reference.delete();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Record has been deleted.'),
          ),
        );
        Navigator.of(context).pop(); // Close the dialog after deletion
      }
      setState(() {
        _showSecondDialog = false; // Reset the flag
      });
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error deleting record: $error'),
          ),
        );
      }
    }
  }
}
