* TS: src/rules/dangerous_statement.ts:10:1 DangerousStatementConf
CLASS zcl_lnt_dngrs_sttmnt_cnf DEFINITION PUBLIC INHERITING FROM zcl_lnt_basic_rule_config CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS zlnt_own_storage_4c72afe8366e~keys REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~get REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~put REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~has REDEFINITION.
    METHODS zlnt_view_storage_74017ca272ac~delete REDEFINITION.
    METHODS zlnt_view_read_sr_e9bcbe1faf47 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_90d8ff5ed63d IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_1871f229e082 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_d362d5afa793 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_7ca471dec8c6 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_9b57dcccfa47 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_014bdfa86c52 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_ef1f3be93383 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_16a0eb86254c RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_c98dfc109792 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_085be375b29e RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_ae4c226d4b4e IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_6b039f478731 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_35b59245ffa5 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_5e84d7a71798 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_250a87ede502 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_35e6f285754a RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_c3c813aea281 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_407fb524ae8d RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_08cbbdcb452b IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_d3488ea5ba06 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_4ef9bff00cc2 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_14a64a56fa20 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_a7b60f8b7e97 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_fdda7544b790 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_5ef3b385dba0 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_41bb737a1000 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_write_s_2284a93dbcb0 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS zlnt_view_read_sr_b2d423c99bdd RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_view_write_s_a276e82db349 IMPORTING p0 TYPE abap_bool.
    DATA exec_sql_e377 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA kernel_call TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA system_call_c7af TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA insert_report_6d50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA generate_dynpro_dab6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA generate_report_dd49 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA generate_subroutine_a979 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA delete_report_2542 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA delete_textpool_ddcf TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA insert_textpool_44c6 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA delete_dynpro_5d65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA export_dynpro_5cb5 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA editor_call_for_report TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA dynamic_sql TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ignore_rap_query_provider TYPE abap_bool.
    METHODS constructor IMPORTING view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dngrs_sttmnt_cnf IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS NOT BOUND.
    ENDIF.
    super->constructor( view_source = view_source ).
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = abap_true.
    DATA(t2) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t2->has = abap_true.
    t2->value = t1.
    me->zlnt_view_write_s_90d8ff5ed63d( p0 = t2 ).
    DATA(t3) = abap_true.
    DATA(t4) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t4->has = abap_true.
    t4->value = t3.
    me->zlnt_view_write_s_d362d5afa793( p0 = t4 ).
    DATA(t5) = abap_true.
    DATA(t6) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t6->has = abap_true.
    t6->value = t5.
    me->zlnt_view_write_s_9b57dcccfa47( p0 = t6 ).
    DATA(t7) = abap_true.
    DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t8->has = abap_true.
    t8->value = t7.
    me->zlnt_view_write_s_ef1f3be93383( p0 = t8 ).
    DATA(t9) = abap_true.
    DATA(t10) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t10->has = abap_true.
    t10->value = t9.
    me->zlnt_view_write_s_c98dfc109792( p0 = t10 ).
    DATA(t11) = abap_true.
    DATA(t12) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t12->has = abap_true.
    t12->value = t11.
    me->zlnt_view_write_s_ae4c226d4b4e( p0 = t12 ).
    DATA(t13) = abap_true.
    DATA(t14) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t14->has = abap_true.
    t14->value = t13.
    me->zlnt_view_write_s_35b59245ffa5( p0 = t14 ).
    DATA(t15) = abap_true.
    DATA(t16) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t16->has = abap_true.
    t16->value = t15.
    me->zlnt_view_write_s_250a87ede502( p0 = t16 ).
    DATA(t17) = abap_true.
    DATA(t18) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t18->has = abap_true.
    t18->value = t17.
    me->zlnt_view_write_s_c3c813aea281( p0 = t18 ).
    DATA(t19) = abap_true.
    DATA(t20) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t20->has = abap_true.
    t20->value = t19.
    me->zlnt_view_write_s_08cbbdcb452b( p0 = t20 ).
    DATA(t21) = abap_true.
    DATA(t22) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t22->has = abap_true.
    t22->value = t21.
    me->zlnt_view_write_s_4ef9bff00cc2( p0 = t22 ).
    DATA(t23) = abap_true.
    DATA(t24) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t24->has = abap_true.
    t24->value = t23.
    me->zlnt_view_write_s_a7b60f8b7e97( p0 = t24 ).
    DATA(t25) = abap_true.
    DATA(t26) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t26->has = abap_true.
    t26->value = t25.
    me->zlnt_view_write_s_5ef3b385dba0( p0 = t26 ).
    DATA(t27) = abap_true.
    DATA(t28) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t28->has = abap_true.
    t28->value = t27.
    me->zlnt_view_write_s_2284a93dbcb0( p0 = t28 ).
    DATA(t29) = abap_true.
    me->zlnt_view_write_s_a276e82db349( p0 = t29 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1472_e77984f30f1d.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_e9bcbe1faf47.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `execSQL` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->exec_sql_e377.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_90d8ff5ed63d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `execSQL` p1 = t1 ).
    ELSE.
      me->exec_sql_e377 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `execSQL`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_1871f229e082.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `kernelCall` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->kernel_call.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_d362d5afa793.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `kernelCall` p1 = t1 ).
    ELSE.
      me->kernel_call = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kernelCall`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_7ca471dec8c6.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `systemCall` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->system_call_c7af.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_9b57dcccfa47.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `systemCall` p1 = t1 ).
    ELSE.
      me->system_call_c7af = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `systemCall`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_014bdfa86c52.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `insertReport` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->insert_report_6d50.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_ef1f3be93383.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `insertReport` p1 = t1 ).
    ELSE.
      me->insert_report_6d50 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `insertReport`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_16a0eb86254c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `generateDynpro` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->generate_dynpro_dab6.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_c98dfc109792.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `generateDynpro` p1 = t1 ).
    ELSE.
      me->generate_dynpro_dab6 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `generateDynpro`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_085be375b29e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `generateReport` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->generate_report_dd49.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_ae4c226d4b4e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `generateReport` p1 = t1 ).
    ELSE.
      me->generate_report_dd49 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `generateReport`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_6b039f478731.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `generateSubroutine` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->generate_subroutine_a979.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_35b59245ffa5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `generateSubroutine` p1 = t1 ).
    ELSE.
      me->generate_subroutine_a979 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `generateSubroutine`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_5e84d7a71798.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `deleteReport` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->delete_report_2542.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_250a87ede502.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `deleteReport` p1 = t1 ).
    ELSE.
      me->delete_report_2542 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deleteReport`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_35e6f285754a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `deleteTextpool` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->delete_textpool_ddcf.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_c3c813aea281.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `deleteTextpool` p1 = t1 ).
    ELSE.
      me->delete_textpool_ddcf = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deleteTextpool`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_407fb524ae8d.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `insertTextpool` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->insert_textpool_44c6.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_08cbbdcb452b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `insertTextpool` p1 = t1 ).
    ELSE.
      me->insert_textpool_44c6 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `insertTextpool`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_d3488ea5ba06.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `deleteDynpro` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->delete_dynpro_5d65.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_4ef9bff00cc2.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `deleteDynpro` p1 = t1 ).
    ELSE.
      me->delete_dynpro_5d65 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deleteDynpro`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_14a64a56fa20.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `exportDynpro` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->export_dynpro_5cb5.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a7b60f8b7e97.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `exportDynpro` p1 = t1 ).
    ELSE.
      me->export_dynpro_5cb5 = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exportDynpro`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_fdda7544b790.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `editorCallForReport` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->editor_call_for_report.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5ef3b385dba0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `editorCallForReport` p1 = t1 ).
    ELSE.
      me->editor_call_for_report = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `editorCallForReport`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_41bb737a1000.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `dynamicSQL` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_boolean( ).
      ENDIF.
    ELSE.
      result = me->dynamic_sql.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_2284a93dbcb0.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        t1->bval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `dynamicSQL` p1 = t1 ).
    ELSE.
      me->dynamic_sql = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dynamicSQL`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_b2d423c99bdd.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `ignoreRAPQueryProvider` ) ).
      result = t1->as_boolean( ).
    ELSE.
      result = me->ignore_rap_query_provider.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_a276e82db349.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      CREATE OBJECT t1.
      t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
      t1->bval = p0.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `ignoreRAPQueryProvider` p1 = t1 ).
    ELSE.
      me->ignore_rap_query_provider = p0.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreRAPQueryProvider`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `execSQL`.
        result = abap_true.
      WHEN `kernelCall`.
        result = abap_true.
      WHEN `systemCall`.
        result = abap_true.
      WHEN `insertReport`.
        result = abap_true.
      WHEN `generateDynpro`.
        result = abap_true.
      WHEN `generateReport`.
        result = abap_true.
      WHEN `generateSubroutine`.
        result = abap_true.
      WHEN `deleteReport`.
        result = abap_true.
      WHEN `deleteTextpool`.
        result = abap_true.
      WHEN `insertTextpool`.
        result = abap_true.
      WHEN `deleteDynpro`.
        result = abap_true.
      WHEN `exportDynpro`.
        result = abap_true.
      WHEN `editorCallForReport`.
        result = abap_true.
      WHEN `dynamicSQL`.
        result = abap_true.
      WHEN `ignoreRAPQueryProvider`.
        result = abap_true.
      WHEN `exclude`.
        result = abap_true.
      WHEN `severity`.
        result = abap_true.
    ENDCASE.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc = 0.
      result = abap_false.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->delete( p0 ).
      RETURN.
    ENDIF.
    result = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = zlnt_runtime_ownk_4497b85e405d=>keys( me->zlnt_view_source_36f3bf68b9b8 ).
      RETURN.
    ENDIF.
    t1 = NEW #( ).
    t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exclude` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exclude` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `severity` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `severity` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `execSQL` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `execSQL` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `kernelCall` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `kernelCall` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `systemCall` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `systemCall` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `insertReport` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `insertReport` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `generateDynpro` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `generateDynpro` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `generateReport` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `generateReport` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `generateSubroutine` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `generateSubroutine` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `deleteReport` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `deleteReport` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `deleteTextpool` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `deleteTextpool` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `insertTextpool` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `insertTextpool` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `deleteDynpro` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `deleteDynpro` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `exportDynpro` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `exportDynpro` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `editorCallForReport` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `editorCallForReport` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `dynamicSQL` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `dynamicSQL` p1 = VALUE #( ) ).
    ENDIF.
    READ TABLE me->zlnt_record_delet_0597644d88b4 WITH KEY table_line = `ignoreRAPQueryProvider` TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      t1->put( p0 = `ignoreRAPQueryProvider` p1 = VALUE #( ) ).
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
        IF me->zlnt_view_source_36f3bf68b9b8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE me->zlnt_view_source_36f3bf68b9b8->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from graph`.
          ENDIF.
        ELSEIF me->zlnt_view_source_36f3bf68b9b8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: primitive prototype lookup unavailable`.
        ENDIF.
      ELSE.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: native prototype lookup unavailable`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->get( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `exclude`.
        CLEAR result.
        IF me->exclude IS BOUND.
          CLEAR result.
          IF me->exclude IS BOUND.
            DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t1.
            DATA t2 TYPE REF TO object.
            CLEAR t2.
            CLEAR t1.
            t2 = me->exclude.
            TRY.
                result ?= t2.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF result IS NOT BOUND.
              TRY.
                  t1 ?= me->exclude.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t1 IS BOUND.
                result = t1->source( ).
              ENDIF.
              IF result IS NOT BOUND.
                CREATE OBJECT result.
                result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                result->oval = me->exclude.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `severity`.
        CLEAR result.
        IF me->severity IS BOUND AND me->severity->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->severity->value.
        ENDIF.
      WHEN `execSQL`.
        CLEAR result.
        IF me->exec_sql_e377 IS BOUND AND me->exec_sql_e377->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->exec_sql_e377->value.
        ENDIF.
      WHEN `kernelCall`.
        CLEAR result.
        IF me->kernel_call IS BOUND AND me->kernel_call->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->kernel_call->value.
        ENDIF.
      WHEN `systemCall`.
        CLEAR result.
        IF me->system_call_c7af IS BOUND AND me->system_call_c7af->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->system_call_c7af->value.
        ENDIF.
      WHEN `insertReport`.
        CLEAR result.
        IF me->insert_report_6d50 IS BOUND AND me->insert_report_6d50->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->insert_report_6d50->value.
        ENDIF.
      WHEN `generateDynpro`.
        CLEAR result.
        IF me->generate_dynpro_dab6 IS BOUND AND me->generate_dynpro_dab6->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->generate_dynpro_dab6->value.
        ENDIF.
      WHEN `generateReport`.
        CLEAR result.
        IF me->generate_report_dd49 IS BOUND AND me->generate_report_dd49->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->generate_report_dd49->value.
        ENDIF.
      WHEN `generateSubroutine`.
        CLEAR result.
        IF me->generate_subroutine_a979 IS BOUND AND me->generate_subroutine_a979->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->generate_subroutine_a979->value.
        ENDIF.
      WHEN `deleteReport`.
        CLEAR result.
        IF me->delete_report_2542 IS BOUND AND me->delete_report_2542->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->delete_report_2542->value.
        ENDIF.
      WHEN `deleteTextpool`.
        CLEAR result.
        IF me->delete_textpool_ddcf IS BOUND AND me->delete_textpool_ddcf->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->delete_textpool_ddcf->value.
        ENDIF.
      WHEN `insertTextpool`.
        CLEAR result.
        IF me->insert_textpool_44c6 IS BOUND AND me->insert_textpool_44c6->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->insert_textpool_44c6->value.
        ENDIF.
      WHEN `deleteDynpro`.
        CLEAR result.
        IF me->delete_dynpro_5d65 IS BOUND AND me->delete_dynpro_5d65->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->delete_dynpro_5d65->value.
        ENDIF.
      WHEN `exportDynpro`.
        CLEAR result.
        IF me->export_dynpro_5cb5 IS BOUND AND me->export_dynpro_5cb5->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->export_dynpro_5cb5->value.
        ENDIF.
      WHEN `editorCallForReport`.
        CLEAR result.
        IF me->editor_call_for_report IS BOUND AND me->editor_call_for_report->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->editor_call_for_report->value.
        ENDIF.
      WHEN `dynamicSQL`.
        CLEAR result.
        IF me->dynamic_sql IS BOUND AND me->dynamic_sql->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
          result->bval = me->dynamic_sql->value.
        ENDIF.
      WHEN `ignoreRAPQueryProvider`.
        CLEAR result.
        CREATE OBJECT result.
        result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
        result->bval = me->ignore_rap_query_provider.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `severity`.
        CLEAR me->severity.
        IF p1 IS BOUND.
          me->severity = NEW #( ).
          me->severity->has = abap_true.
          me->severity->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `severity`.
      WHEN `execSQL`.
        CLEAR me->exec_sql_e377.
        IF p1 IS BOUND.
          me->exec_sql_e377 = NEW #( ).
          me->exec_sql_e377->has = abap_true.
          me->exec_sql_e377->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `execSQL`.
      WHEN `kernelCall`.
        CLEAR me->kernel_call.
        IF p1 IS BOUND.
          me->kernel_call = NEW #( ).
          me->kernel_call->has = abap_true.
          me->kernel_call->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `kernelCall`.
      WHEN `systemCall`.
        CLEAR me->system_call_c7af.
        IF p1 IS BOUND.
          me->system_call_c7af = NEW #( ).
          me->system_call_c7af->has = abap_true.
          me->system_call_c7af->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `systemCall`.
      WHEN `insertReport`.
        CLEAR me->insert_report_6d50.
        IF p1 IS BOUND.
          me->insert_report_6d50 = NEW #( ).
          me->insert_report_6d50->has = abap_true.
          me->insert_report_6d50->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `insertReport`.
      WHEN `generateDynpro`.
        CLEAR me->generate_dynpro_dab6.
        IF p1 IS BOUND.
          me->generate_dynpro_dab6 = NEW #( ).
          me->generate_dynpro_dab6->has = abap_true.
          me->generate_dynpro_dab6->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `generateDynpro`.
      WHEN `generateReport`.
        CLEAR me->generate_report_dd49.
        IF p1 IS BOUND.
          me->generate_report_dd49 = NEW #( ).
          me->generate_report_dd49->has = abap_true.
          me->generate_report_dd49->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `generateReport`.
      WHEN `generateSubroutine`.
        CLEAR me->generate_subroutine_a979.
        IF p1 IS BOUND.
          me->generate_subroutine_a979 = NEW #( ).
          me->generate_subroutine_a979->has = abap_true.
          me->generate_subroutine_a979->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `generateSubroutine`.
      WHEN `deleteReport`.
        CLEAR me->delete_report_2542.
        IF p1 IS BOUND.
          me->delete_report_2542 = NEW #( ).
          me->delete_report_2542->has = abap_true.
          me->delete_report_2542->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deleteReport`.
      WHEN `deleteTextpool`.
        CLEAR me->delete_textpool_ddcf.
        IF p1 IS BOUND.
          me->delete_textpool_ddcf = NEW #( ).
          me->delete_textpool_ddcf->has = abap_true.
          me->delete_textpool_ddcf->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deleteTextpool`.
      WHEN `insertTextpool`.
        CLEAR me->insert_textpool_44c6.
        IF p1 IS BOUND.
          me->insert_textpool_44c6 = NEW #( ).
          me->insert_textpool_44c6->has = abap_true.
          me->insert_textpool_44c6->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `insertTextpool`.
      WHEN `deleteDynpro`.
        CLEAR me->delete_dynpro_5d65.
        IF p1 IS BOUND.
          me->delete_dynpro_5d65 = NEW #( ).
          me->delete_dynpro_5d65->has = abap_true.
          me->delete_dynpro_5d65->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `deleteDynpro`.
      WHEN `exportDynpro`.
        CLEAR me->export_dynpro_5cb5.
        IF p1 IS BOUND.
          me->export_dynpro_5cb5 = NEW #( ).
          me->export_dynpro_5cb5->has = abap_true.
          me->export_dynpro_5cb5->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `exportDynpro`.
      WHEN `editorCallForReport`.
        CLEAR me->editor_call_for_report.
        IF p1 IS BOUND.
          me->editor_call_for_report = NEW #( ).
          me->editor_call_for_report->has = abap_true.
          me->editor_call_for_report->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `editorCallForReport`.
      WHEN `dynamicSQL`.
        CLEAR me->dynamic_sql.
        IF p1 IS BOUND.
          me->dynamic_sql = NEW #( ).
          me->dynamic_sql->has = abap_true.
          me->dynamic_sql->value = p1->as_boolean( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `dynamicSQL`.
      WHEN `ignoreRAPQueryProvider`.
        me->ignore_rap_query_provider = p1->as_boolean( ).
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `ignoreRAPQueryProvider`.
      WHEN OTHERS.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: unknown nominal slot has no storage`.
    ENDCASE.
  ENDMETHOD.
ENDCLASS.
