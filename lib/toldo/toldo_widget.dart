import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/backend/schema/structs/index.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'toldo_model.dart';
export 'toldo_model.dart';

class ToldoWidget extends StatefulWidget {
  const ToldoWidget({super.key});

  static String routeName = 'Toldo';
  static String routePath = '/toldo';

  @override
  State<ToldoWidget> createState() => _ToldoWidgetState();
}

class _ToldoWidgetState extends State<ToldoWidget> {
  late ToldoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ToldoModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 500),
        callback: (timer) async {
          safeSetState(() => _model.apiRequestCompleter = null);
          await _model.waitForApiRequestCompleted();
        },
        startImmediately: true,
      );
    });

    _model.switchValue1 = FFAppState().sliderswitchtoldo;
    _model.switchValue2 = FFAppState().sliderfudido;
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
            ..complete(ApiTestCall.call(
              esp32Ip: FFAppState().esp32ip,
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFF010B14),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final toldoApiTestResponse = snapshot.data!;

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
                      Stack(
                        children: [
                          Stack(
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 335.5,
                                                  height: 460.8,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF14181B),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18.0),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.5,
                                                                    340.0,
                                                                    16.5,
                                                                    20.0),
                                                        child: Container(
                                                          width: 302.0,
                                                          height: 78.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1D2428),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        14.0),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, -1.0),
                                                          child: Stack(
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              18.0),
                                                                  child: Text(
                                                                    'Detecção de Chuva:',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Inter Tight',
                                                                          color:
                                                                              Colors.white,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (AabbStruct.maybeFromMap(
                                                                          toldoApiTestResponse
                                                                              .jsonBody)
                                                                      ?.estado ==
                                                                  'SECO')
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            150.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Limpo 🌞',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                Color(0xE639D258),
                                                                            fontSize:
                                                                                18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (AabbStruct.maybeFromMap(
                                                                          toldoApiTestResponse
                                                                              .jsonBody)
                                                                      ?.estado ==
                                                                  'MOLHADO')
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            150.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Úmido 🌦',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter',
                                                                            color:
                                                                                Color(0xE6E12428),
                                                                            fontSize:
                                                                                18.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      50.0,
                                                                      35.0,
                                                                      50.0,
                                                                      10.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.apiResultrq7 =
                                                                  await MotorFrenteCall
                                                                      .call(
                                                                esp32Ip:
                                                                    FFAppState()
                                                                        .esp32ip,
                                                              );

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text:
                                                                ' Abrir        ',
                                                            icon: Icon(
                                                              Icons
                                                                  .arrow_upward,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 140.0,
                                                              height: 60.0,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter Tight',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 2.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      50.0,
                                                                      0.0,
                                                                      50.0,
                                                                      190.0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              _model.apiResultqqd =
                                                                  await MotorTrasCall
                                                                      .call(
                                                                esp32Ip:
                                                                    FFAppState()
                                                                        .esp32ip,
                                                              );

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            text: 'Recolher',
                                                            icon: Icon(
                                                              Icons
                                                                  .arrow_downward_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 24.0,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 140.0,
                                                              height: 60.0,
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(8.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: Color(
                                                                  0xFF272C32),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter Tight',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .info,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              elevation: 2.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.5,
                                                                    205.0,
                                                                    16.5,
                                                                    0.0),
                                                        child: Container(
                                                          width: 302.0,
                                                          height: 120.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF1D2428),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        14.0),
                                                          ),
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        1.0),
                                                            child: Stack(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            25.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Controle Manual',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Inter Tight',
                                                                            color:
                                                                                Colors.white,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          -1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            230.0,
                                                                            15.0,
                                                                            15.0,
                                                                            0.0),
                                                                    child:
                                                                        Switch(
                                                                      value: _model
                                                                          .switchValue1!,
                                                                      onChanged:
                                                                          (newValue) async {
                                                                        safeSetState(() =>
                                                                            _model.switchValue1 =
                                                                                newValue);
                                                                        if (newValue) {
                                                                          FFAppState().sliderswitchtoldo =
                                                                              !(FFAppState().sliderswitchtoldo ?? true);
                                                                          safeSetState(
                                                                              () {});
                                                                        } else {
                                                                          FFAppState().sliderswitchtoldo =
                                                                              !(FFAppState().sliderswitchtoldo ?? true);
                                                                          safeSetState(
                                                                              () {});
                                                                        }
                                                                      },
                                                                      activeColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      activeTrackColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                      inactiveTrackColor:
                                                                          Color(
                                                                              0xFF98999A),
                                                                      inactiveThumbColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          50.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Slider(
                                                                    activeColor:
                                                                        Color(
                                                                            0xFF4B39EF),
                                                                    inactiveColor:
                                                                        Colors
                                                                            .white,
                                                                    min: 0.0,
                                                                    max: 100.0,
                                                                    value: _model
                                                                            .slider1Value ??=
                                                                        FFAppState()
                                                                            .SliderToldo
                                                                            .toDouble(),
                                                                    divisions:
                                                                        10,
                                                                    onChanged: !FFAppState()
                                                                            .sliderswitchtoldo
                                                                        ? null
                                                                        : (newValue) async {
                                                                            newValue =
                                                                                double.parse(newValue.toStringAsFixed(0));
                                                                            safeSetState(() =>
                                                                                _model.slider1Value = newValue);
                                                                            FFAppState().SliderToldo =
                                                                                FFAppState().SliderToldo;
                                                                            safeSetState(() {});
                                                                            _model.apiResultjjf =
                                                                                await SliderToldoCall.call(
                                                                              esp32Ip: FFAppState().esp32ip,
                                                                              slidertoldo: valueOrDefault<String>(
                                                                                _model.slider1Value?.toString(),
                                                                                '0',
                                                                              ),
                                                                            );

                                                                            safeSetState(() {});
                                                                          },
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 16.0, 24.0, 24.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF1D2428),
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x19000000),
                                                  offset: Offset(
                                                    0.0,
                                                    -2.0,
                                                  ),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Modo Automático',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Inter Tight',
                                                              color:
                                                                  Colors.white,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                      Text(
                                                        'Controle baseado em clima',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  color: Color(
                                                                      0xFF95A1AC),
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                  Switch.adaptive(
                                                    value: _model.switchValue2!,
                                                    onChanged:
                                                        (newValue) async {
                                                      safeSetState(() =>
                                                          _model.switchValue2 =
                                                              newValue);
                                                      if (newValue) {
                                                        FFAppState()
                                                                .sliderfudido =
                                                            !(FFAppState()
                                                                    .sliderfudido ??
                                                                true);
                                                        safeSetState(() {});
                                                        _model.apiResultwoe =
                                                            await ToldoChuvaOnCall
                                                                .call(
                                                          esp32Ip: FFAppState()
                                                              .esp32ip,
                                                        );

                                                        safeSetState(() {});
                                                      } else {
                                                        FFAppState()
                                                                .sliderfudido =
                                                            !(FFAppState()
                                                                    .sliderfudido ??
                                                                true);
                                                        safeSetState(() {});
                                                        _model.apiResult1x3 =
                                                            await ToldoChuvaOffCall
                                                                .call(
                                                          esp32Ip: FFAppState()
                                                              .esp32ip,
                                                        );

                                                        safeSetState(() {});
                                                      }
                                                    },
                                                    activeColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    activeTrackColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    inactiveTrackColor:
                                                        Color(0xFF98999A),
                                                    inactiveThumbColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryBackground,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    166.0, 30.0, 166.0, 300.0),
                                child: Text(
                                  'Toldo\n',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        color: Colors.white,
                                        fontSize: 25.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 32.0, 80.0, 300.0),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 26.0,
                                ),
                              ),
                              Opacity(
                                opacity: 0.0,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 20.0, 300.0, 80.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      context
                                          .pushNamed(HomePageWidget.routeName);
                                    },
                                    text: 'Button',
                                    options: FFButtonOptions(
                                      height: 60.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
