
// import 'package:flutter/material.dart';

// class CurrencyConverterMaterialPage extends StatelessWidget {
//   CurrencyConverterMaterialPage({super.key});

  
// //1.creare a variable that stors the converted currency value
// //2.create a function that multiples the value given by the  textfield with 81
// //3.to storethe value in the variable that we created
// //4.display the varible

//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     TextEditingController textEditingController = TextEditingController();

//     final border = OutlineInputBorder(
//       borderSide: const BorderSide(
//         width: 2.0,
//         style: BorderStyle.solid,
//       ),
//       borderRadius: BorderRadius.circular(5),
//     );

//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       appBar: AppBar(
//         backgroundColor: Colors.blueGrey,
//         elevation: 0,
//         title: const Text(
//           'Cureency Converter',
//           style: TextStyle(),
//         ),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             //to convetr int to string integervaluse.tostirng and to convert string to int  int.parse(stringvalue)
//             Text(
//               result.toString(),

//               style: const TextStyle(
//                   fontSize: 35,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 255, 255, 255)),
//             ),

//             //now we discuss padding and container
//             //padding :padding is just one widget and container have a many many widget

//             //container : take as much as its child take place/

//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: textEditingController,
//                 style: const TextStyle(color: Colors.black),
//                 decoration: InputDecoration(
//                   hintText: 'Please enter the amount in USD',
//                   hintStyle: const TextStyle(
//                     color: Colors.black,
//                   ),
//                   prefixIcon: const Icon(Icons.monetization_on_outlined),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//                 keyboardType: const TextInputType.numberWithOptions(
//                   decimal: true,
//                   signed: true,
//                 ),
//               ),
//             ),
//             //button: button raisd :elevated button called raised button and button appears like a text :flat button called text button

//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextButton(
//                   onPressed: () {
                        // set state((){
                        //   result=double.parse (textEditingController.text )* 81;

                        // });
//                     //debug:, release, profile
                 
//                     result=double.parse (textEditingController.text )* 81;
//                     build(context);
//                   },
//                   style: TextButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     minimumSize: const Size(double.infinity, 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                   ),
//                   child: const Text(
//                       'convert') //when you create new widget then child cannot be over here it has to be the ending property.
//                   ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


//everytime materialStatePropertyall we have to mention so here we have simple code
// style:ButtonStyle(
//                     backgroundColor:
//                     const  MaterialStatePropertyAll(Colors.black),
//                     foregroundColor:
//                     const  MaterialStatePropertyAll(Colors.white),
//                     minimumSize:      
//                     const MaterialStatePropertyAll(
//                       Size (
//                         double.infinity, 50)
//                         ),
//                       shape: MaterialStatePropertyAll(RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(5),
//                       )),
//                     ),

//so we use TextButton.style


import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 80;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(5),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
 }
