import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/submitted_icon_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AppliancesWidget extends StatefulWidget {
  const AppliancesWidget({Key key}) : super(key: key);

  @override
  _AppliancesWidgetState createState() => _AppliancesWidgetState();
}

class _AppliancesWidgetState extends State<AppliancesWidget> {
  String budgetValue;
  TextEditingController reasonController;
  String uploadedFileUrl = '';
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    reasonController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 40, 15, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).tertiaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    18, 5, 18, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 18),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 15, 0, 0),
                                                  child: Container(
                                                    width: 60,
                                                    height: 4,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x61AAAAAA),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 0, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  AutoSizeText(
                                                    'Appliances',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 28,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 50,
                                                    borderWidth: 1,
                                                    buttonSize: 4,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .campusGrey,
                                                    icon: Icon(
                                                      Icons.clear,
                                                      color: Colors.white,
                                                      size: 25,
                                                    ),
                                                    onPressed: () async {
                                                      Navigator.pop(context);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 28, 0, 0),
                                            child: FlutterFlowDropDown(
                                              options: [
                                                'Stove not working',
                                                'Oven not working',
                                                'Microwave not working',
                                                'Fridge not working'
                                              ].toList(),
                                              onChanged: (val) => setState(
                                                  () => budgetValue = val),
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                              hintText: 'Select option',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 15,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              elevation: 2,
                                              borderColor: Color(0xFFDBE2E7),
                                              borderWidth: 2,
                                              borderRadius: 8,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(20, 20, 12, 20),
                                              hidesUnderline: true,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: TextFormField(
                                          controller: reasonController,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Description',
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF42A5F5),
                                                width: 6,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF42A5F5),
                                                width: 6,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 45, 24, 0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                          textAlign: TextAlign.start,
                                          maxLines: 6,
                                          keyboardType: TextInputType.name,
                                          validator: (val) {
                                            if (val.isEmpty) {
                                              return 'Field is required';
                                            }

                                            return null;
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16, 15, 16, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Wrap(
                                            spacing: 0,
                                            runSpacing: 0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Text(
                                                uploadedFileUrl
                                                    .maybeHandleOverflow(
                                                  maxChars: 40,
                                                  replacement: '???',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 12,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .tertiaryColor,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0x3B1D2429),
                                            )
                                          ],
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(16),
                                            topRight: Radius.circular(16),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 10, 20, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FFButtonWidget(
                                                onPressed: () async {
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
                                                    allowPhoto: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      validateFileFormat(
                                                          selectedMedia
                                                              .storagePath,
                                                          context)) {
                                                    showUploadMessage(
                                                      context,
                                                      'Uploading file...',
                                                      showLoading: true,
                                                    );
                                                    final downloadUrl =
                                                        await uploadData(
                                                            selectedMedia
                                                                .storagePath,
                                                            selectedMedia
                                                                .bytes);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .hideCurrentSnackBar();
                                                    if (downloadUrl != null) {
                                                      setState(() =>
                                                          uploadedFileUrl =
                                                              downloadUrl);
                                                      showUploadMessage(
                                                        context,
                                                        'File Uploaded!',
                                                      );
                                                    } else {
                                                      showUploadMessage(
                                                        context,
                                                        'Failed to upload media',
                                                      );
                                                      return;
                                                    }
                                                  }
                                                },
                                                text: 'Upload',
                                                options: FFButtonOptions(
                                                  width: double.infinity,
                                                  height: 50,
                                                  color: Color(0xFFDBE2E7),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0xFF262D34),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1,
                                                  ),
                                                  borderRadius: 40,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 16, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    if (!formKey.currentState
                                                        .validate()) {
                                                      return;
                                                    }

                                                    if (budgetValue == null) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            content: Text(
                                                                'Dropdown field cannot be empty. Please select an option'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    }

                                                    final maintenanceCreateData =
                                                        createMaintenanceRecordData(
                                                      issue: budgetValue,
                                                      status: 'Submitted',
                                                      email: currentUserEmail,
                                                      createdTime:
                                                          getCurrentTimestamp,
                                                      displayName:
                                                          currentUserDisplayName,
                                                      room: currentUserDocument
                                                          ?.room,
                                                      building:
                                                          currentUserDocument
                                                              ?.building,
                                                      notes:
                                                          reasonController.text,
                                                      rating: 0,
                                                      uid: currentUserUid,
                                                      category: 'Appliances',
                                                      isDone: false,
                                                      photoUrl: uploadedFileUrl,
                                                      assigned:
                                                          'Maintenace Team',
                                                    );
                                                    await MaintenanceRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            maintenanceCreateData);
                                                    await AirtableCall.call(
                                                      user: currentUserEmail,
                                                      issue: budgetValue,
                                                      room: currentUserDocument
                                                          ?.room,
                                                      building:
                                                          currentUserDocument
                                                              ?.building,
                                                      status: 'Submitted',
                                                      created: dateTimeFormat(
                                                          'd/M/y',
                                                          getCurrentTimestamp),
                                                    );
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      barrierColor:
                                                          Color(0x64F5F5F5),
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child:
                                                              SubmittedIconWidget(),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  text: 'Save',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 50,
                                                    color: Color(0xFFDBE2E7),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF262D34),
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius: 40,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
