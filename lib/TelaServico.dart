import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  @override
  _TelaServicoState createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  static final String _title = "Serviço";
  static final String _sobreEmpTextValue = "Nossos Serviços";
  static final double _fontSize = 20;
  static final TextStyle _sobreEmpTxtStl = TextStyle(
    fontSize: _fontSize,
    color: Colors.teal[200],  
  );
  static final Text _servicoBarText = Text(_title);
  static final EdgeInsetsGeometry _mainPadding = EdgeInsets.all(16);
  static final EdgeInsetsGeometry _ssvContPaddingValue = EdgeInsets.only(left:10);
  static final EdgeInsetsGeometry _paddingContentValue = EdgeInsets.only(top: 16);
  static final Image _detalheServicoImg = Image.asset("imagens/detalhe_servico.png");
  static final String _paddingContentText01 = "Consultoria";
  static final String _paddingContentText02 = "Calculo de preços";
  static final String _paddingContentText03 = "Acompanhamento de Projetos";
  static final Padding _paddingContent = Padding(
    padding: _paddingContentValue,
    child: Text(_paddingContentText01)
  );

  static final Padding _paddingContent01 = Padding(
    padding: _paddingContentValue,
    child: Text(_paddingContentText01)
  );

  static final Padding _paddingContent02 = Padding(
    padding: _paddingContentValue,
    child: Text(_paddingContentText02)
  );

  static final Padding _paddingContent03 = Padding(
    padding: _paddingContentValue,
    child: Text(_paddingContentText03)
  );

  static final Text _sobreEmpText = Text(
    _sobreEmpTextValue,
    style: _sobreEmpTxtStl  
  );
  
  static Padding _ssvContPadding = Padding(
    padding: _ssvContPaddingValue,
    child: _sobreEmpText,   
  );


  static List<Widget> _ssvContChildren = [
    _detalheServicoImg,
    _ssvContPadding,
    _paddingContent,
    _paddingContent01,
    _paddingContent02,
    _paddingContent03 
  ];

  static Column _ssvContainerColumn = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: _ssvContChildren
  );
  
  static final Container _ssvMainContainer = Container(
    padding: _mainPadding,
    child: _ssvContainerColumn,
  );   


  final AppBar _appBar = AppBar(
    title: _servicoBarText,
    backgroundColor: Colors.green,  
  );
  
  SingleChildScrollView _ssv = SingleChildScrollView(
    child: _ssvMainContainer,      
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: _appBar,
     body: _ssv
    );
  } 
}



