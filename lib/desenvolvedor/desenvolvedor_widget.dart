import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'desenvolvedor_model.dart';
export 'desenvolvedor_model.dart';

class DesenvolvedorWidget extends StatefulWidget {
  const DesenvolvedorWidget({super.key});

  static String routeName = 'Desenvolvedor';
  static String routePath = '/desenvolvedor';

  @override
  State<DesenvolvedorWidget> createState() => _DesenvolvedorWidgetState();
}

class _DesenvolvedorWidgetState extends State<DesenvolvedorWidget> {
  late DesenvolvedorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DesenvolvedorModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF010B14),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      width: 402.0,
                      height: 906.0,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                230.0, 144.0, 30.0, 10.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultt1a = await MotorATrasCall.call(
                                  esp32Ip: FFAppState().esp32ip,
                                );

                                safeSetState(() {});
                              },
                              text: 'Trás   ',
                              icon: Icon(
                                Icons.arrow_downward_sharp,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: 140.0,
                                height: 60.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF14181B),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: FlutterFlowTheme.of(context).info,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                79.5, 30.0, 79.5, 10.0),
                            child: Text(
                              'Controle dos Motores',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 32.0, 0.0, 0.0),
                            child: Icon(
                              Icons.arrow_back,
                              color: Color(0xFFFBFBFB),
                              size: 26.0,
                            ),
                          ),
                          Opacity(
                            opacity: 0.0,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 12.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context
                                      .pushNamed(ConfiguracoesWidget.routeName);
                                },
                                text: 'Button',
                                options: FFButtonOptions(
                                  width: 70.0,
                                  height: 60.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter Tight',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 360.0, 0.0, 10.0),
                            child: Text(
                              'Motor Janela',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Color(0xFFFFF8F8),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 230.0, 0.0, 10.0),
                            child: Text(
                              'Motor B Traseiro Toldo',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Color(0xFFFFF8F8),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                230.0, 274.0, 30.0, 10.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResult784 = await MotorBTrasCall.call(
                                  esp32Ip: FFAppState().esp32ip,
                                );

                                safeSetState(() {});
                              },
                              text: 'Trás',
                              icon: Icon(
                                Icons.arrow_downward_sharp,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: 140.0,
                                height: 60.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF14181B),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 144.0, 30.0, 10.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultybx =
                                    await MotorAFrenteCall.call(
                                  esp32Ip: FFAppState().esp32ip,
                                );

                                safeSetState(() {});
                              },
                              text: 'Frente',
                              icon: Icon(
                                Icons.arrow_upward,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: 140.0,
                                height: 60.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                230.0, 404.0, 30.0, 10.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultmdo = await TrasJanelaCall.call(
                                  esp32Ip: FFAppState().esp32ip,
                                );

                                safeSetState(() {});
                              },
                              text: 'Trás',
                              icon: Icon(
                                Icons.arrow_downward_sharp,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: 140.0,
                                height: 60.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFF14181B),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 404.0, 30.0, 10.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultu0l =
                                    await FrenteJanelaCall.call(
                                  esp32Ip: FFAppState().esp32ip,
                                );

                                safeSetState(() {});
                              },
                              text: 'Frente',
                              icon: Icon(
                                Icons.arrow_upward,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: 140.0,
                                height: 60.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 100.0, 0.0, 10.0),
                            child: Text(
                              'Motor A Dianteiro Toldo',
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Inter Tight',
                                    color: Color(0xFFFFF8F8),
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                119.0, 515.0, 119.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResultoi8 =
                                    await PararMotoresCall.call(
                                  esp32Ip: FFAppState().esp32ip,
                                );

                                safeSetState(() {});
                              },
                              text: 'Parar motores',
                              icon: Icon(
                                Icons.stop_circle,
                                size: 16.0,
                              ),
                              options: FFButtonOptions(
                                width: 165.0,
                                height: 65.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 274.0, 30.0, 10.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                _model.apiResult5fl =
                                    await MotorBFrenteCall.call(
                                  esp32Ip: FFAppState().esp32ip,
                                );

                                safeSetState(() {});
                              },
                              text: 'Frente',
                              icon: Icon(
                                Icons.arrow_upward,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: 140.0,
                                height: 60.0,
                                padding: EdgeInsets.all(8.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter Tight',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
