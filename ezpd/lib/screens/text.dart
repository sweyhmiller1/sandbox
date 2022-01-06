// Define a custom Form widget.

final inputsArray = new List<String>();

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds the data related to the Form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Fill this out in the next step.
  }
}

return TextField(
controller: myController,
);


FloatingActionButton(
// When the user presses the button, show an alert dialog containing
// the text that the user has entered into the text field.
onPressed: () {
showDialog(
context: context,
builder: (context) {
return AlertDialog(
// Retrieve the text that the user has entered by using the
// TextEditingController.
content: Text(myController.text),
);
},
);
},
tooltip: 'Show me the value!',
child: const Icon(Icons.text_fields),
),

void main() {
  inputsArray.add(myController.text);
}
