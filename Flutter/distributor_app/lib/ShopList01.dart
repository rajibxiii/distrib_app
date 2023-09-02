import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'shop_list01_model.dart';
export 'shop_list01_model.dart';

class ShopList01Widget extends StatefulWidget {
  const ShopList01Widget({Key? key}) : super(key: key);

  @override
  _ShopList01WidgetState createState() => _ShopList01WidgetState();
}

class _ShopList01WidgetState extends State<ShopList01Widget> {
  late ShopList01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShopList01Model());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF6F6F6),
        appBar: AppBar(
          backgroundColor: Color(0xFFF6F6F6),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 20,
            borderWidth: 1,
            buttonSize: 40,
            icon: Icon(
              Icons.chevron_left,
              color: Color(0xFFDDA0C9),
              size: 35,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  'Shop List',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/Igloo-Vector-Logo.jpg',
                  width: 200,
                  height: 76,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 370,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFCFC),
                        borderRadius: BorderRadius.circular(15),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFDDA0C9),
                          width: 3,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        child: TextFormField(
                          controller: _model.textController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'SEARCH SHOP',
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFFAFAFAF),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          cursorColor: Color(0xFFDDA0C9),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                          height: 30,
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(1, 0),
                            child: Text(
                              'Visited?',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          unselectedWidgetColor: Color(0xFF32ABE2),
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileValue1 ??= true,
                          onChanged: (newValue) async {
                            setState(() =>
                                _model.checkboxListTileValue1 = newValue!);
                          },
                          title: Text(
                            'Rajib Store',
                            style: FlutterFlowTheme.of(context).titleLarge,
                          ),
                          subtitle: Text(
                            'Owner: Mohamed Rajib',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF32ABE2),
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: Color(0xFF32ABE2),
                          checkColor: FlutterFlowTheme.of(context).info,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          unselectedWidgetColor: Color(0xFF32ABE2),
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileValue2 ??= false,
                          onChanged: (newValue) async {
                            setState(() =>
                                _model.checkboxListTileValue2 = newValue!);
                          },
                          title: Text(
                            'Store ',
                            style: FlutterFlowTheme.of(context).titleLarge,
                          ),
                          subtitle: Text(
                            'Owner: Mohamed Rajib',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF32ABE2),
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: Color(0xFF32ABE2),
                          checkColor: FlutterFlowTheme.of(context).info,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          unselectedWidgetColor: Color(0xFF32ABE2),
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileValue3 ??= false,
                          onChanged: (newValue) async {
                            setState(() =>
                                _model.checkboxListTileValue3 = newValue!);
                          },
                          title: Text(
                            'Store ',
                            style: FlutterFlowTheme.of(context).titleLarge,
                          ),
                          subtitle: Text(
                            'Owner: Mohamed Rajib',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF32ABE2),
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: Color(0xFF32ABE2),
                          checkColor: FlutterFlowTheme.of(context).info,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          unselectedWidgetColor: Color(0xFF32ABE2),
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileValue4 ??= true,
                          onChanged: (newValue) async {
                            setState(() =>
                                _model.checkboxListTileValue4 = newValue!);
                          },
                          title: Text(
                            'Store ',
                            style: FlutterFlowTheme.of(context).titleLarge,
                          ),
                          subtitle: Text(
                            'Owner: Mohamed Rajib',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF32ABE2),
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: Color(0xFF32ABE2),
                          checkColor: FlutterFlowTheme.of(context).info,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          unselectedWidgetColor: Color(0xFF32ABE2),
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileValue5 ??= false,
                          onChanged: (newValue) async {
                            setState(() =>
                                _model.checkboxListTileValue5 = newValue!);
                          },
                          title: Text(
                            'Store ',
                            style: FlutterFlowTheme.of(context).titleLarge,
                          ),
                          subtitle: Text(
                            'Owner: Mohamed Rajib',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF32ABE2),
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: Color(0xFF32ABE2),
                          checkColor: FlutterFlowTheme.of(context).info,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          unselectedWidgetColor: Color(0xFF32ABE2),
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileValue6 ??= false,
                          onChanged: (newValue) async {
                            setState(() =>
                                _model.checkboxListTileValue6 = newValue!);
                          },
                          title: Text(
                            'Store ',
                            style: FlutterFlowTheme.of(context).titleLarge,
                          ),
                          subtitle: Text(
                            'Owner: Mohamed Rajib',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF32ABE2),
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: Color(0xFF32ABE2),
                          checkColor: FlutterFlowTheme.of(context).info,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          ),
                          unselectedWidgetColor: Color(0xFF32ABE2),
                        ),
                        child: CheckboxListTile(
                          value: _model.checkboxListTileValue7 ??= true,
                          onChanged: (newValue) async {
                            setState(() =>
                                _model.checkboxListTileValue7 = newValue!);
                          },
                          title: Text(
                            'Store ',
                            style: FlutterFlowTheme.of(context).titleLarge,
                          ),
                          subtitle: Text(
                            'Owner: Mohamed Rajib',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF32ABE2),
                                ),
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          activeColor: Color(0xFF32ABE2),
                          checkColor: FlutterFlowTheme.of(context).info,
                          dense: false,
                          controlAffinity: ListTileControlAffinity.trailing,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: '+ Add shop',
                          options: FFButtonOptions(
                            height: 50,
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
