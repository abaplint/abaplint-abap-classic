* TS: src/cds/cds_lexer.ts.module module
CLASS zcl_lnt_cds_lexer_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA mode_namespace TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLASS-DATA zlnt_builtin_init_9280f2eb7dfd TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_3a53c2a223b0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_lexer_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_3a53c2a223b0.
    IF zlnt_builtin_init_9280f2eb7dfd = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_9280f2eb7dfd = abap_true.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    zcl_lnt_cds_lexer_module=>mode_namespace = NEW zlnt_runtime_map__abd6fd794ffb( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t3 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t3 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t4) = |0|.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t6) = |Default|.
    CREATE OBJECT t5.
    t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t5->sval = t6.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    DATA t7 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t8 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t8 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t9) = |1|.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = |String|.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = t11.
    t7 = t8->set( p0 = t9 p1 = t10 ).
    DATA t12 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t13 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t13 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t14) = |2|.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = |DoubleQuoteString|.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = t16.
    t12 = t13->set( p0 = t14 p1 = t15 ).
    DATA t17 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t18 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t18 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t19) = |3|.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = |SingleLineComment|.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t20->sval = t21.
    t17 = t18->set( p0 = t19 p1 = t20 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t23 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t23 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t24) = |4|.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t26) = |MultiLineComment|.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = t26.
    t22 = t23->set( p0 = t24 p1 = t25 ).
    DATA t27 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t28 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t28 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t29) = |Default|.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = 0.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t30->nval = t31.
    t27 = t28->set( p0 = t29 p1 = t30 ).
    DATA t32 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t33 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t33 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t34) = |String|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = 1.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t35->nval = t36.
    t32 = t33->set( p0 = t34 p1 = t35 ).
    DATA t37 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t38 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t38 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t39) = |DoubleQuoteString|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = 2.
    CREATE OBJECT t40.
    t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t40->nval = t41.
    t37 = t38->set( p0 = t39 p1 = t40 ).
    DATA t42 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t43 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t43 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t44) = |SingleLineComment|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = 3.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t45->nval = t46.
    t42 = t43->set( p0 = t44 p1 = t45 ).
    DATA t47 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t48 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_cds_lexer_module=>zlnt_builtin_init_9280f2eb7dfd = abap_false.
      zcl_lnt_cds_lexer_module=>zlnt_builtin_init_3a53c2a223b0( ).
    ENDIF.
    t48 = zcl_lnt_cds_lexer_module=>mode_namespace.
    DATA(t49) = |MultiLineComment|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t51) = 4.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t50->nval = t51.
    t47 = t48->set( p0 = t49 p1 = t50 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1968_4eff85a6032c.
  ENDMETHOD.
ENDCLASS.
