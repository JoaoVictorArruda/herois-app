import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:herois/presentation/home/widgets/home_bottom_navigation_bar.dart';

import '../../../injection.dart';

List _elements = [
  {'name': 'Tiver idade inferior a 16 anos ou superior a 69 anos.', 'group': 'Você não poderá doar sangue se:'},
  {'name': 'Tiver peso inferior a 50 quilos.', 'group': 'Você não poderá doar sangue se:'},
  {'name': 'Estiver com anemia no teste realizado imediatamente antes da doação.', 'group': 'Você não poderá doar sangue se:'},
  {'name': 'Estiver com hipertensão ou hipotensão arterial no momento da doação.', 'group': 'Você não poderá doar sangue se:'},
  {'name': 'Estiver com aumento ou diminuição dos batimentos cardíacos no momento da doação.', 'group': 'Você não poderá doar sangue se:'},
  {'name': 'Estiver com febre no dia da doação.', 'group': 'Você não poderá doar sangue se:'},
  {'name': 'Estiver grávida.', 'group': 'Você não poderá doar sangue se:'},
  {'name': 'Estiver amamentando, a menos que o parto tenha ocorrido há mais de 12 meses.', 'group': 'Você não poderá doar sangue se:'},
  {'name': '● Por 48 horas:\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por sete dias:\n→Se teve diarreia./n→após terminarem os sintomas de gripe ou resfriado.\n→Após a cura de conjuntivite.\n→Extração dentária (verificar uso de mediação)./n→tratamento de canal (verificar medicação).', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por duas semanas:\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por três semanas:\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por quatro semanas:\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por oito semanas (somente para homens):\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por 12 semanas (somente para mulheres):\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por três meses:\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por seis meses a 01 ano:\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por 12 meses:\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
  {'name': '● Por cinco anos:\n→Se recebeu vacina preparada com vírus ou bactéria mortos, toxóide ou recombinantes. Ex.: cólera, poliomielite (salk), difteria, tétano, febre tifóide (injetável), meningite, coqueluche, pneumococo\n→Se recebeu vacina contra gripe.', 'group': 'Você estará impedido de doar sangue:'},
];

class LearningOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grouped List View Example'),
      ),
      body: GroupedListView<dynamic, String>(
        elements: _elements,
        groupBy: (element) => element['group'],
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item1['name'].compareTo(item2['name']),
        // order: GroupedListOrder.DESC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 1.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Container(
              child: ListTile(
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                // leading: Icon(Icons.account_circle),
                title: Text(element['name']),
                // trailing: Icon(Icons.arrow_forward),
                leading: Icon(Icons.arrow_forward),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: const HomeBottomNavigationBar(index: 4)
    );
  }

}