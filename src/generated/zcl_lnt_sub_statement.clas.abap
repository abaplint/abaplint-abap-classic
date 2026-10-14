* TS: src/abap/3_structures/structures/_combi.ts:302:1 SubStatement
CLASS zcl_lnt_sub_statement DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure_runnable.
    DATA obj TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS constructor IMPORTING i_obj_1ed0 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS class_name RETURNING VALUE(result) TYPE string.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sub_statement IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_obj_1ed0 ).
    DATA(t2) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
    me->obj = t2.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE REF TO zif_lnt_statement.
    DATA t2 TYPE REF TO zif_lnt_statement.
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( me->obj ).
    DATA t4 TYPE REF TO object.
    t4 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t3 ).
    t2 ?= t4.
    t1 = t2.
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zif_lnt_statement( t1 ).
    t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_macro_call ).
    t6 = t7.
    IF t7 = abap_false.
      DATA t9 TYPE abap_bool.
      DATA(t10) = CAST zif_lnt_statement( t1 ).
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_macro_recursion ).
      t6 = t9.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t11 TYPE abap_bool.
      DATA(t12) = CAST zif_lnt_statement( t1 ).
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_native_sql ).
      t5 = t11.
    ENDIF.
    IF t5 = abap_true.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t15.
      t14 = t15.
      DATA(t16) = CAST zlnt_runtime_arra_8ecd6afe19e0( t14 ).
      DATA(t17) = ||.
      APPEND t17 TO t16->items.
      DATA(t18) = CAST zlnt_runtime_arra_8ecd6afe19e0( t14 ).
      t13 = t18.
      result = t13.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = CAST zif_lnt_statement( t1 ).
    t20 = t21->get_matcher( ).
    t19 = t20->first( ).
    result = t19.

  ENDMETHOD.
  METHOD to_railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:317|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:321|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD class_name.
    DATA t1 TYPE string.
    DATA(t2) = CAST zlnt_runtime_clas_a39833db3295( me->obj ).
    t1 = t2->name.
    result = t1.

  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t2) = CAST zif_lnt_node( i_parent ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE i.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t4 = lines( t5->items ).
    DATA(t6) = 0.
    t3 = xsdbool( t4 = t6 ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_imatch.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t8.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      DATA(t10) = abap_true.
      DATA(t11) = VALUE string( ).
      DATA(t12) = |Expected |.
      DATA t13 TYPE string.
      DATA t14 TYPE string.
      DATA(t15) = CAST zlnt_runtime_clas_a39833db3295( me->obj ).
      t14 = t15->name.
      DATA(t16) = strlen( t14 ).
      t13 = t14.
      IF t13 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t13 TO UPPER CASE.
      ELSE.
        t13 = zlnt_runtime_uppe_91169605024d=>full( t13 ).
      ENDIF.
      DATA(t17) = strlen( t12 ).
      t11 = |{ t12 }{ t13 }|.
      DATA(t18) = CONV int8( 0 ).
      t7 = NEW zcl_lnt_imatch( i_matched = t8 i_unmatched = t9 i_error = t10 i_error_description = t11 i_error_matched = t18 ).
      result = t7.
      RETURN.
    ELSE.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zif_lnt_statement.
      DATA t21 TYPE REF TO zcl_lnt_statement_node.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      READ TABLE t22->items INDEX 1 INTO t23.
      t21 ?= t23.
      t20 = t21->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( me->obj ).
      DATA t25 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t25.
      IF t20 IS BOUND.
        t25 = t20->zlnt_builtin_clas_3f891b097658( ).
        WHILE t25 IS BOUND.
          IF t25 = t24.
            t19 = abap_true.
            EXIT.
          ENDIF.
          t25 = t25->parent.
        ENDWHILE.
      ENDIF.
      IF t19 = abap_true.
        DATA(t26) = CAST zif_lnt_node( t2 ).
        DATA t27 TYPE REF TO zcl_lnt_statement_node.
        DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t29 TYPE REF TO object.
        CLEAR t29.
        READ TABLE t28->items INDEX 1 INTO t29.
        t27 ?= t29.
        t26->add_child( i_n_0c97 = t27 ).
        DATA t30 TYPE REF TO zcl_lnt_imatch.
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t33.
        t32 = t33.
        DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
        DATA t35 TYPE REF TO zcl_lnt_statement_node.
        DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        READ TABLE t36->items INDEX 1 INTO t37.
        t35 ?= t37.
        APPEND t35 TO t34->items.
        DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
        t31 = t38.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA(t41) = 1.
        t39 = t40->splice1_view( p0 = t41 ).
        DATA(t42) = abap_false.
        DATA(t43) = ||.
        DATA(t44) = CONV int8( 0 ).
        t30 = NEW zcl_lnt_imatch( i_matched = t31 i_unmatched = t39 i_error = t42 i_error_description = t43 i_error_matched = t44 ).
        result = t30.
        RETURN.
      ELSE.
        DATA t45 TYPE REF TO zcl_lnt_imatch.
        CLEAR t45.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t46.
        DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        DATA(t48) = abap_true.
        DATA(t49) = VALUE string( ).
        DATA(t50) = |Expected |.
        DATA t51 TYPE string.
        DATA t52 TYPE string.
        DATA(t53) = CAST zlnt_runtime_clas_a39833db3295( me->obj ).
        t52 = t53->name.
        DATA(t54) = strlen( t52 ).
        t51 = t52.
        IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t51 TO UPPER CASE.
        ELSE.
          t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
        ENDIF.
        DATA(t55) = strlen( t50 ).
        t49 = |{ t50 }{ t51 }|.
        DATA(t56) = CONV int8( 0 ).
        t45 = NEW zcl_lnt_imatch( i_matched = t46 i_unmatched = t47 i_error = t48 i_error_description = t49 i_error_matched = t56 ).
        result = t45.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d677_89016fad17c6.
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
