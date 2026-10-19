* TS: src/abap/5_syntax/_type_utils.ts:12:1 TypeUtils
CLASS zcl_lnt_type_utils DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA scope TYPE REF TO zcl_lnt_current_scope.
    METHODS constructor IMPORTING i_scope TYPE REF TO zcl_lnt_current_scope.
    METHODS is_char_like_strict IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_char_like_field IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_char_like_for_compare IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_char_like IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_hex_like IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_oo_assignable IMPORTING i_source_75cf TYPE REF TO zcl_lnt_object_reference_type i_target_5f8a TYPE REF TO zcl_lnt_object_reference_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS list_all_interfaces IMPORTING i_cdef TYPE REF TO zif_lnt_union_865ccdda RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS list_all_supers IMPORTING i_cdef TYPE REF TO zcl_lnt_ty_class_definition RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS is_convable IMPORTING i_source_75cf TYPE REF TO zcl_lnt_abstract_type i_target_5f8a TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_castable IMPORTING i_source_3828 TYPE REF TO zcl_lnt_abstract_type i_target_d687 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_compareable IMPORTING i_source1 TYPE REF TO zcl_lnt_abstract_type i_source2 TYPE REF TO zcl_lnt_abstract_type i_node1 TYPE REF TO zcl_lnt_expression_node i_node2 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS structure_contains_string IMPORTING i_structure TYPE REF TO zcl_lnt_structure_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS structure_contains_void IMPORTING i_structure TYPE REF TO zcl_lnt_structure_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_calculated IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_hex_constant IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_assignable_new IMPORTING i_source_75cf TYPE REF TO zcl_lnt_abstract_type i_target_5f8a TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_assignable_strict IMPORTING i_source_75cf TYPE REF TO zcl_lnt_abstract_type i_target_5f8a TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_assignable_structure_typing IMPORTING i_source_75cf TYPE REF TO zcl_lnt_abstract_type i_target_5f8a TYPE REF TO zcl_lnt_abstract_type i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_assignable IMPORTING i_source_75cf TYPE REF TO zcl_lnt_abstract_type i_target_5f8a TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_utc_long_assignable IMPORTING i_source_75cf TYPE REF TO zcl_lnt_abstract_type i_target_5f8a TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_generic_or_void IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_text_like IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_utils IMPLEMENTATION.
  METHOD constructor.
    me->scope = i_scope.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `scope`.
  ENDMETHOD.

  METHOD is_char_like_strict.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( t1 IS INITIAL ).
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      t10 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t10 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t14 TYPE REF TO zcl_lnt_structure_type.
        t14 ?= t1.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t16 = t14->components.
        t12 = t16.
        DATA t18 TYPE REF TO zcl_lnt_istructure_component.
        DATA t19 TYPE REF TO object.
        DATA(t20) = VALUE i( ).
        DO.
          t12->load( ).
          IF t20 >= lines( t12->items ).
            EXIT.
          ENDIF.
          CLEAR t19.
          READ TABLE t12->items INDEX t20 + 1 INTO t19.
          t20 = t20 + 1.
          DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t21.
          CLEAR t18.
          IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t21 ?= t19.
            CLEAR t18.
            IF t21 IS BOUND.
              IF t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t18 ?= t21->oval.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
              ENDIF.
              IF t18 IS NOT BOUND.
                IF t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t22.
                  IF t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                  ENDIF.
                  TRY.
                      t22 ?= t21->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                  ENDTRY.
                  IF t22->structural( ) <> abap_true.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                  ENDIF.
                ENDIF.
                DATA(t23) = VALUE string( ).
                DATA t24 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t24.
                DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t25.
                DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t26.
                t18 = NEW zcl_lnt_istructure_component( view_source = t21 i_name = t23 i_type_9913 = t24 i_as_include = t25 i_suffix = t26 ).
              ENDIF.
            ENDIF.
          ELSE.
            t18 ?= t19.
          ENDIF.
          DATA(t27) = VALUE abap_bool( ).
          DATA(t28) = VALUE abap_bool( ).
          DATA t29 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t29.
          DATA t31 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t31.
          t31 = t18->zlnt_view_read_sr_455340cd1e80( ).
          t29 = t31.
          t28 = me->is_char_like_strict( i_type_9913 = t29 ).
          t27 = xsdbool( t28 = abap_false ).
          IF t27 = abap_true.
            result = abap_false.
            RETURN.
          ENDIF.
        ENDDO.
        result = abap_true.
        RETURN.
      ELSE.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        t38 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t37 = t38.
        IF t38 = abap_true.
          DATA(t40) = VALUE abap_bool( ).
          DATA t42 TYPE REF TO zcl_lnt_ty_table_type.
          t42 ?= t1.
          DATA(t44) = VALUE abap_bool( ).
          DATA t45 TYPE REF TO zcl_lnt_itable_options.
          t45 = t42->options.
          t44 = t45->zlnt_view_read_sr_ec4602663c93( ).
          t40 = t44.
          t37 = t40.
        ENDIF.
        IF t37 = abap_true.
          DATA(t47) = VALUE abap_bool( ).
          DATA t48 TYPE REF TO zcl_lnt_abstract_type.
          DATA t52 TYPE REF TO zcl_lnt_ty_table_type.
          t52 ?= t1.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          t54 = t52->row_type.
          t48 = t54.
          t47 = me->is_char_like_strict( i_type_9913 = t48 ).
          result = t47.
          RETURN.
        ELSE.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE abap_bool( ).
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = VALUE abap_bool( ).
          t70 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ).
          t69 = t70.
          IF t70 = abap_false.
            DATA(t72) = VALUE abap_bool( ).
            t72 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
            t69 = t72.
          ENDIF.
          t68 = t69.
          IF t69 = abap_false.
            DATA(t74) = VALUE abap_bool( ).
            t74 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
            t68 = t74.
          ENDIF.
          t67 = t68.
          IF t68 = abap_false.
            DATA(t76) = VALUE abap_bool( ).
            t76 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_character_type ).
            t67 = t76.
          ENDIF.
          t66 = t67.
          IF t67 = abap_false.
            DATA(t78) = VALUE abap_bool( ).
            t78 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_simple_type ).
            t66 = t78.
          ENDIF.
          t65 = t66.
          IF t66 = abap_false.
            DATA(t80) = VALUE abap_bool( ).
            t80 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_generic_type ).
            t65 = t80.
          ENDIF.
          t64 = t65.
          IF t65 = abap_false.
            DATA(t82) = VALUE abap_bool( ).
            t82 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_like_type ).
            t64 = t82.
          ENDIF.
          t63 = t64.
          IF t64 = abap_false.
            DATA(t84) = VALUE abap_bool( ).
            t84 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_date_type ).
            t63 = t84.
          ENDIF.
          t62 = t63.
          IF t63 = abap_false.
            DATA(t86) = VALUE abap_bool( ).
            t86 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_sequence_type ).
            t62 = t86.
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            DATA(t88) = VALUE abap_bool( ).
            t88 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_numeric_generic_type ).
            t61 = t88.
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            DATA(t90) = VALUE abap_bool( ).
            t90 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_numeric_type ).
            t60 = t90.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA(t92) = VALUE abap_bool( ).
            t92 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_time_type ).
            t59 = t92.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA(t94) = VALUE abap_bool( ).
            t94 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
            t58 = t94.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA(t96) = VALUE abap_bool( ).
            t96 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
            t57 = t96.
          ENDIF.
          IF t57 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD is_char_like_field.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    t3 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t5 TYPE abap_bool.
      DATA t6 TYPE abap_bool.
      t6 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t5 = t6.
      IF t6 = abap_true.
        DATA t10 TYPE REF TO zcl_lnt_ty_table_type.
        t10 ?= t1.
        DATA t12 TYPE abap_bool.
        DATA t13 TYPE REF TO zcl_lnt_itable_options.
        t13 = t10->options.
        t12 = t13->zlnt_view_read_sr_ec4602663c93( ).
        t5 = t12.
      ENDIF.
      t2 = t5.
    ENDIF.
    IF t2 = abap_true.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      DATA t18 TYPE REF TO zcl_lnt_abstract_type.
      DATA t19 TYPE REF TO zif_lnt_union_2724f734.
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      t20 = t1.
      t19 ?= t20.
      t18 ?= t19.
      t16 = t18.
      t15 = me->is_char_like_strict( i_type_9913 = t16 ).
      result = t15.
      RETURN.
    ENDIF.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = VALUE abap_bool( ).
    DATA t30 TYPE abap_bool.
    DATA t31 TYPE abap_bool.
    t31 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_character_type ).
    t30 = t31.
    IF t31 = abap_false.
      DATA t33 TYPE abap_bool.
      t33 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_numeric_type ).
      t30 = t33.
    ENDIF.
    t29 = t30.
    IF t30 = abap_false.
      DATA t35 TYPE abap_bool.
      t35 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_date_type ).
      t29 = t35.
    ENDIF.
    t28 = t29.
    IF t29 = abap_false.
      DATA t37 TYPE abap_bool.
      t37 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_time_type ).
      t28 = t37.
    ENDIF.
    t27 = t28.
    IF t28 = abap_false.
      DATA t39 TYPE abap_bool.
      t39 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_generic_type ).
      t27 = t39.
    ENDIF.
    t26 = t27.
    IF t27 = abap_false.
      DATA t41 TYPE abap_bool.
      t41 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_like_type ).
      t26 = t41.
    ENDIF.
    t25 = t26.
    IF t26 = abap_false.
      DATA t43 TYPE abap_bool.
      t43 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
      t25 = t43.
    ENDIF.
    t24 = t25.
    IF t25 = abap_false.
      DATA t45 TYPE abap_bool.
      t45 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
      t24 = t45.
    ENDIF.
    t23 = t24.
    IF t24 = abap_false.
      DATA t47 TYPE abap_bool.
      t47 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
      t23 = t47.
    ENDIF.
    result = t23.

  ENDMETHOD.

  METHOD is_char_like_for_compare.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6 = xsdbool( t1 IS INITIAL ).
    t5 = t6.
    IF t6 = abap_false.
      DATA t13 TYPE abap_bool.
      t13 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ).
      t5 = t13.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t15 TYPE abap_bool.
      t15 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_like_type ).
      t4 = t15.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t17 TYPE abap_bool.
      t17 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_sequence_type ).
      t3 = t17.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      t20 = t1.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      t28 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_structure_type ).
      t27 = t28.
      IF t28 = abap_false.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        t31 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t30 = t31.
        IF t31 = abap_true.
          DATA t35 TYPE REF TO zcl_lnt_ty_table_type.
          t35 ?= t20.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE REF TO zcl_lnt_itable_options.
          t38 = t35->options.
          t37 = t38->zlnt_view_read_sr_ec4602663c93( ).
          t30 = t37.
        ENDIF.
        t27 = t30.
      ENDIF.
      IF t27 = abap_true.
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        DATA t43 TYPE REF TO zcl_lnt_abstract_type.
        DATA t44 TYPE REF TO zif_lnt_union_2724f734.
        DATA t45 TYPE REF TO zcl_lnt_abstract_type.
        t45 = t20.
        t44 ?= t45.
        t43 ?= t44.
        t41 = t43.
        t40 = me->is_char_like_strict( i_type_9913 = t41 ).
        t26 = t40.
      ELSE.
        DATA(t48) = VALUE abap_bool( ).
        DATA(t49) = VALUE abap_bool( ).
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = VALUE abap_bool( ).
        DATA t55 TYPE abap_bool.
        DATA t56 TYPE abap_bool.
        t56 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_character_type ).
        t55 = t56.
        IF t56 = abap_false.
          DATA t58 TYPE abap_bool.
          t58 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_numeric_type ).
          t55 = t58.
        ENDIF.
        t54 = t55.
        IF t55 = abap_false.
          DATA t60 TYPE abap_bool.
          t60 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_date_type ).
          t54 = t60.
        ENDIF.
        t53 = t54.
        IF t54 = abap_false.
          DATA t62 TYPE abap_bool.
          t62 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_time_type ).
          t53 = t62.
        ENDIF.
        t52 = t53.
        IF t53 = abap_false.
          DATA t64 TYPE abap_bool.
          t64 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_c_generic_type ).
          t52 = t64.
        ENDIF.
        t51 = t52.
        IF t52 = abap_false.
          DATA t66 TYPE abap_bool.
          t66 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_c_like_type ).
          t51 = t66.
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          DATA t68 TYPE abap_bool.
          t68 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_any_type ).
          t50 = t68.
        ENDIF.
        t49 = t50.
        IF t50 = abap_false.
          DATA t70 TYPE abap_bool.
          t70 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_unknown_type ).
          t49 = t70.
        ENDIF.
        t48 = t49.
        IF t49 = abap_false.
          DATA t72 TYPE abap_bool.
          t72 = xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_void_type ).
          t48 = t72.
        ENDIF.
        t26 = t48.
      ENDIF.
      t19 = t26.
      t2 = t19.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_char_like.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( t1 IS INITIAL ).
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE abap_bool( ).
      t11 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t10 = t11.
      IF t11 = abap_true.
        DATA(t13) = VALUE abap_bool( ).
        DATA t15 TYPE REF TO zcl_lnt_ty_table_type.
        t15 ?= t1.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE REF TO zcl_lnt_itable_options.
        t18 = t15->options.
        t17 = t18->zlnt_view_read_sr_ec4602663c93( ).
        t13 = t17.
        t10 = t13.
      ENDIF.
      IF t10 = abap_true.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE REF TO zcl_lnt_abstract_type.
        DATA t25 TYPE REF TO zcl_lnt_ty_table_type.
        t25 ?= t1.
        DATA t27 TYPE REF TO zcl_lnt_abstract_type.
        t27 = t25->row_type.
        t21 = t27.
        t20 = me->is_char_like( i_type_9913 = t21 ).
        result = t20.
        RETURN.
      ELSE.
        DATA(t30) = VALUE abap_bool( ).
        t30 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
        IF t30 = abap_true.
          DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t34 TYPE REF TO zcl_lnt_structure_type.
          t34 ?= t1.
          DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t36 = t34->components.
          t32 = t36.
          DATA t38 TYPE REF TO zcl_lnt_istructure_component.
          DATA t39 TYPE REF TO object.
          DATA(t40) = VALUE i( ).
          DO.
            t32->load( ).
            IF t40 >= lines( t32->items ).
              EXIT.
            ENDIF.
            CLEAR t39.
            READ TABLE t32->items INDEX t40 + 1 INTO t39.
            t40 = t40 + 1.
            DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t41.
            CLEAR t38.
            IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t41 ?= t39.
              CLEAR t38.
              IF t41 IS BOUND.
                IF t41->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  TRY.
                      t38 ?= t41->oval.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                ENDIF.
                IF t38 IS NOT BOUND.
                  IF t41->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t41->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t41->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t41->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                    DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    CLEAR t42.
                    IF t41->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                    ENDIF.
                    TRY.
                        t42 ?= t41->oval.
                      CATCH cx_sy_move_cast_error.
                        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                    ENDTRY.
                    IF t42->structural( ) <> abap_true.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                    ENDIF.
                  ENDIF.
                  DATA(t43) = VALUE string( ).
                  DATA t44 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t44.
                  DATA t45 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t45.
                  DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t46.
                  t38 = NEW zcl_lnt_istructure_component( view_source = t41 i_name = t43 i_type_9913 = t44 i_as_include = t45 i_suffix = t46 ).
                ENDIF.
              ENDIF.
            ELSE.
              t38 ?= t39.
            ENDIF.
            DATA(t47) = VALUE abap_bool( ).
            DATA(t48) = VALUE abap_bool( ).
            DATA t49 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t49.
            DATA t51 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t51.
            t51 = t38->zlnt_view_read_sr_455340cd1e80( ).
            t49 = t51.
            t48 = me->is_char_like( i_type_9913 = t49 ).
            t47 = xsdbool( t48 = abap_false ).
            IF t47 = abap_true.
              result = abap_false.
              RETURN.
            ENDIF.
          ENDDO.
          result = abap_true.
          RETURN.
        ELSE.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE abap_bool( ).
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = VALUE abap_bool( ).
          DATA(t65) = VALUE abap_bool( ).
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = VALUE abap_bool( ).
          DATA(t68) = VALUE abap_bool( ).
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = VALUE abap_bool( ).
          DATA(t71) = VALUE abap_bool( ).
          DATA(t72) = VALUE abap_bool( ).
          DATA(t73) = VALUE abap_bool( ).
          DATA(t74) = VALUE abap_bool( ).
          DATA(t75) = VALUE abap_bool( ).
          DATA(t76) = VALUE abap_bool( ).
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = VALUE abap_bool( ).
          DATA(t79) = VALUE abap_bool( ).
          DATA(t80) = VALUE abap_bool( ).
          t80 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ).
          t79 = t80.
          IF t80 = abap_false.
            DATA(t82) = VALUE abap_bool( ).
            t82 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_character_type ).
            t79 = t82.
          ENDIF.
          t78 = t79.
          IF t79 = abap_false.
            DATA(t84) = VALUE abap_bool( ).
            t84 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
            t78 = t84.
          ENDIF.
          t77 = t78.
          IF t78 = abap_false.
            DATA(t86) = VALUE abap_bool( ).
            t86 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
            t77 = t86.
          ENDIF.
          t76 = t77.
          IF t77 = abap_false.
            DATA(t88) = VALUE abap_bool( ).
            t88 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
            t76 = t88.
          ENDIF.
          t75 = t76.
          IF t76 = abap_false.
            DATA(t90) = VALUE abap_bool( ).
            t90 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_numeric_type ).
            t75 = t90.
          ENDIF.
          t74 = t75.
          IF t75 = abap_false.
            DATA(t92) = VALUE abap_bool( ).
            t92 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
            t74 = t92.
          ENDIF.
          t73 = t74.
          IF t74 = abap_false.
            DATA(t94) = VALUE abap_bool( ).
            t94 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer8_type ).
            t73 = t94.
          ENDIF.
          t72 = t73.
          IF t73 = abap_false.
            DATA(t96) = VALUE abap_bool( ).
            t96 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_simple_type ).
            t72 = t96.
          ENDIF.
          t71 = t72.
          IF t72 = abap_false.
            DATA(t98) = VALUE abap_bool( ).
            t98 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
            t71 = t98.
          ENDIF.
          t70 = t71.
          IF t71 = abap_false.
            DATA(t100) = VALUE abap_bool( ).
            t100 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_floating_point_type ).
            t70 = t100.
          ENDIF.
          t69 = t70.
          IF t70 = abap_false.
            DATA(t102) = VALUE abap_bool( ).
            t102 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_dec_float_type ).
            t69 = t102.
          ENDIF.
          t68 = t69.
          IF t69 = abap_false.
            DATA(t104) = VALUE abap_bool( ).
            t104 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_dec_float16_type ).
            t68 = t104.
          ENDIF.
          t67 = t68.
          IF t68 = abap_false.
            DATA(t106) = VALUE abap_bool( ).
            t106 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_dec_float34_type ).
            t67 = t106.
          ENDIF.
          t66 = t67.
          IF t67 = abap_false.
            DATA(t108) = VALUE abap_bool( ).
            t108 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_numeric_generic_type ).
            t66 = t108.
          ENDIF.
          t65 = t66.
          IF t66 = abap_false.
            DATA(t110) = VALUE abap_bool( ).
            t110 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_sequence_type ).
            t65 = t110.
          ENDIF.
          t64 = t65.
          IF t65 = abap_false.
            DATA(t112) = VALUE abap_bool( ).
            t112 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_generic_type ).
            t64 = t112.
          ENDIF.
          t63 = t64.
          IF t64 = abap_false.
            DATA(t114) = VALUE abap_bool( ).
            t114 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_date_type ).
            t63 = t114.
          ENDIF.
          t62 = t63.
          IF t63 = abap_false.
            DATA(t116) = VALUE abap_bool( ).
            t116 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
            t62 = t116.
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            DATA(t118) = VALUE abap_bool( ).
            t118 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_like_type ).
            t61 = t118.
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            DATA(t120) = VALUE abap_bool( ).
            t120 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_packed_type ).
            t60 = t120.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA(t122) = VALUE abap_bool( ).
            t122 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_p_generic_type ).
            t59 = t122.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA(t124) = VALUE abap_bool( ).
            t124 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_time_type ).
            t58 = t124.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA(t126) = VALUE abap_bool( ).
            t126 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_enum_type ).
            t57 = t126.
          ENDIF.
          IF t57 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD is_hex_like.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t2 = xsdbool( t1 IS INITIAL ).
    IF t2 = abap_true.
      result = abap_false.
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      t10 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t10 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t14 TYPE REF TO zcl_lnt_structure_type.
        t14 ?= t1.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t16 = t14->components.
        t12 = t16.
        DATA t18 TYPE REF TO zcl_lnt_istructure_component.
        DATA t19 TYPE REF TO object.
        DATA(t20) = VALUE i( ).
        DO.
          t12->load( ).
          IF t20 >= lines( t12->items ).
            EXIT.
          ENDIF.
          CLEAR t19.
          READ TABLE t12->items INDEX t20 + 1 INTO t19.
          t20 = t20 + 1.
          DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t21.
          CLEAR t18.
          IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t21 ?= t19.
            CLEAR t18.
            IF t21 IS BOUND.
              IF t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                TRY.
                    t18 ?= t21->oval.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
              ENDIF.
              IF t18 IS NOT BOUND.
                IF t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                  DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t22.
                  IF t21->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                  ENDIF.
                  TRY.
                      t22 ?= t21->oval.
                    CATCH cx_sy_move_cast_error.
                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                  ENDTRY.
                  IF t22->structural( ) <> abap_true.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                  ENDIF.
                ENDIF.
                DATA(t23) = VALUE string( ).
                DATA t24 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t24.
                DATA t25 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t25.
                DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t26.
                t18 = NEW zcl_lnt_istructure_component( view_source = t21 i_name = t23 i_type_9913 = t24 i_as_include = t25 i_suffix = t26 ).
              ENDIF.
            ENDIF.
          ELSE.
            t18 ?= t19.
          ENDIF.
          DATA(t27) = VALUE abap_bool( ).
          DATA(t28) = VALUE abap_bool( ).
          DATA t29 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t29.
          DATA t31 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t31.
          t31 = t18->zlnt_view_read_sr_455340cd1e80( ).
          t29 = t31.
          t28 = me->is_hex_like( i_type_9913 = t29 ).
          t27 = xsdbool( t28 = abap_false ).
          IF t27 = abap_true.
            result = abap_false.
            RETURN.
          ENDIF.
        ENDDO.
        result = abap_true.
        RETURN.
      ELSE.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        t38 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t37 = t38.
        IF t38 = abap_true.
          DATA(t40) = VALUE abap_bool( ).
          DATA t42 TYPE REF TO zcl_lnt_ty_table_type.
          t42 ?= t1.
          DATA(t44) = VALUE abap_bool( ).
          DATA t45 TYPE REF TO zcl_lnt_itable_options.
          t45 = t42->options.
          t44 = t45->zlnt_view_read_sr_ec4602663c93( ).
          t40 = t44.
          t37 = t40.
        ENDIF.
        IF t37 = abap_true.
          DATA(t47) = VALUE abap_bool( ).
          DATA t48 TYPE REF TO zcl_lnt_abstract_type.
          DATA t52 TYPE REF TO zcl_lnt_ty_table_type.
          t52 ?= t1.
          DATA t54 TYPE REF TO zcl_lnt_abstract_type.
          t54 = t52->row_type.
          t48 = t54.
          t47 = me->is_hex_like( i_type_9913 = t48 ).
          result = t47.
          RETURN.
        ELSE.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE abap_bool( ).
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = VALUE abap_bool( ).
          t63 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_x_string_type ).
          t62 = t63.
          IF t63 = abap_false.
            DATA(t65) = VALUE abap_bool( ).
            t65 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_hex_type ).
            t62 = t65.
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            DATA(t67) = VALUE abap_bool( ).
            t67 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
            t61 = t67.
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            DATA(t69) = VALUE abap_bool( ).
            t69 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_x_generic_type ).
            t60 = t69.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA(t71) = VALUE abap_bool( ).
            t71 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_x_sequence_type ).
            t59 = t71.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA(t73) = VALUE abap_bool( ).
            t73 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
            t58 = t73.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA(t75) = VALUE abap_bool( ).
            t75 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
            t57 = t75.
          ENDIF.
          IF t57 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD is_oo_assignable.
    DATA t3 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    t7 = i_source_75cf->identifier.
    t3 = t7.
    DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
    t13 = i_target_5f8a->identifier.
    t9 = t13.
    DATA(t15) = VALUE string( ).
    DATA(t16) = VALUE string( ).
    DATA(t17) = VALUE string( ).
    DATA(t20) = VALUE string( ).
    DATA t21 TYPE string.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    t24 = t9->token.
    DATA t26 TYPE string.
    t26 = t24->str.
    t21 = t26.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = VALUE string( ).
    DATA(t30) = t21.
    DATA(t31) = 0.
    DATA(t32) = 1.
    DATA(t33) = strlen( t30 ).
    IF t31 < 0.
      t31 = t31 + t33.
      IF t31 < 0.
        t31 = 0.
      ENDIF.
    ENDIF.
    IF t31 > t33 OR t32 <= 0.
      CLEAR t29.
    ELSE.
      IF t32 > t33 - t31.
        t32 = t33 - t31.
      ENDIF.
      t29 = t30+t31(t32).
    ENDIF.
    DATA(t34) = |!|.
    t28 = xsdbool( t29 = t34 ).
    IF t28 = abap_true.
      DATA(t35) = VALUE string( ).
      DATA t36 TYPE string.
      t36 = t21.
      DATA(t38) = VALUE string( ).
      DATA(t40) = 1.
      DATA t41 TYPE i.
      t41 = strlen( t36 ).
      DATA(t44) = strlen( t36 ).
      IF t40 < 0.
        t40 = t40 + t44.
        IF t40 < 0.
          t40 = 0.
        ENDIF.
      ENDIF.
      IF t40 > t44 OR t41 <= 0.
        CLEAR t38.
      ELSE.
        IF t41 > t44 - t40.
          t41 = t44 - t40.
        ENDIF.
        t38 = t36+t40(t41).
      ENDIF.
      t35 = t38.
      t21 = t35.
    ENDIF.
    t20 = t21.
    t17 = t20.
    DATA(t46) = strlen( t17 ).
    t16 = t17.
    IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t16 TO UPPER CASE.
    ELSE.
      t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
    ENDIF.
    t15 = t16.
    DATA(t47) = VALUE string( ).
    DATA(t48) = VALUE string( ).
    DATA(t49) = VALUE string( ).
    DATA(t52) = VALUE string( ).
    DATA t53 TYPE string.
    DATA t56 TYPE REF TO zcl_lnt_abstract_token.
    t56 = t3->token.
    DATA t58 TYPE string.
    t58 = t56->str.
    t53 = t58.
    DATA(t60) = VALUE abap_bool( ).
    DATA(t61) = VALUE string( ).
    DATA(t62) = t53.
    DATA(t63) = 0.
    DATA(t64) = 1.
    DATA(t65) = strlen( t62 ).
    IF t63 < 0.
      t63 = t63 + t65.
      IF t63 < 0.
        t63 = 0.
      ENDIF.
    ENDIF.
    IF t63 > t65 OR t64 <= 0.
      CLEAR t61.
    ELSE.
      IF t64 > t65 - t63.
        t64 = t65 - t63.
      ENDIF.
      t61 = t62+t63(t64).
    ENDIF.
    DATA(t66) = |!|.
    t60 = xsdbool( t61 = t66 ).
    IF t60 = abap_true.
      DATA(t67) = VALUE string( ).
      DATA t68 TYPE string.
      t68 = t53.
      DATA(t70) = VALUE string( ).
      DATA(t72) = 1.
      DATA t73 TYPE i.
      t73 = strlen( t68 ).
      DATA(t76) = strlen( t68 ).
      IF t72 < 0.
        t72 = t72 + t76.
        IF t72 < 0.
          t72 = 0.
        ENDIF.
      ENDIF.
      IF t72 > t76 OR t73 <= 0.
        CLEAR t70.
      ELSE.
        IF t73 > t76 - t72.
          t73 = t76 - t72.
        ENDIF.
        t70 = t68+t72(t73).
      ENDIF.
      t67 = t70.
      t53 = t67.
    ENDIF.
    t52 = t53.
    t49 = t52.
    DATA(t78) = strlen( t49 ).
    t48 = t49.
    IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t48 TO UPPER CASE.
    ELSE.
      t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
    ENDIF.
    t47 = t48.
    DATA t79 TYPE abap_bool.
    t79 = xsdbool( t15 = t47 ).
    IF t79 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t83) = VALUE abap_bool( ).
    DATA t84 TYPE abap_bool.
    DATA t85 TYPE abap_bool.
    DATA(t86) = t3.
    t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    t84 = t85.
    IF t85 = abap_false.
      DATA t87 TYPE abap_bool.
      DATA(t88) = t3.
      t87 = xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_interface_definition ).
      t84 = t87.
    ENDIF.
    t83 = xsdbool( t84 = abap_false ).
    IF t83 = abap_true.
      DATA t89 TYPE REF TO zif_lnt_interface_definition.
      DATA t91 TYPE REF TO zcl_lnt_current_scope.
      t91 = me->scope.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t96) = VALUE string( ).
      DATA(t99) = VALUE string( ).
      DATA t100 TYPE string.
      DATA t103 TYPE REF TO zcl_lnt_abstract_token.
      t103 = t3->token.
      DATA t105 TYPE string.
      t105 = t103->str.
      t100 = t105.
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = VALUE string( ).
      DATA(t109) = t100.
      DATA(t110) = 0.
      DATA(t111) = 1.
      DATA(t112) = strlen( t109 ).
      IF t110 < 0.
        t110 = t110 + t112.
        IF t110 < 0.
          t110 = 0.
        ENDIF.
      ENDIF.
      IF t110 > t112 OR t111 <= 0.
        CLEAR t108.
      ELSE.
        IF t111 > t112 - t110.
          t111 = t112 - t110.
        ENDIF.
        t108 = t109+t110(t111).
      ENDIF.
      DATA(t113) = |!|.
      t107 = xsdbool( t108 = t113 ).
      IF t107 = abap_true.
        DATA(t114) = VALUE string( ).
        DATA t115 TYPE string.
        t115 = t100.
        DATA(t117) = VALUE string( ).
        DATA(t119) = 1.
        DATA t120 TYPE i.
        t120 = strlen( t115 ).
        DATA(t123) = strlen( t115 ).
        IF t119 < 0.
          t119 = t119 + t123.
          IF t119 < 0.
            t119 = 0.
          ENDIF.
        ENDIF.
        IF t119 > t123 OR t120 <= 0.
          CLEAR t117.
        ELSE.
          IF t120 > t123 - t119.
            t120 = t123 - t119.
          ENDIF.
          t117 = t115+t119(t120).
        ENDIF.
        t114 = t117.
        t100 = t114.
      ENDIF.
      t99 = t100.
      t96 = t99.
      DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t125->has = abap_true.
      t125->value = t96.
      t93 = t125.
      DATA t127 TYPE REF TO zif_lnt_interface_definition.
      DATA(t128) = VALUE abap_bool( ).
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t129 = t93.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t133) = VALUE abap_bool( ).
      IF t129 IS INITIAL.
        t133 = abap_true.
      ELSEIF t129->has = abap_false.
        t133 = abap_true.
      ENDIF.
      t128 = t133.
      IF t128 = abap_true.
      ELSE.
        DATA t137 TYPE REF TO zif_lnt_class_definition.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t142 TYPE string.
        t142 = t93->value.
        DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t144->has = abap_true.
        t144->value = t142.
        t139 = t144.
        DATA t146 TYPE REF TO zif_lnt_class_definition.
        DATA(t147) = VALUE abap_bool( ).
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t148 = t139.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t152) = VALUE abap_bool( ).
        IF t148 IS INITIAL.
          t152 = abap_true.
        ELSEIF t148->has = abap_false.
          t152 = abap_true.
        ENDIF.
        t147 = t152.
        IF t147 = abap_true.
        ELSE.
          DATA t156 TYPE REF TO zif_lnt_class_definition.
          DATA t158 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t159 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t159 = t91->current.
          t158 = t159.
          DATA t161 TYPE REF TO zif_lnt_class_definition.
          DATA(t162) = xsdbool( t158 IS INITIAL ).
          IF t162 = abap_true.
          ELSE.
            DATA t165 TYPE REF TO zif_lnt_class_definition.
            DATA t166 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t166 = t158.
            DATA t168 TYPE string.
            t168 = t139->value.
            t165 = t166->find_class_definition( i_name = t168 ).
            t161 = t165.
          ENDIF.
          t156 = t161.
          DATA t170 TYPE REF TO zif_lnt_class_definition.
          DATA t171 TYPE abap_bool.
          t171 = xsdbool( t156 IS BOUND ).
          IF t171 = abap_true.
            t170 = t156.
          ELSE.
            DATA t179 TYPE REF TO zcl_lnt_class.
            DATA t180 TYPE REF TO zcl_lnt_class.
            DATA t181 TYPE REF TO zif_lnt_object.
            DATA t182 TYPE REF TO zif_lnt_registry.
            t182 = t91->reg.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t186) = |CLAS|.
            DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t187->has = abap_true.
            t187->value = t186.
            t184 = t187.
            DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t191 TYPE string.
            t191 = t139->value.
            DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t193->has = abap_true.
            t193->value = t191.
            t189 = t193.
            t181 = t182->get_object( i_type_9913 = t184 i_name = t189 ).
            DATA t195 TYPE REF TO object.
            t195 = t181.
            t180 ?= t195.
            t179 = t180.
            DATA t196 TYPE REF TO zif_lnt_class_definition.
            DATA t197 TYPE abap_bool.
            t197 = xsdbool( t179 IS BOUND ).
            IF t197 = abap_true.
              DATA t199 TYPE REF TO zif_lnt_class_definition.
              DATA t200 TYPE REF TO zcl_lnt_class.
              t200 = t179.
              t199 = t200->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t196 = t199.
            ELSE.
              CLEAR t196.
            ENDIF.
            t170 = t196.
          ENDIF.
          t146 = t170.
        ENDIF.
        t137 = t146.
        DATA t203 TYPE REF TO zif_lnt_interface_definition.
        DATA t204 TYPE abap_bool.
        t204 = xsdbool( t137 IS BOUND ).
        IF t204 = abap_true.
          DATA t206 TYPE REF TO zif_lnt_interface_definition.
          DATA t207 TYPE REF TO zif_lnt_class_definition.
          t207 = t137.
          t206 ?= t207.
          t203 = t206.
        ELSE.
          DATA t210 TYPE REF TO zif_lnt_interface_definition.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t215 TYPE string.
          t215 = t93->value.
          DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t217->has = abap_true.
          t217->value = t215.
          t212 = t217.
          DATA t219 TYPE REF TO zif_lnt_interface_definition.
          DATA(t220) = VALUE abap_bool( ).
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t221 = t212.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t225) = VALUE abap_bool( ).
          IF t221 IS INITIAL.
            t225 = abap_true.
          ELSEIF t221->has = abap_false.
            t225 = abap_true.
          ENDIF.
          t220 = t225.
          IF t220 = abap_true.
          ELSE.
            DATA t229 TYPE REF TO zif_lnt_interface_definition.
            DATA t231 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t232 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t232 = t91->current.
            t231 = t232.
            DATA t234 TYPE REF TO zif_lnt_interface_definition.
            DATA(t235) = xsdbool( t231 IS INITIAL ).
            IF t235 = abap_true.
            ELSE.
              DATA t238 TYPE REF TO zif_lnt_interface_definition.
              DATA t239 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t239 = t231.
              DATA t241 TYPE string.
              t241 = t212->value.
              t238 = t239->find_interface_definition( i_name = t241 ).
              t234 = t238.
            ENDIF.
            t229 = t234.
            DATA t243 TYPE REF TO zif_lnt_interface_definition.
            DATA t244 TYPE abap_bool.
            t244 = xsdbool( t229 IS BOUND ).
            IF t244 = abap_true.
              t243 = t229.
            ELSE.
              DATA t252 TYPE REF TO zcl_lnt_ob_interface.
              DATA t253 TYPE REF TO zcl_lnt_ob_interface.
              DATA t254 TYPE REF TO zif_lnt_object.
              DATA t255 TYPE REF TO zif_lnt_registry.
              t255 = t91->reg.
              DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t259) = |INTF|.
              DATA(t260) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t260->has = abap_true.
              t260->value = t259.
              t257 = t260.
              DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t264 TYPE string.
              t264 = t212->value.
              DATA(t266) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t266->has = abap_true.
              t266->value = t264.
              t262 = t266.
              t254 = t255->get_object( i_type_9913 = t257 i_name = t262 ).
              DATA t268 TYPE REF TO object.
              t268 = t254.
              t253 ?= t268.
              t252 = t253.
              DATA t269 TYPE REF TO zif_lnt_interface_definition.
              DATA t270 TYPE abap_bool.
              t270 = xsdbool( t252 IS BOUND ).
              IF t270 = abap_true.
                DATA t276 TYPE REF TO zif_lnt_interface_definition.
                t276 = t252->def.
                t269 = t276.
              ELSE.
                CLEAR t269.
              ENDIF.
              t243 = t269.
            ENDIF.
            t219 = t243.
          ENDIF.
          t210 = t219.
          DATA t279 TYPE REF TO zif_lnt_interface_definition.
          DATA t280 TYPE abap_bool.
          t280 = xsdbool( t210 IS BOUND ).
          IF t280 = abap_true.
            t279 = t210.
          ELSE.
            CLEAR t279.
          ENDIF.
          t203 = t279.
        ENDIF.
        t127 = t203.
      ENDIF.
      t89 = t127.
      DATA t288 TYPE abap_bool.
      t288 = xsdbool( t89 IS BOUND ).
      IF t288 = abap_true.
        DATA t290 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t291 TYPE REF TO zif_lnt_interface_definition.
        t291 = t89.
        t290 ?= t291.
        t3 = t290.
      ELSE.
        result = abap_false.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t294) = VALUE abap_bool( ).
    DATA t295 TYPE abap_bool.
    DATA t296 TYPE abap_bool.
    DATA(t297) = t9.
    t296 = xsdbool( t297 IS BOUND AND t297 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    t295 = t296.
    IF t296 = abap_false.
      DATA t298 TYPE abap_bool.
      DATA(t299) = t9.
      t298 = xsdbool( t299 IS BOUND AND t299 IS INSTANCE OF zcl_lnt_interface_definition ).
      t295 = t298.
    ENDIF.
    t294 = xsdbool( t295 = abap_false ).
    IF t294 = abap_true.
      DATA t300 TYPE REF TO zif_lnt_interface_definition.
      DATA t302 TYPE REF TO zcl_lnt_current_scope.
      t302 = me->scope.
      DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t307) = VALUE string( ).
      DATA(t310) = VALUE string( ).
      DATA t311 TYPE string.
      DATA t314 TYPE REF TO zcl_lnt_abstract_token.
      t314 = t9->token.
      DATA t316 TYPE string.
      t316 = t314->str.
      t311 = t316.
      DATA(t318) = VALUE abap_bool( ).
      DATA(t319) = VALUE string( ).
      DATA(t320) = t311.
      DATA(t321) = 0.
      DATA(t322) = 1.
      DATA(t323) = strlen( t320 ).
      IF t321 < 0.
        t321 = t321 + t323.
        IF t321 < 0.
          t321 = 0.
        ENDIF.
      ENDIF.
      IF t321 > t323 OR t322 <= 0.
        CLEAR t319.
      ELSE.
        IF t322 > t323 - t321.
          t322 = t323 - t321.
        ENDIF.
        t319 = t320+t321(t322).
      ENDIF.
      DATA(t324) = |!|.
      t318 = xsdbool( t319 = t324 ).
      IF t318 = abap_true.
        DATA(t325) = VALUE string( ).
        DATA t326 TYPE string.
        t326 = t311.
        DATA(t328) = VALUE string( ).
        DATA(t330) = 1.
        DATA t331 TYPE i.
        t331 = strlen( t326 ).
        DATA(t334) = strlen( t326 ).
        IF t330 < 0.
          t330 = t330 + t334.
          IF t330 < 0.
            t330 = 0.
          ENDIF.
        ENDIF.
        IF t330 > t334 OR t331 <= 0.
          CLEAR t328.
        ELSE.
          IF t331 > t334 - t330.
            t331 = t334 - t330.
          ENDIF.
          t328 = t326+t330(t331).
        ENDIF.
        t325 = t328.
        t311 = t325.
      ENDIF.
      t310 = t311.
      t307 = t310.
      DATA(t336) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t336->has = abap_true.
      t336->value = t307.
      t304 = t336.
      DATA t338 TYPE REF TO zif_lnt_interface_definition.
      DATA(t339) = VALUE abap_bool( ).
      DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t340 = t304.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t344) = VALUE abap_bool( ).
      IF t340 IS INITIAL.
        t344 = abap_true.
      ELSEIF t340->has = abap_false.
        t344 = abap_true.
      ENDIF.
      t339 = t344.
      IF t339 = abap_true.
      ELSE.
        DATA t348 TYPE REF TO zif_lnt_class_definition.
        DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t353 TYPE string.
        t353 = t304->value.
        DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t355->has = abap_true.
        t355->value = t353.
        t350 = t355.
        DATA t357 TYPE REF TO zif_lnt_class_definition.
        DATA(t358) = VALUE abap_bool( ).
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t359 = t350.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t363) = VALUE abap_bool( ).
        IF t359 IS INITIAL.
          t363 = abap_true.
        ELSEIF t359->has = abap_false.
          t363 = abap_true.
        ENDIF.
        t358 = t363.
        IF t358 = abap_true.
        ELSE.
          DATA t367 TYPE REF TO zif_lnt_class_definition.
          DATA t369 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t370 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t370 = t302->current.
          t369 = t370.
          DATA t372 TYPE REF TO zif_lnt_class_definition.
          DATA(t373) = xsdbool( t369 IS INITIAL ).
          IF t373 = abap_true.
          ELSE.
            DATA t376 TYPE REF TO zif_lnt_class_definition.
            DATA t377 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t377 = t369.
            DATA t379 TYPE string.
            t379 = t350->value.
            t376 = t377->find_class_definition( i_name = t379 ).
            t372 = t376.
          ENDIF.
          t367 = t372.
          DATA t381 TYPE REF TO zif_lnt_class_definition.
          DATA t382 TYPE abap_bool.
          t382 = xsdbool( t367 IS BOUND ).
          IF t382 = abap_true.
            t381 = t367.
          ELSE.
            DATA t390 TYPE REF TO zcl_lnt_class.
            DATA t391 TYPE REF TO zcl_lnt_class.
            DATA t392 TYPE REF TO zif_lnt_object.
            DATA t393 TYPE REF TO zif_lnt_registry.
            t393 = t302->reg.
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t397) = |CLAS|.
            DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t398->has = abap_true.
            t398->value = t397.
            t395 = t398.
            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t402 TYPE string.
            t402 = t350->value.
            DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t404->has = abap_true.
            t404->value = t402.
            t400 = t404.
            t392 = t393->get_object( i_type_9913 = t395 i_name = t400 ).
            DATA t406 TYPE REF TO object.
            t406 = t392.
            t391 ?= t406.
            t390 = t391.
            DATA t407 TYPE REF TO zif_lnt_class_definition.
            DATA t408 TYPE abap_bool.
            t408 = xsdbool( t390 IS BOUND ).
            IF t408 = abap_true.
              DATA t410 TYPE REF TO zif_lnt_class_definition.
              DATA t411 TYPE REF TO zcl_lnt_class.
              t411 = t390.
              t410 = t411->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t407 = t410.
            ELSE.
              CLEAR t407.
            ENDIF.
            t381 = t407.
          ENDIF.
          t357 = t381.
        ENDIF.
        t348 = t357.
        DATA t414 TYPE REF TO zif_lnt_interface_definition.
        DATA t415 TYPE abap_bool.
        t415 = xsdbool( t348 IS BOUND ).
        IF t415 = abap_true.
          DATA t417 TYPE REF TO zif_lnt_interface_definition.
          DATA t418 TYPE REF TO zif_lnt_class_definition.
          t418 = t348.
          t417 ?= t418.
          t414 = t417.
        ELSE.
          DATA t421 TYPE REF TO zif_lnt_interface_definition.
          DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t426 TYPE string.
          t426 = t304->value.
          DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t428->has = abap_true.
          t428->value = t426.
          t423 = t428.
          DATA t430 TYPE REF TO zif_lnt_interface_definition.
          DATA(t431) = VALUE abap_bool( ).
          DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t432 = t423.
          DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t436) = VALUE abap_bool( ).
          IF t432 IS INITIAL.
            t436 = abap_true.
          ELSEIF t432->has = abap_false.
            t436 = abap_true.
          ENDIF.
          t431 = t436.
          IF t431 = abap_true.
          ELSE.
            DATA t440 TYPE REF TO zif_lnt_interface_definition.
            DATA t442 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t443 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t443 = t302->current.
            t442 = t443.
            DATA t445 TYPE REF TO zif_lnt_interface_definition.
            DATA(t446) = xsdbool( t442 IS INITIAL ).
            IF t446 = abap_true.
            ELSE.
              DATA t449 TYPE REF TO zif_lnt_interface_definition.
              DATA t450 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t450 = t442.
              DATA t452 TYPE string.
              t452 = t423->value.
              t449 = t450->find_interface_definition( i_name = t452 ).
              t445 = t449.
            ENDIF.
            t440 = t445.
            DATA t454 TYPE REF TO zif_lnt_interface_definition.
            DATA t455 TYPE abap_bool.
            t455 = xsdbool( t440 IS BOUND ).
            IF t455 = abap_true.
              t454 = t440.
            ELSE.
              DATA t463 TYPE REF TO zcl_lnt_ob_interface.
              DATA t464 TYPE REF TO zcl_lnt_ob_interface.
              DATA t465 TYPE REF TO zif_lnt_object.
              DATA t466 TYPE REF TO zif_lnt_registry.
              t466 = t302->reg.
              DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t470) = |INTF|.
              DATA(t471) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t471->has = abap_true.
              t471->value = t470.
              t468 = t471.
              DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t475 TYPE string.
              t475 = t423->value.
              DATA(t477) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t477->has = abap_true.
              t477->value = t475.
              t473 = t477.
              t465 = t466->get_object( i_type_9913 = t468 i_name = t473 ).
              DATA t479 TYPE REF TO object.
              t479 = t465.
              t464 ?= t479.
              t463 = t464.
              DATA t480 TYPE REF TO zif_lnt_interface_definition.
              DATA t481 TYPE abap_bool.
              t481 = xsdbool( t463 IS BOUND ).
              IF t481 = abap_true.
                DATA t487 TYPE REF TO zif_lnt_interface_definition.
                t487 = t463->def.
                t480 = t487.
              ELSE.
                CLEAR t480.
              ENDIF.
              t454 = t480.
            ENDIF.
            t430 = t454.
          ENDIF.
          t421 = t430.
          DATA t490 TYPE REF TO zif_lnt_interface_definition.
          DATA t491 TYPE abap_bool.
          t491 = xsdbool( t421 IS BOUND ).
          IF t491 = abap_true.
            t490 = t421.
          ELSE.
            CLEAR t490.
          ENDIF.
          t414 = t490.
        ENDIF.
        t338 = t414.
      ENDIF.
      t300 = t338.
      DATA t499 TYPE abap_bool.
      t499 = xsdbool( t300 IS BOUND ).
      IF t499 = abap_true.
        DATA t501 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t502 TYPE REF TO zif_lnt_interface_definition.
        t502 = t300.
        t501 ?= t502.
        t9 = t501.
      ELSE.
        result = abap_false.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t505 TYPE abap_bool.
    DATA t506 TYPE abap_bool.
    t506 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    t505 = t506.
    IF t506 = abap_true.
      DATA t508 TYPE abap_bool.
      t508 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      t505 = t508.
    ENDIF.
    IF t505 = abap_true.
      DATA t510 TYPE abap_bool.
      t510 = xsdbool( t47 = t15 ).
      IF t510 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
      DATA t515 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t516 TYPE REF TO zcl_lnt_ty_class_definition.
      t516 ?= t3.
      t515 = me->list_all_supers( i_cdef = t516 ).
      DATA t518 TYPE abap_bool.
      DATA t519 TYPE i.
      t519 = t515->indexof( p0 = t15 ).
      DATA(t522) = 0.
      t518 = xsdbool( t519 >= t522 ).
      IF t518 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ELSE.
      DATA t524 TYPE abap_bool.
      DATA t525 TYPE abap_bool.
      t525 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      t524 = t525.
      IF t525 = abap_true.
        DATA t527 TYPE abap_bool.
        t527 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_interface_definition ).
        t524 = t527.
      ENDIF.
      IF t524 = abap_true.
        DATA(t529) = VALUE abap_bool( ).
        DATA t530 TYPE abap_bool.
        t530 = abap_false.
        DATA t532 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t534 TYPE REF TO zcl_lnt_ty_class_definition.
        t534 ?= t3.
        DATA t536 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t536 = t534->implementing.
        t532 = t536.
        DATA t538 TYPE REF TO zcl_lnt_iimplementing.
        DATA t539 TYPE REF TO object.
        DATA(t540) = VALUE i( ).
        DO.
          t532->load( ).
          IF t540 >= lines( t532->items ).
            EXIT.
          ENDIF.
          CLEAR t539.
          READ TABLE t532->items INDEX t540 + 1 INTO t539.
          t540 = t540 + 1.
          DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t541.
          CLEAR t538.
          IF t539 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t541 ?= t539.
            DATA t542 TYPE REF TO object.
            t542 = t541->as_ref( ).
            t538 ?= t542.
          ELSE.
            t538 ?= t539.
          ENDIF.
          DATA t543 TYPE abap_bool.
          DATA t544 TYPE string.
          t544 = t538->name.
          t543 = xsdbool( t544 = t15 ).
          IF t543 = abap_true.
            t530 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        t529 = t530.
        IF t529 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
        DATA t551 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t552 TYPE REF TO zcl_lnt_ty_class_definition.
        t552 ?= t3.
        t551 = me->list_all_interfaces( i_cdef = t552 ).
        DATA t554 TYPE abap_bool.
        DATA t555 TYPE i.
        t555 = t551->indexof( p0 = t15 ).
        DATA(t558) = 0.
        t554 = xsdbool( t555 >= t558 ).
        IF t554 = abap_true.
          result = abap_true.
          RETURN.
        ENDIF.
      ELSE.
        DATA t560 TYPE abap_bool.
        DATA t561 TYPE abap_bool.
        t561 = xsdbool( t3 IS BOUND AND t3 IS INSTANCE OF zcl_lnt_interface_definition ).
        t560 = t561.
        IF t561 = abap_true.
          DATA t563 TYPE abap_bool.
          t563 = xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_interface_definition ).
          t560 = t563.
        ENDIF.
        IF t560 = abap_true.
          DATA t565 TYPE abap_bool.
          t565 = xsdbool( t47 = t15 ).
          IF t565 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
          DATA(t569) = VALUE abap_bool( ).
          DATA t570 TYPE abap_bool.
          t570 = abap_false.
          DATA t572 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t574 TYPE REF TO zcl_lnt_interface_definition.
          t574 ?= t3.
          DATA t576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t576 = t574->implementing.
          t572 = t576.
          DATA t578 TYPE REF TO zcl_lnt_iimplementing.
          DATA t579 TYPE REF TO object.
          DATA(t580) = VALUE i( ).
          DO.
            t572->load( ).
            IF t580 >= lines( t572->items ).
              EXIT.
            ENDIF.
            CLEAR t579.
            READ TABLE t572->items INDEX t580 + 1 INTO t579.
            t580 = t580 + 1.
            DATA t581 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t581.
            CLEAR t578.
            IF t579 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t581 ?= t579.
              DATA t582 TYPE REF TO object.
              t582 = t581->as_ref( ).
              t578 ?= t582.
            ELSE.
              t578 ?= t579.
            ENDIF.
            DATA t583 TYPE abap_bool.
            DATA t584 TYPE string.
            t584 = t578->name.
            t583 = xsdbool( t584 = t15 ).
            IF t583 = abap_true.
              t570 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          t569 = t570.
          IF t569 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
          DATA t591 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t592 TYPE REF TO zcl_lnt_interface_definition.
          t592 ?= t3.
          t591 = me->list_all_interfaces( i_cdef = t592 ).
          DATA t594 TYPE abap_bool.
          DATA t595 TYPE i.
          t595 = t591->indexof( p0 = t15 ).
          DATA(t598) = 0.
          t594 = xsdbool( t595 >= t598 ).
          IF t594 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_false.

  ENDMETHOD.

  METHOD list_all_interfaces.
    DATA(t1) = i_cdef.
    DATA t2 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    t2 = NEW zlnt_runtime_set__1827558fd4c7( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t1->get_implementing( ).
    t7 = t8.
    DATA t10 TYPE i.
    DATA t11 TYPE i.
    t7->load( ).
    t11 = lines( t7->items ).
    t10 = t11.
    DATA t13 TYPE i.
    t13 = 0.
    DO.
      DATA t15 TYPE abap_bool.
      t15 = xsdbool( t13 < t10 ).
      IF t15 = abap_false.
        EXIT.
      ENDIF.
      DATA t20 TYPE REF TO zcl_lnt_iimplementing.
      CLEAR t20.
      DATA t23 TYPE REF TO object.
      t23 = t7->get( p0 = t13 ).
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t24.
      CLEAR t20.
      IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t24 ?= t23.
        DATA t25 TYPE REF TO object.
        t25 = t24->as_ref( ).
        t20 ?= t25.
      ELSE.
        t20 ?= t23.
      ENDIF.
      DATA t27 TYPE string.
      t27 = t20->name.
      t4->load( ).
      APPEND t27 TO t4->items.
      t4->save( ).
      DATA t29 TYPE i.
      DATA(t31) = 1.
      t29 = t13 + t31.
      t13 = t29.
    ENDDO.
    DATA t33 TYPE abap_bool.
    t33 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA t39 TYPE REF TO object.
      t39 = t1.
      t37 ?= t39.
      t36 = me->list_all_supers( i_cdef = t37 ).
      t35 = t36.
      DATA(t41) = VALUE string( ).
      t35->dense( ).
      DATA(t42) = VALUE i( ).
      DO.
        t35->load( ).
        IF t42 >= lines( t35->items ).
          EXIT.
        ENDIF.
        CLEAR t41.
        READ TABLE t35->items INDEX t42 + 1 INTO t41.
        IF t35->has( t42 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t42 = t42 + 1.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t44.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        CLEAR t46.
        DATA t48 TYPE REF TO zcl_lnt_current_scope.
        t48 = me->scope.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t41.
        t50 = t54.
        DATA t56 TYPE REF TO zif_lnt_class_definition.
        CLEAR t56.
        DATA(t57) = VALUE abap_bool( ).
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t58 = t50.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t60.
        DATA(t62) = VALUE abap_bool( ).
        IF t58 IS INITIAL.
          t62 = abap_true.
        ELSEIF t58->has = abap_false.
          t62 = abap_true.
        ENDIF.
        t57 = t62.
        IF t57 = abap_true.
          CLEAR t56.
        ELSE.
          DATA t66 TYPE REF TO zif_lnt_class_definition.
          CLEAR t66.
          DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t69 = t48->current.
          t68 = t69.
          DATA t71 TYPE REF TO zif_lnt_class_definition.
          CLEAR t71.
          DATA(t72) = xsdbool( t68 IS INITIAL ).
          IF t72 = abap_true.
            CLEAR t71.
          ELSE.
            DATA t75 TYPE REF TO zif_lnt_class_definition.
            DATA t76 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t76 = t68.
            DATA t78 TYPE string.
            t78 = t50->value.
            t75 = t76->find_class_definition( i_name = t78 ).
            t71 = t75.
          ENDIF.
          t66 = t71.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          CLEAR t80.
          DATA t81 TYPE abap_bool.
          t81 = xsdbool( t66 IS BOUND ).
          IF t81 = abap_true.
            t80 = t66.
          ELSE.
            DATA t89 TYPE REF TO zcl_lnt_class.
            CLEAR t89.
            DATA t90 TYPE REF TO zcl_lnt_class.
            CLEAR t90.
            DATA t91 TYPE REF TO zif_lnt_object.
            CLEAR t91.
            DATA t92 TYPE REF TO zif_lnt_registry.
            t92 = t48->reg.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t94.
            DATA(t96) = |CLAS|.
            DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t97->has = abap_true.
            t97->value = t96.
            t94 = t97.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            DATA t101 TYPE string.
            t101 = t50->value.
            DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t103->has = abap_true.
            t103->value = t101.
            t99 = t103.
            t91 = t92->get_object( i_type_9913 = t94 i_name = t99 ).
            DATA t105 TYPE REF TO object.
            t105 = t91.
            t90 ?= t105.
            t89 = t90.
            DATA t106 TYPE REF TO zif_lnt_class_definition.
            CLEAR t106.
            DATA t107 TYPE abap_bool.
            t107 = xsdbool( t89 IS BOUND ).
            IF t107 = abap_true.
              DATA t109 TYPE REF TO zif_lnt_class_definition.
              DATA t110 TYPE REF TO zcl_lnt_class.
              t110 = t89.
              t109 = t110->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t106 = t109.
            ELSE.
              CLEAR t106.
            ENDIF.
            t80 = t106.
          ENDIF.
          t56 = t80.
        ENDIF.
        t46 = t56.
        DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t113.
        DATA(t114) = xsdbool( t46 IS INITIAL ).
        IF t114 = abap_true.
          CLEAR t113.
        ELSE.
          DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t118 TYPE REF TO zif_lnt_class_definition.
          t118 = t46.
          t117 = t118->get_implementing( ).
          t113 = t117.
        ENDIF.
        t44 = t113.
        DATA(t121) = xsdbool( t44 IS INITIAL ).
        IF t121 = abap_true.
        ELSE.
          DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t125 = t44.
          DATA t128 TYPE i.
          DATA t129 TYPE i.
          t125->load( ).
          t129 = lines( t125->items ).
          t128 = t129.
          DATA t131 TYPE i.
          t131 = 0.
          DO.
            DATA t133 TYPE abap_bool.
            t133 = xsdbool( t131 < t128 ).
            IF t133 = abap_false.
              EXIT.
            ENDIF.
            DATA t138 TYPE REF TO zcl_lnt_iimplementing.
            CLEAR t138.
            DATA t141 TYPE REF TO object.
            t141 = t125->get( p0 = t131 ).
            DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t142.
            CLEAR t138.
            IF t141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t142 ?= t141.
              DATA t143 TYPE REF TO object.
              t143 = t142->as_ref( ).
              t138 ?= t143.
            ELSE.
              t138 ?= t141.
            ENDIF.
            DATA t145 TYPE string.
            t145 = t138->name.
            t4->load( ).
            APPEND t145 TO t4->items.
            t4->save( ).
            DATA t147 TYPE i.
            DATA(t149) = 1.
            t147 = t131 + t149.
            t131 = t147.
          ENDDO.
        ENDIF.
        CLEAR t43.
      ENDDO.
    ENDIF.
    DO.
      DATA t151 TYPE abap_bool.
      DATA t152 TYPE i.
      t4->load( ).
      t152 = lines( t4->items ).
      DATA(t154) = 0.
      t151 = xsdbool( t152 > t154 ).
      IF t151 = abap_false.
        EXIT.
      ENDIF.
      DATA(t155) = VALUE string( ).
      DATA t156 TYPE string.
      DATA t157 TYPE string.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t158 = t4->pop( ).
      t157 = t158->value.
      DATA(t160) = strlen( t157 ).
      t156 = t157.
      IF t156 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t156 TO UPPER CASE.
      ELSE.
        t156 = zlnt_runtime_uppe_91169605024d=>full( t156 ).
      ENDIF.
      t155 = t156.
      DATA t161 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      t161 = t2->add( p0 = t155 ).
      DATA t166 TYPE REF TO zcl_lnt_current_scope.
      t166 = me->scope.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t168.
      DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t172->has = abap_true.
      t172->value = t155.
      t168 = t172.
      DATA t174 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t174.
      DATA(t175) = VALUE abap_bool( ).
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t176 = t168.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t178.
      DATA(t180) = VALUE abap_bool( ).
      IF t176 IS INITIAL.
        t180 = abap_true.
      ELSEIF t176->has = abap_false.
        t180 = abap_true.
      ENDIF.
      t175 = t180.
      IF t175 = abap_true.
        CLEAR t174.
      ELSE.
        DATA t184 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t184.
        DATA t186 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t187 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t187 = t166->current.
        t186 = t187.
        DATA t189 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t189.
        DATA(t190) = xsdbool( t186 IS INITIAL ).
        IF t190 = abap_true.
          CLEAR t189.
        ELSE.
          DATA t193 TYPE REF TO zif_lnt_interface_definition.
          DATA t194 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t194 = t186.
          DATA t196 TYPE string.
          t196 = t168->value.
          t193 = t194->find_interface_definition( i_name = t196 ).
          t189 = t193.
        ENDIF.
        t184 = t189.
        DATA t198 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t198.
        DATA t199 TYPE abap_bool.
        t199 = xsdbool( t184 IS BOUND ).
        IF t199 = abap_true.
          t198 = t184.
        ELSE.
          DATA t207 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t207.
          DATA t208 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t208.
          DATA t209 TYPE REF TO zif_lnt_object.
          CLEAR t209.
          DATA t210 TYPE REF TO zif_lnt_registry.
          t210 = t166->reg.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          DATA(t214) = |INTF|.
          DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t215->has = abap_true.
          t215->value = t214.
          t212 = t215.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t217.
          DATA t219 TYPE string.
          t219 = t168->value.
          DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t221->has = abap_true.
          t221->value = t219.
          t217 = t221.
          t209 = t210->get_object( i_type_9913 = t212 i_name = t217 ).
          DATA t223 TYPE REF TO object.
          t223 = t209.
          t208 ?= t223.
          t207 = t208.
          DATA t224 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t224.
          DATA t225 TYPE abap_bool.
          t225 = xsdbool( t207 IS BOUND ).
          IF t225 = abap_true.
            DATA t231 TYPE REF TO zif_lnt_interface_definition.
            t231 = t207->def.
            t224 = t231.
          ELSE.
            CLEAR t224.
          ENDIF.
          t198 = t224.
        ENDIF.
        t174 = t198.
      ENDIF.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t234.
      DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t235.
      DATA t237 TYPE REF TO zif_lnt_interface_definition.
      t237 = t174.
      DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t239.
      DATA(t240) = xsdbool( t237 IS INITIAL ).
      IF t240 = abap_true.
        CLEAR t239.
      ELSE.
        DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t244 TYPE REF TO zif_lnt_interface_definition.
        t244 = t237.
        t243 = t244->get_implementing( ).
        t239 = t243.
      ENDIF.
      t235 = t239.
      DATA(t247) = xsdbool( t235 IS INITIAL ).
      IF t247 = abap_true.
      ELSE.
        DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t251 = t235.
        DATA t254 TYPE i.
        DATA t255 TYPE i.
        t251->load( ).
        t255 = lines( t251->items ).
        t254 = t255.
        DATA t257 TYPE i.
        t257 = 0.
        DO.
          DATA t259 TYPE abap_bool.
          t259 = xsdbool( t257 < t254 ).
          IF t259 = abap_false.
            EXIT.
          ENDIF.
          DATA t264 TYPE REF TO zcl_lnt_iimplementing.
          CLEAR t264.
          DATA t267 TYPE REF TO object.
          t267 = t251->get( p0 = t257 ).
          DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t268.
          CLEAR t264.
          IF t267 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t268 ?= t267.
            DATA t269 TYPE REF TO object.
            t269 = t268->as_ref( ).
            t264 ?= t269.
          ELSE.
            t264 ?= t267.
          ENDIF.
          DATA t271 TYPE string.
          t271 = t264->name.
          t4->load( ).
          APPEND t271 TO t4->items.
          t4->save( ).
          DATA t273 TYPE i.
          DATA(t275) = 1.
          t273 = t257 + t275.
          t257 = t273.
        ENDDO.
      ENDIF.
      CLEAR t234.
    ENDDO.
    DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t278 = t2->values( ).
    t277 = t278->slice0( ).
    result = t277.

  ENDMETHOD.

  METHOD list_all_supers.
    DATA(t1) = i_cdef.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t8 = t1->super_class.
    t4 = t8.
    DO.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t11 = t4.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      IF t11 IS INITIAL.
        t16 = abap_true.
      ELSEIF t11->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t15 = xsdbool( t16 = abap_false ).
      t10 = t15.
      IF t10 = abap_false.
        EXIT.
      ENDIF.
      DATA t19 TYPE string.
      DATA t20 TYPE string.
      t20 = t4->value.
      DATA(t22) = strlen( t20 ).
      t19 = t20.
      IF t19 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t19 TO UPPER CASE.
      ELSE.
        t19 = zlnt_runtime_uppe_91169605024d=>full( t19 ).
      ENDIF.
      t2->load( ).
      APPEND t19 TO t2->items.
      t2->save( ).
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t26 TYPE REF TO zif_lnt_class_definition.
      CLEAR t26.
      DATA t28 TYPE REF TO zcl_lnt_current_scope.
      t28 = me->scope.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t33 TYPE string.
      t33 = t4->value.
      DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t35->has = abap_true.
      t35->value = t33.
      t30 = t35.
      DATA t37 TYPE REF TO zif_lnt_class_definition.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t39 = t30.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      DATA(t43) = VALUE abap_bool( ).
      IF t39 IS INITIAL.
        t43 = abap_true.
      ELSEIF t39->has = abap_false.
        t43 = abap_true.
      ENDIF.
      t38 = t43.
      IF t38 = abap_true.
        CLEAR t37.
      ELSE.
        DATA t47 TYPE REF TO zif_lnt_class_definition.
        CLEAR t47.
        DATA t49 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t50 = t28->current.
        t49 = t50.
        DATA t52 TYPE REF TO zif_lnt_class_definition.
        CLEAR t52.
        DATA(t53) = xsdbool( t49 IS INITIAL ).
        IF t53 = abap_true.
          CLEAR t52.
        ELSE.
          DATA t56 TYPE REF TO zif_lnt_class_definition.
          DATA t57 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t57 = t49.
          DATA t59 TYPE string.
          t59 = t30->value.
          t56 = t57->find_class_definition( i_name = t59 ).
          t52 = t56.
        ENDIF.
        t47 = t52.
        DATA t61 TYPE REF TO zif_lnt_class_definition.
        CLEAR t61.
        DATA t62 TYPE abap_bool.
        t62 = xsdbool( t47 IS BOUND ).
        IF t62 = abap_true.
          t61 = t47.
        ELSE.
          DATA t70 TYPE REF TO zcl_lnt_class.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_class.
          CLEAR t71.
          DATA t72 TYPE REF TO zif_lnt_object.
          CLEAR t72.
          DATA t73 TYPE REF TO zif_lnt_registry.
          t73 = t28->reg.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA(t77) = |CLAS|.
          DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t78->has = abap_true.
          t78->value = t77.
          t75 = t78.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          DATA t82 TYPE string.
          t82 = t30->value.
          DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t84->has = abap_true.
          t84->value = t82.
          t80 = t84.
          t72 = t73->get_object( i_type_9913 = t75 i_name = t80 ).
          DATA t86 TYPE REF TO object.
          t86 = t72.
          t71 ?= t86.
          t70 = t71.
          DATA t87 TYPE REF TO zif_lnt_class_definition.
          CLEAR t87.
          DATA t88 TYPE abap_bool.
          t88 = xsdbool( t70 IS BOUND ).
          IF t88 = abap_true.
            DATA t90 TYPE REF TO zif_lnt_class_definition.
            DATA t91 TYPE REF TO zcl_lnt_class.
            t91 = t70.
            t90 = t91->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t87 = t90.
          ELSE.
            CLEAR t87.
          ENDIF.
          t61 = t87.
        ENDIF.
        t37 = t61.
      ENDIF.
      t26 = t37.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = xsdbool( t26 IS INITIAL ).
      IF t95 = abap_true.
        CLEAR t94.
      ELSE.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t99 TYPE REF TO zif_lnt_class_definition.
        t99 = t26.
        t98 = t99->get_super_class( ).
        t94 = t98.
      ENDIF.
      t24 = t94.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      DATA(t102) = VALUE abap_bool( ).
      IF t24 IS INITIAL.
        t102 = abap_true.
      ELSEIF t24->has = abap_false.
        t102 = abap_true.
      ENDIF.
      IF t102 = abap_true.
        CLEAR t101.
      ELSE.
        DATA t105 TYPE string.
        DATA t106 TYPE string.
        t106 = t24->value.
        DATA(t108) = strlen( t106 ).
        t105 = t106.
        IF t105 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t105 TO UPPER CASE.
        ELSE.
          t105 = zlnt_runtime_uppe_91169605024d=>full( t105 ).
        ENDIF.
        DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t109->has = abap_true.
        t109->value = t105.
        t101 = t109.
      ENDIF.
      t4 = t101.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD is_convable.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    t4 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t6 TYPE abap_bool.
      t6 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t3 = t6.
    ENDIF.
    IF t3 = abap_true.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      DATA t13 TYPE REF TO zcl_lnt_ty_table_type.
      t13 ?= t1.
      DATA t15 TYPE REF TO zcl_lnt_abstract_type.
      t15 = t13->row_type.
      t9 = t15.
      DATA t18 TYPE REF TO zcl_lnt_abstract_type.
      DATA t22 TYPE REF TO zcl_lnt_ty_table_type.
      t22 ?= t2.
      DATA t24 TYPE REF TO zcl_lnt_abstract_type.
      t24 = t22->row_type.
      t18 = t24.
      t8 = me->is_assignable( i_source_75cf = t9 i_target_5f8a = t18 ).
      result = t8.
      RETURN.
    ENDIF.
    DATA t27 TYPE abap_bool.
    t27 = me->is_assignable( i_source_75cf = t1 i_target_5f8a = t2 ).
    result = t27.

  ENDMETHOD.

  METHOD is_castable.
    DATA(t1) = i_source_3828.
    DATA(t2) = i_target_d687.
    result = abap_true.

  ENDMETHOD.

  METHOD is_compareable.
    DATA(t1) = i_source1.
    DATA(t2) = i_source2.
    DATA(t3) = i_node1.
    DATA(t4) = i_node2.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t6 = xsdbool( t1 IS INITIAL ).
    t5 = t6.
    IF t6 = abap_false.
      DATA(t13) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t13 = xsdbool( t2 IS INITIAL ).
      t5 = t13.
    ENDIF.
    IF t5 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE abap_bool.
    t23 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_hex_type ).
    t22 = t23.
    IF t23 = abap_true.
      DATA t25 TYPE abap_bool.
      t25 = me->is_calculated( i_node = t3 ).
      t22 = t25.
    ENDIF.
    t21 = t22.
    IF t22 = abap_true.
      DATA t27 TYPE abap_bool.
      t27 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
      t21 = t27.
    ENDIF.
    IF t21 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t30) = VALUE abap_bool( ).
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    t32 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_hex_type ).
    t31 = t32.
    IF t32 = abap_true.
      DATA t34 TYPE abap_bool.
      t34 = me->is_calculated( i_node = t4 ).
      t31 = t34.
    ENDIF.
    t30 = t31.
    IF t31 = abap_true.
      DATA t36 TYPE abap_bool.
      t36 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
      t30 = t36.
    ENDIF.
    IF t30 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE abap_bool.
    DATA t41 TYPE abap_bool.
    t41 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_date_type ).
    t40 = t41.
    IF t41 = abap_true.
      DATA t43 TYPE abap_bool.
      t43 = me->is_calculated( i_node = t4 ).
      t40 = t43.
    ENDIF.
    t39 = t40.
    IF t40 = abap_true.
      DATA t45 TYPE abap_bool.
      t45 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
      t39 = t45.
    ENDIF.
    IF t39 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE abap_bool.
    DATA t50 TYPE abap_bool.
    t50 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_date_type ).
    t49 = t50.
    IF t50 = abap_true.
      DATA t52 TYPE abap_bool.
      t52 = me->is_calculated( i_node = t3 ).
      t49 = t52.
    ENDIF.
    t48 = t49.
    IF t49 = abap_true.
      DATA t54 TYPE abap_bool.
      t54 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
      t48 = t54.
    ENDIF.
    IF t48 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    result = abap_true.

  ENDMETHOD.

  METHOD structure_contains_string.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = i_structure->components.
    t2 = t5.
    DATA t7 TYPE REF TO zcl_lnt_istructure_component.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t2->load( ).
      IF t9 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t2->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        CLEAR t7.
        IF t10 IS BOUND.
          IF t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t7 ?= t10->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t7 IS NOT BOUND.
            IF t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
              DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t11.
              IF t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t11 ?= t10->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t11->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t12) = VALUE string( ).
            DATA t13 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t13.
            DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t14.
            DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t15.
            t7 = NEW zcl_lnt_istructure_component( view_source = t10 i_name = t12 i_type_9913 = t13 i_as_include = t14 i_suffix = t15 ).
          ENDIF.
        ENDIF.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      t17 = t7->zlnt_view_read_sr_455340cd1e80( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_string_type ).
      IF t16 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD structure_contains_void.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = i_structure->components.
    t2 = t5.
    DATA t7 TYPE REF TO zcl_lnt_istructure_component.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t2->load( ).
      IF t9 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t2->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        CLEAR t7.
        IF t10 IS BOUND.
          IF t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t7 ?= t10->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF t7 IS NOT BOUND.
            IF t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
              DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t11.
              IF t10->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t11 ?= t10->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t11->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t12) = VALUE string( ).
            DATA t13 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t13.
            DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t14.
            DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t15.
            t7 = NEW zcl_lnt_istructure_component( view_source = t10 i_name = t12 i_type_9913 = t13 i_as_include = t14 i_suffix = t15 ).
          ENDIF.
        ENDIF.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t17.
      t17 = t7->zlnt_view_read_sr_455340cd1e80( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_void_type ).
      IF t16 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD is_calculated.
    DATA(t1) = i_node.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE i.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    t8 = t1.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = t8->children.
    t7 = t10.
    t6 ?= t7.
    t6->load( ).
    t5 = lines( t6->items ).
    DATA(t12) = 4.
    t4 = xsdbool( t5 = t12 ).
    t3 = t4.
    IF t4 = abap_true.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zif_lnt_node.
      DATA t15 TYPE REF TO zcl_lnt_abstract_node.
      t15 = t1.
      DATA t19 TYPE REF TO zif_lnt_node.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t20 = t15->children.
      DATA t22 TYPE REF TO object.
      t20->load( ).
      READ TABLE t20->items INDEX 1 INTO t22.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t22.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t19 ?= t24.
      ELSE.
        t19 ?= t22.
      ENDIF.
      t14 = t19.
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_token_node_regex ).
      t3 = t13.
    ENDIF.
    t2 = t3.
    IF t3 = abap_true.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t30 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t31 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t32 TYPE REF TO zif_lnt_node.
      DATA t33 TYPE REF TO zcl_lnt_abstract_node.
      t33 = t1.
      DATA t37 TYPE REF TO zif_lnt_node.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t38 = t33->children.
      DATA t40 TYPE REF TO object.
      t38->load( ).
      READ TABLE t38->items INDEX 1 INTO t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t41 ?= t40.
        DATA t42 TYPE REF TO object.
        t42 = t41->as_ref( ).
        t37 ?= t42.
      ELSE.
        t37 ?= t40.
      ENDIF.
      t32 = t37.
      t31 ?= t32.
      t30 = t31.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t45) = xsdbool( t30 IS INITIAL ).
      IF t45 = abap_true.
      ELSE.
        DATA t48 TYPE string.
        DATA t49 TYPE REF TO zif_lnt_union_4cf1d054.
        t49 = t30.
        t48 = t49->concat_tokens( ).
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t48.
        t44 = t51.
      ENDIF.
      t28 = t44.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t53) = VALUE abap_bool( ).
      IF t28 IS INITIAL.
        t53 = abap_true.
      ELSEIF t28->has = abap_false.
        t53 = abap_true.
      ENDIF.
      IF t53 = abap_true.
      ELSE.
        DATA t56 TYPE string.
        DATA t57 TYPE string.
        t57 = t28->value.
        DATA(t59) = strlen( t57 ).
        t56 = t57.
        IF t56 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t56 TO UPPER CASE.
        ELSE.
          t56 = zlnt_runtime_uppe_91169605024d=>full( t56 ).
        ENDIF.
        DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t60->has = abap_true.
        t60->value = t56.
        t52 = t60.
      ENDIF.
      t27 = t52.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t63) = |BOOLC|.
      DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t64->has = abap_true.
      t64->value = t63.
      t61 = t64.
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = VALUE abap_bool( ).
      IF t27 IS BOUND.
        t66 = t27->has.
      ENDIF.
      IF t61 IS BOUND.
        t67 = t61->has.
      ENDIF.
      IF t66 = t67.
        IF t66 = abap_false.
          t26 = abap_true.
        ELSEIF t27->value = t61->value.
          t26 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t26.
    ENDIF.
    IF t2 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t69 TYPE abap_bool.
    DATA t70 TYPE i.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t73 TYPE REF TO zcl_lnt_abstract_node.
    t73 = t1.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t75 = t73->children.
    t72 = t75.
    t71 ?= t72.
    t71->load( ).
    t70 = lines( t71->items ).
    DATA(t77) = 3.
    t69 = xsdbool( t70 >= t77 ).
    IF t69 = abap_true.
      DATA t79 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t82 TYPE REF TO zcl_lnt_abstract_node.
      t82 = t1.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t84 = t82->children.
      t81 = t84.
      t80 ?= t81.
      DATA t86 TYPE REF TO object.
      t80->load( ).
      READ TABLE t80->items INDEX 2 INTO t86.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t87 ?= t86.
        DATA t88 TYPE REF TO object.
        t88 = t87->as_ref( ).
        t79 ?= t88.
      ELSE.
        t79 ?= t86.
      ENDIF.
      DATA t89 TYPE abap_bool.
      DATA t90 TYPE string.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      t92 = t79->get_first_token( ).
      DATA t94 TYPE string.
      t94 = t92->str.
      t90 = t94.
      DATA(t96) = |&&|.
      t89 = xsdbool( t90 = t96 ).
      IF t89 = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t98) = VALUE abap_bool( ).
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = VALUE abap_bool( ).
    DATA t103 TYPE REF TO zcl_lnt_expression_node.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d122_32972f7bb68e.
    t103 = t1->find_first_expression( i_type_9913 = t105 ).
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t108) = VALUE abap_bool( ).
    DATA(t109) = xsdbool( t103 IS INITIAL ).
    t108 = xsdbool( t109 = abap_false ).
    t101 = t108.
    t100 = t101.
    IF t101 = abap_false.
      DATA(t111) = VALUE abap_bool( ).
      DATA t113 TYPE REF TO zcl_lnt_expression_node.
      DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
      t113 = t1->find_first_expression( i_type_9913 = t115 ).
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t118) = VALUE abap_bool( ).
      DATA(t119) = xsdbool( t113 IS INITIAL ).
      t118 = xsdbool( t119 = abap_false ).
      t111 = t118.
      t100 = t111.
    ENDIF.
    t99 = t100.
    IF t100 = abap_false.
      DATA(t121) = VALUE abap_bool( ).
      DATA t123 TYPE REF TO zcl_lnt_expression_node.
      DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
      t123 = t1->find_first_expression( i_type_9913 = t125 ).
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t128) = VALUE abap_bool( ).
      DATA(t129) = xsdbool( t123 IS INITIAL ).
      t128 = xsdbool( t129 = abap_false ).
      t121 = t128.
      t99 = t121.
    ENDIF.
    t98 = t99.
    result = t98.

  ENDMETHOD.

  METHOD is_hex_constant.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    t4 = i_node.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = xsdbool( t4 IS INITIAL ).
    IF t7 = abap_true.
    ELSE.
      DATA t10 TYPE string.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      t11 = t4.
      t10 = t11->concat_tokens( ).
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t10.
      t6 = t13.
    ENDIF.
    t2 = t6.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t15 = t2.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = VALUE abap_bool( ).
    IF t15 IS INITIAL.
      t19 = abap_true.
    ELSEIF t15->has = abap_false.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE string.
    t25 = t2->value.
    DATA(t27) = |'|.
    DATA(t28) = strlen( t25 ).
    DATA t29 TYPE i.
    DATA(t30) = VALUE i( ).
    DATA(t31) = VALUE string( ).
    t29 = strlen( t27 ).
    IF t29 = 0.
      t24 = abap_true.
    ELSEIF t29 <= t28.
      t30 = 0.
      t31 = t25+t30(t29).
      IF t31 = t27.
        t24 = abap_true.
      ENDIF.
    ENDIF.
    t23 = t24.
    IF t24 = abap_true.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE string.
      t33 = t2->value.
      DATA(t35) = |'|.
      DATA(t36) = strlen( t33 ).
      DATA t37 TYPE i.
      DATA(t38) = VALUE i( ).
      DATA(t39) = VALUE string( ).
      t37 = strlen( t35 ).
      IF t37 = 0.
        t32 = abap_true.
      ELSEIF t37 <= t36.
        t38 = 0.
        t38 = t36 - t37.
        t39 = t33+t38(t37).
        IF t39 = t35.
          t32 = abap_true.
        ENDIF.
      ENDIF.
      t23 = t32.
    ENDIF.
    t22 = t23.
    IF t23 = abap_false.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = VALUE abap_bool( ).
      DATA t42 TYPE string.
      t42 = t2->value.
      DATA(t44) = |`|.
      DATA(t45) = strlen( t42 ).
      DATA t46 TYPE i.
      DATA(t47) = VALUE i( ).
      DATA(t48) = VALUE string( ).
      t46 = strlen( t44 ).
      IF t46 = 0.
        t41 = abap_true.
      ELSEIF t46 <= t45.
        t47 = 0.
        t48 = t42+t47(t46).
        IF t48 = t44.
          t41 = abap_true.
        ENDIF.
      ENDIF.
      t40 = t41.
      IF t41 = abap_true.
        DATA(t49) = VALUE abap_bool( ).
        DATA t50 TYPE string.
        t50 = t2->value.
        DATA(t52) = |`|.
        DATA(t53) = strlen( t50 ).
        DATA t54 TYPE i.
        DATA(t55) = VALUE i( ).
        DATA(t56) = VALUE string( ).
        t54 = strlen( t52 ).
        IF t54 = 0.
          t49 = abap_true.
        ELSEIF t54 <= t53.
          t55 = 0.
          t55 = t53 - t54.
          t56 = t50+t55(t54).
          IF t56 = t52.
            t49 = abap_true.
          ENDIF.
        ENDIF.
        t40 = t49.
      ENDIF.
      t22 = t40.
    ENDIF.
    IF t22 = abap_true.
      DATA(t57) = VALUE string( ).
      DATA(t58) = VALUE string( ).
      DATA t59 TYPE string.
      t59 = t2->value.
      DATA(t61) = 1.
      DATA t62 TYPE i.
      DATA t63 TYPE i.
      DATA t64 TYPE string.
      t64 = t2->value.
      t63 = strlen( t64 ).
      DATA(t67) = 1.
      t62 = t63 - t67.
      DATA(t68) = strlen( t59 ).
      t61 = COND i( WHEN t61 < 0 THEN 0 WHEN t61 > t68 THEN t68 ELSE t61 ).
      t62 = COND i( WHEN t62 < 0 THEN 0 WHEN t62 > t68 THEN t68 ELSE t62 ).
      IF t61 > t62.
        t68 = t61.
        t61 = t62.
        t62 = t68.
      ENDIF.
      t68 = t62 - t61.
      t58 = t59+t61(t68).
      t57 = t58.
      DATA t69 TYPE abap_bool.
      DATA t70 TYPE abap_bool.
      DATA t71 TYPE i.
      t71 = strlen( t57 ).
      DATA(t74) = 0.
      t70 = xsdbool( t71 > t74 ).
      t69 = t70.
      IF t70 = abap_true.
        DATA t75 TYPE abap_bool.
        DATA t76 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA(t77) = |^[0-9A-Fa-f]+$|.
        DATA(t78) = ||.
        CREATE OBJECT t76 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t77 flags = t78.
        t75 = t76->test( p0 = t57 ).
        t69 = t75.
      ENDIF.
      result = t69.
      RETURN.
    ENDIF.
    result = abap_true.

  ENDMETHOD.

  METHOD is_assignable_new.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    t8 = i_node.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    DATA(t11) = xsdbool( t8 IS INITIAL ).
    IF t11 = abap_true.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      t15 = t8.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
      t14 = t15->find_first_expression( i_type_9913 = t17 ).
      t10 = t14.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = xsdbool( t10 IS INITIAL ).
    t20 = xsdbool( t21 = abap_false ).
    t5 = t20.
    t4 = t5.
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE abap_bool.
    t24 = t4.
    IF t4 = abap_true.
      DATA t26 TYPE abap_bool.
      t26 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_hex_type ).
      t24 = t26.
    ENDIF.
    t23 = t24.
    IF t24 = abap_true.
      DATA t28 TYPE abap_bool.
      t28 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
      t23 = t28.
    ENDIF.
    IF t23 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t31 TYPE abap_bool.
    t31 = me->is_assignable( i_source_75cf = t1 i_target_5f8a = t2 ).
    result = t31.

  ENDMETHOD.

  METHOD is_assignable_strict.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = i_node.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    t6 = xsdbool( t3 IS BOUND ).
    IF t6 = abap_true.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      t9 = t3.
      t8 = me->is_calculated( i_node = t9 ).
      t5 = t8.
    ELSE.
      t5 = abap_false.
    ENDIF.
    t4 = t5.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    t13 = t4.
    IF t4 = abap_true.
      DATA(t15) = VALUE abap_bool( ).
      t15 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ).
      t13 = t15.
    ENDIF.
    t12 = t13.
    IF t13 = abap_true.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      t18 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_x_string_type ).
      t17 = t18.
      IF t18 = abap_false.
        DATA(t20) = VALUE abap_bool( ).
        t20 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_x_sequence_type ).
        t17 = t20.
      ENDIF.
      t12 = t17.
    ENDIF.
    IF t12 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    t24 = t4.
    IF t4 = abap_true.
      DATA(t26) = VALUE abap_bool( ).
      t26 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
      t24 = t26.
    ENDIF.
    t23 = t24.
    IF t24 = abap_true.
      DATA(t28) = VALUE abap_bool( ).
      t28 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_date_type ).
      t23 = t28.
    ENDIF.
    IF t23 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    t33 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_numeric_type ).
    t32 = t33.
    IF t33 = abap_true.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      t36 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_character_type ).
      t35 = t36.
      IF t36 = abap_false.
        DATA(t38) = VALUE abap_bool( ).
        t38 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ).
        t35 = t38.
      ENDIF.
      t32 = t35.
    ENDIF.
    t31 = t32.
    IF t32 = abap_true.
      DATA(t40) = VALUE abap_bool( ).
      DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t42 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t43 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t44 TYPE REF TO zif_lnt_union_f16d2839.
      DATA t45 TYPE REF TO zcl_lnt_abstract_type.
      t45 = t1.
      t44 ?= t45.
      t43 = t44->get_abstract_type_data( ).
      t42 = t43.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t48) = xsdbool( t42 IS INITIAL ).
      IF t48 = abap_true.
      ELSE.
        DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t52 TYPE REF TO zcl_lnt_abstract_type_data.
        t52 = t42.
        t51 = t52->zlnt_view_read_sr_b01015468803( ).
        t47 = t51.
      ENDIF.
      t41 = t47.
      DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t57) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t57->has = abap_true.
      t57->value = abap_true.
      t54 = t57.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = VALUE abap_bool( ).
      IF t41 IS BOUND.
        t59 = t41->has.
      ENDIF.
      IF t54 IS BOUND.
        t60 = t54->has.
      ENDIF.
      IF t59 = t60.
        IF t59 = abap_false.
          t40 = abap_true.
        ELSEIF t41->value = t54->value.
          t40 = abap_true.
        ENDIF.
      ENDIF.
      t31 = t40.
    ENDIF.
    IF t31 = abap_true.
      DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t63 TYPE REF TO zcl_lnt_expression_node.
      t63 = t3.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t66) = xsdbool( t63 IS INITIAL ).
      IF t66 = abap_true.
      ELSE.
        DATA(t69) = VALUE string( ).
        DATA t70 TYPE REF TO zcl_lnt_expression_node.
        t70 = t63.
        t69 = t70->concat_tokens( ).
        DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t72->has = abap_true.
        t72->value = t69.
        t65 = t72.
      ENDIF.
      t61 = t65.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = VALUE abap_bool( ).
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t76 = t61.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = VALUE abap_bool( ).
      IF t76 IS INITIAL.
        t81 = abap_true.
      ELSEIF t76->has = abap_false.
        t81 = abap_true.
      ENDIF.
      t80 = xsdbool( t81 = abap_false ).
      t75 = t80.
      t74 = t75.
      IF t75 = abap_true.
        DATA(t83) = VALUE abap_bool( ).
        DATA(t84) = VALUE abap_bool( ).
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = VALUE string( ).
        t86 = t61->value.
        DATA(t88) = |'|.
        DATA(t89) = strlen( t86 ).
        DATA(t90) = VALUE i( ).
        DATA(t91) = VALUE i( ).
        DATA(t92) = VALUE string( ).
        t90 = strlen( t88 ).
        IF t90 = 0.
          t85 = abap_true.
        ELSEIF t90 <= t89.
          t91 = 0.
          t92 = t86+t91(t90).
          IF t92 = t88.
            t85 = abap_true.
          ENDIF.
        ENDIF.
        t84 = t85.
        IF t85 = abap_true.
          DATA(t93) = VALUE abap_bool( ).
          DATA(t94) = VALUE string( ).
          t94 = t61->value.
          DATA(t96) = |'|.
          DATA(t97) = strlen( t94 ).
          DATA(t98) = VALUE i( ).
          DATA(t99) = VALUE i( ).
          DATA(t100) = VALUE string( ).
          t98 = strlen( t96 ).
          IF t98 = 0.
            t93 = abap_true.
          ELSEIF t98 <= t97.
            t99 = 0.
            t99 = t97 - t98.
            t100 = t94+t99(t98).
            IF t100 = t96.
              t93 = abap_true.
            ENDIF.
          ENDIF.
          t84 = t93.
        ENDIF.
        t83 = t84.
        IF t84 = abap_false.
          DATA(t101) = VALUE abap_bool( ).
          DATA(t102) = VALUE abap_bool( ).
          DATA(t103) = VALUE string( ).
          t103 = t61->value.
          DATA(t105) = |`|.
          DATA(t106) = strlen( t103 ).
          DATA(t107) = VALUE i( ).
          DATA(t108) = VALUE i( ).
          DATA(t109) = VALUE string( ).
          t107 = strlen( t105 ).
          IF t107 = 0.
            t102 = abap_true.
          ELSEIF t107 <= t106.
            t108 = 0.
            t109 = t103+t108(t107).
            IF t109 = t105.
              t102 = abap_true.
            ENDIF.
          ENDIF.
          t101 = t102.
          IF t102 = abap_true.
            DATA(t110) = VALUE abap_bool( ).
            DATA(t111) = VALUE string( ).
            t111 = t61->value.
            DATA(t113) = |`|.
            DATA(t114) = strlen( t111 ).
            DATA(t115) = VALUE i( ).
            DATA(t116) = VALUE i( ).
            DATA(t117) = VALUE string( ).
            t115 = strlen( t113 ).
            IF t115 = 0.
              t110 = abap_true.
            ELSEIF t115 <= t114.
              t116 = 0.
              t116 = t114 - t115.
              t117 = t111+t116(t115).
              IF t117 = t113.
                t110 = abap_true.
              ENDIF.
            ENDIF.
            t101 = t110.
          ENDIF.
          t83 = t101.
        ENDIF.
        t74 = t83.
      ENDIF.
      t73 = t74.
      IF t74 = abap_true.
        DATA(t118) = VALUE abap_bool( ).
        DATA(t119) = VALUE abap_bool( ).
        DATA t120 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA(t121) = `^\d*$`.
        DATA(t122) = |^[0-9]*$|.
        DATA(t123) = ||.
        CREATE OBJECT t120 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t122 flags = t123.
        t120->source = t121.
        DATA(t124) = VALUE string( ).
        DATA(t125) = VALUE string( ).
        t125 = t61->value.
        DATA(t127) = 1.
        DATA(t128) = VALUE i( ).
        DATA(t129) = VALUE i( ).
        DATA(t130) = VALUE string( ).
        t130 = t61->value.
        t129 = strlen( t130 ).
        DATA(t133) = 1.
        t128 = t129 - t133.
        DATA(t134) = strlen( t125 ).
        t127 = COND i( WHEN t127 < 0 THEN 0 WHEN t127 > t134 THEN t134 ELSE t127 ).
        t128 = COND i( WHEN t128 < 0 THEN 0 WHEN t128 > t134 THEN t134 ELSE t128 ).
        IF t127 > t128.
          t134 = t127.
          t127 = t128.
          t128 = t134.
        ENDIF.
        t134 = t128 - t127.
        t124 = t125+t127(t134).
        t119 = t120->test( p0 = t124 ).
        t118 = xsdbool( t119 = abap_false ).
        t73 = t118.
      ENDIF.
      IF t73 = abap_true.
        result = abap_false.
        RETURN.
      ENDIF.
    ENDIF.
    IF t4 = abap_true.
      DATA(t138) = VALUE abap_bool( ).
      t138 = me->is_assignable( i_source_75cf = t1 i_target_5f8a = t2 ).
      result = t138.
      RETURN.
    ENDIF.
    DATA(t141) = VALUE abap_bool( ).
    t141 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_c_like_type ).
    IF t141 = abap_true.
      DATA(t143) = VALUE abap_bool( ).
      t143 = me->is_char_like_strict( i_type_9913 = t1 ).
      result = t143.
      RETURN.
    ENDIF.
    DATA(t145) = VALUE abap_bool( ).
    t145 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_p_generic_type ).
    IF t145 = abap_true.
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = VALUE abap_bool( ).
      DATA(t149) = VALUE abap_bool( ).
      DATA(t150) = VALUE abap_bool( ).
      DATA(t151) = VALUE abap_bool( ).
      DATA(t152) = VALUE abap_bool( ).
      t152 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_packed_type ).
      t151 = t152.
      IF t152 = abap_false.
        DATA(t154) = VALUE abap_bool( ).
        t154 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_p_generic_type ).
        t151 = t154.
      ENDIF.
      t150 = t151.
      IF t151 = abap_false.
        DATA(t156) = VALUE abap_bool( ).
        t156 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
        t150 = t156.
      ENDIF.
      t149 = t150.
      IF t150 = abap_false.
        DATA(t158) = VALUE abap_bool( ).
        t158 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
        t149 = t158.
      ENDIF.
      t148 = t149.
      IF t149 = abap_false.
        DATA(t160) = VALUE abap_bool( ).
        t160 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
        t148 = t160.
      ENDIF.
      t147 = t148.
      IF t148 = abap_false.
        DATA(t162) = VALUE abap_bool( ).
        t162 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
        t147 = t162.
      ENDIF.
      result = t147.
      RETURN.
    ENDIF.
    DATA(t164) = VALUE abap_bool( ).
    DATA(t165) = VALUE abap_bool( ).
    t165 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_generic_type ).
    t164 = t165.
    IF t165 = abap_true.
      DATA(t167) = VALUE abap_bool( ).
      t167 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
      t164 = t167.
    ENDIF.
    IF t164 = abap_true.
      result = abap_false.
      RETURN.
    ELSE.
      DATA(t170) = VALUE abap_bool( ).
      t170 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_character_type ).
      IF t170 = abap_true.
        DATA(t172) = VALUE abap_bool( ).
        t172 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_character_type ).
        IF t172 = abap_true.
          DATA(t174) = VALUE abap_bool( ).
          DATA t175 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA t176 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t178 TYPE REF TO zcl_lnt_abstract_type.
          DATA t179 TYPE REF TO zcl_lnt_character_type.
          t179 ?= t1.
          t178 = t179.
          DATA t181 TYPE REF TO zcl_lnt_abstract_type_data.
          t181 = t178->data_56cc.
          t176 = t181.
          DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t184) = xsdbool( t176 IS INITIAL ).
          IF t184 = abap_true.
          ELSE.
            DATA t187 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t188 TYPE REF TO zcl_lnt_abstract_type_data.
            t188 = t176.
            t187 = t188->zlnt_view_read_sr_b01015468803( ).
            t183 = t187.
          ENDIF.
          t175 = t183.
          DATA t190 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t193) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t193->has = abap_true.
          t193->value = abap_true.
          t190 = t193.
          DATA(t195) = VALUE abap_bool( ).
          DATA(t196) = VALUE abap_bool( ).
          IF t175 IS BOUND.
            t195 = t175->has.
          ENDIF.
          IF t190 IS BOUND.
            t196 = t190->has.
          ENDIF.
          IF t195 = t196.
            IF t195 = abap_false.
              t174 = abap_true.
            ELSEIF t175->value = t190->value.
              t174 = abap_true.
            ENDIF.
          ENDIF.
          IF t174 = abap_true.
            DATA(t197) = VALUE abap_bool( ).
            DATA(t198) = VALUE f( ).
            DATA t200 TYPE REF TO zcl_lnt_character_type.
            t200 ?= t1.
            DATA(t202) = VALUE f( ).
            t202 = t200->length.
            t198 = t202.
            DATA(t204) = VALUE f( ).
            DATA t206 TYPE REF TO zcl_lnt_character_type.
            t206 ?= t2.
            DATA(t208) = VALUE f( ).
            t208 = t206->length.
            t204 = t208.
            t197 = xsdbool( t198 <= t204 ).
            result = t197.
            RETURN.
          ENDIF.
          DATA(t210) = VALUE abap_bool( ).
          DATA(t211) = VALUE f( ).
          DATA t213 TYPE REF TO zcl_lnt_character_type.
          t213 ?= t1.
          DATA(t215) = VALUE f( ).
          t215 = t213->length.
          t211 = t215.
          DATA(t217) = VALUE f( ).
          DATA t219 TYPE REF TO zcl_lnt_character_type.
          t219 ?= t2.
          DATA(t221) = VALUE f( ).
          t221 = t219->length.
          t217 = t221.
          t210 = xsdbool( t211 = t217 ).
          result = t210.
          RETURN.
        ELSE.
          DATA(t223) = VALUE abap_bool( ).
          t223 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
          IF t223 = abap_true.
            DATA(t225) = VALUE abap_bool( ).
            DATA t226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t227 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t229 TYPE REF TO zcl_lnt_abstract_type.
            DATA t230 TYPE REF TO zcl_lnt_character_type.
            t230 ?= t1.
            t229 = t230.
            DATA t232 TYPE REF TO zcl_lnt_abstract_type_data.
            t232 = t229->data_56cc.
            t227 = t232.
            DATA t234 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t235) = xsdbool( t227 IS INITIAL ).
            IF t235 = abap_true.
            ELSE.
              DATA t238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t239 TYPE REF TO zcl_lnt_abstract_type_data.
              t239 = t227.
              t238 = t239->zlnt_view_read_sr_b01015468803( ).
              t234 = t238.
            ENDIF.
            t226 = t234.
            DATA t241 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t244) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t244->has = abap_true.
            t244->value = abap_true.
            t241 = t244.
            DATA(t246) = VALUE abap_bool( ).
            DATA(t247) = VALUE abap_bool( ).
            IF t226 IS BOUND.
              t246 = t226->has.
            ENDIF.
            IF t241 IS BOUND.
              t247 = t241->has.
            ENDIF.
            IF t246 = t247.
              IF t246 = abap_false.
                t225 = abap_true.
              ELSEIF t226->value = t241->value.
                t225 = abap_true.
              ENDIF.
            ENDIF.
            IF t225 = abap_true.
              result = abap_true.
              RETURN.
            ENDIF.
            result = abap_false.
            RETURN.
          ELSE.
            DATA(t250) = VALUE abap_bool( ).
            t250 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_x_string_type ).
            IF t250 = abap_true.
              DATA(t252) = VALUE abap_bool( ).
              DATA t253 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t254 TYPE REF TO zcl_lnt_abstract_type_data.
              DATA t256 TYPE REF TO zcl_lnt_abstract_type.
              DATA t257 TYPE REF TO zcl_lnt_character_type.
              t257 ?= t1.
              t256 = t257.
              DATA t259 TYPE REF TO zcl_lnt_abstract_type_data.
              t259 = t256->data_56cc.
              t254 = t259.
              DATA t261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t262) = xsdbool( t254 IS INITIAL ).
              IF t262 = abap_true.
              ELSE.
                DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t266 TYPE REF TO zcl_lnt_abstract_type_data.
                t266 = t254.
                t265 = t266->zlnt_view_read_sr_b01015468803( ).
                t261 = t265.
              ENDIF.
              t253 = t261.
              DATA t268 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA(t271) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t271->has = abap_true.
              t271->value = abap_true.
              t268 = t271.
              DATA(t273) = VALUE abap_bool( ).
              DATA(t274) = VALUE abap_bool( ).
              IF t253 IS BOUND.
                t273 = t253->has.
              ENDIF.
              IF t268 IS BOUND.
                t274 = t268->has.
              ENDIF.
              IF t273 = t274.
                IF t273 = abap_false.
                  t252 = abap_true.
                ELSEIF t253->value = t268->value.
                  t252 = abap_true.
                ENDIF.
              ENDIF.
              IF t252 = abap_true.
                DATA(t275) = VALUE abap_bool( ).
                DATA(t278) = VALUE abap_bool( ).
                DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t281 TYPE REF TO zcl_lnt_expression_node.
                t281 = t3.
                DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t284) = xsdbool( t281 IS INITIAL ).
                IF t284 = abap_true.
                ELSE.
                  DATA(t287) = VALUE string( ).
                  DATA t288 TYPE REF TO zcl_lnt_expression_node.
                  t288 = t281.
                  t287 = t288->concat_tokens( ).
                  DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t290->has = abap_true.
                  t290->value = t287.
                  t283 = t290.
                ENDIF.
                t279 = t283.
                DATA(t291) = VALUE abap_bool( ).
                DATA(t292) = VALUE abap_bool( ).
                DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t293 = t279.
                DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t297) = VALUE abap_bool( ).
                IF t293 IS INITIAL.
                  t297 = abap_true.
                ELSEIF t293->has = abap_false.
                  t297 = abap_true.
                ENDIF.
                t292 = t297.
                IF t292 = abap_true.
                  t291 = abap_true.
                ELSE.
                  DATA(t300) = VALUE abap_bool( ).
                  DATA(t301) = VALUE abap_bool( ).
                  DATA(t302) = VALUE abap_bool( ).
                  DATA(t303) = VALUE abap_bool( ).
                  DATA(t304) = VALUE string( ).
                  t304 = t279->value.
                  DATA(t306) = |'|.
                  DATA(t307) = strlen( t304 ).
                  DATA(t308) = VALUE i( ).
                  DATA(t309) = VALUE i( ).
                  DATA(t310) = VALUE string( ).
                  t308 = strlen( t306 ).
                  IF t308 = 0.
                    t303 = abap_true.
                  ELSEIF t308 <= t307.
                    t309 = 0.
                    t310 = t304+t309(t308).
                    IF t310 = t306.
                      t303 = abap_true.
                    ENDIF.
                  ENDIF.
                  t302 = t303.
                  IF t303 = abap_true.
                    DATA(t311) = VALUE abap_bool( ).
                    DATA(t312) = VALUE string( ).
                    t312 = t279->value.
                    DATA(t314) = |'|.
                    DATA(t315) = strlen( t312 ).
                    DATA(t316) = VALUE i( ).
                    DATA(t317) = VALUE i( ).
                    DATA(t318) = VALUE string( ).
                    t316 = strlen( t314 ).
                    IF t316 = 0.
                      t311 = abap_true.
                    ELSEIF t316 <= t315.
                      t317 = 0.
                      t317 = t315 - t316.
                      t318 = t312+t317(t316).
                      IF t318 = t314.
                        t311 = abap_true.
                      ENDIF.
                    ENDIF.
                    t302 = t311.
                  ENDIF.
                  t301 = t302.
                  IF t302 = abap_false.
                    DATA(t319) = VALUE abap_bool( ).
                    DATA(t320) = VALUE abap_bool( ).
                    DATA(t321) = VALUE string( ).
                    t321 = t279->value.
                    DATA(t323) = |`|.
                    DATA(t324) = strlen( t321 ).
                    DATA(t325) = VALUE i( ).
                    DATA(t326) = VALUE i( ).
                    DATA(t327) = VALUE string( ).
                    t325 = strlen( t323 ).
                    IF t325 = 0.
                      t320 = abap_true.
                    ELSEIF t325 <= t324.
                      t326 = 0.
                      t327 = t321+t326(t325).
                      IF t327 = t323.
                        t320 = abap_true.
                      ENDIF.
                    ENDIF.
                    t319 = t320.
                    IF t320 = abap_true.
                      DATA(t328) = VALUE abap_bool( ).
                      DATA(t329) = VALUE string( ).
                      t329 = t279->value.
                      DATA(t331) = |`|.
                      DATA(t332) = strlen( t329 ).
                      DATA(t333) = VALUE i( ).
                      DATA(t334) = VALUE i( ).
                      DATA(t335) = VALUE string( ).
                      t333 = strlen( t331 ).
                      IF t333 = 0.
                        t328 = abap_true.
                      ELSEIF t333 <= t332.
                        t334 = 0.
                        t334 = t332 - t333.
                        t335 = t329+t334(t333).
                        IF t335 = t331.
                          t328 = abap_true.
                        ENDIF.
                      ENDIF.
                      t319 = t328.
                    ENDIF.
                    t301 = t319.
                  ENDIF.
                  IF t301 = abap_true.
                    DATA(t336) = VALUE abap_bool( ).
                    DATA(t337) = VALUE string( ).
                    DATA(t338) = VALUE string( ).
                    DATA(t339) = VALUE string( ).
                    t339 = t279->value.
                    DATA(t341) = 1.
                    DATA(t342) = VALUE i( ).
                    DATA(t343) = VALUE i( ).
                    DATA(t344) = VALUE string( ).
                    t344 = t279->value.
                    t343 = strlen( t344 ).
                    DATA(t347) = 1.
                    t342 = t343 - t347.
                    DATA(t348) = strlen( t339 ).
                    t341 = COND i( WHEN t341 < 0 THEN 0 WHEN t341 > t348 THEN t348 ELSE t341 ).
                    t342 = COND i( WHEN t342 < 0 THEN 0 WHEN t342 > t348 THEN t348 ELSE t342 ).
                    IF t341 > t342.
                      t348 = t341.
                      t341 = t342.
                      t342 = t348.
                    ENDIF.
                    t348 = t342 - t341.
                    t338 = t339+t341(t348).
                    t337 = t338.
                    DATA(t349) = VALUE abap_bool( ).
                    DATA(t350) = VALUE abap_bool( ).
                    DATA(t351) = VALUE i( ).
                    t351 = strlen( t337 ).
                    DATA(t354) = 0.
                    t350 = xsdbool( t351 > t354 ).
                    t349 = t350.
                    IF t350 = abap_true.
                      DATA(t355) = VALUE abap_bool( ).
                      DATA t356 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
                      DATA(t357) = |^[0-9A-Fa-f]+$|.
                      DATA(t358) = ||.
                      CREATE OBJECT t356 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t357 flags = t358.
                      t355 = t356->test( p0 = t337 ).
                      t349 = t355.
                    ENDIF.
                    t336 = t349.
                    t300 = t336.
                  ELSE.
                    t300 = abap_true.
                  ENDIF.
                  t291 = t300.
                ENDIF.
                t278 = t291.
                t275 = t278.
                result = t275.
                RETURN.
              ENDIF.
              result = abap_false.
              RETURN.
            ELSE.
              DATA(t362) = VALUE abap_bool( ).
              t362 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
              IF t362 = abap_true.
                DATA(t364) = VALUE abap_bool( ).
                DATA t365 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t366 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA t368 TYPE REF TO zcl_lnt_abstract_type.
                DATA t369 TYPE REF TO zcl_lnt_character_type.
                t369 ?= t1.
                t368 = t369.
                DATA t371 TYPE REF TO zcl_lnt_abstract_type_data.
                t371 = t368->data_56cc.
                t366 = t371.
                DATA t373 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA(t374) = xsdbool( t366 IS INITIAL ).
                IF t374 = abap_true.
                ELSE.
                  DATA t377 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA t378 TYPE REF TO zcl_lnt_abstract_type_data.
                  t378 = t366.
                  t377 = t378->zlnt_view_read_sr_b01015468803( ).
                  t373 = t377.
                ENDIF.
                t365 = t373.
                DATA t380 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA(t383) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t383->has = abap_true.
                t383->value = abap_true.
                t380 = t383.
                DATA(t385) = VALUE abap_bool( ).
                DATA(t386) = VALUE abap_bool( ).
                IF t365 IS BOUND.
                  t385 = t365->has.
                ENDIF.
                IF t380 IS BOUND.
                  t386 = t380->has.
                ENDIF.
                IF t385 = t386.
                  IF t385 = abap_false.
                    t364 = abap_true.
                  ELSEIF t365->value = t380->value.
                    t364 = abap_true.
                  ENDIF.
                ENDIF.
                IF t364 = abap_true.
                  result = abap_true.
                  RETURN.
                ENDIF.
                result = abap_false.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t389) = VALUE abap_bool( ).
        t389 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_hex_type ).
        IF t389 = abap_true.
          DATA(t391) = VALUE abap_bool( ).
          t391 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_hex_type ).
          IF t391 = abap_true.
            DATA(t393) = VALUE abap_bool( ).
            DATA t394 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t395 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t397 TYPE REF TO zcl_lnt_abstract_type.
            DATA t398 TYPE REF TO zcl_lnt_hex_type.
            t398 ?= t1.
            t397 = t398.
            DATA t400 TYPE REF TO zcl_lnt_abstract_type_data.
            t400 = t397->data_56cc.
            t395 = t400.
            DATA t402 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t403) = xsdbool( t395 IS INITIAL ).
            IF t403 = abap_true.
            ELSE.
              DATA t406 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t407 TYPE REF TO zcl_lnt_abstract_type_data.
              t407 = t395.
              t406 = t407->zlnt_view_read_sr_b01015468803( ).
              t402 = t406.
            ENDIF.
            t394 = t402.
            DATA t409 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t412) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t412->has = abap_true.
            t412->value = abap_true.
            t409 = t412.
            DATA(t414) = VALUE abap_bool( ).
            DATA(t415) = VALUE abap_bool( ).
            IF t394 IS BOUND.
              t414 = t394->has.
            ENDIF.
            IF t409 IS BOUND.
              t415 = t409->has.
            ENDIF.
            IF t414 = t415.
              IF t414 = abap_false.
                t393 = abap_true.
              ELSEIF t394->value = t409->value.
                t393 = abap_true.
              ENDIF.
            ENDIF.
            IF t393 = abap_true.
              DATA(t416) = VALUE abap_bool( ).
              DATA(t417) = VALUE f( ).
              DATA t419 TYPE REF TO zcl_lnt_hex_type.
              t419 ?= t1.
              DATA(t421) = VALUE f( ).
              t421 = t419->length.
              t417 = t421.
              DATA(t423) = VALUE f( ).
              DATA t425 TYPE REF TO zcl_lnt_hex_type.
              t425 ?= t2.
              DATA(t427) = VALUE f( ).
              t427 = t425->length.
              t423 = t427.
              t416 = xsdbool( t417 <= t423 ).
              result = t416.
              RETURN.
            ENDIF.
            DATA(t429) = VALUE abap_bool( ).
            DATA(t430) = VALUE f( ).
            DATA t432 TYPE REF TO zcl_lnt_hex_type.
            t432 ?= t1.
            DATA(t434) = VALUE f( ).
            t434 = t432->length.
            t430 = t434.
            DATA(t436) = VALUE f( ).
            DATA t438 TYPE REF TO zcl_lnt_hex_type.
            t438 ?= t2.
            DATA(t440) = VALUE f( ).
            t440 = t438->length.
            t436 = t440.
            t429 = xsdbool( t430 = t436 ).
            result = t429.
            RETURN.
          ELSE.
            DATA(t442) = VALUE abap_bool( ).
            t442 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_x_string_type ).
            IF t442 = abap_true.
              result = abap_false.
              RETURN.
            ELSE.
              DATA(t445) = VALUE abap_bool( ).
              DATA(t446) = VALUE abap_bool( ).
              t446 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
              t445 = t446.
              IF t446 = abap_false.
                DATA(t448) = VALUE abap_bool( ).
                t448 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer8_type ).
                t445 = t448.
              ENDIF.
              IF t445 = abap_true.
                DATA(t450) = VALUE abap_bool( ).
                DATA t451 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t452 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA t454 TYPE REF TO zcl_lnt_abstract_type.
                DATA t455 TYPE REF TO zcl_lnt_hex_type.
                t455 ?= t1.
                t454 = t455.
                DATA t457 TYPE REF TO zcl_lnt_abstract_type_data.
                t457 = t454->data_56cc.
                t452 = t457.
                DATA t459 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA(t460) = xsdbool( t452 IS INITIAL ).
                IF t460 = abap_true.
                ELSE.
                  DATA t463 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA t464 TYPE REF TO zcl_lnt_abstract_type_data.
                  t464 = t452.
                  t463 = t464->zlnt_view_read_sr_b01015468803( ).
                  t459 = t463.
                ENDIF.
                t451 = t459.
                DATA t466 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA(t469) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t469->has = abap_true.
                t469->value = abap_true.
                t466 = t469.
                DATA(t471) = VALUE abap_bool( ).
                DATA(t472) = VALUE abap_bool( ).
                IF t451 IS BOUND.
                  t471 = t451->has.
                ENDIF.
                IF t466 IS BOUND.
                  t472 = t466->has.
                ENDIF.
                IF t471 = t472.
                  IF t471 = abap_false.
                    t450 = abap_true.
                  ELSEIF t451->value = t466->value.
                    t450 = abap_true.
                  ENDIF.
                ENDIF.
                IF t450 = abap_true.
                  result = abap_true.
                  RETURN.
                ENDIF.
                result = abap_false.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t475) = VALUE abap_bool( ).
          DATA(t476) = VALUE abap_bool( ).
          t476 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_date_type ).
          t475 = t476.
          IF t476 = abap_false.
            DATA(t478) = VALUE abap_bool( ).
            t478 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_time_type ).
            t475 = t478.
          ENDIF.
          IF t475 = abap_true.
            DATA(t480) = VALUE abap_bool( ).
            DATA(t481) = VALUE abap_bool( ).
            t481 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_character_type ).
            t480 = t481.
            IF t481 = abap_false.
              DATA(t483) = VALUE abap_bool( ).
              t483 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
              t480 = t483.
            ENDIF.
            IF t480 = abap_true.
              result = abap_false.
              RETURN.
            ENDIF.
          ELSE.
            DATA(t486) = VALUE abap_bool( ).
            t486 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ).
            IF t486 = abap_true.
              DATA(t488) = VALUE abap_bool( ).
              DATA(t489) = VALUE abap_bool( ).
              t489 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_structure_type ).
              t488 = t489.
              IF t489 = abap_true.
                DATA(t491) = VALUE abap_bool( ).
                DATA t492 TYPE REF TO zcl_lnt_structure_type.
                t492 ?= t2.
                t491 = me->structure_contains_string( i_structure = t492 ).
                t488 = t491.
              ENDIF.
              IF t488 = abap_true.
                result = abap_false.
                RETURN.
              ELSE.
                DATA(t495) = VALUE abap_bool( ).
                t495 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_character_type ).
                IF t495 = abap_true.
                  DATA(t497) = VALUE abap_bool( ).
                  DATA t498 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA t499 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA t501 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t502 TYPE REF TO zcl_lnt_string_type.
                  t502 ?= t1.
                  t501 = t502.
                  DATA t504 TYPE REF TO zcl_lnt_abstract_type_data.
                  t504 = t501->data_56cc.
                  t499 = t504.
                  DATA t506 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA(t507) = xsdbool( t499 IS INITIAL ).
                  IF t507 = abap_true.
                  ELSE.
                    DATA t510 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    DATA t511 TYPE REF TO zcl_lnt_abstract_type_data.
                    t511 = t499.
                    t510 = t511->zlnt_view_read_sr_b01015468803( ).
                    t506 = t510.
                  ENDIF.
                  t498 = t506.
                  DATA t513 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA(t516) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t516->has = abap_true.
                  t516->value = abap_true.
                  t513 = t516.
                  DATA(t518) = VALUE abap_bool( ).
                  DATA(t519) = VALUE abap_bool( ).
                  IF t498 IS BOUND.
                    t518 = t498->has.
                  ENDIF.
                  IF t513 IS BOUND.
                    t519 = t513->has.
                  ENDIF.
                  IF t518 = t519.
                    IF t518 = abap_false.
                      t497 = abap_true.
                    ELSEIF t498->value = t513->value.
                      t497 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t497 = abap_true.
                    result = abap_true.
                    RETURN.
                  ENDIF.
                  result = abap_false.
                  RETURN.
                ELSE.
                  DATA(t522) = VALUE abap_bool( ).
                  t522 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
                  IF t522 = abap_true.
                    DATA(t524) = VALUE abap_bool( ).
                    DATA t525 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    DATA t526 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA t528 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t529 TYPE REF TO zcl_lnt_string_type.
                    t529 ?= t1.
                    t528 = t529.
                    DATA t531 TYPE REF TO zcl_lnt_abstract_type_data.
                    t531 = t528->data_56cc.
                    t526 = t531.
                    DATA t533 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    DATA(t534) = xsdbool( t526 IS INITIAL ).
                    IF t534 = abap_true.
                    ELSE.
                      DATA t537 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      DATA t538 TYPE REF TO zcl_lnt_abstract_type_data.
                      t538 = t526.
                      t537 = t538->zlnt_view_read_sr_b01015468803( ).
                      t533 = t537.
                    ENDIF.
                    t525 = t533.
                    DATA t540 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    DATA(t543) = NEW zlnt_runtime_opti_7f2541396f43( ).
                    t543->has = abap_true.
                    t543->value = abap_true.
                    t540 = t543.
                    DATA(t545) = VALUE abap_bool( ).
                    DATA(t546) = VALUE abap_bool( ).
                    IF t525 IS BOUND.
                      t545 = t525->has.
                    ENDIF.
                    IF t540 IS BOUND.
                      t546 = t540->has.
                    ENDIF.
                    IF t545 = t546.
                      IF t545 = abap_false.
                        t524 = abap_true.
                      ELSEIF t525->value = t540->value.
                        t524 = abap_true.
                      ENDIF.
                    ENDIF.
                    IF t524 = abap_true.
                      result = abap_true.
                      RETURN.
                    ENDIF.
                    result = abap_false.
                    RETURN.
                  ELSE.
                    DATA(t549) = VALUE abap_bool( ).
                    DATA(t550) = VALUE abap_bool( ).
                    t550 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_c_generic_type ).
                    t549 = t550.
                    IF t550 = abap_false.
                      DATA(t552) = VALUE abap_bool( ).
                      t552 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
                      t549 = t552.
                    ENDIF.
                    IF t549 = abap_true.
                      result = abap_false.
                      RETURN.
                    ELSE.
                      DATA(t555) = VALUE abap_bool( ).
                      DATA(t556) = VALUE abap_bool( ).
                      t556 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_x_sequence_type ).
                      t555 = t556.
                      IF t556 = abap_false.
                        DATA(t558) = VALUE abap_bool( ).
                        t558 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_x_string_type ).
                        t555 = t558.
                      ENDIF.
                      IF t555 = abap_true.
                        DATA(t560) = VALUE abap_bool( ).
                        DATA t561 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        DATA t562 TYPE REF TO zcl_lnt_abstract_type_data.
                        DATA t564 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t565 TYPE REF TO zcl_lnt_string_type.
                        t565 ?= t1.
                        t564 = t565.
                        DATA t567 TYPE REF TO zcl_lnt_abstract_type_data.
                        t567 = t564->data_56cc.
                        t562 = t567.
                        DATA t569 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        DATA(t570) = xsdbool( t562 IS INITIAL ).
                        IF t570 = abap_true.
                        ELSE.
                          DATA t573 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          DATA t574 TYPE REF TO zcl_lnt_abstract_type_data.
                          t574 = t562.
                          t573 = t574->zlnt_view_read_sr_b01015468803( ).
                          t569 = t573.
                        ENDIF.
                        t561 = t569.
                        DATA t576 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        DATA(t579) = NEW zlnt_runtime_opti_7f2541396f43( ).
                        t579->has = abap_true.
                        t579->value = abap_true.
                        t576 = t579.
                        DATA(t581) = VALUE abap_bool( ).
                        DATA(t582) = VALUE abap_bool( ).
                        IF t561 IS BOUND.
                          t581 = t561->has.
                        ENDIF.
                        IF t576 IS BOUND.
                          t582 = t576->has.
                        ENDIF.
                        IF t581 = t582.
                          IF t581 = abap_false.
                            t560 = abap_true.
                          ELSEIF t561->value = t576->value.
                            t560 = abap_true.
                          ENDIF.
                        ENDIF.
                        IF t560 = abap_true.
                          result = abap_true.
                          RETURN.
                        ENDIF.
                        result = abap_false.
                        RETURN.
                      ELSE.
                        DATA(t585) = VALUE abap_bool( ).
                        DATA(t586) = VALUE abap_bool( ).
                        DATA(t587) = VALUE abap_bool( ).
                        t587 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_table_type ).
                        t586 = t587.
                        IF t587 = abap_false.
                          DATA(t589) = VALUE abap_bool( ).
                          t589 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_data_reference ).
                          t586 = t589.
                        ENDIF.
                        t585 = t586.
                        IF t586 = abap_false.
                          DATA(t591) = VALUE abap_bool( ).
                          t591 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_object_reference_type ).
                          t585 = t591.
                        ENDIF.
                        IF t585 = abap_true.
                          result = abap_false.
                          RETURN.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
              result = abap_true.
              RETURN.
            ELSE.
              DATA(t595) = VALUE abap_bool( ).
              t595 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t595 = abap_true.
                DATA(t597) = VALUE abap_bool( ).
                t597 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_structure_type ).
                IF t597 = abap_true.
                  DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t602 TYPE REF TO zcl_lnt_structure_type.
                  t602 ?= t1.
                  DATA t604 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t604 = t602->components.
                  t599 = t604.
                  DATA t606 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t609 TYPE REF TO zcl_lnt_structure_type.
                  t609 ?= t2.
                  DATA t611 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t611 = t609->components.
                  t606 = t611.
                  DATA(t613) = VALUE abap_bool( ).
                  DATA(t614) = VALUE i( ).
                  t599->load( ).
                  t614 = lines( t599->items ).
                  DATA(t616) = VALUE i( ).
                  t606->load( ).
                  t616 = lines( t606->items ).
                  t613 = xsdbool( t614 <> t616 ).
                  IF t613 = abap_true.
                    result = abap_false.
                    RETURN.
                  ENDIF.
                  DATA(t619) = VALUE i( ).
                  t619 = 0.
                  DO.
                    DATA(t621) = VALUE abap_bool( ).
                    DATA(t623) = VALUE i( ).
                    t599->load( ).
                    t623 = lines( t599->items ).
                    t621 = xsdbool( t619 < t623 ).
                    IF t621 = abap_false.
                      EXIT.
                    ENDIF.
                    DATA(t625) = VALUE abap_bool( ).
                    DATA(t626) = VALUE abap_bool( ).
                    DATA t627 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t627.
                    DATA t629 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t629.
                    DATA t630 TYPE REF TO zcl_lnt_istructure_component.
                    CLEAR t630.
                    DATA(t632) = t619.
                    t632 = t632 + 1.
                    DATA t633 TYPE REF TO object.
                    CLEAR t633.
                    t599->load( ).
                    CLEAR t633.
                    READ TABLE t599->items INDEX t632 INTO t633.
                    DATA t634 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t634.
                    CLEAR t630.
                    IF t633 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                      t634 ?= t633.
                      CLEAR t630.
                      IF t634 IS BOUND.
                        IF t634->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          TRY.
                              t630 ?= t634->oval.
                            CATCH cx_sy_move_cast_error.
                          ENDTRY.
                        ENDIF.
                        IF t630 IS NOT BOUND.
                          IF t634->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t634->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t634->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t634->tag <>
                            zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                            DATA t635 TYPE REF TO zlnt_view_storage_74017ca272ac.
                            CLEAR t635.
                            IF t634->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                            ENDIF.
                            TRY.
                                t635 ?= t634->oval.
                              CATCH cx_sy_move_cast_error.
                                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                            ENDTRY.
                            IF t635->structural( ) <> abap_true.
                              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                            ENDIF.
                          ENDIF.
                          DATA(t636) = VALUE string( ).
                          DATA t637 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t637.
                          DATA t638 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t638.
                          DATA t639 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t639.
                          t630 = NEW zcl_lnt_istructure_component( view_source = t634 i_name = t636 i_type_9913 = t637 i_as_include = t638 i_suffix = t639 ).
                        ENDIF.
                      ENDIF.
                    ELSE.
                      t630 ?= t633.
                    ENDIF.
                    t629 = t630->zlnt_view_read_sr_455340cd1e80( ).
                    t627 = t629.
                    DATA t641 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t641.
                    DATA t643 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t643.
                    DATA t644 TYPE REF TO zcl_lnt_istructure_component.
                    CLEAR t644.
                    DATA(t646) = t619.
                    t646 = t646 + 1.
                    DATA t647 TYPE REF TO object.
                    CLEAR t647.
                    t606->load( ).
                    CLEAR t647.
                    READ TABLE t606->items INDEX t646 INTO t647.
                    DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t648.
                    CLEAR t644.
                    IF t647 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                      t648 ?= t647.
                      CLEAR t644.
                      IF t648 IS BOUND.
                        IF t648->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                          TRY.
                              t644 ?= t648->oval.
                            CATCH cx_sy_move_cast_error.
                          ENDTRY.
                        ENDIF.
                        IF t644 IS NOT BOUND.
                          IF t648->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t648->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t648->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t648->tag <>
                            zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                            DATA t649 TYPE REF TO zlnt_view_storage_74017ca272ac.
                            CLEAR t649.
                            IF t648->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                            ENDIF.
                            TRY.
                                t649 ?= t648->oval.
                              CATCH cx_sy_move_cast_error.
                                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                            ENDTRY.
                            IF t649->structural( ) <> abap_true.
                              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                            ENDIF.
                          ENDIF.
                          DATA(t650) = VALUE string( ).
                          DATA t651 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t651.
                          DATA t652 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t652.
                          DATA t653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                          CLEAR t653.
                          t644 = NEW zcl_lnt_istructure_component( view_source = t648 i_name = t650 i_type_9913 = t651 i_as_include = t652 i_suffix = t653 ).
                        ENDIF.
                      ENDIF.
                    ELSE.
                      t644 ?= t647.
                    ENDIF.
                    t643 = t644->zlnt_view_read_sr_455340cd1e80( ).
                    t641 = t643.
                    DATA t655 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t655.
                    t626 = me->is_assignable_strict( i_source_75cf = t627 i_target_5f8a = t641 i_node = t655 ).
                    t625 = xsdbool( t626 = abap_false ).
                    IF t625 = abap_true.
                      result = abap_false.
                      RETURN.
                    ENDIF.
                    DATA(t658) = VALUE i( ).
                    DATA(t660) = 1.
                    t658 = t619 + t660.
                    t619 = t658.
                  ENDDO.
                  result = abap_true.
                  RETURN.
                ELSE.
                  DATA(t662) = VALUE abap_bool( ).
                  t662 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_simple_type ).
                  IF t662 = abap_true.
                    DATA(t664) = VALUE abap_bool( ).
                    DATA t665 TYPE REF TO zcl_lnt_structure_type.
                    t665 ?= t1.
                    t664 = me->is_char_like_strict( i_type_9913 = t665 ).
                    result = t664.
                    RETURN.
                  ELSE.
                    DATA(t667) = VALUE abap_bool( ).
                    t667 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_c_like_type ).
                    IF t667 = abap_true.
                      DATA(t669) = VALUE abap_bool( ).
                      DATA t670 TYPE REF TO zcl_lnt_structure_type.
                      t670 ?= t1.
                      t669 = me->is_char_like_strict( i_type_9913 = t670 ).
                      result = t669.
                      RETURN.
                    ELSE.
                      DATA(t672) = VALUE abap_bool( ).
                      DATA(t673) = VALUE abap_bool( ).
                      DATA(t674) = VALUE abap_bool( ).
                      DATA(t675) = VALUE abap_bool( ).
                      t675 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_void_type ).
                      t674 = t675.
                      IF t675 = abap_false.
                        DATA(t677) = VALUE abap_bool( ).
                        t677 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_any_type ).
                        t674 = t677.
                      ENDIF.
                      t673 = t674.
                      IF t674 = abap_false.
                        DATA(t679) = VALUE abap_bool( ).
                        t679 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_data_type ).
                        t673 = t679.
                      ENDIF.
                      t672 = t673.
                      IF t673 = abap_false.
                        DATA(t681) = VALUE abap_bool( ).
                        t681 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_unknown_type ).
                        t672 = t681.
                      ENDIF.
                      IF t672 = abap_true.
                        result = abap_true.
                        RETURN.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
                result = abap_false.
                RETURN.
              ELSE.
                DATA(t685) = VALUE abap_bool( ).
                t685 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer8_type ).
                IF t685 = abap_true.
                  DATA(t687) = VALUE abap_bool( ).
                  DATA(t688) = VALUE abap_bool( ).
                  t688 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
                  t687 = t688.
                  IF t688 = abap_false.
                    DATA(t690) = VALUE abap_bool( ).
                    t690 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
                    t687 = t690.
                  ENDIF.
                  IF t687 = abap_true.
                    result = abap_false.
                    RETURN.
                  ENDIF.
                ELSE.
                  DATA(t693) = VALUE abap_bool( ).
                  t693 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
                  IF t693 = abap_true.
                    DATA(t695) = VALUE abap_bool( ).
                    DATA(t696) = VALUE abap_bool( ).
                    DATA(t697) = VALUE abap_bool( ).
                    t697 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
                    t696 = t697.
                    IF t697 = abap_false.
                      DATA(t699) = VALUE abap_bool( ).
                      t699 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_date_type ).
                      t696 = t699.
                    ENDIF.
                    t695 = t696.
                    IF t696 = abap_false.
                      DATA(t701) = VALUE abap_bool( ).
                      t701 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_character_type ).
                      t695 = t701.
                    ENDIF.
                    IF t695 = abap_true.
                      result = abap_false.
                      RETURN.
                    ELSE.
                      DATA(t704) = VALUE abap_bool( ).
                      DATA(t705) = VALUE abap_bool( ).
                      t705 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer8_type ).
                      t704 = t705.
                      IF t705 = abap_false.
                        DATA(t707) = VALUE abap_bool( ).
                        t707 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_packed_type ).
                        t704 = t707.
                      ENDIF.
                      IF t704 = abap_true.
                        DATA(t709) = VALUE abap_bool( ).
                        DATA t710 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        DATA t711 TYPE REF TO zcl_lnt_abstract_type_data.
                        DATA t713 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t714 TYPE REF TO zcl_lnt_integer_type.
                        t714 ?= t1.
                        t713 = t714.
                        DATA t716 TYPE REF TO zcl_lnt_abstract_type_data.
                        t716 = t713->data_56cc.
                        t711 = t716.
                        DATA t718 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        DATA(t719) = xsdbool( t711 IS INITIAL ).
                        IF t719 = abap_true.
                        ELSE.
                          DATA t722 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          DATA t723 TYPE REF TO zcl_lnt_abstract_type_data.
                          t723 = t711.
                          t722 = t723->zlnt_view_read_sr_b01015468803( ).
                          t718 = t722.
                        ENDIF.
                        t710 = t718.
                        DATA t725 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        DATA(t728) = NEW zlnt_runtime_opti_7f2541396f43( ).
                        t728->has = abap_true.
                        t728->value = abap_true.
                        t725 = t728.
                        DATA(t730) = VALUE abap_bool( ).
                        DATA(t731) = VALUE abap_bool( ).
                        IF t710 IS BOUND.
                          t730 = t710->has.
                        ENDIF.
                        IF t725 IS BOUND.
                          t731 = t725->has.
                        ENDIF.
                        IF t730 = t731.
                          IF t730 = abap_false.
                            t709 = abap_true.
                          ELSEIF t710->value = t725->value.
                            t709 = abap_true.
                          ENDIF.
                        ENDIF.
                        IF t709 = abap_true.
                          result = abap_true.
                          RETURN.
                        ENDIF.
                        result = abap_false.
                        RETURN.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    DATA(t734) = VALUE abap_bool( ).
                    DATA(t735) = VALUE abap_bool( ).
                    t735 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_packed_type ).
                    t734 = t735.
                    IF t735 = abap_true.
                      DATA(t737) = VALUE abap_bool( ).
                      t737 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_packed_type ).
                      t734 = t737.
                    ENDIF.
                    IF t734 = abap_true.
                      DATA(t739) = VALUE abap_bool( ).
                      DATA(t740) = VALUE abap_bool( ).
                      DATA(t741) = VALUE f( ).
                      DATA t743 TYPE REF TO zcl_lnt_packed_type.
                      t743 ?= t1.
                      DATA(t745) = VALUE f( ).
                      t745 = t743->length.
                      t741 = t745.
                      DATA(t747) = VALUE f( ).
                      DATA t749 TYPE REF TO zcl_lnt_packed_type.
                      t749 ?= t2.
                      DATA(t751) = VALUE f( ).
                      t751 = t749->length.
                      t747 = t751.
                      t740 = xsdbool( t741 = t747 ).
                      t739 = t740.
                      IF t740 = abap_true.
                        DATA(t753) = VALUE abap_bool( ).
                        DATA(t754) = VALUE f( ).
                        DATA t756 TYPE REF TO zcl_lnt_packed_type.
                        t756 ?= t1.
                        DATA(t758) = VALUE f( ).
                        t758 = t756->decimals_29bf.
                        t754 = t758.
                        DATA(t760) = VALUE f( ).
                        DATA t762 TYPE REF TO zcl_lnt_packed_type.
                        t762 ?= t2.
                        DATA(t764) = VALUE f( ).
                        t764 = t762->decimals_29bf.
                        t760 = t764.
                        t753 = xsdbool( t754 = t760 ).
                        t739 = t753.
                      ENDIF.
                      result = t739.
                      RETURN.
                    ELSE.
                      DATA(t766) = VALUE abap_bool( ).
                      t766 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_float_type ).
                      IF t766 = abap_true.
                        DATA(t768) = VALUE abap_bool( ).
                        t768 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
                        IF t768 = abap_true.
                          result = abap_false.
                          RETURN.
                        ENDIF.
                      ELSE.
                        DATA(t771) = VALUE abap_bool( ).
                        t771 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
                        IF t771 = abap_true.
                          DATA(t773) = VALUE abap_bool( ).
                          DATA(t774) = VALUE abap_bool( ).
                          DATA(t775) = VALUE abap_bool( ).
                          DATA(t776) = VALUE abap_bool( ).
                          DATA(t777) = VALUE abap_bool( ).
                          t777 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_object_reference_type ).
                          t776 = t777.
                          IF t777 = abap_false.
                            DATA(t779) = VALUE abap_bool( ).
                            t779 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
                            t776 = t779.
                          ENDIF.
                          t775 = t776.
                          IF t776 = abap_false.
                            DATA(t781) = VALUE abap_bool( ).
                            t781 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_character_type ).
                            t775 = t781.
                          ENDIF.
                          t774 = t775.
                          IF t775 = abap_false.
                            DATA(t783) = VALUE abap_bool( ).
                            t783 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_table_type ).
                            t774 = t783.
                          ENDIF.
                          t773 = t774.
                          IF t774 = abap_false.
                            DATA(t785) = VALUE abap_bool( ).
                            t785 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_c_like_type ).
                            t773 = t785.
                          ENDIF.
                          IF t773 = abap_true.
                            result = abap_false.
                            RETURN.
                          ENDIF.
                        ELSE.
                          DATA(t788) = VALUE abap_bool( ).
                          t788 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_object_reference_type ).
                          IF t788 = abap_true.
                            DATA(t790) = VALUE abap_bool( ).
                            DATA(t791) = VALUE abap_bool( ).
                            DATA(t792) = VALUE abap_bool( ).
                            DATA(t793) = VALUE abap_bool( ).
                            DATA(t794) = VALUE abap_bool( ).
                            t794 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_x_sequence_type ).
                            t793 = t794.
                            IF t794 = abap_false.
                              DATA(t796) = VALUE abap_bool( ).
                              t796 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
                              t793 = t796.
                            ENDIF.
                            t792 = t793.
                            IF t793 = abap_false.
                              DATA(t798) = VALUE abap_bool( ).
                              t798 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_structure_type ).
                              t792 = t798.
                            ENDIF.
                            t791 = t792.
                            IF t792 = abap_false.
                              DATA(t800) = VALUE abap_bool( ).
                              t800 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_table_type ).
                              t791 = t800.
                            ENDIF.
                            t790 = t791.
                            IF t791 = abap_false.
                              DATA(t802) = VALUE abap_bool( ).
                              t802 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_x_string_type ).
                              t790 = t802.
                            ENDIF.
                            IF t790 = abap_true.
                              result = abap_false.
                              RETURN.
                            ENDIF.
                          ELSE.
                            DATA(t805) = VALUE abap_bool( ).
                            t805 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_x_string_type ).
                            IF t805 = abap_true.
                              DATA(t807) = VALUE abap_bool( ).
                              DATA(t808) = VALUE abap_bool( ).
                              DATA(t809) = VALUE abap_bool( ).
                              DATA(t810) = VALUE abap_bool( ).
                              DATA(t811) = VALUE abap_bool( ).
                              DATA(t812) = VALUE abap_bool( ).
                              t812 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_character_type ).
                              t811 = t812.
                              IF t812 = abap_false.
                                DATA(t814) = VALUE abap_bool( ).
                                t814 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_c_like_type ).
                                t811 = t814.
                              ENDIF.
                              t810 = t811.
                              IF t811 = abap_false.
                                DATA(t816) = VALUE abap_bool( ).
                                t816 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
                                t810 = t816.
                              ENDIF.
                              t809 = t810.
                              IF t810 = abap_false.
                                DATA(t818) = VALUE abap_bool( ).
                                t818 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
                                t809 = t818.
                              ENDIF.
                              t808 = t809.
                              IF t809 = abap_false.
                                DATA(t820) = VALUE abap_bool( ).
                                t820 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_object_reference_type ).
                                t808 = t820.
                              ENDIF.
                              t807 = t808.
                              IF t808 = abap_false.
                                DATA(t822) = VALUE abap_bool( ).
                                t822 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_hex_type ).
                                t807 = t822.
                              ENDIF.
                              IF t807 = abap_true.
                                result = abap_false.
                                RETURN.
                              ENDIF.
                            ELSE.
                              DATA(t825) = VALUE abap_bool( ).
                              t825 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
                              IF t825 = abap_true.
                                DATA(t827) = VALUE abap_bool( ).
                                DATA t828 TYPE REF TO zcl_lnt_abstract_type.
                                DATA t830 TYPE REF TO zcl_lnt_ty_table_type.
                                t830 ?= t1.
                                DATA t832 TYPE REF TO zcl_lnt_abstract_type.
                                t832 = t830->row_type.
                                t828 = t832.
                                t827 = xsdbool( t828 IS BOUND AND t828 IS INSTANCE OF zcl_lnt_any_type ).
                                IF t827 = abap_true.
                                  result = abap_true.
                                  RETURN.
                                ELSE.
                                  DATA(t835) = VALUE abap_bool( ).
                                  DATA(t836) = VALUE abap_bool( ).
                                  t836 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_table_type ).
                                  t835 = t836.
                                  IF t836 = abap_true.
                                    DATA(t838) = VALUE abap_bool( ).
                                    DATA t839 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t841 TYPE REF TO zcl_lnt_ty_table_type.
                                    t841 ?= t2.
                                    DATA t843 TYPE REF TO zcl_lnt_abstract_type.
                                    t843 = t841->row_type.
                                    t839 = t843.
                                    t838 = xsdbool( t839 IS BOUND AND t839 IS INSTANCE OF zcl_lnt_any_type ).
                                    t835 = t838.
                                  ENDIF.
                                  IF t835 = abap_true.
                                    result = abap_true.
                                    RETURN.
                                  ELSE.
                                    DATA(t846) = VALUE abap_bool( ).
                                    t846 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_table_type ).
                                    IF t846 = abap_true.
                                      DATA(t848) = VALUE string( ).
                                      DATA(t849) = VALUE string( ).
                                      DATA t850 TYPE REF TO zcl_lnt_itable_options.
                                      DATA t852 TYPE REF TO zcl_lnt_ty_table_type.
                                      t852 ?= t1.
                                      DATA t854 TYPE REF TO zcl_lnt_itable_options.
                                      t854 = t852->options.
                                      t850 = t854.
                                      t849 = t850->zlnt_view_read_sr_79d5aa355dd3( ).
                                      t848 = t849.
                                      DATA(t856) = VALUE string( ).
                                      DATA(t857) = VALUE string( ).
                                      DATA t858 TYPE REF TO zcl_lnt_itable_options.
                                      DATA t860 TYPE REF TO zcl_lnt_ty_table_type.
                                      t860 ?= t2.
                                      DATA t862 TYPE REF TO zcl_lnt_itable_options.
                                      t862 = t860->options.
                                      t858 = t862.
                                      t857 = t858->zlnt_view_read_sr_79d5aa355dd3( ).
                                      t856 = t857.
                                      DATA(t864) = VALUE abap_bool( ).
                                      DATA(t865) = VALUE abap_bool( ).
                                      DATA(t866) = VALUE abap_bool( ).
                                      t866 = xsdbool( t848 <> t856 ).
                                      t865 = t866.
                                      IF t866 = abap_true.
                                        DATA(t869) = VALUE abap_bool( ).
                                        DATA(t871) = |USER|.
                                        t869 = xsdbool( t848 <> t871 ).
                                        t865 = t869.
                                      ENDIF.
                                      t864 = t865.
                                      IF t865 = abap_true.
                                        DATA(t872) = VALUE abap_bool( ).
                                        DATA(t874) = |USER|.
                                        t872 = xsdbool( t856 <> t874 ).
                                        t864 = t872.
                                      ENDIF.
                                      IF t864 = abap_true.
                                        result = abap_false.
                                        RETURN.
                                      ENDIF.
                                      DATA(t876) = VALUE abap_bool( ).
                                      DATA(t877) = VALUE abap_bool( ).
                                      DATA(t878) = VALUE abap_bool( ).
                                      DATA(t880) = |EMPTY|.
                                      t878 = xsdbool( t848 = t880 ).
                                      t877 = t878.
                                      IF t878 = abap_true.
                                        DATA(t881) = VALUE abap_bool( ).
                                        DATA(t883) = |EMPTY|.
                                        t881 = xsdbool( t856 <> t883 ).
                                        t877 = t881.
                                      ENDIF.
                                      t876 = t877.
                                      IF t877 = abap_true.
                                        DATA(t884) = VALUE abap_bool( ).
                                        DATA(t885) = VALUE abap_bool( ).
                                        DATA t886 TYPE REF TO zcl_lnt_abstract_type.
                                        DATA t888 TYPE REF TO zcl_lnt_ty_table_type.
                                        t888 ?= t2.
                                        DATA t890 TYPE REF TO zcl_lnt_abstract_type.
                                        t890 = t888->row_type.
                                        t886 = t890.
                                        t885 = xsdbool( t886 IS BOUND AND t886 IS INSTANCE OF zcl_lnt_any_type ).
                                        t884 = xsdbool( t885 = abap_false ).
                                        t876 = t884.
                                      ENDIF.
                                      IF t876 = abap_true.
                                        result = abap_false.
                                        RETURN.
                                      ENDIF.
                                      DATA(t893) = VALUE abap_bool( ).
                                      DATA t894 TYPE REF TO zcl_lnt_abstract_type.
                                      DATA t898 TYPE REF TO zcl_lnt_ty_table_type.
                                      t898 ?= t1.
                                      DATA t900 TYPE REF TO zcl_lnt_abstract_type.
                                      t900 = t898->row_type.
                                      t894 = t900.
                                      DATA t903 TYPE REF TO zcl_lnt_abstract_type.
                                      DATA t907 TYPE REF TO zcl_lnt_ty_table_type.
                                      t907 ?= t2.
                                      DATA t909 TYPE REF TO zcl_lnt_abstract_type.
                                      t909 = t907->row_type.
                                      t903 = t909.
                                      DATA t912 TYPE REF TO zcl_lnt_expression_node.
                                      t893 = me->is_assignable_strict( i_source_75cf = t894 i_target_5f8a = t903 i_node = t912 ).
                                      result = t893.
                                      RETURN.
                                    ELSE.
                                      DATA(t913) = VALUE abap_bool( ).
                                      DATA(t914) = VALUE abap_bool( ).
                                      DATA(t915) = VALUE abap_bool( ).
                                      t915 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_unknown_type ).
                                      t914 = t915.
                                      IF t915 = abap_false.
                                        DATA(t917) = VALUE abap_bool( ).
                                        t917 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_any_type ).
                                        t914 = t917.
                                      ENDIF.
                                      t913 = t914.
                                      IF t914 = abap_false.
                                        DATA(t919) = VALUE abap_bool( ).
                                        t919 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_void_type ).
                                        t913 = t919.
                                      ENDIF.
                                      IF t913 = abap_true.
                                        result = abap_true.
                                        RETURN.
                                      ENDIF.
                                    ENDIF.
                                  ENDIF.
                                ENDIF.
                              ENDIF.
                            ENDIF.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t922) = VALUE abap_bool( ).
    t922 = me->is_assignable( i_source_75cf = t1 i_target_5f8a = t2 ).
    result = t922.

  ENDMETHOD.

  METHOD is_assignable_structure_typing.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = i_node.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
    t4 = t5.
    IF t5 = abap_true.
      DATA(t7) = VALUE abap_bool( ).
      t7 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_structure_type ).
      t4 = t7.
    ENDIF.
    IF t4 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t12 TYPE REF TO zcl_lnt_structure_type.
      t12 ?= t1.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t14 = t12->components.
      t9 = t14.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zcl_lnt_structure_type.
      t19 ?= t2.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t21 = t19->components.
      t16 = t21.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE i( ).
      t9->load( ).
      t24 = lines( t9->items ).
      DATA(t26) = VALUE i( ).
      t16->load( ).
      t26 = lines( t16->items ).
      t23 = xsdbool( t24 < t26 ).
      IF t23 = abap_true.
        result = abap_false.
        RETURN.
      ENDIF.
      DATA(t29) = VALUE i( ).
      t29 = 0.
      DO.
        DATA(t31) = VALUE abap_bool( ).
        DATA(t33) = VALUE i( ).
        t16->load( ).
        t33 = lines( t16->items ).
        t31 = xsdbool( t29 < t33 ).
        IF t31 = abap_false.
          EXIT.
        ENDIF.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = VALUE abap_bool( ).
        DATA t37 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t37.
        DATA t39 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t39.
        DATA t40 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t40.
        DATA(t42) = t29.
        t42 = t42 + 1.
        DATA t43 TYPE REF TO object.
        CLEAR t43.
        t9->load( ).
        CLEAR t43.
        READ TABLE t9->items INDEX t42 INTO t43.
        DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t44.
        CLEAR t40.
        IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t44 ?= t43.
          CLEAR t40.
          IF t44 IS BOUND.
            IF t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t40 ?= t44->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t40 IS NOT BOUND.
              IF t44->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t44->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t44->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t44->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t45.
                IF t44->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t45 ?= t44->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t45->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t46) = VALUE string( ).
              DATA t47 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t47.
              DATA t48 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t48.
              DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t49.
              t40 = NEW zcl_lnt_istructure_component( view_source = t44 i_name = t46 i_type_9913 = t47 i_as_include = t48 i_suffix = t49 ).
            ENDIF.
          ENDIF.
        ELSE.
          t40 ?= t43.
        ENDIF.
        t39 = t40->zlnt_view_read_sr_455340cd1e80( ).
        t37 = t39.
        DATA t51 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t51.
        DATA t53 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t53.
        DATA t54 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t54.
        DATA(t56) = t29.
        t56 = t56 + 1.
        DATA t57 TYPE REF TO object.
        CLEAR t57.
        t16->load( ).
        CLEAR t57.
        READ TABLE t16->items INDEX t56 INTO t57.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        CLEAR t54.
        IF t57 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t58 ?= t57.
          CLEAR t54.
          IF t58 IS BOUND.
            IF t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t54 ?= t58->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t54 IS NOT BOUND.
              IF t58->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t58->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t58->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t58->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t59.
                IF t58->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t59 ?= t58->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t59->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t60) = VALUE string( ).
              DATA t61 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t61.
              DATA t62 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t62.
              DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t63.
              t54 = NEW zcl_lnt_istructure_component( view_source = t58 i_name = t60 i_type_9913 = t61 i_as_include = t62 i_suffix = t63 ).
            ENDIF.
          ENDIF.
        ELSE.
          t54 ?= t57.
        ENDIF.
        t53 = t54->zlnt_view_read_sr_455340cd1e80( ).
        t51 = t53.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t65.
        t36 = me->is_assignable_strict( i_source_75cf = t37 i_target_5f8a = t51 i_node = t65 ).
        t35 = xsdbool( t36 = abap_false ).
        IF t35 = abap_true.
          result = abap_false.
          RETURN.
        ENDIF.
        DATA(t68) = VALUE i( ).
        DATA(t70) = 1.
        t68 = t29 + t70.
        t29 = t68.
      ENDDO.
      result = abap_true.
      RETURN.
    ELSE.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = VALUE abap_bool( ).
      t73 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t72 = t73.
      IF t73 = abap_true.
        DATA(t75) = VALUE abap_bool( ).
        t75 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t72 = t75.
      ENDIF.
      IF t72 = abap_true.
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE REF TO zcl_lnt_abstract_type.
        DATA t82 TYPE REF TO zcl_lnt_ty_table_type.
        t82 ?= t1.
        DATA t84 TYPE REF TO zcl_lnt_abstract_type.
        t84 = t82->row_type.
        t78 = t84.
        DATA t87 TYPE REF TO zcl_lnt_abstract_type.
        DATA t91 TYPE REF TO zcl_lnt_ty_table_type.
        t91 ?= t2.
        DATA t93 TYPE REF TO zcl_lnt_abstract_type.
        t93 = t91->row_type.
        t87 = t93.
        DATA t96 TYPE REF TO zcl_lnt_expression_node.
        t77 = me->is_assignable_structure_typing( i_source_75cf = t78 i_target_5f8a = t87 i_node = t96 ).
        result = t77.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t97) = VALUE abap_bool( ).
    t97 = me->is_assignable_strict( i_source_75cf = t1 i_target_5f8a = t2 i_node = t3 ).
    result = t97.

  ENDMETHOD.

  METHOD is_assignable.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t4 = xsdbool( t1 IS INITIAL ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t11 = xsdbool( t2 IS INITIAL ).
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    t20 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_utc_long_type ).
    t19 = t20.
    IF t20 = abap_false.
      DATA(t22) = VALUE abap_bool( ).
      t22 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_utc_long_type ).
      t19 = t22.
    ENDIF.
    IF t19 = abap_true.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zcl_lnt_abstract_type.
      t25 = t1.
      DATA t28 TYPE REF TO zcl_lnt_abstract_type.
      t28 = t2.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zcl_lnt_abstract_type.
      t34 = t25.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE abap_bool( ).
      t39 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_void_type ).
      t38 = t39.
      IF t39 = abap_false.
        DATA(t41) = VALUE abap_bool( ).
        t41 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_any_type ).
        t38 = t41.
      ENDIF.
      t37 = t38.
      IF t38 = abap_false.
        DATA(t43) = VALUE abap_bool( ).
        t43 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_data_type ).
        t37 = t43.
      ENDIF.
      t36 = t37.
      IF t37 = abap_false.
        DATA(t45) = VALUE abap_bool( ).
        t45 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_unknown_type ).
        t36 = t45.
      ENDIF.
      t33 = t36.
      t32 = t33.
      IF t33 = abap_false.
        DATA(t47) = VALUE abap_bool( ).
        DATA t48 TYPE REF TO zcl_lnt_abstract_type.
        t48 = t28.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        t53 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_void_type ).
        t52 = t53.
        IF t53 = abap_false.
          DATA(t55) = VALUE abap_bool( ).
          t55 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_any_type ).
          t52 = t55.
        ENDIF.
        t51 = t52.
        IF t52 = abap_false.
          DATA(t57) = VALUE abap_bool( ).
          t57 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_data_type ).
          t51 = t57.
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          DATA(t59) = VALUE abap_bool( ).
          t59 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_unknown_type ).
          t50 = t59.
        ENDIF.
        t47 = t50.
        t32 = t47.
      ENDIF.
      IF t32 = abap_true.
        t31 = abap_true.
      ELSE.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = VALUE abap_bool( ).
        t64 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_utc_long_type ).
        t63 = t64.
        IF t64 = abap_true.
          DATA(t66) = VALUE abap_bool( ).
          t66 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_utc_long_type ).
          t63 = t66.
        ENDIF.
        IF t63 = abap_true.
          t62 = abap_true.
        ELSE.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = VALUE abap_bool( ).
          t70 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_utc_long_type ).
          IF t70 = abap_true.
            DATA(t72) = VALUE abap_bool( ).
            DATA t73 TYPE REF TO zcl_lnt_abstract_type.
            t73 = t28.
            DATA(t75) = VALUE abap_bool( ).
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = VALUE abap_bool( ).
            DATA(t79) = VALUE abap_bool( ).
            DATA(t80) = VALUE abap_bool( ).
            t80 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_character_type ).
            t79 = t80.
            IF t80 = abap_false.
              DATA(t82) = VALUE abap_bool( ).
              t82 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_string_type ).
              t79 = t82.
            ENDIF.
            t78 = t79.
            IF t79 = abap_false.
              DATA(t84) = VALUE abap_bool( ).
              t84 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_c_like_type ).
              t78 = t84.
            ENDIF.
            t77 = t78.
            IF t78 = abap_false.
              DATA(t86) = VALUE abap_bool( ).
              t86 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_c_sequence_type ).
              t77 = t86.
            ENDIF.
            t76 = t77.
            IF t77 = abap_false.
              DATA(t88) = VALUE abap_bool( ).
              t88 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_c_generic_type ).
              t76 = t88.
            ENDIF.
            t75 = t76.
            IF t76 = abap_false.
              DATA(t90) = VALUE abap_bool( ).
              t90 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_simple_type ).
              t75 = t90.
            ENDIF.
            t72 = t75.
            t69 = t72.
          ELSE.
            DATA(t92) = VALUE abap_bool( ).
            DATA t93 TYPE REF TO zcl_lnt_abstract_type.
            t93 = t25.
            DATA(t95) = VALUE abap_bool( ).
            DATA(t96) = VALUE abap_bool( ).
            DATA(t97) = VALUE abap_bool( ).
            DATA(t98) = VALUE abap_bool( ).
            DATA(t99) = VALUE abap_bool( ).
            DATA(t100) = VALUE abap_bool( ).
            t100 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_character_type ).
            t99 = t100.
            IF t100 = abap_false.
              DATA(t102) = VALUE abap_bool( ).
              t102 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_string_type ).
              t99 = t102.
            ENDIF.
            t98 = t99.
            IF t99 = abap_false.
              DATA(t104) = VALUE abap_bool( ).
              t104 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_c_like_type ).
              t98 = t104.
            ENDIF.
            t97 = t98.
            IF t98 = abap_false.
              DATA(t106) = VALUE abap_bool( ).
              t106 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_c_sequence_type ).
              t97 = t106.
            ENDIF.
            t96 = t97.
            IF t97 = abap_false.
              DATA(t108) = VALUE abap_bool( ).
              t108 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_c_generic_type ).
              t96 = t108.
            ENDIF.
            t95 = t96.
            IF t96 = abap_false.
              DATA(t110) = VALUE abap_bool( ).
              t110 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_simple_type ).
              t95 = t110.
            ENDIF.
            t92 = t95.
            t69 = t92.
          ENDIF.
          t62 = t69.
        ENDIF.
        t31 = t62.
      ENDIF.
      t24 = t31.
      result = t24.
      RETURN.
    ENDIF.
    DATA(t112) = VALUE abap_bool( ).
    t112 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t112 = abap_true.
      DATA(t114) = VALUE abap_bool( ).
      DATA t116 TYPE REF TO zcl_lnt_ty_table_type.
      t116 ?= t2.
      DATA(t118) = VALUE abap_bool( ).
      DATA t119 TYPE REF TO zcl_lnt_itable_options.
      t119 = t116->options.
      t118 = t119->zlnt_view_read_sr_ec4602663c93( ).
      t114 = t118.
      IF t114 = abap_true.
        DATA(t121) = VALUE abap_bool( ).
        DATA t122 TYPE REF TO zcl_lnt_abstract_type.
        t122 = t1.
        DATA t127 TYPE REF TO zcl_lnt_abstract_type.
        DATA t131 TYPE REF TO zcl_lnt_ty_table_type.
        t131 ?= t2.
        DATA t133 TYPE REF TO zcl_lnt_abstract_type.
        t133 = t131->row_type.
        t127 = t133.
        t121 = me->is_assignable( i_source_75cf = t122 i_target_5f8a = t127 ).
        result = t121.
        RETURN.
      ENDIF.
      DATA(t136) = VALUE abap_bool( ).
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      t139 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
      t138 = t139.
      IF t139 = abap_false.
        DATA(t141) = VALUE abap_bool( ).
        t141 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
        t138 = t141.
      ENDIF.
      t137 = t138.
      IF t138 = abap_false.
        DATA(t143) = VALUE abap_bool( ).
        t143 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
        t137 = t143.
      ENDIF.
      t136 = t137.
      IF t137 = abap_false.
        DATA(t145) = VALUE abap_bool( ).
        t145 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
        t136 = t145.
      ENDIF.
      IF t136 = abap_true.
        result = abap_true.
        RETURN.
      ELSE.
        DATA(t148) = VALUE abap_bool( ).
        t148 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t148 = abap_true.
          DATA t150 TYPE REF TO zcl_lnt_abstract_type.
          DATA t153 TYPE REF TO zcl_lnt_ty_table_type.
          t153 ?= t2.
          DATA t155 TYPE REF TO zcl_lnt_abstract_type.
          t155 = t153->row_type.
          t150 = t155.
          DATA t157 TYPE REF TO zcl_lnt_abstract_type.
          DATA t160 TYPE REF TO zcl_lnt_ty_table_type.
          t160 ?= t1.
          DATA t162 TYPE REF TO zcl_lnt_abstract_type.
          t162 = t160->row_type.
          t157 = t162.
          DATA(t164) = VALUE abap_bool( ).
          DATA(t165) = VALUE abap_bool( ).
          DATA(t166) = VALUE abap_bool( ).
          t166 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_void_type ).
          t165 = t166.
          IF t166 = abap_false.
            DATA(t168) = VALUE abap_bool( ).
            t168 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_any_type ).
            t165 = t168.
          ENDIF.
          t164 = t165.
          IF t165 = abap_false.
            DATA(t170) = VALUE abap_bool( ).
            t170 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_unknown_type ).
            t164 = t170.
          ENDIF.
          IF t164 = abap_true.
            result = abap_true.
            RETURN.
          ELSE.
            DATA(t173) = VALUE abap_bool( ).
            DATA(t174) = VALUE abap_bool( ).
            DATA(t175) = VALUE abap_bool( ).
            t175 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_void_type ).
            t174 = t175.
            IF t175 = abap_false.
              DATA(t177) = VALUE abap_bool( ).
              t177 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_any_type ).
              t174 = t177.
            ENDIF.
            t173 = t174.
            IF t174 = abap_false.
              DATA(t179) = VALUE abap_bool( ).
              t179 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_unknown_type ).
              t173 = t179.
            ENDIF.
            IF t173 = abap_true.
              result = abap_true.
              RETURN.
            ENDIF.
          ENDIF.
          DATA(t182) = VALUE abap_bool( ).
          DATA(t183) = VALUE abap_bool( ).
          t183 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_structure_type ).
          t182 = t183.
          IF t183 = abap_true.
            DATA(t185) = VALUE abap_bool( ).
            DATA t186 TYPE REF TO zcl_lnt_structure_type.
            t186 ?= t150.
            t185 = me->structure_contains_string( i_structure = t186 ).
            t182 = t185.
          ENDIF.
          IF t182 = abap_true.
            DATA(t188) = VALUE abap_bool( ).
            DATA(t189) = VALUE abap_bool( ).
            t189 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_structure_type ).
            t188 = xsdbool( t189 = abap_false ).
            IF t188 = abap_true.
              result = abap_false.
              RETURN.
            ELSE.
              DATA(t192) = VALUE abap_bool( ).
              DATA(t193) = VALUE abap_bool( ).
              DATA(t194) = VALUE abap_bool( ).
              DATA t195 TYPE REF TO zcl_lnt_structure_type.
              t195 ?= t157.
              t194 = me->structure_contains_string( i_structure = t195 ).
              t193 = xsdbool( t194 = abap_false ).
              t192 = t193.
              IF t193 = abap_true.
                DATA(t197) = VALUE abap_bool( ).
                DATA(t198) = VALUE abap_bool( ).
                DATA t199 TYPE REF TO zcl_lnt_structure_type.
                t199 ?= t157.
                t198 = me->structure_contains_void( i_structure = t199 ).
                t197 = xsdbool( t198 = abap_false ).
                t192 = t197.
              ENDIF.
              IF t192 = abap_true.
                result = abap_false.
                RETURN.
              ENDIF.
            ENDIF.
          ELSE.
            DATA(t203) = VALUE abap_bool( ).
            DATA(t204) = VALUE abap_bool( ).
            t204 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_structure_type ).
            t203 = t204.
            IF t204 = abap_true.
              DATA(t206) = VALUE abap_bool( ).
              DATA t207 TYPE REF TO zcl_lnt_structure_type.
              t207 ?= t157.
              t206 = me->structure_contains_string( i_structure = t207 ).
              t203 = t206.
            ENDIF.
            IF t203 = abap_true.
              DATA(t209) = VALUE abap_bool( ).
              DATA(t210) = VALUE abap_bool( ).
              t210 = xsdbool( t150 IS BOUND AND t150 IS INSTANCE OF zcl_lnt_structure_type ).
              t209 = xsdbool( t210 = abap_false ).
              IF t209 = abap_true.
                result = abap_false.
                RETURN.
              ELSE.
                DATA(t213) = VALUE abap_bool( ).
                DATA(t214) = VALUE abap_bool( ).
                DATA(t215) = VALUE abap_bool( ).
                DATA t216 TYPE REF TO zcl_lnt_structure_type.
                t216 ?= t150.
                t215 = me->structure_contains_string( i_structure = t216 ).
                t214 = xsdbool( t215 = abap_false ).
                t213 = t214.
                IF t214 = abap_true.
                  DATA(t218) = VALUE abap_bool( ).
                  DATA(t219) = VALUE abap_bool( ).
                  DATA t220 TYPE REF TO zcl_lnt_structure_type.
                  t220 ?= t150.
                  t219 = me->structure_contains_void( i_structure = t220 ).
                  t218 = xsdbool( t219 = abap_false ).
                  t213 = t218.
                ENDIF.
                IF t213 = abap_true.
                  result = abap_false.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          result = abap_true.
          RETURN.
        ENDIF.
      ENDIF.
      result = abap_false.
      RETURN.
    ELSE.
      DATA(t226) = VALUE abap_bool( ).
      DATA(t227) = VALUE abap_bool( ).
      t227 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_object_reference_type ).
      t226 = t227.
      IF t227 = abap_true.
        DATA(t229) = VALUE abap_bool( ).
        t229 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_object_reference_type ).
        t226 = t229.
      ENDIF.
      IF t226 = abap_true.
        DATA(t231) = VALUE abap_bool( ).
        DATA t232 TYPE REF TO zcl_lnt_object_reference_type.
        t232 ?= t1.
        DATA t234 TYPE REF TO zcl_lnt_object_reference_type.
        t234 ?= t2.
        t231 = me->is_oo_assignable( i_source_75cf = t232 i_target_5f8a = t234 ).
        result = t231.
        RETURN.
      ELSE.
        DATA(t236) = VALUE abap_bool( ).
        DATA(t237) = VALUE abap_bool( ).
        t237 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_object_reference_type ).
        t236 = t237.
        IF t237 = abap_false.
          DATA(t239) = VALUE abap_bool( ).
          t239 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
          t236 = t239.
        ENDIF.
        IF t236 = abap_true.
          DATA(t241) = VALUE abap_bool( ).
          DATA(t242) = VALUE abap_bool( ).
          DATA(t243) = VALUE abap_bool( ).
          DATA(t244) = VALUE abap_bool( ).
          DATA(t245) = VALUE abap_bool( ).
          DATA(t246) = VALUE abap_bool( ).
          t246 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_object_reference_type ).
          t245 = t246.
          IF t246 = abap_false.
            DATA(t248) = VALUE abap_bool( ).
            t248 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
            t245 = t248.
          ENDIF.
          t244 = t245.
          IF t245 = abap_false.
            DATA(t250) = VALUE abap_bool( ).
            t250 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
            t244 = t250.
          ENDIF.
          t243 = t244.
          IF t244 = abap_false.
            DATA(t252) = VALUE abap_bool( ).
            t252 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
            t243 = t252.
          ENDIF.
          t242 = t243.
          IF t243 = abap_false.
            DATA(t254) = VALUE abap_bool( ).
            t254 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
            t242 = t254.
          ENDIF.
          t241 = t242.
          IF t242 = abap_false.
            DATA(t256) = VALUE abap_bool( ).
            t256 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
            t241 = t256.
          ENDIF.
          IF t241 = abap_true.
            result = abap_true.
            RETURN.
          ENDIF.
          result = abap_false.
          RETURN.
        ELSE.
          DATA(t260) = VALUE abap_bool( ).
          t260 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_data_reference ).
          IF t260 = abap_true.
            DATA(t262) = VALUE abap_bool( ).
            DATA(t263) = VALUE abap_bool( ).
            DATA(t264) = VALUE abap_bool( ).
            DATA(t265) = VALUE abap_bool( ).
            DATA(t266) = VALUE abap_bool( ).
            t266 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_reference ).
            t265 = t266.
            IF t266 = abap_false.
              DATA(t268) = VALUE abap_bool( ).
              t268 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
              t265 = t268.
            ENDIF.
            t264 = t265.
            IF t265 = abap_false.
              DATA(t270) = VALUE abap_bool( ).
              t270 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
              t264 = t270.
            ENDIF.
            t263 = t264.
            IF t264 = abap_false.
              DATA(t272) = VALUE abap_bool( ).
              t272 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
              t263 = t272.
            ENDIF.
            t262 = t263.
            IF t263 = abap_false.
              DATA(t274) = VALUE abap_bool( ).
              t274 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
              t262 = t274.
            ENDIF.
            IF t262 = abap_true.
              result = abap_true.
              RETURN.
            ENDIF.
            result = abap_false.
            RETURN.
          ELSE.
            DATA(t278) = VALUE abap_bool( ).
            t278 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_structure_type ).
            IF t278 = abap_true.
              DATA(t280) = VALUE abap_bool( ).
              DATA(t281) = VALUE abap_bool( ).
              t281 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t280 = t281.
              IF t281 = abap_true.
                DATA(t283) = VALUE abap_bool( ).
                DATA t285 TYPE REF TO zcl_lnt_ty_table_type.
                t285 ?= t1.
                DATA(t287) = VALUE abap_bool( ).
                DATA t288 TYPE REF TO zcl_lnt_itable_options.
                t288 = t285->options.
                t287 = t288->zlnt_view_read_sr_ec4602663c93( ).
                t283 = t287.
                t280 = t283.
              ENDIF.
              IF t280 = abap_true.
                DATA(t290) = VALUE abap_bool( ).
                DATA t291 TYPE REF TO zcl_lnt_abstract_type.
                DATA t295 TYPE REF TO zcl_lnt_ty_table_type.
                t295 ?= t1.
                DATA t297 TYPE REF TO zcl_lnt_abstract_type.
                t297 = t295->row_type.
                t291 = t297.
                DATA t300 TYPE REF TO zcl_lnt_structure_type.
                t300 ?= t2.
                t290 = me->is_assignable( i_source_75cf = t291 i_target_5f8a = t300 ).
                result = t290.
                RETURN.
              ELSE.
                DATA(t302) = VALUE abap_bool( ).
                DATA(t303) = VALUE abap_bool( ).
                DATA(t304) = VALUE abap_bool( ).
                DATA(t305) = VALUE abap_bool( ).
                t305 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
                t304 = t305.
                IF t305 = abap_false.
                  DATA(t307) = VALUE abap_bool( ).
                  t307 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
                  t304 = t307.
                ENDIF.
                t303 = t304.
                IF t304 = abap_false.
                  DATA(t309) = VALUE abap_bool( ).
                  t309 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
                  t303 = t309.
                ENDIF.
                t302 = t303.
                IF t303 = abap_false.
                  DATA(t311) = VALUE abap_bool( ).
                  t311 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
                  t302 = t311.
                ENDIF.
                IF t302 = abap_true.
                  result = abap_true.
                  RETURN.
                ELSE.
                  DATA(t314) = VALUE abap_bool( ).
                  t314 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
                  IF t314 = abap_true.
                    DATA(t316) = VALUE abap_bool( ).
                    DATA(t317) = VALUE abap_bool( ).
                    DATA t318 TYPE REF TO zcl_lnt_structure_type.
                    t318 ?= t2.
                    t317 = me->structure_contains_string( i_structure = t318 ).
                    t316 = t317.
                    DATA(t320) = VALUE abap_bool( ).
                    DATA(t321) = VALUE abap_bool( ).
                    DATA t322 TYPE REF TO zcl_lnt_structure_type.
                    t322 ?= t1.
                    t321 = me->structure_contains_string( i_structure = t322 ).
                    t320 = t321.
                    DATA(t324) = VALUE abap_bool( ).
                    t324 = t316.
                    IF t316 = abap_true.
                      DATA(t326) = VALUE abap_bool( ).
                      t326 = xsdbool( t320 = abap_false ).
                      t324 = t326.
                    ENDIF.
                    IF t324 = abap_true.
                      result = abap_false.
                      RETURN.
                    ENDIF.
                    DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t332 TYPE REF TO zcl_lnt_structure_type.
                    t332 ?= t2.
                    DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t334 = t332->components.
                    t329 = t334.
                    DATA t336 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t339 TYPE REF TO zcl_lnt_structure_type.
                    t339 ?= t1.
                    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t341 = t339->components.
                    t336 = t341.
                    DATA(t343) = VALUE abap_bool( ).
                    DATA(t344) = VALUE i( ).
                    t329->load( ).
                    t344 = lines( t329->items ).
                    DATA(t346) = VALUE i( ).
                    t336->load( ).
                    t346 = lines( t336->items ).
                    t343 = xsdbool( t344 <> t346 ).
                    IF t343 = abap_true.
                      DATA(t348) = VALUE abap_bool( ).
                      DATA(t349) = VALUE abap_bool( ).
                      t349 = xsdbool( t316 = abap_true ).
                      t348 = t349.
                      IF t349 = abap_false.
                        DATA(t352) = VALUE abap_bool( ).
                        t352 = xsdbool( t320 = abap_true ).
                        t348 = t352.
                      ENDIF.
                      IF t348 = abap_true.
                        result = abap_false.
                        RETURN.
                      ENDIF.
                    ENDIF.
                    DATA(t356) = VALUE i( ).
                    t356 = 0.
                    DO.
                      DATA(t358) = VALUE abap_bool( ).
                      DATA(t360) = VALUE i( ).
                      t329->load( ).
                      t360 = lines( t329->items ).
                      t358 = xsdbool( t356 < t360 ).
                      IF t358 = abap_false.
                        EXIT.
                      ENDIF.
                      DATA(t362) = VALUE abap_bool( ).
                      DATA t364 TYPE REF TO zcl_lnt_istructure_component.
                      CLEAR t364.
                      DATA(t366) = t356.
                      t366 = t366 + 1.
                      DATA t367 TYPE REF TO object.
                      CLEAR t367.
                      t336->load( ).
                      CLEAR t367.
                      READ TABLE t336->items INDEX t366 INTO t367.
                      DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t368.
                      CLEAR t364.
                      IF t367 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                        t368 ?= t367.
                        CLEAR t364.
                        IF t368 IS BOUND.
                          IF t368->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                            TRY.
                                t364 ?= t368->oval.
                              CATCH cx_sy_move_cast_error.
                            ENDTRY.
                          ENDIF.
                          IF t364 IS NOT BOUND.
                            IF t368->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t368->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t368->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t368->tag <>
                            zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                              DATA t369 TYPE REF TO zlnt_view_storage_74017ca272ac.
                              CLEAR t369.
                              IF t368->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                              ENDIF.
                              TRY.
                                  t369 ?= t368->oval.
                                CATCH cx_sy_move_cast_error.
                                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                              ENDTRY.
                              IF t369->structural( ) <> abap_true.
                                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                              ENDIF.
                            ENDIF.
                            DATA(t370) = VALUE string( ).
                            DATA t371 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t371.
                            DATA t372 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t372.
                            DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t373.
                            t364 = NEW zcl_lnt_istructure_component( view_source = t368 i_name = t370 i_type_9913 = t371 i_as_include = t372 i_suffix = t373 ).
                          ENDIF.
                        ENDIF.
                      ELSE.
                        t364 ?= t367.
                      ENDIF.
                      DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t374.
                      CLEAR t374.
                      t362 = xsdbool( t364 IS INITIAL ).
                      IF t362 = abap_true.
                        DATA(t378) = VALUE i( ).
                        DATA(t380) = 1.
                        t378 = t356 + t380.
                        t356 = t378.
                        CONTINUE.
                      ENDIF.
                      DATA(t381) = VALUE abap_bool( ).
                      DATA(t382) = VALUE abap_bool( ).
                      DATA t383 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t383.
                      DATA t384 TYPE REF TO zcl_lnt_istructure_component.
                      CLEAR t384.
                      DATA(t386) = t356.
                      t386 = t386 + 1.
                      DATA t387 TYPE REF TO object.
                      CLEAR t387.
                      t336->load( ).
                      CLEAR t387.
                      READ TABLE t336->items INDEX t386 INTO t387.
                      DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t388.
                      CLEAR t384.
                      IF t387 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                        t388 ?= t387.
                        CLEAR t384.
                        IF t388 IS BOUND.
                          IF t388->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                            TRY.
                                t384 ?= t388->oval.
                              CATCH cx_sy_move_cast_error.
                            ENDTRY.
                          ENDIF.
                          IF t384 IS NOT BOUND.
                            IF t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t388->tag <>
                            zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                              DATA t389 TYPE REF TO zlnt_view_storage_74017ca272ac.
                              CLEAR t389.
                              IF t388->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                              ENDIF.
                              TRY.
                                  t389 ?= t388->oval.
                                CATCH cx_sy_move_cast_error.
                                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                              ENDTRY.
                              IF t389->structural( ) <> abap_true.
                                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                              ENDIF.
                            ENDIF.
                            DATA(t390) = VALUE string( ).
                            DATA t391 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t391.
                            DATA t392 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                            CLEAR t392.
                            DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                            CLEAR t393.
                            t384 = NEW zcl_lnt_istructure_component( view_source = t388 i_name = t390 i_type_9913 = t391 i_as_include = t392 i_suffix = t393 ).
                          ENDIF.
                        ENDIF.
                      ELSE.
                        t384 ?= t387.
                      ENDIF.
                      t383 = t384->zlnt_view_read_sr_455340cd1e80( ).
                      t382 = xsdbool( t383 IS BOUND AND t383 IS INSTANCE OF zcl_lnt_string_type ).
                      t381 = t382.
                      IF t382 = abap_true.
                        DATA(t394) = VALUE abap_bool( ).
                        DATA(t395) = VALUE abap_bool( ).
                        DATA t396 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t396.
                        DATA t397 TYPE REF TO zcl_lnt_istructure_component.
                        CLEAR t397.
                        DATA(t399) = t356.
                        t399 = t399 + 1.
                        DATA t400 TYPE REF TO object.
                        CLEAR t400.
                        t329->load( ).
                        CLEAR t400.
                        READ TABLE t329->items INDEX t399 INTO t400.
                        DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t401.
                        CLEAR t397.
                        IF t400 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t401 ?= t400.
                          CLEAR t397.
                          IF t401 IS BOUND.
                            IF t401->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                              TRY.
                                  t397 ?= t401->oval.
                                CATCH cx_sy_move_cast_error.
                              ENDTRY.
                            ENDIF.
                            IF t397 IS NOT BOUND.
                              IF t401->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t401->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t401->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t401->tag <>
                              zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                                DATA t402 TYPE REF TO zlnt_view_storage_74017ca272ac.
                                CLEAR t402.
                                IF t401->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                                ENDIF.
                                TRY.
                                    t402 ?= t401->oval.
                                  CATCH cx_sy_move_cast_error.
                                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                                ENDTRY.
                                IF t402->structural( ) <> abap_true.
                                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                                ENDIF.
                              ENDIF.
                              DATA(t403) = VALUE string( ).
                              DATA t404 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t404.
                              DATA t405 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              CLEAR t405.
                              DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t406.
                              t397 = NEW zcl_lnt_istructure_component( view_source = t401 i_name = t403 i_type_9913 = t404 i_as_include = t405 i_suffix = t406 ).
                            ENDIF.
                          ENDIF.
                        ELSE.
                          t397 ?= t400.
                        ENDIF.
                        t396 = t397->zlnt_view_read_sr_455340cd1e80( ).
                        t395 = xsdbool( t396 IS BOUND AND t396 IS INSTANCE OF zcl_lnt_string_type ).
                        t394 = xsdbool( t395 = abap_false ).
                        t381 = t394.
                      ENDIF.
                      IF t381 = abap_true.
                        result = abap_false.
                        RETURN.
                      ELSE.
                        DATA(t408) = VALUE abap_bool( ).
                        DATA(t409) = VALUE abap_bool( ).
                        DATA(t410) = VALUE abap_bool( ).
                        DATA t411 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t411.
                        DATA t412 TYPE REF TO zcl_lnt_istructure_component.
                        CLEAR t412.
                        DATA(t414) = t356.
                        t414 = t414 + 1.
                        DATA t415 TYPE REF TO object.
                        CLEAR t415.
                        t336->load( ).
                        CLEAR t415.
                        READ TABLE t336->items INDEX t414 INTO t415.
                        DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        CLEAR t416.
                        CLEAR t412.
                        IF t415 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                          t416 ?= t415.
                          CLEAR t412.
                          IF t416 IS BOUND.
                            IF t416->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                              TRY.
                                  t412 ?= t416->oval.
                                CATCH cx_sy_move_cast_error.
                              ENDTRY.
                            ENDIF.
                            IF t412 IS NOT BOUND.
                              IF t416->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t416->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t416->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t416->tag <>
                              zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                                DATA t417 TYPE REF TO zlnt_view_storage_74017ca272ac.
                                CLEAR t417.
                                IF t416->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                                ENDIF.
                                TRY.
                                    t417 ?= t416->oval.
                                  CATCH cx_sy_move_cast_error.
                                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                                ENDTRY.
                                IF t417->structural( ) <> abap_true.
                                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                                ENDIF.
                              ENDIF.
                              DATA(t418) = VALUE string( ).
                              DATA t419 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t419.
                              DATA t420 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                              CLEAR t420.
                              DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                              CLEAR t421.
                              t412 = NEW zcl_lnt_istructure_component( view_source = t416 i_name = t418 i_type_9913 = t419 i_as_include = t420 i_suffix = t421 ).
                            ENDIF.
                          ENDIF.
                        ELSE.
                          t412 ?= t415.
                        ENDIF.
                        t411 = t412->zlnt_view_read_sr_455340cd1e80( ).
                        t410 = xsdbool( t411 IS BOUND AND t411 IS INSTANCE OF zcl_lnt_string_type ).
                        t409 = xsdbool( t410 = abap_false ).
                        t408 = t409.
                        IF t409 = abap_true.
                          DATA(t422) = VALUE abap_bool( ).
                          DATA t423 TYPE REF TO zcl_lnt_abstract_type.
                          CLEAR t423.
                          DATA t424 TYPE REF TO zcl_lnt_istructure_component.
                          CLEAR t424.
                          DATA(t426) = t356.
                          t426 = t426 + 1.
                          DATA t427 TYPE REF TO object.
                          CLEAR t427.
                          t329->load( ).
                          CLEAR t427.
                          READ TABLE t329->items INDEX t426 INTO t427.
                          DATA t428 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                          CLEAR t428.
                          CLEAR t424.
                          IF t427 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                            t428 ?= t427.
                            CLEAR t424.
                            IF t428 IS BOUND.
                              IF t428->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                                TRY.
                                    t424 ?= t428->oval.
                                  CATCH cx_sy_move_cast_error.
                                ENDTRY.
                              ENDIF.
                              IF t424 IS NOT BOUND.
                                IF t428->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object AND t428->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_string AND t428->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_number AND t428->tag <>
                                zlnt_runtime_dyna_a429568d5be8=>tag_boolean.
                                  DATA t429 TYPE REF TO zlnt_view_storage_74017ca272ac.
                                  CLEAR t429.
                                  IF t428->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                                  ENDIF.
                                  TRY.
                                      t429 ?= t428->oval.
                                    CATCH cx_sy_move_cast_error.
                                      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                                  ENDTRY.
                                  IF t429->structural( ) <> abap_true.
                                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                                  ENDIF.
                                ENDIF.
                                DATA(t430) = VALUE string( ).
                                DATA t431 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t431.
                                DATA t432 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                                CLEAR t432.
                                DATA t433 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                                CLEAR t433.
                                t424 = NEW zcl_lnt_istructure_component( view_source = t428 i_name = t430 i_type_9913 = t431 i_as_include = t432 i_suffix = t433 ).
                              ENDIF.
                            ENDIF.
                          ELSE.
                            t424 ?= t427.
                          ENDIF.
                          t423 = t424->zlnt_view_read_sr_455340cd1e80( ).
                          t422 = xsdbool( t423 IS BOUND AND t423 IS INSTANCE OF zcl_lnt_string_type ).
                          t408 = t422.
                        ENDIF.
                        IF t408 = abap_true.
                          result = abap_false.
                          RETURN.
                        ENDIF.
                      ENDIF.
                      DATA(t435) = VALUE i( ).
                      DATA(t437) = 1.
                      t435 = t356 + t437.
                      t356 = t435.
                    ENDDO.
                    result = abap_true.
                    RETURN.
                  ELSE.
                    DATA(t439) = VALUE abap_bool( ).
                    DATA(t440) = VALUE abap_bool( ).
                    DATA t441 TYPE REF TO zcl_lnt_structure_type.
                    t441 ?= t2.
                    t440 = t441->contains_void( ).
                    t439 = xsdbool( t440 = abap_true ).
                    IF t439 = abap_true.
                      result = abap_true.
                      RETURN.
                    ELSE.
                      DATA(t445) = VALUE abap_bool( ).
                      DATA(t446) = VALUE abap_bool( ).
                      t446 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ).
                      t445 = t446.
                      IF t446 = abap_true.
                        DATA(t448) = VALUE abap_bool( ).
                        DATA t449 TYPE REF TO zcl_lnt_structure_type.
                        t449 ?= t2.
                        t448 = me->structure_contains_string( i_structure = t449 ).
                        t445 = t448.
                      ENDIF.
                      IF t445 = abap_true.
                        result = abap_false.
                        RETURN.
                      ELSE.
                        DATA(t452) = VALUE abap_bool( ).
                        t452 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_integer_type ).
                        IF t452 = abap_true.
                          result = abap_false.
                          RETURN.
                        ELSE.
                          DATA(t455) = VALUE abap_bool( ).
                          DATA(t456) = VALUE abap_bool( ).
                          DATA t457 TYPE REF TO zcl_lnt_structure_type.
                          t457 ?= t2.
                          t456 = me->is_char_like( i_type_9913 = t457 ).
                          t455 = t456.
                          IF t456 = abap_true.
                            DATA(t459) = VALUE abap_bool( ).
                            DATA t460 TYPE REF TO zcl_lnt_abstract_type.
                            t460 = t1.
                            t459 = me->is_char_like( i_type_9913 = t460 ).
                            t455 = t459.
                          ENDIF.
                          IF t455 = abap_true.
                            result = abap_true.
                            RETURN.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
              result = abap_false.
              RETURN.
            ELSE.
              DATA(t467) = VALUE abap_bool( ).
              DATA(t468) = VALUE abap_bool( ).
              DATA(t469) = VALUE abap_bool( ).
              t469 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_integer_type ).
              t468 = t469.
              IF t469 = abap_false.
                DATA(t471) = VALUE abap_bool( ).
                t471 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_character_type ).
                t468 = t471.
              ENDIF.
              t467 = t468.
              IF t468 = abap_false.
                DATA(t473) = VALUE abap_bool( ).
                t473 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
                t467 = t473.
              ENDIF.
              IF t467 = abap_true.
                DATA(t475) = VALUE abap_bool( ).
                DATA(t476) = VALUE abap_bool( ).
                t476 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t475 = t476.
                IF t476 = abap_true.
                  DATA(t478) = VALUE abap_bool( ).
                  DATA(t479) = VALUE abap_bool( ).
                  DATA t481 TYPE REF TO zcl_lnt_ty_table_type.
                  t481 ?= t1.
                  DATA(t483) = VALUE abap_bool( ).
                  DATA t484 TYPE REF TO zcl_lnt_itable_options.
                  t484 = t481->options.
                  t483 = t484->zlnt_view_read_sr_ec4602663c93( ).
                  t479 = t483.
                  t478 = xsdbool( t479 = abap_false ).
                  t475 = t478.
                ENDIF.
                IF t475 = abap_true.
                  result = abap_false.
                  RETURN.
                ELSE.
                  DATA(t488) = VALUE abap_bool( ).
                  DATA(t489) = VALUE abap_bool( ).
                  DATA(t490) = VALUE abap_bool( ).
                  DATA(t491) = VALUE abap_bool( ).
                  t491 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_string_type ).
                  t490 = t491.
                  IF t491 = abap_false.
                    DATA(t493) = VALUE abap_bool( ).
                    t493 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_character_type ).
                    t490 = t493.
                  ENDIF.
                  t489 = t490.
                  IF t490 = abap_true.
                    DATA(t495) = VALUE abap_bool( ).
                    t495 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
                    t489 = t495.
                  ENDIF.
                  t488 = t489.
                  IF t489 = abap_true.
                    DATA(t497) = VALUE abap_bool( ).
                    DATA t498 TYPE REF TO zcl_lnt_structure_type.
                    t498 ?= t1.
                    t497 = me->is_char_like( i_type_9913 = t498 ).
                    t488 = t497.
                  ENDIF.
                  IF t488 = abap_true.
                    DATA(t500) = VALUE abap_bool( ).
                    DATA(t501) = VALUE abap_bool( ).
                    DATA t502 TYPE REF TO zcl_lnt_structure_type.
                    t502 ?= t1.
                    t501 = me->structure_contains_string( i_structure = t502 ).
                    t500 = xsdbool( t501 = abap_true ).
                    IF t500 = abap_true.
                      result = abap_false.
                      RETURN.
                    ENDIF.
                    result = abap_true.
                    RETURN.
                  ELSE.
                    DATA(t507) = VALUE abap_bool( ).
                    t507 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_structure_type ).
                    IF t507 = abap_true.
                      DATA(t509) = VALUE abap_bool( ).
                      DATA t510 TYPE REF TO zcl_lnt_structure_type.
                      t510 ?= t1.
                      t509 = me->is_char_like_strict( i_type_9913 = t510 ).
                      result = t509.
                      RETURN.
                    ELSE.
                      DATA(t512) = VALUE abap_bool( ).
                      DATA(t513) = VALUE abap_bool( ).
                      DATA(t514) = VALUE abap_bool( ).
                      t514 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_reference ).
                      t513 = t514.
                      IF t514 = abap_false.
                        DATA(t516) = VALUE abap_bool( ).
                        t516 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_object_reference_type ).
                        t513 = t516.
                      ENDIF.
                      t512 = t513.
                      IF t513 = abap_false.
                        DATA(t518) = VALUE abap_bool( ).
                        t518 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
                        t512 = t518.
                      ENDIF.
                      IF t512 = abap_true.
                        result = abap_false.
                        RETURN.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
                result = abap_true.
                RETURN.
              ELSE.
                DATA(t522) = VALUE abap_bool( ).
                t522 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_simple_type ).
                IF t522 = abap_true.
                  DATA(t524) = VALUE abap_bool( ).
                  DATA(t525) = VALUE abap_bool( ).
                  t525 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_object_reference_type ).
                  t524 = t525.
                  IF t525 = abap_false.
                    DATA(t527) = VALUE abap_bool( ).
                    t527 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ty_table_type ).
                    t524 = t527.
                  ENDIF.
                  IF t524 = abap_true.
                    result = abap_false.
                    RETURN.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = abap_true.

  ENDMETHOD.

  METHOD is_utc_long_assignable.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    t5 = t1.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    t10 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_void_type ).
    t9 = t10.
    IF t10 = abap_false.
      DATA t12 TYPE abap_bool.
      t12 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_any_type ).
      t9 = t12.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t14 TYPE abap_bool.
      t14 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_data_type ).
      t8 = t14.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t16 TYPE abap_bool.
      t16 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_unknown_type ).
      t7 = t16.
    ENDIF.
    t4 = t7.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      t19 = t2.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      t24 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_void_type ).
      t23 = t24.
      IF t24 = abap_false.
        DATA t26 TYPE abap_bool.
        t26 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_any_type ).
        t23 = t26.
      ENDIF.
      t22 = t23.
      IF t23 = abap_false.
        DATA t28 TYPE abap_bool.
        t28 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_data_type ).
        t22 = t28.
      ENDIF.
      t21 = t22.
      IF t22 = abap_false.
        DATA t30 TYPE abap_bool.
        t30 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_unknown_type ).
        t21 = t30.
      ENDIF.
      t18 = t21.
      t3 = t18.
    ENDIF.
    IF t3 = abap_true.
      result = abap_true.
      RETURN.
    ELSE.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      t34 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_utc_long_type ).
      t33 = t34.
      IF t34 = abap_true.
        DATA t36 TYPE abap_bool.
        t36 = xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_utc_long_type ).
        t33 = t36.
      ENDIF.
      IF t33 = abap_true.
        result = abap_true.
        RETURN.
      ELSE.
        DATA t39 TYPE abap_bool.
        t39 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_utc_long_type ).
        IF t39 = abap_true.
          DATA(t41) = VALUE abap_bool( ).
          DATA t42 TYPE REF TO zcl_lnt_abstract_type.
          t42 = t2.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = VALUE abap_bool( ).
          DATA(t46) = VALUE abap_bool( ).
          DATA(t47) = VALUE abap_bool( ).
          DATA t48 TYPE abap_bool.
          DATA t49 TYPE abap_bool.
          t49 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_character_type ).
          t48 = t49.
          IF t49 = abap_false.
            DATA t51 TYPE abap_bool.
            t51 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_string_type ).
            t48 = t51.
          ENDIF.
          t47 = t48.
          IF t48 = abap_false.
            DATA t53 TYPE abap_bool.
            t53 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_c_like_type ).
            t47 = t53.
          ENDIF.
          t46 = t47.
          IF t47 = abap_false.
            DATA t55 TYPE abap_bool.
            t55 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_c_sequence_type ).
            t46 = t55.
          ENDIF.
          t45 = t46.
          IF t46 = abap_false.
            DATA t57 TYPE abap_bool.
            t57 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_c_generic_type ).
            t45 = t57.
          ENDIF.
          t44 = t45.
          IF t45 = abap_false.
            DATA t59 TYPE abap_bool.
            t59 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_simple_type ).
            t44 = t59.
          ENDIF.
          t41 = t44.
          result = t41.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t61) = VALUE abap_bool( ).
    DATA t62 TYPE REF TO zcl_lnt_abstract_type.
    t62 = t1.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE abap_bool.
    DATA t69 TYPE abap_bool.
    t69 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_character_type ).
    t68 = t69.
    IF t69 = abap_false.
      DATA t71 TYPE abap_bool.
      t71 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_string_type ).
      t68 = t71.
    ENDIF.
    t67 = t68.
    IF t68 = abap_false.
      DATA t73 TYPE abap_bool.
      t73 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_c_like_type ).
      t67 = t73.
    ENDIF.
    t66 = t67.
    IF t67 = abap_false.
      DATA t75 TYPE abap_bool.
      t75 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_c_sequence_type ).
      t66 = t75.
    ENDIF.
    t65 = t66.
    IF t66 = abap_false.
      DATA t77 TYPE abap_bool.
      t77 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_c_generic_type ).
      t65 = t77.
    ENDIF.
    t64 = t65.
    IF t65 = abap_false.
      DATA t79 TYPE abap_bool.
      t79 = xsdbool( t62 IS BOUND AND t62 IS INSTANCE OF zcl_lnt_simple_type ).
      t64 = t79.
    ENDIF.
    t61 = t64.
    result = t61.

  ENDMETHOD.

  METHOD is_generic_or_void.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    t5 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_void_type ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t7 TYPE abap_bool.
      t7 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_any_type ).
      t4 = t7.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t9 TYPE abap_bool.
      t9 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_data_type ).
      t3 = t9.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t11 TYPE abap_bool.
      t11 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_unknown_type ).
      t2 = t11.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_text_like.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE abap_bool.
    DATA t7 TYPE abap_bool.
    t7 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_character_type ).
    t6 = t7.
    IF t7 = abap_false.
      DATA t9 TYPE abap_bool.
      t9 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_string_type ).
      t6 = t9.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t11 TYPE abap_bool.
      t11 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_like_type ).
      t5 = t11.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t13 TYPE abap_bool.
      t13 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_sequence_type ).
      t4 = t13.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t15 TYPE abap_bool.
      t15 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_c_generic_type ).
      t3 = t15.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t17 TYPE abap_bool.
      t17 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_simple_type ).
      t2 = t17.
    ENDIF.
    result = t2.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d781_48710bb3ffae.
  ENDMETHOD.
ENDCLASS.
