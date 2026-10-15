* TS: src/abap/types/method_implementation.ts:6:1 MethodImplementation
CLASS zcl_lnt_ty_mthd_implmnttn DEFINITION PUBLIC INHERITING FROM zcl_lnt_fi_identifier CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_filename TYPE string.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ty_mthd_implmnttn IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_node.
    DATA(t2) = i_filename.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zif_lnt_structure.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_method ).
    t3 = xsdbool( t4 = abap_false ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t7.
      DATA t8 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA(t11) = |MethodImplementation, expected Method as part of input node|.
        DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t12->has = abap_true.
        t12->value = t11.
        t9 = t12.
      ELSE.
        DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t13.
        t9 = t13.
      ENDIF.
      t8 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t9 ).
      t7 = NEW #( ).
      t7->payload = t8.
      CLEAR t7->source_value.
      IF t8 IS BOUND.
        DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t14.
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        CLEAR t14.
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
      ENDIF.
      RAISE EXCEPTION t7.
    ENDIF.
    DATA t16 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t16.
    DATA t17 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t17.
    DATA(t18) = t1.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
    t17 = t18->find_first_expression( i_type_9913 = t19 ).
    t16 = t17.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    DATA(t22) = t16.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t21.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t20 = t25.
    IF t20 = abap_true.
      DATA t27 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA(t30) = abap_true.
      IF t30 = abap_true.
        DATA(t31) = |MethodImplementation, expected MethodName as part of input n|.
        t31 = t31 && |ode|.
        DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t32->has = abap_true.
        t32->value = t31.
        t29 = t32.
      ELSE.
        DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t33.
        t29 = t33.
      ENDIF.
      t28 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t29 ).
      t27 = NEW #( ).
      t27->payload = t28.
      CLEAR t27->source_value.
      IF t28 IS BOUND.
        DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t34.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        CLEAR t34.
        t35 = t28.
        TRY.
            t27->source_value ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27->source_value IS NOT BOUND.
          TRY.
              t34 ?= t28.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t34 IS BOUND.
            t27->source_value = t34->source( ).
          ENDIF.
          IF t27->source_value IS NOT BOUND.
            CREATE OBJECT t27->source_value.
            t27->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t27->source_value->oval = t28.
          ENDIF.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t27.
    ENDIF.
    DATA t36 TYPE REF TO zcl_lnt_abstract_token.
    CLEAR t36.
    DATA t37 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t37.
    DATA(t38) = t16.
    t37 = t38.
    t36 = t37->get_first_token( ).
    DATA(t39) = t2.
    super->constructor( i_token = t36 i_filename = t39 ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1064_6bad8e66fdb3.
  ENDMETHOD.
ENDCLASS.
