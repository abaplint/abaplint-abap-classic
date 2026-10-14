* TS: src/abap/3_structures/structures/_combi.ts:8:1 Sequence
CLASS zcl_lnt_sr_sequence DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure_runnable.
    DATA list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_sequence IMPLEMENTATION.
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
        DATA(t10) = |Sequence, length error|.
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
  METHOD to_railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:18|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:23|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    READ TABLE t3->items INDEX 1 INTO t4.
    t2 ?= t4.
    t1 = t2->first(  ).
    result = t1.

  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t2) = CAST zif_lnt_node( i_parent ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    DATA t8 TYPE REF TO zif_lnt_structure_runnable.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t7->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE REF TO zcl_lnt_imatch.
      DATA t11 TYPE REF TO zcl_lnt_imatch.
      DATA(t12) = CAST zif_lnt_structure_runnable( t8 ).
      DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      DATA(t14) = CAST zif_lnt_node( t2 ).
      t11 = t12->run( i_statements = t13 i_parent = t14 ).
      t10 = t11.
      DATA t15 TYPE abap_bool.
      DATA(t16) = CAST zcl_lnt_imatch( t10 ).
      t15 = t16->error.
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_imatch.
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t18.
        DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA(t20) = abap_true.
        DATA t21 TYPE string.
        DATA(t22) = CAST zcl_lnt_imatch( t10 ).
        t21 = t22->error_description.
        DATA t23 TYPE int8.
        DATA t24 TYPE i.
        DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
        t24 = lines( t25->items ).
        t23 = t24.
        t17 = NEW zcl_lnt_imatch( i_matched = t18 i_unmatched = t19 i_error = t20 i_error_description = t21 i_error_matched = t23 ).
        result = t17.
        RETURN.
      ENDIF.
      DATA t26 TYPE abap_bool.
      DATA t27 TYPE i.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t29) = CAST zcl_lnt_imatch( t10 ).
      t28 = t29->matched.
      t27 = lines( t28->items ).
      DATA(t30) = 100.
      t26 = xsdbool( t27 < t30 ).
      IF t26 = abap_true.
        DATA(t31) = VALUE i( ).
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t33) = CAST zcl_lnt_imatch( t10 ).
        t32 = t33->matched.
        DATA t34 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t34.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        LOOP AT t32->items INTO t35.
          t34 ?= t35.
          DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
          DATA(t37) = CAST zcl_lnt_statement_node( t34 ).
          APPEND t37 TO t36->items.
        ENDLOOP.
        DATA t38 TYPE i.
        DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
        t38 = lines( t39->items ).
        t31 = t38.
      ELSE.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t43) = CAST zcl_lnt_imatch( t10 ).
        t42 = t43->matched.
        t40 = t41->concat( p0 = t42 ).
        t5 = t40.
      ENDIF.
      DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t45) = CAST zcl_lnt_imatch( t10 ).
      t44 = t45->unmatched.
      t3 = t44.
    ENDLOOP.
    DATA t46 TYPE REF TO zcl_lnt_imatch.
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA(t49) = abap_false.
    DATA(t50) = ||.
    DATA(t51) = CONV int8( 0 ).
    t46 = NEW zcl_lnt_imatch( i_matched = t47 i_unmatched = t48 i_error = t49 i_error_description = t50 i_error_matched = t51 ).
    result = t46.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d672_80ccb3caa5ab.
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~to_railroad.
    result = me->to_railroad(  ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~get_using.
    result = me->get_using(  ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~run.
    result = me->run(  i_statements = i_statements i_parent = i_parent ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~first.
    result = me->first(  ).
  ENDMETHOD.
ENDCLASS.
