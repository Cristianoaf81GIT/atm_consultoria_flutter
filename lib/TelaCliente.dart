import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {  
  @override
  _TelaClienteState createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  static final String _title = "Clientes";
  static final String _textValue = "Clientes";
  static final TextStyle _txtStl = TextStyle(
    fontSize: 20,
    color: Colors.greenAccent[700],  
  );
  static final Text _servicoBarText = Text(_title);
  static final EdgeInsetsGeometry _mainPadding = EdgeInsets.all(16);
  static final EdgeInsetsGeometry _ssvContPaddingValue = EdgeInsets.only(left:10);
  static final EdgeInsetsGeometry _paddingContentValue = EdgeInsets.only(top: 16);
  static final Image _img = Image.asset("imagens/detalhe_cliente.png");
  static final Image _img01 = Image.asset("imagens/cliente1.png");
  static final Image _img02 = Image.asset("imagens/cliente2.png");
  static final String _img01TextValue = "Empresa de Software";
  static final String _img02TextValue = "Empresa de auditoria";
  static final Text _img01Text = Text(_img01TextValue);
  static final Text _img02Text = Text(_img02TextValue);
  static final Padding _paddingContent = Padding(
    padding: _paddingContentValue,
    child: _img01
  );

  static final Padding _paddingContent01 = Padding(
    padding: _paddingContentValue,
    child: _img02 
  );

  static final Text _paddingText = Text(
    _textValue,
    style: _txtStl  
  );
  
  static Padding _ssvContPadding = Padding(
    padding: _ssvContPaddingValue,
    child: _paddingText,   
  );


  static List<Widget> _ssvContChildren = [
    _img,
    _ssvContPadding,
    _paddingContent,
    _img01Text,
    _paddingContent01,
    _img02Text
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
  
  SingleChildScrollView _appBody = SingleChildScrollView(
    child: _ssvMainContainer,      
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _appBody  
    );
  }
}

