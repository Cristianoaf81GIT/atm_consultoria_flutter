import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {  
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> { 
  static final String _title = "Contato";
  static final String _scsvTextValue = "Nossos Contato";
  static final double _fontSize = 20;
  static final TextStyle _txtStl = TextStyle(
    fontSize: _fontSize,
    color: Colors.green.shade600,  
  );
  static final Text _barText = Text(_title);
  static final EdgeInsetsGeometry _scsvPadding = EdgeInsets.all(16);
  static final EdgeInsetsGeometry _ssvContPaddingValue = EdgeInsets.only(left:10);
  static final EdgeInsetsGeometry _paddingContentValue = EdgeInsets.only(top: 10);
  static final Image _img = Image.asset("imagens/detalhe_contato.png");
  static final String _paddingContentText01 = "atendimento@atmconsultoria.com.br";
  static final String _paddingContentText02 = "Telefone (11) 3525-8596";
  static final String _paddingContentText03 = "Celular (11) 99586-5236";
  static final Text _paddingText01 = Text(_paddingContentText01);
  static final Text _paddingText02 = Text(_paddingContentText02);
  static final Text _paddingText03 = Text(_paddingContentText03);
  static final Padding _paddingContent = Padding(
    padding: _paddingContentValue,
    child: _paddingText01,
   );

   static final Padding _paddingContent01 = Padding(
    padding: _paddingContentValue,
    child: _paddingText02,
   );

   static final Padding _paddingContent02 = Padding(
    padding: _paddingContentValue,
    child: _paddingText03,
   );

  static final Text _scsvTextContent = Text(
    _scsvTextValue,
    style: _txtStl
  );
  
  static Padding _scsvContPadding = Padding(
    padding: _ssvContPaddingValue,
    child: _scsvTextContent,   
  );


  static List<Widget> _scsvContChildren = [
    _img,
    _scsvContPadding,
    _paddingContent,
    _paddingContent01,
    _paddingContent02
  ];

  static Column _scsvContainerColumn = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: _scsvContChildren
  );
  
  static final Container _scsvMainContainer = Container(
    padding: _scsvPadding,
    child: _scsvContainerColumn,
  );   


  final AppBar _appBar = AppBar(
    title: _barText,
    backgroundColor: Colors.green,  
  );
  
  SingleChildScrollView _appBody = SingleChildScrollView(
    child: _scsvMainContainer,      
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _appBody,  
    );
  }
}
