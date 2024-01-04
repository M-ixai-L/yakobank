import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'bottom_sheet_model.dart';
export 'bottom_sheet_model.dart';

class BottomSheetWidget extends StatefulWidget {
  const BottomSheetWidget({
    super.key,
    required this.card,
    bool? isTransfern,
  })  : isTransfern = isTransfern ?? true;

  final DocumentReference? card;
  final bool isTransfern;

  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  late BottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BottomSheetModel());

    _model.shortBioController1 ??= TextEditingController();
    _model.shortBioFocusNode1 ??= FocusNode();

    _model.cardNumber1Controller ??= TextEditingController();
    _model.cardNumber1FocusNode ??= FocusNode();

    _model.shortBioController2 ??= TextEditingController();
    _model.shortBioFocusNode2 ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 395.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      width: 50.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).alternate,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                child: Text(
                  'Поповнення картки',
                  style: FlutterFlowTheme.of(context).headlineMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 0.0),
                child: Text(
                  'Уведіть суму для поповнення',
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: TextFormField(
                  controller: _model.shortBioController1,
                  focusNode: _model.shortBioFocusNode1,
                  textInputAction: TextInputAction.next,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Опис транзакції',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 32.0, 20.0, 12.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  textAlign: TextAlign.start,
                  validator:
                      _model.shortBioController1Validator.asValidator(context),
                ),
              ),
              if ((String var1) {
                return var1 != 'null';
              }(valueOrDefault<String>(
                FFAppState().selectedCard?.id,
                'null',
              )))
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                    child: StreamBuilder<CardsRecord>(
                      stream:
                          CardsRecord.getDocument(FFAppState().selectedCard!),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final containerCardsRecord = snapshot.data!;
                        return Container(
                          decoration: const BoxDecoration(),
                          child: Text(
                            (String var1) {
                              return var1
                                  .replaceAll(RegExp(r'\s'), '')
                                  .replaceAllMapped(RegExp(r'.{4}'),
                                      (match) => '${match.group(0)} ');
                            }(containerCardsRecord.number),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              if (!((String var1) {
                return var1 != 'null';
              }(valueOrDefault<String>(
                FFAppState().selectedCard?.id,
                'null',
              ))))
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (widget.isTransfern)
                      Container(
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: TextFormField(
                            controller: _model.cardNumber1Controller,
                            focusNode: _model.cardNumber1FocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Уведіть номер карти',
                              hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.number,
                            validator: _model.cardNumber1ControllerValidator
                                .asValidator(context),
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('contacts');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.add,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            Text(
                              'Або виберіть когось, зі своїх контактів',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: TextFormField(
                  controller: _model.shortBioController2,
                  focusNode: _model.shortBioFocusNode2,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Уведіть суму для поповнення',
                    hintStyle: FlutterFlowTheme.of(context).labelMedium,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    contentPadding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 32.0, 20.0, 12.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.number,
                  validator:
                      _model.shortBioController2Validator.asValidator(context),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (widget.isTransfern) {
                          if ((String var1) {
                            return var1 != 'null';
                          }(valueOrDefault<String>(
                            FFAppState().selectedCard?.id,
                            'null',
                          ))) {
                            var transactionsRecordReference1 =
                                TransactionsRecord.collection.doc();
                            await transactionsRecordReference1
                                .set(createTransactionsRecordData(
                              amount: double.tryParse(
                                  _model.shortBioController2.text),
                              createdAt: getCurrentTimestamp,
                              from: widget.card,
                              to: FFAppState().selectedCard,
                              description: _model.shortBioController1.text,
                            ));
                            _model.exitTransaction2 =
                                TransactionsRecord.getDocumentFromData(
                                    createTransactionsRecordData(
                                      amount: double.tryParse(
                                          _model.shortBioController2.text),
                                      createdAt: getCurrentTimestamp,
                                      from: widget.card,
                                      to: FFAppState().selectedCard,
                                      description:
                                          _model.shortBioController1.text,
                                    ),
                                    transactionsRecordReference1);

                            await FFAppState().selectedCard!.update({
                              ...mapToFirestore(
                                {
                                  'balance': FieldValue.increment(double.parse(
                                      _model.shortBioController2.text)),
                                  'transactions': FieldValue.arrayUnion(
                                      [_model.exitTransaction2?.reference]),
                                },
                              ),
                            });

                            await widget.card!.update({
                              ...mapToFirestore(
                                {
                                  'balance': FieldValue.increment(
                                      -(double.parse(
                                          _model.shortBioController2.text))),
                                  'transactions': FieldValue.arrayUnion(
                                      [_model.exitTransaction2?.reference]),
                                },
                              ),
                            });
                            setState(() {
                              FFAppState().selectedCard = null;
                            });
                          } else {
                            _model.cardRef = await queryCardsRecordOnce(
                              queryBuilder: (cardsRecord) => cardsRecord.where(
                                'number',
                                isEqualTo: _model.cardNumber1Controller.text,
                              ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);

                            var transactionsRecordReference2 =
                                TransactionsRecord.collection.doc();
                            await transactionsRecordReference2
                                .set(createTransactionsRecordData(
                              amount: double.tryParse(
                                  _model.shortBioController2.text),
                              createdAt: getCurrentTimestamp,
                              from: widget.card,
                              to: _model.cardRef?.reference,
                              description: _model.shortBioController1.text,
                            ));
                            _model.exitTransaction =
                                TransactionsRecord.getDocumentFromData(
                                    createTransactionsRecordData(
                                      amount: double.tryParse(
                                          _model.shortBioController2.text),
                                      createdAt: getCurrentTimestamp,
                                      from: widget.card,
                                      to: _model.cardRef?.reference,
                                      description:
                                          _model.shortBioController1.text,
                                    ),
                                    transactionsRecordReference2);

                            await _model.cardRef!.reference.update({
                              ...mapToFirestore(
                                {
                                  'balance': FieldValue.increment(double.parse(
                                      _model.shortBioController2.text)),
                                  'transactions': FieldValue.arrayUnion(
                                      [_model.exitTransaction?.reference]),
                                },
                              ),
                            });

                            await widget.card!.update({
                              ...mapToFirestore(
                                {
                                  'balance': FieldValue.increment(
                                      -(double.parse(
                                          _model.shortBioController2.text))),
                                  'transactions': FieldValue.arrayUnion(
                                      [_model.exitTransaction?.reference]),
                                },
                              ),
                            });
                          }

                          triggerPushNotification(
                            notificationTitle: 'Платіж проведено успішно',
                            notificationText:
                                'Ви відправили платіж на суму ${_model.shortBioController2.text}',
                            userRefs: [currentUserReference!],
                            initialPageName: 'home',
                            parameterData: {},
                          );
                          _model.recipient = await queryUsersRecordOnce(
                            queryBuilder: (usersRecord) => usersRecord.where(
                              'cards',
                              arrayContains: FFAppState().selectedCard,
                            ),
                            singleRecord: true,
                          ).then((s) => s.firstOrNull);
                          triggerPushNotification(
                            notificationTitle: 'Ви отимали платіж',
                            notificationText:
                                'Ви отримали платіж на суму${_model.shortBioController2.text}',
                            userRefs: [_model.recipient!.reference],
                            initialPageName: 'home',
                            parameterData: {},
                          );
                        } else {
                          var transactionsRecordReference3 =
                              TransactionsRecord.collection.doc();
                          await transactionsRecordReference3
                              .set(createTransactionsRecordData(
                            amount: double.tryParse(
                                _model.shortBioController2.text),
                            createdAt: getCurrentTimestamp,
                            from: widget.card,
                            to: widget.card,
                            description: _model.shortBioController1.text,
                          ));
                          _model.transaction =
                              TransactionsRecord.getDocumentFromData(
                                  createTransactionsRecordData(
                                    amount: double.tryParse(
                                        _model.shortBioController2.text),
                                    createdAt: getCurrentTimestamp,
                                    from: widget.card,
                                    to: widget.card,
                                    description:
                                        _model.shortBioController1.text,
                                  ),
                                  transactionsRecordReference3);

                          await widget.card!.update({
                            ...mapToFirestore(
                              {
                                'balance': FieldValue.increment(double.parse(
                                    _model.shortBioController2.text)),
                                'transactions': FieldValue.arrayUnion(
                                    [_model.transaction?.reference]),
                              },
                            ),
                          });
                        }

                        context.pop();

                        setState(() {});
                      },
                      text: 'Поповнити',
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
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
