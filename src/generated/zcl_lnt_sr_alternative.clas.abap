* TS: src/abap/3_structures/structures/_combi.ts:68:1 Alternative
CLASS zcl_lnt_sr_alternative DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure_runnable.
    DATA list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA map TYPE REF TO zlnt_runtime_map__9af21ec489fc.
    METHODS constructor IMPORTING i_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS setup_map.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_alternative IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_list ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t3 = lines( t4->items ).
    DATA(t5) = 2.
    t2 = xsdbool( t3 < t5 ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t6.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = |Alternative, length error|.
        DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t11->has = abap_true.
        t11->value = t10.
        t8 = t11.
      ELSE.
        DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t12.
        t8 = t12.
      ENDIF.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t8 ).
      t6 = NEW #( ).
      t6->payload = t7.
      RAISE EXCEPTION t6.
    ENDIF.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->list = t13.
  ENDMETHOD.
  METHOD setup_map.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__9af21ec489fc.
    DATA(t3) = CAST zlnt_runtime_map__9af21ec489fc( me->map ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = CAST zlnt_runtime_map__9af21ec489fc( t2 ).
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_map__9af21ec489fc.
      DATA t9 TYPE REF TO zlnt_runtime_map__9af21ec489fc.
      DATA(t10) = NEW zlnt_runtime_map__9af21ec489fc( ).
      t9 = t10.
      DATA(t11) = CAST zlnt_runtime_map__9af21ec489fc( t9 ).
      t8 = t11.
      me->map = t8.
      DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
      DATA t13 TYPE REF TO zif_lnt_structure_runnable.
      CLEAR t13.
      DATA t14 TYPE REF TO object.
      CLEAR t14.
      LOOP AT t12->items INTO t14.
        t13 ?= t14.
        DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t16) = CAST zif_lnt_structure_runnable( t13 ).
        t15 = t16->first( ).
        DATA(t17) = VALUE string( ).
        LOOP AT t15->items INTO t17.
          DATA t18 TYPE abap_bool.
          DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t20) = CAST zlnt_runtime_map__9af21ec489fc( me->map ).
          DATA(t21) = t17.
          t19 = t20->get( p0 = t21 ).
          t18 = xsdbool( t19 IS BOUND ).
          IF t18 = abap_true.
            DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t24) = CAST zlnt_runtime_map__9af21ec489fc( me->map ).
            DATA(t25) = t17.
            t23 = t24->get( p0 = t25 ).
            t22 = t23.
            DATA(t26) = CAST zif_lnt_structure_runnable( t13 ).
            APPEND t26 TO t22->items.
          ELSE.
            DATA t27 TYPE REF TO zlnt_runtime_map__9af21ec489fc.
            DATA(t28) = CAST zlnt_runtime_map__9af21ec489fc( me->map ).
            DATA(t29) = t17.
            DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CREATE OBJECT t32.
            t31 = t32.
            DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
            DATA(t34) = CAST zif_lnt_structure_runnable( t13 ).
            APPEND t34 TO t33->items.
            DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
            t30 = t35.
            t27 = t28->set( p0 = t29 p1 = t30 ).
          ENDIF.
        ENDLOOP.
      ENDLOOP.
    ENDIF.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    DATA(t5) = ||.
    APPEND t5 TO t4->items.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    t1 = t6.
    result = t1.

  ENDMETHOD.
  METHOD to_railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:99|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:104|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t2) = CAST zif_lnt_node( i_parent ).
    me->setup_map( ).
    DATA t3 TYPE int8.
    DATA(t4) = CONV int8( 0 ).
    t3 = t4.
    DATA t5 TYPE string.
    DATA(t6) = ||.
    t5 = t6.
    DATA t7 TYPE abap_bool.
    DATA t8 TYPE i.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t8 = lines( t9->items ).
    DATA(t10) = 0.
    t7 = xsdbool( t8 = t10 ).
    IF t7 = abap_true.
      DATA t11 TYPE REF TO zcl_lnt_imatch.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t14) = abap_true.
      DATA(t15) = t5.
      DATA t16 TYPE int8.
      DATA t17 TYPE i.
      DATA(t18) = t3.
      t17 = t18.
      t16 = t17.
      t11 = NEW zcl_lnt_imatch( i_matched = t12 i_unmatched = t13 i_error = t14 i_error_description = t15 i_error_matched = t16 ).
      result = t11.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE string( ).
    DATA t20 TYPE string.
    DATA t21 TYPE string.
    DATA t22 TYPE REF TO zcl_lnt_abstract_token.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_statement_node.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    READ TABLE t25->items INDEX 1 INTO t26.
    t24 ?= t26.
    t23 = t24->get_first_token( ).
    t22 = t23.
    DATA t27 TYPE string.
    DATA(t28) = CAST zcl_lnt_abstract_token( t22 ).
    t27 = t28->str.
    t21 = t27.
    DATA(t29) = strlen( t21 ).
    t20 = t21.
    IF t20 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t20 TO UPPER CASE.
    ELSE.
      t20 = zlnt_runtime_uppe_91169605024d=>full( t20 ).
    ENDIF.
    t19 = t20.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t33) = CAST zlnt_runtime_map__9af21ec489fc( me->map ).
    DATA(t34) = t19.
    t32 = t33->get( p0 = t34 ).
    t31 = t32.
    DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t35.
    DATA t36 TYPE abap_bool.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
    t36 = xsdbool( t37 IS BOUND ).
    IF t36 = abap_true.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t31 ).
      t38 = t39.
      t35 = t38.
    ELSE.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t40.
      t35 = t40.
    ENDIF.
    t30 = t35.
    DATA t41 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t41.
    DATA t42 TYPE REF TO object.
    CLEAR t42.
    LOOP AT t30->items INTO t42.
      t41 ?= t42.
      DATA t43 TYPE REF TO zcl_lnt_imatch.
      DATA t44 TYPE REF TO zcl_lnt_imatch.
      DATA(t45) = CAST zif_lnt_structure_runnable( t41 ).
      DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t47) = CAST zif_lnt_node( t2 ).
      t44 = t45->run( i_statements = t46 i_parent = t47 ).
      t43 = t44.
      DATA t48 TYPE abap_bool.
      DATA t49 TYPE abap_bool.
      DATA(t50) = CAST zcl_lnt_imatch( t43 ).
      t49 = t50->error.
      DATA(t51) = abap_false.
      t48 = xsdbool( t49 = t51 ).
      IF t48 = abap_true.
        DATA(t52) = CAST zcl_lnt_imatch( t43 ).
        result = t52.
        RETURN.
      ENDIF.
      DATA t53 TYPE abap_bool.
      DATA t54 TYPE int8.
      DATA(t55) = CAST zcl_lnt_imatch( t43 ).
      t54 = t55->error_matched.
      DATA(t56) = t3.
      t53 = xsdbool( t54 > t56 ).
      IF t53 = abap_true.
        DATA t57 TYPE string.
        DATA(t58) = CAST zcl_lnt_imatch( t43 ).
        t57 = t58->error_description.
        t5 = t57.
        DATA t59 TYPE int8.
        DATA(t60) = CAST zcl_lnt_imatch( t43 ).
        t59 = t60->error_matched.
        t3 = t59.
      ENDIF.
    ENDLOOP.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t61.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t64) = CAST zlnt_runtime_map__9af21ec489fc( me->map ).
    DATA(t65) = ||.
    t63 = t64->get( p0 = t65 ).
    t62 = t63.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t66.
    DATA t67 TYPE abap_bool.
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
    t67 = xsdbool( t68 IS BOUND ).
    IF t67 = abap_true.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t70) = CAST zlnt_runtime_arra_c22708faf2e3( t62 ).
      t69 = t70.
      t66 = t69.
    ELSE.
      DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t71.
      t66 = t71.
    ENDIF.
    t61 = t66.
    DATA t72 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t72.
    DATA t73 TYPE REF TO object.
    CLEAR t73.
    LOOP AT t61->items INTO t73.
      t72 ?= t73.
      DATA t74 TYPE REF TO zcl_lnt_imatch.
      DATA t75 TYPE REF TO zcl_lnt_imatch.
      DATA(t76) = CAST zif_lnt_structure_runnable( t72 ).
      DATA(t77) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t78) = CAST zif_lnt_node( t2 ).
      t75 = t76->run( i_statements = t77 i_parent = t78 ).
      t74 = t75.
      DATA t79 TYPE abap_bool.
      DATA t80 TYPE abap_bool.
      DATA(t81) = CAST zcl_lnt_imatch( t74 ).
      t80 = t81->error.
      DATA(t82) = abap_false.
      t79 = xsdbool( t80 = t82 ).
      IF t79 = abap_true.
        DATA(t83) = CAST zcl_lnt_imatch( t74 ).
        result = t83.
        RETURN.
      ENDIF.
      DATA t84 TYPE abap_bool.
      DATA t85 TYPE int8.
      DATA(t86) = CAST zcl_lnt_imatch( t74 ).
      t85 = t86->error_matched.
      DATA(t87) = t3.
      t84 = xsdbool( t85 > t87 ).
      IF t84 = abap_true.
        DATA t88 TYPE string.
        DATA(t89) = CAST zcl_lnt_imatch( t74 ).
        t88 = t89->error_description.
        t5 = t88.
        DATA t90 TYPE int8.
        DATA(t91) = CAST zcl_lnt_imatch( t74 ).
        t90 = t91->error_matched.
        t3 = t90.
      ENDIF.
    ENDLOOP.
    DATA t92 TYPE abap_bool.
    DATA(t93) = t3.
    DATA(t94) = CONV int8( 0 ).
    t92 = xsdbool( t93 = t94 ).
    IF t92 = abap_true.
      DATA t95 TYPE REF TO zcl_lnt_imatch.
      DATA t96 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t96.
      DATA(t97) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t98) = abap_true.
      DATA(t99) = |Unexpected code structure|.
      DATA(t100) = t3.
      t95 = NEW zcl_lnt_imatch( i_matched = t96 i_unmatched = t97 i_error = t98 i_error_description = t99 i_error_matched = t100 ).
      result = t95.
      RETURN.
    ELSE.
      DATA t101 TYPE REF TO zcl_lnt_imatch.
      DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t102.
      DATA(t103) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA(t104) = abap_true.
      DATA(t105) = t5.
      DATA(t106) = t3.
      t101 = NEW zcl_lnt_imatch( i_matched = t102 i_unmatched = t103 i_error = t104 i_error_description = t105 i_error_matched = t106 ).
      result = t101.

    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d673_c736795e75df.
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~to_railroad.
    result = me->to_railroad( ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~run.
    result = me->run( i_statements = i_statements i_parent = i_parent ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~first.
    result = me->first( ).
  ENDMETHOD.
ENDCLASS.
