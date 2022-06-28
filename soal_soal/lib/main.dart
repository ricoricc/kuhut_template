import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Start Soal",
      home: Scaffold(
        body: MainMenu(),
      ),
    ),
  );
}

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const Text("Siap mengerjakan soal?"),
        ElevatedButton(
          onPressed: () {
            //Masukan Soal disini
            String soal = "Siapakah pacar andrew sebenarnya?";
            List<String>? ans = [];
            //add Jawaban disini
            ans.add("CCK");
            ans.add("Alex");
            ans.add("Rebeka");
            ans.add("Vin");
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Soal(soal: soal, ans: ans),
              ),
            );
          },
          child: const Text("Siap!"),
        )
      ]),
    );
  }
}

class Soal extends StatefulWidget {
  final String soal;
  final List<String> ans;

  const Soal({
    Key? key,
    required this.soal,
    required this.ans,
  }) : super(key: key);

  @override
  State<Soal> createState() => _SoalState();
}

class _SoalState extends State<Soal> {
  late String _character = "";
  int page = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Soal No $page"),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "$page. ${widget.soal}",
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                title: Text(widget.ans[0]),
                leading: Radio(
                  value: widget.ans[0],
                  groupValue: _character,
                  onChanged: (value) {
                    setState(() {
                      _character = value.toString();
                    });
                    print(value);
                  },
                ),
              ),
              ListTile(
                title: Text(widget.ans[1]),
                leading: Radio(
                  value: widget.ans[1],
                  groupValue: _character,
                  onChanged: (value) {
                    setState(() {
                      _character = value.toString();
                    });
                    print(value);
                  },
                ),
              ),
              ListTile(
                title: Text(widget.ans[2]),
                leading: Radio(
                  value: widget.ans[2],
                  groupValue: _character,
                  onChanged: (value) {
                    setState(() {
                      _character = value.toString();
                    });
                    print(value);
                  },
                ),
              ),
              ListTile(
                title: Text(widget.ans[3]),
                leading: Radio(
                  value: widget.ans[3],
                  groupValue: _character,
                  onChanged: (value) {
                    setState(() {
                      _character = value.toString();
                    });
                    print(value);
                  },
                ),
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("<< Back"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Next >>"),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
