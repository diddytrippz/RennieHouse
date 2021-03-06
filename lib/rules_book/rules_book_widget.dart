import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_pdf_viewer.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RulesBookWidget extends StatefulWidget {
  const RulesBookWidget({Key key}) : super(key: key);

  @override
  _RulesBookWidgetState createState() => _RulesBookWidgetState();
}

class _RulesBookWidgetState extends State<RulesBookWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              FlutterFlowPdfViewer(
                assetPath: 'assets/pdfs/Residence_Fees_2022.pdf',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                horizontalScroll: false,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 20, 0, 0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 55,
                  fillColor: Color(0x61AAAAAA),
                  icon: Icon(
                    Icons.clear,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                    size: 30,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
