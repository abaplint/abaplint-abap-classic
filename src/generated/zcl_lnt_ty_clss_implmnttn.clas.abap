* TS: src/abap/types/class_implementation.ts:9:1 ClassImplementation
CLASS zcl_lnt_ty_clss_implmnttn DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_class_implementation.
    DATA node TYPE REF TO zcl_lnt_structure_node.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_filename TYPE string.
    METHODS get_method_implementations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_method_implementation IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_ty_mthd_implmnttn.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_clss_implmnttn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_filename.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_structure.
    t5 = t1->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_sr_clss_implmnttn ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t11) = |ClassImplementation, unexpected node type|.
      DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      CLEAR t7->source_value.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t15 TYPE REF TO object.
      t15 = t8.
      TRY.
          t7->source_value ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7->source_value IS NOT BOUND.
        TRY.
            t14 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t7->source_value = t14->source( ).
        ENDIF.
        IF t7->source_value IS NOT BOUND.
          CREATE OBJECT t7->source_value.
          t7->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->source_value->oval = t8.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t17 TYPE REF TO zcl_lnt_abstract_token.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t19 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zcl_lnt_statement_node.
    DATA t21 TYPE REF TO zcl_lnt_statement_node.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d413_4f364af5c7c0.
    t21 = t1->find_first_statement( i_type_9913 = t23 ).
    t20 = t21.
    DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    t19 = t20->find_first_expression( i_type_9913 = t24 ).
    t18 = t19.
    t17 = t18->get_first_token( ).
    super->constructor( i_token = t17 i_filename = t2 ).
    me->node = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `node`.
  ENDMETHOD.

  METHOD get_method_implementations.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
    t3 = me->node->find_all_structures( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t12 TYPE REF TO zcl_lnt_ty_mthd_implmnttn.
      DATA(t14) = CONV string( me->filename ).
      t12 = NEW zcl_lnt_ty_mthd_implmnttn( i_node = t6 i_filename = t14 ).
      t1->load( ).
      APPEND t12 TO t1->items.
      t1->save( ).
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_method_implementation.
    DATA(t1) = i_name.
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( me->get_method_implementations( ) ).
    DATA t3 TYPE REF TO zcl_lnt_ty_mthd_implmnttn.
    DATA t4 TYPE REF TO object.
    DATA(t5) = VALUE i( ).
    DO.
      t2->load( ).
      IF t5 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t4.
      READ TABLE t2->items INDEX t5 + 1 INTO t4.
      t5 = t5 + 1.
      DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t6.
      CLEAR t3.
      IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t6 ?= t4.
        DATA t7 TYPE REF TO object.
        t7 = t6->as_ref( ).
        t3 ?= t7.
      ELSE.
        t3 ?= t4.
      ENDIF.
      DATA(t8) = VALUE abap_bool( ).
      DATA(t9) = VALUE string( ).
      DATA(t10) = VALUE string( ).
      DATA t11 TYPE REF TO zcl_lnt_fi_identifier.
      t11 = t3.
      DATA(t13) = VALUE string( ).
      DATA t14 TYPE string.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      t17 = t11->token.
      DATA t19 TYPE string.
      t19 = t17->str.
      t14 = t19.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE string( ).
      DATA(t23) = t14.
      DATA(t24) = 0.
      DATA(t25) = 1.
      DATA(t26) = strlen( t23 ).
      IF t24 < 0.
        t24 = t24 + t26.
        IF t24 < 0.
          t24 = 0.
        ENDIF.
      ENDIF.
      IF t24 > t26 OR t25 <= 0.
        CLEAR t22.
      ELSE.
        IF t25 > t26 - t24.
          t25 = t26 - t24.
        ENDIF.
        t22 = t23+t24(t25).
      ENDIF.
      DATA(t27) = |!|.
      t21 = xsdbool( t22 = t27 ).
      IF t21 = abap_true.
        DATA(t28) = VALUE string( ).
        DATA t29 TYPE string.
        t29 = t14.
        DATA(t31) = VALUE string( ).
        DATA(t33) = 1.
        DATA t34 TYPE i.
        t34 = strlen( t29 ).
        DATA(t37) = strlen( t29 ).
        IF t33 < 0.
          t33 = t33 + t37.
          IF t33 < 0.
            t33 = 0.
          ENDIF.
        ENDIF.
        IF t33 > t37 OR t34 <= 0.
          CLEAR t31.
        ELSE.
          IF t34 > t37 - t33.
            t34 = t37 - t33.
          ENDIF.
          t31 = t29+t33(t34).
        ENDIF.
        t28 = t31.
        t14 = t28.
      ENDIF.
      t13 = t14.
      t10 = t13.
      DATA(t39) = strlen( t10 ).
      t9 = t10.
      IF t9 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t9 TO UPPER CASE.
      ELSE.
        t9 = zlnt_runtime_uppe_91169605024d=>full( t9 ).
      ENDIF.
      DATA t40 TYPE string.
      DATA(t42) = strlen( t1 ).
      t40 = t1.
      IF t40 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t40 TO UPPER CASE.
      ELSE.
        t40 = zlnt_runtime_uppe_91169605024d=>full( t40 ).
      ENDIF.
      t8 = xsdbool( t9 = t40 ).
      IF t8 = abap_true.
        result = t3.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1055_4f73490952e8.
  ENDMETHOD.

  METHOD zif_lnt_class_implementation~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_class_implementation~get_method_implementations.
    result = me->get_method_implementations( ).
  ENDMETHOD.

  METHOD zif_lnt_class_implementation~get_method_implementation.
    result = me->get_method_implementation( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_class_implementation~equals.
    result = me->equals( i_id = i_id ).
  ENDMETHOD.

  METHOD zif_lnt_class_implementation~get_end.
    result = me->get_end( ).
  ENDMETHOD.

  METHOD zif_lnt_class_implementation~get_filename.
    result = me->get_filename( ).
  ENDMETHOD.

  METHOD zif_lnt_class_implementation~get_name.
    result = me->get_name( ).
  ENDMETHOD.

  METHOD zif_lnt_class_implementation~get_start.
    result = me->get_start( ).
  ENDMETHOD.

  METHOD zif_lnt_class_implementation~get_token.
    result = me->get_token( ).
  ENDMETHOD.
ENDCLASS.
