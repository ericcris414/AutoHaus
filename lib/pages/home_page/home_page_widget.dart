import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFF010B14),
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          270.0, 236.0, 50.0, 0.0),
                      child: Text(
                        'Janela',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Inter Tight',
                              color: Color(0xFF20C3D2),
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          71.0, 236.0, 200.0, 0.0),
                      child: Text(
                        'Toldo',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Inter Tight',
                              color: Color(0xFF20C3D2),
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          360.0, 30.0, 20.0, 80.0),
                      child: Icon(
                        Icons.settings_sharp,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                    Opacity(
                      opacity: 0.0,
                      child: Align(
                        alignment: AlignmentDirectional(1.1, -0.95),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(ConfiguracoesWidget.routeName);
                          },
                          text: 'Button',
                          options: FFButtonOptions(
                            height: 40.0,
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
                          20.0, 30.0, 300.0, 80.0),
                      child: Text(
                        'Home',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Inter Tight',
                              color: Colors.white,
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
                Opacity(
                  opacity: 0.0,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(6.0, 90.0, 20.0, 600.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 190.0,
                      child: Container(
                        width: 190.0,
                        height: 190.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          border: Border.all(
                            width: 190.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/52d11ad7-a72a-4bba-9cc9-b218b4110af3.png',
                      width: 196.5,
                      height: 196.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(259.0, 127.0, 0.0, 530.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/window-svgrepo-com.png',
                      width: 88.0,
                      height: 88.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(6.0, 90.0, 210.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(ToldoWidget.routeName);
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      width: 190.0,
                      height: 190.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x291A3C4B),
                      textStyle: GoogleFonts.getFont(
                        'Inter Tight',
                        color: Color(0x00FFFFFF),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Color(0xFF20C3D2),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(210.0, 90.0, 6.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(JanelaWidget.routeName);
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      width: 190.0,
                      height: 190.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0x291A3C4B),
                      textStyle: GoogleFonts.getFont(
                        'Inter Tight',
                        color: Color(0x00FFFFFF),
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Color(0xFF20C3D2),
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
