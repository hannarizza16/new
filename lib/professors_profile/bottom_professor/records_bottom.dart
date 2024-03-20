import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_project/gradient_background.dart';
import 'package:intl/intl.dart';

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
        body: Stack(children: [
      // Layer 1: Gradient Container
      const GradientContainer(
        child: SizedBox.expand(), // Expand to fill the whole screen
      ),
      // Layer 2: Image

      Positioned(
        left: 0, // Align left
        top: 0, // Align top
        right: 0, // Align right
        bottom: 0, // Align bottom
        child: Opacity(
          opacity: 0.2, // Specify the opacity value here (0.0 - 1.0)
          child: Image.asset(
            'assets/overlay/2.jpg', // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
      ),
      // Layer 2: Image
      // Layer 3: Other Widgets
      Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text(
              'Student Record',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                letterSpacing: 1.5,
              ),
            ),
          ),

          //blue line
          Divider(
            color: Colors.blue,
            thickness: 2.0,
          ),

          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Map<String, dynamic> data =
                          document.data() as Map<String, dynamic>;

                      // Convert timestamp to DateTime
                      DateTime timestamp =
                          (data['timestamp'] as Timestamp).toDate();

                      // Format the date
                      String formattedDate =
                          DateFormat.yMMMd().add_jm().format(timestamp);

                      // Format the details
                      String fullName =
                          '${data['lastName'] ?? ''}, ${data['firstName'] ?? ''} ${data['middleInitial'] ?? ''}'
                              .trim();
                      String section = data['section'] ?? '';
                      int yearLevel =
                          data['yearLevel'] ?? 0; // Assuming default value is 0

                      return ListTile(
                          // onTap: () {
                          //
                          // },

                          //white container design
                          title: Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Name: $fullName'),
                                        Text('Section: $section'),
                                        Text('Year Level: $yearLevel'),
                                        Text('Date & Time: $formattedDate'),
                                        Text('Score: ${data['score'] ?? ''}',
                                            style: TextStyle(
                                              color: (data['score'] ?? 0) < 5
                                                  ? Colors.red
                                                  : Colors.green,
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors
                                            .transparent, // You can change the color here
                                      ),
                                      child: ElevatedButton(
                                          onPressed: () {
                                            _showDeleteConfirmationDialog(
                                                context, document);
                                          },
                                          child: Text('Delete',
                                              style: TextStyle(
                                                color: Colors.red,
                                              )),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors
                                                .transparent, // Remove button background color
                                            elevation:
                                                0, // Remove button elevation
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical:
                                                    8), // Adjust button padding
                                          )))
                                ],
                              )));
                    }).toList(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    ]));
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
    Query query = FirebaseFirestore.instance.collection('scores').where(
        'selected_teacher',
        isEqualTo: FirebaseAuth.instance.currentUser!.email);

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

  void _showDeleteConfirmationDialog(
      BuildContext context, QueryDocumentSnapshot document) {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Prevent dismissing the dialog by tapping outside
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
      items.add(DropdownMenuItem(
          child: Text(yearLevel.toString()), value: yearLevel));
    }
    return items;
  }

  //sorting of name
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
  _DeleteConfirmationDialogState createState() =>
      _DeleteConfirmationDialogState();
}

class _DeleteConfirmationDialogState extends State<DeleteConfirmationDialog> {
  bool _showSecondDialog = false;

  @override
  Widget build(BuildContext context) {
    String fullName =
        '${widget.document['lastName'] ?? ''}, ${widget.document['firstName'] ?? ''} ${widget.document['middleInitial'] ?? ''}'
            .trim();

    return Theme(
        data: Theme.of(context).copyWith(
          dialogBackgroundColor: Colors.white,
        ),
    child: AlertDialog(
      title: _showSecondDialog
          ? Text('Confirm Deletion Again')
          : Text('Confirm Deletion'),
      content: _showSecondDialog
          ? RichText(
              text: TextSpan(
                  text: 'Are you sure you want to delete the record for ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                  TextSpan(
                    text: '$fullName',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  TextSpan(
                    text: '? This action cannot be undone.',
                    style: TextStyle(color: Colors.black),
                  )
                ]))
          : RichText(
              text: TextSpan(
                  text: 'Are you sure you want to delete the record for ',
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                  TextSpan(
                      text: '$fullName',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      )),
                  TextSpan(text: ' ?', style: TextStyle(color: Colors.black))
                ])),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('No', style: TextStyle(color: Colors.black),),
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
          child: Text(
            'Yes',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    ));
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
