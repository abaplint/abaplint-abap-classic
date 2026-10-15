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
    DATA(t1) = i_scope.
    DATA(t2) = t1.
    me->scope = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `scope`.
  ENDMETHOD.

  METHOD is_char_like_strict.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_false.
      result = t9.
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t1.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t10 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t12.
        DATA t13 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t13.
        DATA t14 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t14.
        DATA(t15) = t1.
        t14 ?= t15.
        t13 = t14.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t16.
        DATA(t17) = t13.
        t16 = t17->components.
        t12 = t16.
        DATA t18 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t18.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
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
          DATA(t30) = abap_true.
          IF t30 = abap_true.
            DATA t31 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t31.
            DATA(t32) = t18.
            t31 = t32->zlnt_view_read_sr_455340cd1e80( ).
            t29 = t31.
          ELSE.
            DATA t33 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t33.
            t29 = t33.
          ENDIF.
          t28 = me->is_char_like_strict( i_type_9913 = t29 ).
          DATA(t34) = abap_false.
          t27 = xsdbool( t28 = t34 ).
          IF t27 = abap_true.
            DATA(t35) = abap_false.
            result = t35.
            RETURN.
          ENDIF.
        ENDDO.
        DATA(t36) = abap_true.
        result = t36.
        RETURN.
      ELSE.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t1.
        t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t37 = t38.
        IF t38 = abap_true.
          DATA(t40) = VALUE abap_bool( ).
          DATA t41 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t41.
          DATA t42 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t42.
          DATA(t43) = t1.
          t42 ?= t43.
          t41 = t42.
          DATA(t44) = VALUE abap_bool( ).
          DATA t45 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t45.
          DATA(t46) = t41.
          t45 = t46->options.
          t44 = t45->zlnt_view_read_sr_ec4602663c93( ).
          t40 = t44.
          t37 = t40.
        ENDIF.
        IF t37 = abap_true.
          DATA(t47) = VALUE abap_bool( ).
          DATA t48 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t48.
          DATA(t49) = abap_true.
          IF t49 = abap_true.
            DATA t50 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t50.
            DATA t51 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t51.
            DATA t52 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t52.
            DATA(t53) = t1.
            t52 ?= t53.
            t51 = t52.
            DATA t54 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t54.
            DATA(t55) = t51.
            t54 = t55->row_type.
            t50 = t54.
            t48 = t50.
          ELSE.
            DATA t56 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t56.
            t48 = t56.
          ENDIF.
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
          DATA(t71) = t1.
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_string_type ).
          t69 = t70.
          IF t70 = abap_false.
            DATA(t72) = VALUE abap_bool( ).
            DATA(t73) = t1.
            t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_any_type ).
            t69 = t72.
          ENDIF.
          t68 = t69.
          IF t69 = abap_false.
            DATA(t74) = VALUE abap_bool( ).
            DATA(t75) = t1.
            t74 = xsdbool( t75 IS BOUND AND t75 IS INSTANCE OF zcl_lnt_data_type ).
            t68 = t74.
          ENDIF.
          t67 = t68.
          IF t68 = abap_false.
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = t1.
            t76 = xsdbool( t77 IS BOUND AND t77 IS INSTANCE OF zcl_lnt_character_type ).
            t67 = t76.
          ENDIF.
          t66 = t67.
          IF t67 = abap_false.
            DATA(t78) = VALUE abap_bool( ).
            DATA(t79) = t1.
            t78 = xsdbool( t79 IS BOUND AND t79 IS INSTANCE OF zcl_lnt_simple_type ).
            t66 = t78.
          ENDIF.
          t65 = t66.
          IF t66 = abap_false.
            DATA(t80) = VALUE abap_bool( ).
            DATA(t81) = t1.
            t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_c_generic_type ).
            t65 = t80.
          ENDIF.
          t64 = t65.
          IF t65 = abap_false.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = t1.
            t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_c_like_type ).
            t64 = t82.
          ENDIF.
          t63 = t64.
          IF t64 = abap_false.
            DATA(t84) = VALUE abap_bool( ).
            DATA(t85) = t1.
            t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_date_type ).
            t63 = t84.
          ENDIF.
          t62 = t63.
          IF t63 = abap_false.
            DATA(t86) = VALUE abap_bool( ).
            DATA(t87) = t1.
            t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_c_sequence_type ).
            t62 = t86.
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            DATA(t88) = VALUE abap_bool( ).
            DATA(t89) = t1.
            t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_numeric_generic_type ).
            t61 = t88.
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            DATA(t90) = VALUE abap_bool( ).
            DATA(t91) = t1.
            t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_numeric_type ).
            t60 = t90.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA(t92) = VALUE abap_bool( ).
            DATA(t93) = t1.
            t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_time_type ).
            t59 = t92.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA(t94) = VALUE abap_bool( ).
            DATA(t95) = t1.
            t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_unknown_type ).
            t58 = t94.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA(t96) = VALUE abap_bool( ).
            DATA(t97) = t1.
            t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_void_type ).
            t57 = t96.
          ENDIF.
          IF t57 = abap_true.
            DATA(t98) = abap_true.
            result = t98.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t99) = abap_false.
    result = t99.

  ENDMETHOD.

  METHOD is_char_like_field.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_structure_type ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t5 TYPE abap_bool.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t1.
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t5 = t6.
      IF t6 = abap_true.
        DATA t8 TYPE abap_bool.
        DATA t9 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t10 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t11) = t1.
        t10 ?= t11.
        t9 = t10.
        DATA t12 TYPE abap_bool.
        DATA t13 TYPE REF TO zcl_lnt_itable_options.
        DATA(t14) = t9.
        t13 = t14->options.
        t12 = t13->zlnt_view_read_sr_ec4602663c93( ).
        t8 = t12.
        t5 = t8.
      ENDIF.
      t2 = t5.
    ENDIF.
    IF t2 = abap_true.
      DATA(t15) = VALUE abap_bool( ).
      DATA t16 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t16.
      DATA(t17) = abap_true.
      IF t17 = abap_true.
        DATA t18 TYPE REF TO zcl_lnt_abstract_type.
        DATA t19 TYPE REF TO zif_lnt_union_2724f734.
        DATA t20 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t21) = t1.
        t20 = t21.
        t19 ?= t20.
        t18 ?= t19.
        t16 = t18.
      ELSE.
        DATA t22 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t22.
        t16 = t22.
      ENDIF.
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
    DATA(t32) = t1.
    t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_character_type ).
    t30 = t31.
    IF t31 = abap_false.
      DATA t33 TYPE abap_bool.
      DATA(t34) = t1.
      t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_numeric_type ).
      t30 = t33.
    ENDIF.
    t29 = t30.
    IF t30 = abap_false.
      DATA t35 TYPE abap_bool.
      DATA(t36) = t1.
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_date_type ).
      t29 = t35.
    ENDIF.
    t28 = t29.
    IF t29 = abap_false.
      DATA t37 TYPE abap_bool.
      DATA(t38) = t1.
      t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_time_type ).
      t28 = t37.
    ENDIF.
    t27 = t28.
    IF t28 = abap_false.
      DATA t39 TYPE abap_bool.
      DATA(t40) = t1.
      t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_c_generic_type ).
      t27 = t39.
    ENDIF.
    t26 = t27.
    IF t27 = abap_false.
      DATA t41 TYPE abap_bool.
      DATA(t42) = t1.
      t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_c_like_type ).
      t26 = t41.
    ENDIF.
    t25 = t26.
    IF t26 = abap_false.
      DATA t43 TYPE abap_bool.
      DATA(t44) = t1.
      t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_any_type ).
      t25 = t43.
    ENDIF.
    t24 = t25.
    IF t25 = abap_false.
      DATA t45 TYPE abap_bool.
      DATA(t46) = t1.
      t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_unknown_type ).
      t24 = t45.
    ENDIF.
    t23 = t24.
    IF t24 = abap_false.
      DATA t47 TYPE abap_bool.
      DATA(t48) = t1.
      t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_void_type ).
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
    DATA t7 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    t5 = t6.
    IF t6 = abap_false.
      DATA t13 TYPE abap_bool.
      DATA(t14) = t1.
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_string_type ).
      t5 = t13.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t1.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_c_like_type ).
      t4 = t15.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t1.
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_c_sequence_type ).
      t3 = t17.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t19) = VALUE abap_bool( ).
      DATA t20 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t21.
      DATA(t22) = abap_true.
      IF t22 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t24) = t1.
        t23 = t24.
        t21 = t23.
      ELSE.
        DATA t25 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t25.
        t21 = t25.
      ENDIF.
      t20 = t21.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE abap_bool.
      DATA t28 TYPE abap_bool.
      DATA(t29) = t20.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_structure_type ).
      t27 = t28.
      IF t28 = abap_false.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA(t32) = t20.
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t30 = t31.
        IF t31 = abap_true.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t35 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t36) = t20.
          t35 ?= t36.
          t34 = t35.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE REF TO zcl_lnt_itable_options.
          DATA(t39) = t34.
          t38 = t39->options.
          t37 = t38->zlnt_view_read_sr_ec4602663c93( ).
          t33 = t37.
          t30 = t33.
        ENDIF.
        t27 = t30.
      ENDIF.
      IF t27 = abap_true.
        DATA(t40) = VALUE abap_bool( ).
        DATA t41 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t41.
        DATA(t42) = abap_true.
        IF t42 = abap_true.
          DATA t43 TYPE REF TO zcl_lnt_abstract_type.
          DATA t44 TYPE REF TO zif_lnt_union_2724f734.
          DATA t45 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t46) = t20.
          t45 = t46.
          t44 ?= t45.
          t43 ?= t44.
          t41 = t43.
        ELSE.
          DATA t47 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t47.
          t41 = t47.
        ENDIF.
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
        DATA(t57) = t20.
        t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_character_type ).
        t55 = t56.
        IF t56 = abap_false.
          DATA t58 TYPE abap_bool.
          DATA(t59) = t20.
          t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_numeric_type ).
          t55 = t58.
        ENDIF.
        t54 = t55.
        IF t55 = abap_false.
          DATA t60 TYPE abap_bool.
          DATA(t61) = t20.
          t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_date_type ).
          t54 = t60.
        ENDIF.
        t53 = t54.
        IF t54 = abap_false.
          DATA t62 TYPE abap_bool.
          DATA(t63) = t20.
          t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_time_type ).
          t53 = t62.
        ENDIF.
        t52 = t53.
        IF t53 = abap_false.
          DATA t64 TYPE abap_bool.
          DATA(t65) = t20.
          t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_c_generic_type ).
          t52 = t64.
        ENDIF.
        t51 = t52.
        IF t52 = abap_false.
          DATA t66 TYPE abap_bool.
          DATA(t67) = t20.
          t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_c_like_type ).
          t51 = t66.
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          DATA t68 TYPE abap_bool.
          DATA(t69) = t20.
          t68 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_any_type ).
          t50 = t68.
        ENDIF.
        t49 = t50.
        IF t50 = abap_false.
          DATA t70 TYPE abap_bool.
          DATA(t71) = t20.
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_unknown_type ).
          t49 = t70.
        ENDIF.
        t48 = t49.
        IF t49 = abap_false.
          DATA t72 TYPE abap_bool.
          DATA(t73) = t20.
          t72 = xsdbool( t73 IS BOUND AND t73 IS INSTANCE OF zcl_lnt_void_type ).
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
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_false.
      result = t9.
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = VALUE abap_bool( ).
      DATA(t12) = t1.
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t10 = t11.
      IF t11 = abap_true.
        DATA(t13) = VALUE abap_bool( ).
        DATA t14 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t14.
        DATA t15 TYPE REF TO zcl_lnt_ty_table_type.
        CLEAR t15.
        DATA(t16) = t1.
        t15 ?= t16.
        t14 = t15.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE REF TO zcl_lnt_itable_options.
        CLEAR t18.
        DATA(t19) = t14.
        t18 = t19->options.
        t17 = t18->zlnt_view_read_sr_ec4602663c93( ).
        t13 = t17.
        t10 = t13.
      ENDIF.
      IF t10 = abap_true.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t21.
        DATA(t22) = abap_true.
        IF t22 = abap_true.
          DATA t23 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t23.
          DATA t24 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t24.
          DATA t25 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t25.
          DATA(t26) = t1.
          t25 ?= t26.
          t24 = t25.
          DATA t27 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t27.
          DATA(t28) = t24.
          t27 = t28->row_type.
          t23 = t27.
          t21 = t23.
        ELSE.
          DATA t29 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t29.
          t21 = t29.
        ENDIF.
        t20 = me->is_char_like( i_type_9913 = t21 ).
        result = t20.
        RETURN.
      ELSE.
        DATA(t30) = VALUE abap_bool( ).
        DATA(t31) = t1.
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_structure_type ).
        IF t30 = abap_true.
          DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t32.
          DATA t33 TYPE REF TO zcl_lnt_structure_type.
          CLEAR t33.
          DATA t34 TYPE REF TO zcl_lnt_structure_type.
          CLEAR t34.
          DATA(t35) = t1.
          t34 ?= t35.
          t33 = t34.
          DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t36.
          DATA(t37) = t33.
          t36 = t37->components.
          t32 = t36.
          DATA t38 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t38.
          DATA t39 TYPE REF TO object.
          CLEAR t39.
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
            DATA(t50) = abap_true.
            IF t50 = abap_true.
              DATA t51 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t51.
              DATA(t52) = t38.
              t51 = t52->zlnt_view_read_sr_455340cd1e80( ).
              t49 = t51.
            ELSE.
              DATA t53 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t53.
              t49 = t53.
            ENDIF.
            t48 = me->is_char_like( i_type_9913 = t49 ).
            DATA(t54) = abap_false.
            t47 = xsdbool( t48 = t54 ).
            IF t47 = abap_true.
              DATA(t55) = abap_false.
              result = t55.
              RETURN.
            ENDIF.
          ENDDO.
          DATA(t56) = abap_true.
          result = t56.
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
          DATA(t81) = t1.
          t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_string_type ).
          t79 = t80.
          IF t80 = abap_false.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = t1.
            t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_character_type ).
            t79 = t82.
          ENDIF.
          t78 = t79.
          IF t79 = abap_false.
            DATA(t84) = VALUE abap_bool( ).
            DATA(t85) = t1.
            t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_void_type ).
            t78 = t84.
          ENDIF.
          t77 = t78.
          IF t78 = abap_false.
            DATA(t86) = VALUE abap_bool( ).
            DATA(t87) = t1.
            t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_any_type ).
            t77 = t86.
          ENDIF.
          t76 = t77.
          IF t77 = abap_false.
            DATA(t88) = VALUE abap_bool( ).
            DATA(t89) = t1.
            t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_unknown_type ).
            t76 = t88.
          ENDIF.
          t75 = t76.
          IF t76 = abap_false.
            DATA(t90) = VALUE abap_bool( ).
            DATA(t91) = t1.
            t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_numeric_type ).
            t75 = t90.
          ENDIF.
          t74 = t75.
          IF t75 = abap_false.
            DATA(t92) = VALUE abap_bool( ).
            DATA(t93) = t1.
            t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_integer_type ).
            t74 = t92.
          ENDIF.
          t73 = t74.
          IF t74 = abap_false.
            DATA(t94) = VALUE abap_bool( ).
            DATA(t95) = t1.
            t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_integer8_type ).
            t73 = t94.
          ENDIF.
          t72 = t73.
          IF t73 = abap_false.
            DATA(t96) = VALUE abap_bool( ).
            DATA(t97) = t1.
            t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_simple_type ).
            t72 = t96.
          ENDIF.
          t71 = t72.
          IF t72 = abap_false.
            DATA(t98) = VALUE abap_bool( ).
            DATA(t99) = t1.
            t98 = xsdbool( t99 IS BOUND AND t99 IS INSTANCE OF zcl_lnt_float_type ).
            t71 = t98.
          ENDIF.
          t70 = t71.
          IF t71 = abap_false.
            DATA(t100) = VALUE abap_bool( ).
            DATA(t101) = t1.
            t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_floating_point_type ).
            t70 = t100.
          ENDIF.
          t69 = t70.
          IF t70 = abap_false.
            DATA(t102) = VALUE abap_bool( ).
            DATA(t103) = t1.
            t102 = xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_dec_float_type ).
            t69 = t102.
          ENDIF.
          t68 = t69.
          IF t69 = abap_false.
            DATA(t104) = VALUE abap_bool( ).
            DATA(t105) = t1.
            t104 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_dec_float16_type ).
            t68 = t104.
          ENDIF.
          t67 = t68.
          IF t68 = abap_false.
            DATA(t106) = VALUE abap_bool( ).
            DATA(t107) = t1.
            t106 = xsdbool( t107 IS BOUND AND t107 IS INSTANCE OF zcl_lnt_dec_float34_type ).
            t67 = t106.
          ENDIF.
          t66 = t67.
          IF t67 = abap_false.
            DATA(t108) = VALUE abap_bool( ).
            DATA(t109) = t1.
            t108 = xsdbool( t109 IS BOUND AND t109 IS INSTANCE OF zcl_lnt_numeric_generic_type ).
            t66 = t108.
          ENDIF.
          t65 = t66.
          IF t66 = abap_false.
            DATA(t110) = VALUE abap_bool( ).
            DATA(t111) = t1.
            t110 = xsdbool( t111 IS BOUND AND t111 IS INSTANCE OF zcl_lnt_c_sequence_type ).
            t65 = t110.
          ENDIF.
          t64 = t65.
          IF t65 = abap_false.
            DATA(t112) = VALUE abap_bool( ).
            DATA(t113) = t1.
            t112 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_c_generic_type ).
            t64 = t112.
          ENDIF.
          t63 = t64.
          IF t64 = abap_false.
            DATA(t114) = VALUE abap_bool( ).
            DATA(t115) = t1.
            t114 = xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_date_type ).
            t63 = t114.
          ENDIF.
          t62 = t63.
          IF t63 = abap_false.
            DATA(t116) = VALUE abap_bool( ).
            DATA(t117) = t1.
            t116 = xsdbool( t117 IS BOUND AND t117 IS INSTANCE OF zcl_lnt_data_type ).
            t62 = t116.
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            DATA(t118) = VALUE abap_bool( ).
            DATA(t119) = t1.
            t118 = xsdbool( t119 IS BOUND AND t119 IS INSTANCE OF zcl_lnt_c_like_type ).
            t61 = t118.
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            DATA(t120) = VALUE abap_bool( ).
            DATA(t121) = t1.
            t120 = xsdbool( t121 IS BOUND AND t121 IS INSTANCE OF zcl_lnt_packed_type ).
            t60 = t120.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA(t122) = VALUE abap_bool( ).
            DATA(t123) = t1.
            t122 = xsdbool( t123 IS BOUND AND t123 IS INSTANCE OF zcl_lnt_p_generic_type ).
            t59 = t122.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA(t124) = VALUE abap_bool( ).
            DATA(t125) = t1.
            t124 = xsdbool( t125 IS BOUND AND t125 IS INSTANCE OF zcl_lnt_time_type ).
            t58 = t124.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA(t126) = VALUE abap_bool( ).
            DATA(t127) = t1.
            t126 = xsdbool( t127 IS BOUND AND t127 IS INSTANCE OF zcl_lnt_enum_type ).
            t57 = t126.
          ENDIF.
          IF t57 = abap_true.
            DATA(t128) = abap_true.
            result = t128.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t129) = abap_false.
    result = t129.

  ENDMETHOD.

  METHOD is_hex_like.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_false.
      result = t9.
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t1.
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t10 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t12.
        DATA t13 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t13.
        DATA t14 TYPE REF TO zcl_lnt_structure_type.
        CLEAR t14.
        DATA(t15) = t1.
        t14 ?= t15.
        t13 = t14.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t16.
        DATA(t17) = t13.
        t16 = t17->components.
        t12 = t16.
        DATA t18 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t18.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
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
          DATA(t30) = abap_true.
          IF t30 = abap_true.
            DATA t31 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t31.
            DATA(t32) = t18.
            t31 = t32->zlnt_view_read_sr_455340cd1e80( ).
            t29 = t31.
          ELSE.
            DATA t33 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t33.
            t29 = t33.
          ENDIF.
          t28 = me->is_hex_like( i_type_9913 = t29 ).
          DATA(t34) = abap_false.
          t27 = xsdbool( t28 = t34 ).
          IF t27 = abap_true.
            DATA(t35) = abap_false.
            result = t35.
            RETURN.
          ENDIF.
        ENDDO.
        DATA(t36) = abap_true.
        result = t36.
        RETURN.
      ELSE.
        DATA(t37) = VALUE abap_bool( ).
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t1.
        t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t37 = t38.
        IF t38 = abap_true.
          DATA(t40) = VALUE abap_bool( ).
          DATA t41 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t41.
          DATA t42 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t42.
          DATA(t43) = t1.
          t42 ?= t43.
          t41 = t42.
          DATA(t44) = VALUE abap_bool( ).
          DATA t45 TYPE REF TO zcl_lnt_itable_options.
          CLEAR t45.
          DATA(t46) = t41.
          t45 = t46->options.
          t44 = t45->zlnt_view_read_sr_ec4602663c93( ).
          t40 = t44.
          t37 = t40.
        ENDIF.
        IF t37 = abap_true.
          DATA(t47) = VALUE abap_bool( ).
          DATA t48 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t48.
          DATA(t49) = abap_true.
          IF t49 = abap_true.
            DATA t50 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t50.
            DATA t51 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t51.
            DATA t52 TYPE REF TO zcl_lnt_ty_table_type.
            CLEAR t52.
            DATA(t53) = t1.
            t52 ?= t53.
            t51 = t52.
            DATA t54 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t54.
            DATA(t55) = t51.
            t54 = t55->row_type.
            t50 = t54.
            t48 = t50.
          ELSE.
            DATA t56 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t56.
            t48 = t56.
          ENDIF.
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
          DATA(t64) = t1.
          t63 = xsdbool( t64 IS BOUND AND t64 IS INSTANCE OF zcl_lnt_x_string_type ).
          t62 = t63.
          IF t63 = abap_false.
            DATA(t65) = VALUE abap_bool( ).
            DATA(t66) = t1.
            t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_hex_type ).
            t62 = t65.
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            DATA(t67) = VALUE abap_bool( ).
            DATA(t68) = t1.
            t67 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_void_type ).
            t61 = t67.
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            DATA(t69) = VALUE abap_bool( ).
            DATA(t70) = t1.
            t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_x_generic_type ).
            t60 = t69.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA(t71) = VALUE abap_bool( ).
            DATA(t72) = t1.
            t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_x_sequence_type ).
            t59 = t71.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA(t73) = VALUE abap_bool( ).
            DATA(t74) = t1.
            t73 = xsdbool( t74 IS BOUND AND t74 IS INSTANCE OF zcl_lnt_any_type ).
            t58 = t73.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA(t75) = VALUE abap_bool( ).
            DATA(t76) = t1.
            t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_unknown_type ).
            t57 = t75.
          ENDIF.
          IF t57 = abap_true.
            DATA(t77) = abap_true.
            result = t77.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t78) = abap_false.
    result = t78.

  ENDMETHOD.

  METHOD is_oo_assignable.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA t3 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t4 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t5 TYPE REF TO zcl_lnt_object_reference_type.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t8) = t5.
    t7 = t8->identifier.
    t4 = t7.
    t3 = t4.
    DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t11 TYPE REF TO zcl_lnt_object_reference_type.
    DATA(t12) = t2.
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t14) = t11.
    t13 = t14->identifier.
    t10 = t13.
    t9 = t10.
    DATA(t15) = VALUE string( ).
    DATA(t16) = VALUE string( ).
    DATA(t17) = VALUE string( ).
    DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t19) = t9.
    t18 = t19.
    DATA(t20) = VALUE string( ).
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t25) = t18.
    t24 = t25->token.
    t23 = t24.
    DATA t26 TYPE string.
    DATA(t27) = t23.
    t26 = t27->str.
    t22 = t26.
    t21 = t22.
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
      DATA(t37) = t21.
      t36 = t37.
      DATA(t38) = VALUE string( ).
      DATA(t39) = t36.
      DATA(t40) = 1.
      DATA t41 TYPE i.
      DATA(t42) = t36.
      DATA(t43) = strlen( t42 ).
      t41 = t43.
      DATA(t44) = strlen( t39 ).
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
        t38 = t39+t40(t41).
      ENDIF.
      t35 = t38.
      t21 = t35.
    ENDIF.
    DATA(t45) = t21.
    t20 = t45.
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
    DATA t50 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t51) = t3.
    t50 = t51.
    DATA(t52) = VALUE string( ).
    DATA t53 TYPE string.
    DATA t54 TYPE string.
    DATA t55 TYPE REF TO zcl_lnt_abstract_token.
    DATA t56 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t57) = t50.
    t56 = t57->token.
    t55 = t56.
    DATA t58 TYPE string.
    DATA(t59) = t55.
    t58 = t59->str.
    t54 = t58.
    t53 = t54.
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
      DATA(t69) = t53.
      t68 = t69.
      DATA(t70) = VALUE string( ).
      DATA(t71) = t68.
      DATA(t72) = 1.
      DATA t73 TYPE i.
      DATA(t74) = t68.
      DATA(t75) = strlen( t74 ).
      t73 = t75.
      DATA(t76) = strlen( t71 ).
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
        t70 = t71+t72(t73).
      ENDIF.
      t67 = t70.
      t53 = t67.
    ENDIF.
    DATA(t77) = t53.
    t52 = t77.
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
    DATA(t80) = t15.
    DATA(t81) = t47.
    t79 = xsdbool( t80 = t81 ).
    IF t79 = abap_true.
      DATA(t82) = abap_true.
      result = t82.
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
      CLEAR t89.
      DATA t90 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t90.
      DATA t91 TYPE REF TO zcl_lnt_current_scope.
      DATA(t92) = me->scope.
      t91 = t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA(t96) = VALUE string( ).
        DATA t97 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t98) = t3.
        t97 = t98.
        DATA(t99) = VALUE string( ).
        DATA t100 TYPE string.
        DATA t101 TYPE string.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t104) = t97.
        t103 = t104->token.
        t102 = t103.
        DATA t105 TYPE string.
        DATA(t106) = t102.
        t105 = t106->str.
        t101 = t105.
        t100 = t101.
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
          DATA(t116) = t100.
          t115 = t116.
          DATA(t117) = VALUE string( ).
          DATA(t118) = t115.
          DATA(t119) = 1.
          DATA t120 TYPE i.
          DATA(t121) = t115.
          DATA(t122) = strlen( t121 ).
          t120 = t122.
          DATA(t123) = strlen( t118 ).
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
            t117 = t118+t119(t120).
          ENDIF.
          t114 = t117.
          t100 = t114.
        ENDIF.
        DATA(t124) = t100.
        t99 = t124.
        t96 = t99.
        DATA(t125) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t125->has = abap_true.
        t125->value = t96.
        t94 = t125.
      ELSE.
        DATA t126 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t126.
        t94 = t126.
      ENDIF.
      t93 = t94.
      DATA t127 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t127.
      DATA(t128) = VALUE abap_bool( ).
      DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t130) = t93.
      t129 = t130.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      t131 = t132.
      DATA(t133) = VALUE abap_bool( ).
      DATA(t134) = t129.
      IF t134 IS INITIAL.
        t133 = abap_true.
      ELSEIF t134->has = abap_false.
        t133 = abap_true.
      ENDIF.
      t128 = t133.
      IF t128 = abap_true.
        DATA t135 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t135.
        t127 = t135.
      ELSE.
        DATA t136 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t136.
        DATA t137 TYPE REF TO zif_lnt_class_definition.
        CLEAR t137.
        DATA t138 TYPE REF TO zif_lnt_class_definition.
        CLEAR t138.
        DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t139.
        DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t140.
        DATA(t141) = abap_true.
        IF t141 = abap_true.
          DATA t142 TYPE string.
          DATA(t143) = t93.
          t142 = t143->value.
          DATA(t144) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t144->has = abap_true.
          t144->value = t142.
          t140 = t144.
        ELSE.
          DATA t145 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t145.
          t140 = t145.
        ENDIF.
        t139 = t140.
        DATA t146 TYPE REF TO zif_lnt_class_definition.
        CLEAR t146.
        DATA(t147) = VALUE abap_bool( ).
        DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t149) = t139.
        t148 = t149.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        t150 = t151.
        DATA(t152) = VALUE abap_bool( ).
        DATA(t153) = t148.
        IF t153 IS INITIAL.
          t152 = abap_true.
        ELSEIF t153->has = abap_false.
          t152 = abap_true.
        ENDIF.
        t147 = t152.
        IF t147 = abap_true.
          DATA t154 TYPE REF TO zif_lnt_class_definition.
          CLEAR t154.
          t146 = t154.
        ELSE.
          DATA t155 TYPE REF TO zif_lnt_class_definition.
          CLEAR t155.
          DATA t156 TYPE REF TO zif_lnt_class_definition.
          CLEAR t156.
          DATA t157 TYPE REF TO zif_lnt_class_definition.
          CLEAR t157.
          DATA t158 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t159 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t160) = t91.
          t159 = t160->current.
          t158 = t159.
          DATA t161 TYPE REF TO zif_lnt_class_definition.
          CLEAR t161.
          DATA(t162) = VALUE abap_bool( ).
          DATA(t163) = t158.
          IF t163 IS INITIAL.
            t162 = abap_true.
          ENDIF.
          IF t162 = abap_true.
            DATA t164 TYPE REF TO zif_lnt_class_definition.
            CLEAR t164.
            t161 = t164.
          ELSE.
            DATA t165 TYPE REF TO zif_lnt_class_definition.
            DATA t166 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t167) = t158.
            t166 = t167.
            DATA t168 TYPE string.
            DATA(t169) = t139.
            t168 = t169->value.
            t165 = t166->find_class_definition( i_name = t168 ).
            t161 = t165.
          ENDIF.
          t157 = t161.
          t156 = t157.
          DATA t170 TYPE REF TO zif_lnt_class_definition.
          CLEAR t170.
          DATA t171 TYPE abap_bool.
          DATA(t172) = t156.
          t171 = xsdbool( t172 IS BOUND ).
          IF t171 = abap_true.
            DATA t173 TYPE REF TO zif_lnt_class_definition.
            CLEAR t173.
            DATA(t174) = abap_true.
            IF t174 = abap_true.
              DATA t175 TYPE REF TO zif_lnt_class_definition.
              DATA(t176) = t156.
              t175 = t176.
              t173 = t175.
            ELSE.
              DATA t177 TYPE REF TO zif_lnt_class_definition.
              CLEAR t177.
              t173 = t177.
            ENDIF.
            t170 = t173.
          ELSE.
            DATA t178 TYPE REF TO zif_lnt_class_definition.
            CLEAR t178.
            DATA t179 TYPE REF TO zcl_lnt_class.
            CLEAR t179.
            DATA t180 TYPE REF TO zcl_lnt_class.
            CLEAR t180.
            DATA t181 TYPE REF TO zif_lnt_object.
            CLEAR t181.
            DATA t182 TYPE REF TO zif_lnt_registry.
            DATA(t183) = t91.
            t182 = t183->reg.
            DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t184.
            DATA(t185) = abap_true.
            IF t185 = abap_true.
              DATA(t186) = |CLAS|.
              DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t187->has = abap_true.
              t187->value = t186.
              t184 = t187.
            ELSE.
              DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t188.
              t184 = t188.
            ENDIF.
            DATA t189 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t189.
            DATA(t190) = abap_true.
            IF t190 = abap_true.
              DATA t191 TYPE string.
              DATA(t192) = t139.
              t191 = t192->value.
              DATA(t193) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t193->has = abap_true.
              t193->value = t191.
              t189 = t193.
            ELSE.
              DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t194.
              t189 = t194.
            ENDIF.
            t181 = t182->get_object( i_type_9913 = t184 i_name = t189 ).
            DATA t195 TYPE REF TO object.
            t195 = t181.
            t180 ?= t195.
            t179 = t180.
            DATA t196 TYPE REF TO zif_lnt_class_definition.
            CLEAR t196.
            DATA t197 TYPE abap_bool.
            DATA(t198) = t179.
            t197 = xsdbool( t198 IS BOUND ).
            IF t197 = abap_true.
              DATA t199 TYPE REF TO zif_lnt_class_definition.
              DATA t200 TYPE REF TO zcl_lnt_class.
              DATA(t201) = t179.
              t200 = t201.
              t199 = t200->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t196 = t199.
            ELSE.
              DATA t202 TYPE REF TO zif_lnt_class_definition.
              CLEAR t202.
              t196 = t202.
            ENDIF.
            t178 = t196.
            t170 = t178.
          ENDIF.
          t155 = t170.
          t146 = t155.
        ENDIF.
        t138 = t146.
        t137 = t138.
        DATA t203 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t203.
        DATA t204 TYPE abap_bool.
        DATA(t205) = t137.
        t204 = xsdbool( t205 IS BOUND ).
        IF t204 = abap_true.
          DATA t206 TYPE REF TO zif_lnt_interface_definition.
          DATA t207 TYPE REF TO zif_lnt_class_definition.
          DATA(t208) = t137.
          t207 = t208.
          t206 ?= t207.
          t203 = t206.
        ELSE.
          DATA t209 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t209.
          DATA t210 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t210.
          DATA t211 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t211.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          DATA t213 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t213.
          DATA(t214) = abap_true.
          IF t214 = abap_true.
            DATA t215 TYPE string.
            DATA(t216) = t93.
            t215 = t216->value.
            DATA(t217) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t217->has = abap_true.
            t217->value = t215.
            t213 = t217.
          ELSE.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t218.
            t213 = t218.
          ENDIF.
          t212 = t213.
          DATA t219 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t219.
          DATA(t220) = VALUE abap_bool( ).
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t222) = t212.
          t221 = t222.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          t223 = t224.
          DATA(t225) = VALUE abap_bool( ).
          DATA(t226) = t221.
          IF t226 IS INITIAL.
            t225 = abap_true.
          ELSEIF t226->has = abap_false.
            t225 = abap_true.
          ENDIF.
          t220 = t225.
          IF t220 = abap_true.
            DATA t227 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t227.
            t219 = t227.
          ELSE.
            DATA t228 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t228.
            DATA t229 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t229.
            DATA t230 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t230.
            DATA t231 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t232 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t233) = t91.
            t232 = t233->current.
            t231 = t232.
            DATA t234 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t234.
            DATA(t235) = VALUE abap_bool( ).
            DATA(t236) = t231.
            IF t236 IS INITIAL.
              t235 = abap_true.
            ENDIF.
            IF t235 = abap_true.
              DATA t237 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t237.
              t234 = t237.
            ELSE.
              DATA t238 TYPE REF TO zif_lnt_interface_definition.
              DATA t239 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t240) = t231.
              t239 = t240.
              DATA t241 TYPE string.
              DATA(t242) = t212.
              t241 = t242->value.
              t238 = t239->find_interface_definition( i_name = t241 ).
              t234 = t238.
            ENDIF.
            t230 = t234.
            t229 = t230.
            DATA t243 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t243.
            DATA t244 TYPE abap_bool.
            DATA(t245) = t229.
            t244 = xsdbool( t245 IS BOUND ).
            IF t244 = abap_true.
              DATA t246 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t246.
              DATA(t247) = abap_true.
              IF t247 = abap_true.
                DATA t248 TYPE REF TO zif_lnt_interface_definition.
                DATA(t249) = t229.
                t248 = t249.
                t246 = t248.
              ELSE.
                DATA t250 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t250.
                t246 = t250.
              ENDIF.
              t243 = t246.
            ELSE.
              DATA t251 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t251.
              DATA t252 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t252.
              DATA t253 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t253.
              DATA t254 TYPE REF TO zif_lnt_object.
              CLEAR t254.
              DATA t255 TYPE REF TO zif_lnt_registry.
              DATA(t256) = t91.
              t255 = t256->reg.
              DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t257.
              DATA(t258) = abap_true.
              IF t258 = abap_true.
                DATA(t259) = |INTF|.
                DATA(t260) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t260->has = abap_true.
                t260->value = t259.
                t257 = t260.
              ELSE.
                DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t261.
                t257 = t261.
              ENDIF.
              DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t262.
              DATA(t263) = abap_true.
              IF t263 = abap_true.
                DATA t264 TYPE string.
                DATA(t265) = t212.
                t264 = t265->value.
                DATA(t266) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t266->has = abap_true.
                t266->value = t264.
                t262 = t266.
              ELSE.
                DATA t267 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t267.
                t262 = t267.
              ENDIF.
              t254 = t255->get_object( i_type_9913 = t257 i_name = t262 ).
              DATA t268 TYPE REF TO object.
              t268 = t254.
              t253 ?= t268.
              t252 = t253.
              DATA t269 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t269.
              DATA t270 TYPE abap_bool.
              DATA(t271) = t252.
              t270 = xsdbool( t271 IS BOUND ).
              IF t270 = abap_true.
                DATA t272 TYPE REF TO zif_lnt_interface_definition.
                DATA t273 TYPE REF TO zcl_lnt_ob_interface.
                DATA t274 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t275) = t252.
                t274 = t275.
                t273 = t274.
                DATA t276 TYPE REF TO zif_lnt_interface_definition.
                DATA(t277) = t273.
                t276 = t277->def.
                t272 = t276.
                t269 = t272.
              ELSE.
                DATA t278 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t278.
                t269 = t278.
              ENDIF.
              t251 = t269.
              t243 = t251.
            ENDIF.
            t228 = t243.
            t219 = t228.
          ENDIF.
          t211 = t219.
          t210 = t211.
          DATA t279 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t279.
          DATA t280 TYPE abap_bool.
          DATA(t281) = t210.
          t280 = xsdbool( t281 IS BOUND ).
          IF t280 = abap_true.
            DATA t282 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t282.
            DATA(t283) = abap_true.
            IF t283 = abap_true.
              DATA t284 TYPE REF TO zif_lnt_interface_definition.
              DATA(t285) = t210.
              t284 = t285.
              t282 = t284.
            ELSE.
              DATA t286 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t286.
              t282 = t286.
            ENDIF.
            t279 = t282.
          ELSE.
            DATA t287 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t287.
            t279 = t287.
          ENDIF.
          t209 = t279.
          t203 = t209.
        ENDIF.
        t136 = t203.
        t127 = t136.
      ENDIF.
      t90 = t127.
      t89 = t90.
      DATA t288 TYPE abap_bool.
      DATA(t289) = t89.
      t288 = xsdbool( t289 IS BOUND ).
      IF t288 = abap_true.
        DATA t290 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t291 TYPE REF TO zif_lnt_interface_definition.
        DATA(t292) = t89.
        t291 = t292.
        t290 ?= t291.
        t3 = t290.
      ELSE.
        DATA(t293) = abap_false.
        result = t293.
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
      CLEAR t300.
      DATA t301 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t301.
      DATA t302 TYPE REF TO zcl_lnt_current_scope.
      DATA(t303) = me->scope.
      t302 = t303.
      DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t304.
      DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t305.
      DATA(t306) = abap_true.
      IF t306 = abap_true.
        DATA(t307) = VALUE string( ).
        DATA t308 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t309) = t9.
        t308 = t309.
        DATA(t310) = VALUE string( ).
        DATA t311 TYPE string.
        DATA t312 TYPE string.
        DATA t313 TYPE REF TO zcl_lnt_abstract_token.
        DATA t314 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t315) = t308.
        t314 = t315->token.
        t313 = t314.
        DATA t316 TYPE string.
        DATA(t317) = t313.
        t316 = t317->str.
        t312 = t316.
        t311 = t312.
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
          DATA(t327) = t311.
          t326 = t327.
          DATA(t328) = VALUE string( ).
          DATA(t329) = t326.
          DATA(t330) = 1.
          DATA t331 TYPE i.
          DATA(t332) = t326.
          DATA(t333) = strlen( t332 ).
          t331 = t333.
          DATA(t334) = strlen( t329 ).
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
            t328 = t329+t330(t331).
          ENDIF.
          t325 = t328.
          t311 = t325.
        ENDIF.
        DATA(t335) = t311.
        t310 = t335.
        t307 = t310.
        DATA(t336) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t336->has = abap_true.
        t336->value = t307.
        t305 = t336.
      ELSE.
        DATA t337 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t337.
        t305 = t337.
      ENDIF.
      t304 = t305.
      DATA t338 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t338.
      DATA(t339) = VALUE abap_bool( ).
      DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t341) = t304.
      t340 = t341.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t343.
      t342 = t343.
      DATA(t344) = VALUE abap_bool( ).
      DATA(t345) = t340.
      IF t345 IS INITIAL.
        t344 = abap_true.
      ELSEIF t345->has = abap_false.
        t344 = abap_true.
      ENDIF.
      t339 = t344.
      IF t339 = abap_true.
        DATA t346 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t346.
        t338 = t346.
      ELSE.
        DATA t347 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t347.
        DATA t348 TYPE REF TO zif_lnt_class_definition.
        CLEAR t348.
        DATA t349 TYPE REF TO zif_lnt_class_definition.
        CLEAR t349.
        DATA t350 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t350.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t351.
        DATA(t352) = abap_true.
        IF t352 = abap_true.
          DATA t353 TYPE string.
          DATA(t354) = t304.
          t353 = t354->value.
          DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t355->has = abap_true.
          t355->value = t353.
          t351 = t355.
        ELSE.
          DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t356.
          t351 = t356.
        ENDIF.
        t350 = t351.
        DATA t357 TYPE REF TO zif_lnt_class_definition.
        CLEAR t357.
        DATA(t358) = VALUE abap_bool( ).
        DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t360) = t350.
        t359 = t360.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        t361 = t362.
        DATA(t363) = VALUE abap_bool( ).
        DATA(t364) = t359.
        IF t364 IS INITIAL.
          t363 = abap_true.
        ELSEIF t364->has = abap_false.
          t363 = abap_true.
        ENDIF.
        t358 = t363.
        IF t358 = abap_true.
          DATA t365 TYPE REF TO zif_lnt_class_definition.
          CLEAR t365.
          t357 = t365.
        ELSE.
          DATA t366 TYPE REF TO zif_lnt_class_definition.
          CLEAR t366.
          DATA t367 TYPE REF TO zif_lnt_class_definition.
          CLEAR t367.
          DATA t368 TYPE REF TO zif_lnt_class_definition.
          CLEAR t368.
          DATA t369 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t370 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t371) = t302.
          t370 = t371->current.
          t369 = t370.
          DATA t372 TYPE REF TO zif_lnt_class_definition.
          CLEAR t372.
          DATA(t373) = VALUE abap_bool( ).
          DATA(t374) = t369.
          IF t374 IS INITIAL.
            t373 = abap_true.
          ENDIF.
          IF t373 = abap_true.
            DATA t375 TYPE REF TO zif_lnt_class_definition.
            CLEAR t375.
            t372 = t375.
          ELSE.
            DATA t376 TYPE REF TO zif_lnt_class_definition.
            DATA t377 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t378) = t369.
            t377 = t378.
            DATA t379 TYPE string.
            DATA(t380) = t350.
            t379 = t380->value.
            t376 = t377->find_class_definition( i_name = t379 ).
            t372 = t376.
          ENDIF.
          t368 = t372.
          t367 = t368.
          DATA t381 TYPE REF TO zif_lnt_class_definition.
          CLEAR t381.
          DATA t382 TYPE abap_bool.
          DATA(t383) = t367.
          t382 = xsdbool( t383 IS BOUND ).
          IF t382 = abap_true.
            DATA t384 TYPE REF TO zif_lnt_class_definition.
            CLEAR t384.
            DATA(t385) = abap_true.
            IF t385 = abap_true.
              DATA t386 TYPE REF TO zif_lnt_class_definition.
              DATA(t387) = t367.
              t386 = t387.
              t384 = t386.
            ELSE.
              DATA t388 TYPE REF TO zif_lnt_class_definition.
              CLEAR t388.
              t384 = t388.
            ENDIF.
            t381 = t384.
          ELSE.
            DATA t389 TYPE REF TO zif_lnt_class_definition.
            CLEAR t389.
            DATA t390 TYPE REF TO zcl_lnt_class.
            CLEAR t390.
            DATA t391 TYPE REF TO zcl_lnt_class.
            CLEAR t391.
            DATA t392 TYPE REF TO zif_lnt_object.
            CLEAR t392.
            DATA t393 TYPE REF TO zif_lnt_registry.
            DATA(t394) = t302.
            t393 = t394->reg.
            DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t395.
            DATA(t396) = abap_true.
            IF t396 = abap_true.
              DATA(t397) = |CLAS|.
              DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t398->has = abap_true.
              t398->value = t397.
              t395 = t398.
            ELSE.
              DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t399.
              t395 = t399.
            ENDIF.
            DATA t400 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t400.
            DATA(t401) = abap_true.
            IF t401 = abap_true.
              DATA t402 TYPE string.
              DATA(t403) = t350.
              t402 = t403->value.
              DATA(t404) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t404->has = abap_true.
              t404->value = t402.
              t400 = t404.
            ELSE.
              DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t405.
              t400 = t405.
            ENDIF.
            t392 = t393->get_object( i_type_9913 = t395 i_name = t400 ).
            DATA t406 TYPE REF TO object.
            t406 = t392.
            t391 ?= t406.
            t390 = t391.
            DATA t407 TYPE REF TO zif_lnt_class_definition.
            CLEAR t407.
            DATA t408 TYPE abap_bool.
            DATA(t409) = t390.
            t408 = xsdbool( t409 IS BOUND ).
            IF t408 = abap_true.
              DATA t410 TYPE REF TO zif_lnt_class_definition.
              DATA t411 TYPE REF TO zcl_lnt_class.
              DATA(t412) = t390.
              t411 = t412.
              t410 = t411->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t407 = t410.
            ELSE.
              DATA t413 TYPE REF TO zif_lnt_class_definition.
              CLEAR t413.
              t407 = t413.
            ENDIF.
            t389 = t407.
            t381 = t389.
          ENDIF.
          t366 = t381.
          t357 = t366.
        ENDIF.
        t349 = t357.
        t348 = t349.
        DATA t414 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t414.
        DATA t415 TYPE abap_bool.
        DATA(t416) = t348.
        t415 = xsdbool( t416 IS BOUND ).
        IF t415 = abap_true.
          DATA t417 TYPE REF TO zif_lnt_interface_definition.
          DATA t418 TYPE REF TO zif_lnt_class_definition.
          DATA(t419) = t348.
          t418 = t419.
          t417 ?= t418.
          t414 = t417.
        ELSE.
          DATA t420 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t420.
          DATA t421 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t421.
          DATA t422 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t422.
          DATA t423 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t423.
          DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t424.
          DATA(t425) = abap_true.
          IF t425 = abap_true.
            DATA t426 TYPE string.
            DATA(t427) = t304.
            t426 = t427->value.
            DATA(t428) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t428->has = abap_true.
            t428->value = t426.
            t424 = t428.
          ELSE.
            DATA t429 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t429.
            t424 = t429.
          ENDIF.
          t423 = t424.
          DATA t430 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t430.
          DATA(t431) = VALUE abap_bool( ).
          DATA t432 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t433) = t423.
          t432 = t433.
          DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t435.
          t434 = t435.
          DATA(t436) = VALUE abap_bool( ).
          DATA(t437) = t432.
          IF t437 IS INITIAL.
            t436 = abap_true.
          ELSEIF t437->has = abap_false.
            t436 = abap_true.
          ENDIF.
          t431 = t436.
          IF t431 = abap_true.
            DATA t438 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t438.
            t430 = t438.
          ELSE.
            DATA t439 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t439.
            DATA t440 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t440.
            DATA t441 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t441.
            DATA t442 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA t443 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t444) = t302.
            t443 = t444->current.
            t442 = t443.
            DATA t445 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t445.
            DATA(t446) = VALUE abap_bool( ).
            DATA(t447) = t442.
            IF t447 IS INITIAL.
              t446 = abap_true.
            ENDIF.
            IF t446 = abap_true.
              DATA t448 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t448.
              t445 = t448.
            ELSE.
              DATA t449 TYPE REF TO zif_lnt_interface_definition.
              DATA t450 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              DATA(t451) = t442.
              t450 = t451.
              DATA t452 TYPE string.
              DATA(t453) = t423.
              t452 = t453->value.
              t449 = t450->find_interface_definition( i_name = t452 ).
              t445 = t449.
            ENDIF.
            t441 = t445.
            t440 = t441.
            DATA t454 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t454.
            DATA t455 TYPE abap_bool.
            DATA(t456) = t440.
            t455 = xsdbool( t456 IS BOUND ).
            IF t455 = abap_true.
              DATA t457 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t457.
              DATA(t458) = abap_true.
              IF t458 = abap_true.
                DATA t459 TYPE REF TO zif_lnt_interface_definition.
                DATA(t460) = t440.
                t459 = t460.
                t457 = t459.
              ELSE.
                DATA t461 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t461.
                t457 = t461.
              ENDIF.
              t454 = t457.
            ELSE.
              DATA t462 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t462.
              DATA t463 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t463.
              DATA t464 TYPE REF TO zcl_lnt_ob_interface.
              CLEAR t464.
              DATA t465 TYPE REF TO zif_lnt_object.
              CLEAR t465.
              DATA t466 TYPE REF TO zif_lnt_registry.
              DATA(t467) = t302.
              t466 = t467->reg.
              DATA t468 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t468.
              DATA(t469) = abap_true.
              IF t469 = abap_true.
                DATA(t470) = |INTF|.
                DATA(t471) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t471->has = abap_true.
                t471->value = t470.
                t468 = t471.
              ELSE.
                DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t472.
                t468 = t472.
              ENDIF.
              DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t473.
              DATA(t474) = abap_true.
              IF t474 = abap_true.
                DATA t475 TYPE string.
                DATA(t476) = t423.
                t475 = t476->value.
                DATA(t477) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t477->has = abap_true.
                t477->value = t475.
                t473 = t477.
              ELSE.
                DATA t478 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t478.
                t473 = t478.
              ENDIF.
              t465 = t466->get_object( i_type_9913 = t468 i_name = t473 ).
              DATA t479 TYPE REF TO object.
              t479 = t465.
              t464 ?= t479.
              t463 = t464.
              DATA t480 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t480.
              DATA t481 TYPE abap_bool.
              DATA(t482) = t463.
              t481 = xsdbool( t482 IS BOUND ).
              IF t481 = abap_true.
                DATA t483 TYPE REF TO zif_lnt_interface_definition.
                DATA t484 TYPE REF TO zcl_lnt_ob_interface.
                DATA t485 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t486) = t463.
                t485 = t486.
                t484 = t485.
                DATA t487 TYPE REF TO zif_lnt_interface_definition.
                DATA(t488) = t484.
                t487 = t488->def.
                t483 = t487.
                t480 = t483.
              ELSE.
                DATA t489 TYPE REF TO zif_lnt_interface_definition.
                CLEAR t489.
                t480 = t489.
              ENDIF.
              t462 = t480.
              t454 = t462.
            ENDIF.
            t439 = t454.
            t430 = t439.
          ENDIF.
          t422 = t430.
          t421 = t422.
          DATA t490 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t490.
          DATA t491 TYPE abap_bool.
          DATA(t492) = t421.
          t491 = xsdbool( t492 IS BOUND ).
          IF t491 = abap_true.
            DATA t493 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t493.
            DATA(t494) = abap_true.
            IF t494 = abap_true.
              DATA t495 TYPE REF TO zif_lnt_interface_definition.
              DATA(t496) = t421.
              t495 = t496.
              t493 = t495.
            ELSE.
              DATA t497 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t497.
              t493 = t497.
            ENDIF.
            t490 = t493.
          ELSE.
            DATA t498 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t498.
            t490 = t498.
          ENDIF.
          t420 = t490.
          t414 = t420.
        ENDIF.
        t347 = t414.
        t338 = t347.
      ENDIF.
      t301 = t338.
      t300 = t301.
      DATA t499 TYPE abap_bool.
      DATA(t500) = t300.
      t499 = xsdbool( t500 IS BOUND ).
      IF t499 = abap_true.
        DATA t501 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t502 TYPE REF TO zif_lnt_interface_definition.
        DATA(t503) = t300.
        t502 = t503.
        t501 ?= t502.
        t9 = t501.
      ELSE.
        DATA(t504) = abap_false.
        result = t504.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t505 TYPE abap_bool.
    DATA t506 TYPE abap_bool.
    DATA(t507) = t3.
    t506 = xsdbool( t507 IS BOUND AND t507 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    t505 = t506.
    IF t506 = abap_true.
      DATA t508 TYPE abap_bool.
      DATA(t509) = t9.
      t508 = xsdbool( t509 IS BOUND AND t509 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      t505 = t508.
    ENDIF.
    IF t505 = abap_true.
      DATA t510 TYPE abap_bool.
      DATA(t511) = t47.
      DATA(t512) = t15.
      t510 = xsdbool( t511 = t512 ).
      IF t510 = abap_true.
        DATA(t513) = abap_true.
        result = t513.
        RETURN.
      ENDIF.
      DATA t514 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t515 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t516 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA(t517) = t3.
      t516 ?= t517.
      t515 = me->list_all_supers( i_cdef = t516 ).
      t514 = t515.
      DATA t518 TYPE abap_bool.
      DATA t519 TYPE i.
      DATA(t520) = t514.
      DATA(t521) = t15.
      t519 = t520->indexof( p0 = t521 ).
      DATA(t522) = 0.
      t518 = xsdbool( t519 >= t522 ).
      IF t518 = abap_true.
        DATA(t523) = abap_true.
        result = t523.
        RETURN.
      ENDIF.
    ELSE.
      DATA t524 TYPE abap_bool.
      DATA t525 TYPE abap_bool.
      DATA(t526) = t3.
      t525 = xsdbool( t526 IS BOUND AND t526 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      t524 = t525.
      IF t525 = abap_true.
        DATA t527 TYPE abap_bool.
        DATA(t528) = t9.
        t527 = xsdbool( t528 IS BOUND AND t528 IS INSTANCE OF zcl_lnt_interface_definition ).
        t524 = t527.
      ENDIF.
      IF t524 = abap_true.
        DATA(t529) = VALUE abap_bool( ).
        DATA t530 TYPE abap_bool.
        DATA(t531) = abap_false.
        t530 = t531.
        DATA t532 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t533 TYPE REF TO zcl_lnt_ty_class_definition.
        DATA t534 TYPE REF TO zcl_lnt_ty_class_definition.
        DATA(t535) = t3.
        t534 ?= t535.
        t533 = t534.
        DATA t536 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t537) = t533.
        t536 = t537->implementing.
        t532 = t536.
        DATA t538 TYPE REF TO zcl_lnt_iimplementing.
        CLEAR t538.
        DATA t539 TYPE REF TO object.
        CLEAR t539.
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
          DATA(t545) = t538.
          t544 = t545->name.
          DATA(t546) = t15.
          t543 = xsdbool( t544 = t546 ).
          IF t543 = abap_true.
            DATA(t547) = abap_true.
            t530 = t547.
            EXIT.
          ENDIF.
        ENDDO.
        DATA(t548) = t530.
        t529 = t548.
        IF t529 = abap_true.
          DATA(t549) = abap_true.
          result = t549.
          RETURN.
        ENDIF.
        DATA t550 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t551 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t552 TYPE REF TO zcl_lnt_ty_class_definition.
        DATA(t553) = t3.
        t552 ?= t553.
        t551 = me->list_all_interfaces( i_cdef = t552 ).
        t550 = t551.
        DATA t554 TYPE abap_bool.
        DATA t555 TYPE i.
        DATA(t556) = t550.
        DATA(t557) = t15.
        t555 = t556->indexof( p0 = t557 ).
        DATA(t558) = 0.
        t554 = xsdbool( t555 >= t558 ).
        IF t554 = abap_true.
          DATA(t559) = abap_true.
          result = t559.
          RETURN.
        ENDIF.
      ELSE.
        DATA t560 TYPE abap_bool.
        DATA t561 TYPE abap_bool.
        DATA(t562) = t3.
        t561 = xsdbool( t562 IS BOUND AND t562 IS INSTANCE OF zcl_lnt_interface_definition ).
        t560 = t561.
        IF t561 = abap_true.
          DATA t563 TYPE abap_bool.
          DATA(t564) = t9.
          t563 = xsdbool( t564 IS BOUND AND t564 IS INSTANCE OF zcl_lnt_interface_definition ).
          t560 = t563.
        ENDIF.
        IF t560 = abap_true.
          DATA t565 TYPE abap_bool.
          DATA(t566) = t47.
          DATA(t567) = t15.
          t565 = xsdbool( t566 = t567 ).
          IF t565 = abap_true.
            DATA(t568) = abap_true.
            result = t568.
            RETURN.
          ENDIF.
          DATA(t569) = VALUE abap_bool( ).
          DATA t570 TYPE abap_bool.
          DATA(t571) = abap_false.
          t570 = t571.
          DATA t572 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t573 TYPE REF TO zcl_lnt_interface_definition.
          DATA t574 TYPE REF TO zcl_lnt_interface_definition.
          DATA(t575) = t3.
          t574 ?= t575.
          t573 = t574.
          DATA t576 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t577) = t573.
          t576 = t577->implementing.
          t572 = t576.
          DATA t578 TYPE REF TO zcl_lnt_iimplementing.
          CLEAR t578.
          DATA t579 TYPE REF TO object.
          CLEAR t579.
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
            DATA(t585) = t578.
            t584 = t585->name.
            DATA(t586) = t15.
            t583 = xsdbool( t584 = t586 ).
            IF t583 = abap_true.
              DATA(t587) = abap_true.
              t570 = t587.
              EXIT.
            ENDIF.
          ENDDO.
          DATA(t588) = t570.
          t569 = t588.
          IF t569 = abap_true.
            DATA(t589) = abap_true.
            result = t589.
            RETURN.
          ENDIF.
          DATA t590 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t591 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t592 TYPE REF TO zcl_lnt_interface_definition.
          DATA(t593) = t3.
          t592 ?= t593.
          t591 = me->list_all_interfaces( i_cdef = t592 ).
          t590 = t591.
          DATA t594 TYPE abap_bool.
          DATA t595 TYPE i.
          DATA(t596) = t590.
          DATA(t597) = t15.
          t595 = t596->indexof( p0 = t597 ).
          DATA(t598) = 0.
          t594 = xsdbool( t595 >= t598 ).
          IF t594 = abap_true.
            DATA(t599) = abap_true.
            result = t599.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t600) = abap_false.
    result = t600.

  ENDMETHOD.

  METHOD list_all_interfaces.
    DATA(t1) = i_cdef.
    DATA t2 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    DATA(t3) = NEW zlnt_runtime_set__1827558fd4c7( ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t1.
    t8 = t9->get_implementing( ).
    t7 = t8.
    DATA t10 TYPE i.
    DATA t11 TYPE i.
    DATA(t12) = t7.
    t12->load( ).
    t11 = lines( t12->items ).
    t10 = t11.
    DATA t13 TYPE i.
    DATA(t14) = 0.
    t13 = t14.
    DO.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t13.
      DATA(t17) = t10.
      t15 = xsdbool( t16 < t17 ).
      IF t15 = abap_false.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_iimplementing.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_iimplementing.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_iimplementing.
      CLEAR t20.
      DATA(t21) = t7.
      DATA(t22) = t13.
      DATA t23 TYPE REF TO object.
      t23 = t21->get( p0 = t22 ).
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
      t19 = t20.
      t18 = t19.
      DATA(t26) = t4.
      DATA t27 TYPE string.
      DATA(t28) = t18.
      t27 = t28->name.
      t26->load( ).
      APPEND t27 TO t26->items.
      t26->save( ).
      DATA t29 TYPE i.
      DATA(t30) = t13.
      DATA(t31) = 1.
      t29 = t30 + t31.
      t13 = t29.
    ENDDO.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    t6 = t32.
    DATA t33 TYPE abap_bool.
    DATA(t34) = t1.
    t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    IF t33 = abap_true.
      DATA t35 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t36 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t37 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA(t38) = t1.
      DATA t39 TYPE REF TO object.
      t39 = t38.
      t37 ?= t39.
      t36 = me->list_all_supers( i_cdef = t37 ).
      t35 = t36.
      DATA(t40) = t35.
      DATA(t41) = VALUE string( ).
      t40->dense( ).
      DATA(t42) = VALUE i( ).
      DO.
        t40->load( ).
        IF t42 >= lines( t40->items ).
          EXIT.
        ENDIF.
        CLEAR t41.
        READ TABLE t40->items INDEX t42 + 1 INTO t41.
        IF t40->has( t42 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t42 = t42 + 1.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t45.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        CLEAR t46.
        DATA t47 TYPE REF TO zif_lnt_class_definition.
        CLEAR t47.
        DATA t48 TYPE REF TO zcl_lnt_current_scope.
        DATA(t49) = me->scope.
        t48 = t49.
        DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t50.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA(t52) = abap_true.
        IF t52 = abap_true.
          DATA(t53) = t41.
          DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t54->has = abap_true.
          t54->value = t53.
          t51 = t54.
        ELSE.
          DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t55.
          t51 = t55.
        ENDIF.
        t50 = t51.
        DATA t56 TYPE REF TO zif_lnt_class_definition.
        CLEAR t56.
        DATA(t57) = VALUE abap_bool( ).
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t59) = t50.
        t58 = t59.
        DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t61.
        t60 = t61.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = t58.
        IF t63 IS INITIAL.
          t62 = abap_true.
        ELSEIF t63->has = abap_false.
          t62 = abap_true.
        ENDIF.
        t57 = t62.
        IF t57 = abap_true.
          DATA t64 TYPE REF TO zif_lnt_class_definition.
          CLEAR t64.
          t56 = t64.
        ELSE.
          DATA t65 TYPE REF TO zif_lnt_class_definition.
          CLEAR t65.
          DATA t66 TYPE REF TO zif_lnt_class_definition.
          CLEAR t66.
          DATA t67 TYPE REF TO zif_lnt_class_definition.
          CLEAR t67.
          DATA t68 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t69 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t70) = t48.
          t69 = t70->current.
          t68 = t69.
          DATA t71 TYPE REF TO zif_lnt_class_definition.
          CLEAR t71.
          DATA(t72) = VALUE abap_bool( ).
          DATA(t73) = t68.
          IF t73 IS INITIAL.
            t72 = abap_true.
          ENDIF.
          IF t72 = abap_true.
            DATA t74 TYPE REF TO zif_lnt_class_definition.
            CLEAR t74.
            t71 = t74.
          ELSE.
            DATA t75 TYPE REF TO zif_lnt_class_definition.
            DATA t76 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t77) = t68.
            t76 = t77.
            DATA t78 TYPE string.
            DATA(t79) = t50.
            t78 = t79->value.
            t75 = t76->find_class_definition( i_name = t78 ).
            t71 = t75.
          ENDIF.
          t67 = t71.
          t66 = t67.
          DATA t80 TYPE REF TO zif_lnt_class_definition.
          CLEAR t80.
          DATA t81 TYPE abap_bool.
          DATA(t82) = t66.
          t81 = xsdbool( t82 IS BOUND ).
          IF t81 = abap_true.
            DATA t83 TYPE REF TO zif_lnt_class_definition.
            CLEAR t83.
            DATA(t84) = abap_true.
            IF t84 = abap_true.
              DATA t85 TYPE REF TO zif_lnt_class_definition.
              DATA(t86) = t66.
              t85 = t86.
              t83 = t85.
            ELSE.
              DATA t87 TYPE REF TO zif_lnt_class_definition.
              CLEAR t87.
              t83 = t87.
            ENDIF.
            t80 = t83.
          ELSE.
            DATA t88 TYPE REF TO zif_lnt_class_definition.
            CLEAR t88.
            DATA t89 TYPE REF TO zcl_lnt_class.
            CLEAR t89.
            DATA t90 TYPE REF TO zcl_lnt_class.
            CLEAR t90.
            DATA t91 TYPE REF TO zif_lnt_object.
            CLEAR t91.
            DATA t92 TYPE REF TO zif_lnt_registry.
            DATA(t93) = t48.
            t92 = t93->reg.
            DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t94.
            DATA(t95) = abap_true.
            IF t95 = abap_true.
              DATA(t96) = |CLAS|.
              DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t97->has = abap_true.
              t97->value = t96.
              t94 = t97.
            ELSE.
              DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t98.
              t94 = t98.
            ENDIF.
            DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t99.
            DATA(t100) = abap_true.
            IF t100 = abap_true.
              DATA t101 TYPE string.
              DATA(t102) = t50.
              t101 = t102->value.
              DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t103->has = abap_true.
              t103->value = t101.
              t99 = t103.
            ELSE.
              DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t104.
              t99 = t104.
            ENDIF.
            t91 = t92->get_object( i_type_9913 = t94 i_name = t99 ).
            DATA t105 TYPE REF TO object.
            t105 = t91.
            t90 ?= t105.
            t89 = t90.
            DATA t106 TYPE REF TO zif_lnt_class_definition.
            CLEAR t106.
            DATA t107 TYPE abap_bool.
            DATA(t108) = t89.
            t107 = xsdbool( t108 IS BOUND ).
            IF t107 = abap_true.
              DATA t109 TYPE REF TO zif_lnt_class_definition.
              DATA t110 TYPE REF TO zcl_lnt_class.
              DATA(t111) = t89.
              t110 = t111.
              t109 = t110->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t106 = t109.
            ELSE.
              DATA t112 TYPE REF TO zif_lnt_class_definition.
              CLEAR t112.
              t106 = t112.
            ENDIF.
            t88 = t106.
            t80 = t88.
          ENDIF.
          t65 = t80.
          t56 = t65.
        ENDIF.
        t47 = t56.
        t46 = t47.
        DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t113.
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = t46.
        IF t115 IS INITIAL.
          t114 = abap_true.
        ENDIF.
        IF t114 = abap_true.
          DATA t116 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t116.
          t113 = t116.
        ELSE.
          DATA t117 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t118 TYPE REF TO zif_lnt_class_definition.
          DATA(t119) = t46.
          t118 = t119.
          t117 = t118->get_implementing( ).
          t113 = t117.
        ENDIF.
        t45 = t113.
        t44 = t45.
        DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t120.
        DATA(t121) = VALUE abap_bool( ).
        DATA(t122) = t44.
        IF t122 IS INITIAL.
          t121 = abap_true.
        ENDIF.
        IF t121 = abap_true.
          DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t123.
          t120 = t123.
        ELSE.
          DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t124.
          DATA t125 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t126 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t127) = t44.
          t126 = t127.
          t125 = t126.
          DATA t128 TYPE i.
          DATA t129 TYPE i.
          DATA(t130) = t125.
          t130->load( ).
          t129 = lines( t130->items ).
          t128 = t129.
          DATA t131 TYPE i.
          DATA(t132) = 0.
          t131 = t132.
          DO.
            DATA t133 TYPE abap_bool.
            DATA(t134) = t131.
            DATA(t135) = t128.
            t133 = xsdbool( t134 < t135 ).
            IF t133 = abap_false.
              EXIT.
            ENDIF.
            DATA t136 TYPE REF TO zcl_lnt_iimplementing.
            CLEAR t136.
            DATA t137 TYPE REF TO zcl_lnt_iimplementing.
            CLEAR t137.
            DATA t138 TYPE REF TO zcl_lnt_iimplementing.
            CLEAR t138.
            DATA(t139) = t125.
            DATA(t140) = t131.
            DATA t141 TYPE REF TO object.
            t141 = t139->get( p0 = t140 ).
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
            t137 = t138.
            t136 = t137.
            DATA(t144) = t4.
            DATA t145 TYPE string.
            DATA(t146) = t136.
            t145 = t146->name.
            t144->load( ).
            APPEND t145 TO t144->items.
            t144->save( ).
            DATA t147 TYPE i.
            DATA(t148) = t131.
            DATA(t149) = 1.
            t147 = t148 + t149.
            t131 = t147.
          ENDDO.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          t124 = t150.
          t120 = t124.
        ENDIF.
        t43 = t120.
      ENDDO.
    ENDIF.
    DO.
      DATA t151 TYPE abap_bool.
      DATA t152 TYPE i.
      DATA(t153) = t4.
      t153->load( ).
      t152 = lines( t153->items ).
      DATA(t154) = 0.
      t151 = xsdbool( t152 > t154 ).
      IF t151 = abap_false.
        EXIT.
      ENDIF.
      DATA(t155) = VALUE string( ).
      DATA t156 TYPE string.
      DATA t157 TYPE string.
      DATA t158 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t159) = t4.
      t158 = t159->pop( ).
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
      DATA(t162) = t2.
      DATA(t163) = t155.
      t161 = t162->add( p0 = t163 ).
      DATA t164 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t164.
      DATA t165 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t165.
      DATA t166 TYPE REF TO zcl_lnt_current_scope.
      DATA(t167) = me->scope.
      t166 = t167.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t168.
      DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t169.
      DATA(t170) = abap_true.
      IF t170 = abap_true.
        DATA(t171) = t155.
        DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t172->has = abap_true.
        t172->value = t171.
        t169 = t172.
      ELSE.
        DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t173.
        t169 = t173.
      ENDIF.
      t168 = t169.
      DATA t174 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t174.
      DATA(t175) = VALUE abap_bool( ).
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t177) = t168.
      t176 = t177.
      DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t179.
      t178 = t179.
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = t176.
      IF t181 IS INITIAL.
        t180 = abap_true.
      ELSEIF t181->has = abap_false.
        t180 = abap_true.
      ENDIF.
      t175 = t180.
      IF t175 = abap_true.
        DATA t182 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t182.
        t174 = t182.
      ELSE.
        DATA t183 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t183.
        DATA t184 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t184.
        DATA t185 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t185.
        DATA t186 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t187 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t188) = t166.
        t187 = t188->current.
        t186 = t187.
        DATA t189 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t189.
        DATA(t190) = VALUE abap_bool( ).
        DATA(t191) = t186.
        IF t191 IS INITIAL.
          t190 = abap_true.
        ENDIF.
        IF t190 = abap_true.
          DATA t192 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t192.
          t189 = t192.
        ELSE.
          DATA t193 TYPE REF TO zif_lnt_interface_definition.
          DATA t194 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t195) = t186.
          t194 = t195.
          DATA t196 TYPE string.
          DATA(t197) = t168.
          t196 = t197->value.
          t193 = t194->find_interface_definition( i_name = t196 ).
          t189 = t193.
        ENDIF.
        t185 = t189.
        t184 = t185.
        DATA t198 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t198.
        DATA t199 TYPE abap_bool.
        DATA(t200) = t184.
        t199 = xsdbool( t200 IS BOUND ).
        IF t199 = abap_true.
          DATA t201 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t201.
          DATA(t202) = abap_true.
          IF t202 = abap_true.
            DATA t203 TYPE REF TO zif_lnt_interface_definition.
            DATA(t204) = t184.
            t203 = t204.
            t201 = t203.
          ELSE.
            DATA t205 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t205.
            t201 = t205.
          ENDIF.
          t198 = t201.
        ELSE.
          DATA t206 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t206.
          DATA t207 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t207.
          DATA t208 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t208.
          DATA t209 TYPE REF TO zif_lnt_object.
          CLEAR t209.
          DATA t210 TYPE REF TO zif_lnt_registry.
          DATA(t211) = t166.
          t210 = t211->reg.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          DATA(t213) = abap_true.
          IF t213 = abap_true.
            DATA(t214) = |INTF|.
            DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t215->has = abap_true.
            t215->value = t214.
            t212 = t215.
          ELSE.
            DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t216.
            t212 = t216.
          ENDIF.
          DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t217.
          DATA(t218) = abap_true.
          IF t218 = abap_true.
            DATA t219 TYPE string.
            DATA(t220) = t168.
            t219 = t220->value.
            DATA(t221) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t221->has = abap_true.
            t221->value = t219.
            t217 = t221.
          ELSE.
            DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t222.
            t217 = t222.
          ENDIF.
          t209 = t210->get_object( i_type_9913 = t212 i_name = t217 ).
          DATA t223 TYPE REF TO object.
          t223 = t209.
          t208 ?= t223.
          t207 = t208.
          DATA t224 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t224.
          DATA t225 TYPE abap_bool.
          DATA(t226) = t207.
          t225 = xsdbool( t226 IS BOUND ).
          IF t225 = abap_true.
            DATA t227 TYPE REF TO zif_lnt_interface_definition.
            DATA t228 TYPE REF TO zcl_lnt_ob_interface.
            DATA t229 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t230) = t207.
            t229 = t230.
            t228 = t229.
            DATA t231 TYPE REF TO zif_lnt_interface_definition.
            DATA(t232) = t228.
            t231 = t232->def.
            t227 = t231.
            t224 = t227.
          ELSE.
            DATA t233 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t233.
            t224 = t233.
          ENDIF.
          t206 = t224.
          t198 = t206.
        ENDIF.
        t183 = t198.
        t174 = t183.
      ENDIF.
      t165 = t174.
      t164 = t165.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t234.
      DATA t235 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t235.
      DATA t236 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t236.
      DATA t237 TYPE REF TO zif_lnt_interface_definition.
      DATA(t238) = t164.
      t237 = t238.
      DATA t239 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t239.
      DATA(t240) = VALUE abap_bool( ).
      DATA(t241) = t237.
      IF t241 IS INITIAL.
        t240 = abap_true.
      ENDIF.
      IF t240 = abap_true.
        DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t242.
        t239 = t242.
      ELSE.
        DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t244 TYPE REF TO zif_lnt_interface_definition.
        DATA(t245) = t237.
        t244 = t245.
        t243 = t244->get_implementing( ).
        t239 = t243.
      ENDIF.
      t236 = t239.
      t235 = t236.
      DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t246.
      DATA(t247) = VALUE abap_bool( ).
      DATA(t248) = t235.
      IF t248 IS INITIAL.
        t247 = abap_true.
      ENDIF.
      IF t247 = abap_true.
        DATA t249 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t249.
        t246 = t249.
      ELSE.
        DATA t250 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t250.
        DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t252 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t253) = t235.
        t252 = t253.
        t251 = t252.
        DATA t254 TYPE i.
        DATA t255 TYPE i.
        DATA(t256) = t251.
        t256->load( ).
        t255 = lines( t256->items ).
        t254 = t255.
        DATA t257 TYPE i.
        DATA(t258) = 0.
        t257 = t258.
        DO.
          DATA t259 TYPE abap_bool.
          DATA(t260) = t257.
          DATA(t261) = t254.
          t259 = xsdbool( t260 < t261 ).
          IF t259 = abap_false.
            EXIT.
          ENDIF.
          DATA t262 TYPE REF TO zcl_lnt_iimplementing.
          CLEAR t262.
          DATA t263 TYPE REF TO zcl_lnt_iimplementing.
          CLEAR t263.
          DATA t264 TYPE REF TO zcl_lnt_iimplementing.
          CLEAR t264.
          DATA(t265) = t251.
          DATA(t266) = t257.
          DATA t267 TYPE REF TO object.
          t267 = t265->get( p0 = t266 ).
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
          t263 = t264.
          t262 = t263.
          DATA(t270) = t4.
          DATA t271 TYPE string.
          DATA(t272) = t262.
          t271 = t272->name.
          t270->load( ).
          APPEND t271 TO t270->items.
          t270->save( ).
          DATA t273 TYPE i.
          DATA(t274) = t257.
          DATA(t275) = 1.
          t273 = t274 + t275.
          t257 = t273.
        ENDDO.
        DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t276.
        t250 = t276.
        t246 = t250.
      ENDIF.
      t234 = t246.
    ENDDO.
    DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t279) = t2.
    t278 = t279->values( ).
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
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zcl_lnt_ty_class_definition.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t9) = t6.
    t8 = t9->super_class.
    t5 = t8.
    t4 = t5.
    DO.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t12) = t4.
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t11.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ELSEIF t17->has = abap_false.
        t16 = abap_true.
      ENDIF.
      t15 = xsdbool( t16 = abap_false ).
      t10 = t15.
      IF t10 = abap_false.
        EXIT.
      ENDIF.
      DATA(t18) = t2.
      DATA t19 TYPE string.
      DATA t20 TYPE string.
      DATA(t21) = t4.
      t20 = t21->value.
      DATA(t22) = strlen( t20 ).
      t19 = t20.
      IF t19 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t19 TO UPPER CASE.
      ELSE.
        t19 = zlnt_runtime_uppe_91169605024d=>full( t19 ).
      ENDIF.
      t18->load( ).
      APPEND t19 TO t18->items.
      t18->save( ).
      DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t23.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t24.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zif_lnt_class_definition.
      CLEAR t26.
      DATA t27 TYPE REF TO zif_lnt_class_definition.
      CLEAR t27.
      DATA t28 TYPE REF TO zcl_lnt_current_scope.
      DATA(t29) = me->scope.
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA t33 TYPE string.
        DATA(t34) = t4.
        t33 = t34->value.
        DATA(t35) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t35->has = abap_true.
        t35->value = t33.
        t31 = t35.
      ELSE.
        DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t36.
        t31 = t36.
      ENDIF.
      t30 = t31.
      DATA t37 TYPE REF TO zif_lnt_class_definition.
      CLEAR t37.
      DATA(t38) = VALUE abap_bool( ).
      DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t40) = t30.
      t39 = t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      t41 = t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = t39.
      IF t44 IS INITIAL.
        t43 = abap_true.
      ELSEIF t44->has = abap_false.
        t43 = abap_true.
      ENDIF.
      t38 = t43.
      IF t38 = abap_true.
        DATA t45 TYPE REF TO zif_lnt_class_definition.
        CLEAR t45.
        t37 = t45.
      ELSE.
        DATA t46 TYPE REF TO zif_lnt_class_definition.
        CLEAR t46.
        DATA t47 TYPE REF TO zif_lnt_class_definition.
        CLEAR t47.
        DATA t48 TYPE REF TO zif_lnt_class_definition.
        CLEAR t48.
        DATA t49 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t50 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t51) = t28.
        t50 = t51->current.
        t49 = t50.
        DATA t52 TYPE REF TO zif_lnt_class_definition.
        CLEAR t52.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = t49.
        IF t54 IS INITIAL.
          t53 = abap_true.
        ENDIF.
        IF t53 = abap_true.
          DATA t55 TYPE REF TO zif_lnt_class_definition.
          CLEAR t55.
          t52 = t55.
        ELSE.
          DATA t56 TYPE REF TO zif_lnt_class_definition.
          DATA t57 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t58) = t49.
          t57 = t58.
          DATA t59 TYPE string.
          DATA(t60) = t30.
          t59 = t60->value.
          t56 = t57->find_class_definition( i_name = t59 ).
          t52 = t56.
        ENDIF.
        t48 = t52.
        t47 = t48.
        DATA t61 TYPE REF TO zif_lnt_class_definition.
        CLEAR t61.
        DATA t62 TYPE abap_bool.
        DATA(t63) = t47.
        t62 = xsdbool( t63 IS BOUND ).
        IF t62 = abap_true.
          DATA t64 TYPE REF TO zif_lnt_class_definition.
          CLEAR t64.
          DATA(t65) = abap_true.
          IF t65 = abap_true.
            DATA t66 TYPE REF TO zif_lnt_class_definition.
            DATA(t67) = t47.
            t66 = t67.
            t64 = t66.
          ELSE.
            DATA t68 TYPE REF TO zif_lnt_class_definition.
            CLEAR t68.
            t64 = t68.
          ENDIF.
          t61 = t64.
        ELSE.
          DATA t69 TYPE REF TO zif_lnt_class_definition.
          CLEAR t69.
          DATA t70 TYPE REF TO zcl_lnt_class.
          CLEAR t70.
          DATA t71 TYPE REF TO zcl_lnt_class.
          CLEAR t71.
          DATA t72 TYPE REF TO zif_lnt_object.
          CLEAR t72.
          DATA t73 TYPE REF TO zif_lnt_registry.
          DATA(t74) = t28.
          t73 = t74->reg.
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA(t76) = abap_true.
          IF t76 = abap_true.
            DATA(t77) = |CLAS|.
            DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t78->has = abap_true.
            t78->value = t77.
            t75 = t78.
          ELSE.
            DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t79.
            t75 = t79.
          ENDIF.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          DATA(t81) = abap_true.
          IF t81 = abap_true.
            DATA t82 TYPE string.
            DATA(t83) = t30.
            t82 = t83->value.
            DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t84->has = abap_true.
            t84->value = t82.
            t80 = t84.
          ELSE.
            DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t85.
            t80 = t85.
          ENDIF.
          t72 = t73->get_object( i_type_9913 = t75 i_name = t80 ).
          DATA t86 TYPE REF TO object.
          t86 = t72.
          t71 ?= t86.
          t70 = t71.
          DATA t87 TYPE REF TO zif_lnt_class_definition.
          CLEAR t87.
          DATA t88 TYPE abap_bool.
          DATA(t89) = t70.
          t88 = xsdbool( t89 IS BOUND ).
          IF t88 = abap_true.
            DATA t90 TYPE REF TO zif_lnt_class_definition.
            DATA t91 TYPE REF TO zcl_lnt_class.
            DATA(t92) = t70.
            t91 = t92.
            t90 = t91->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t87 = t90.
          ELSE.
            DATA t93 TYPE REF TO zif_lnt_class_definition.
            CLEAR t93.
            t87 = t93.
          ENDIF.
          t69 = t87.
          t61 = t69.
        ENDIF.
        t46 = t61.
        t37 = t46.
      ENDIF.
      t27 = t37.
      t26 = t27.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = t26.
      IF t96 IS INITIAL.
        t95 = abap_true.
      ENDIF.
      IF t95 = abap_true.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        t94 = t97.
      ELSE.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t99 TYPE REF TO zif_lnt_class_definition.
        DATA(t100) = t26.
        t99 = t100.
        t98 = t99->get_super_class( ).
        t94 = t98.
      ENDIF.
      t25 = t94.
      t24 = t25.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = t24.
      IF t103 IS INITIAL.
        t102 = abap_true.
      ELSEIF t103->has = abap_false.
        t102 = abap_true.
      ENDIF.
      IF t102 = abap_true.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t104.
        t101 = t104.
      ELSE.
        DATA t105 TYPE string.
        DATA t106 TYPE string.
        DATA(t107) = t24.
        t106 = t107->value.
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
      t23 = t101.
      t4 = t23.
    ENDDO.
    DATA(t110) = t2.
    result = t110.

  ENDMETHOD.

  METHOD is_convable.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_ty_table_type ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t2.
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t3 = t6.
    ENDIF.
    IF t3 = abap_true.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t9.
      DATA(t10) = abap_true.
      IF t10 = abap_true.
        DATA t11 TYPE REF TO zcl_lnt_abstract_type.
        DATA t12 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t13 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t14) = t1.
        t13 ?= t14.
        t12 = t13.
        DATA t15 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t16) = t12.
        t15 = t16->row_type.
        t11 = t15.
        t9 = t11.
      ELSE.
        DATA t17 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t17.
        t9 = t17.
      ENDIF.
      DATA t18 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t18.
      DATA(t19) = abap_true.
      IF t19 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_abstract_type.
        DATA t21 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t22 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t23) = t2.
        t22 ?= t23.
        t21 = t22.
        DATA t24 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t25) = t21.
        t24 = t25->row_type.
        t20 = t24.
        t18 = t20.
      ELSE.
        DATA t26 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t26.
        t18 = t26.
      ENDIF.
      t8 = me->is_assignable( i_source_75cf = t9 i_target_5f8a = t18 ).
      result = t8.
      RETURN.
    ENDIF.
    DATA t27 TYPE abap_bool.
    DATA(t28) = t1.
    DATA(t29) = t2.
    t27 = me->is_assignable( i_source_75cf = t28 i_target_5f8a = t29 ).
    result = t27.

  ENDMETHOD.

  METHOD is_castable.
    DATA(t1) = i_source_3828.
    DATA(t2) = i_target_d687.
    DATA(t3) = abap_true.
    result = t3.

  ENDMETHOD.

  METHOD is_compareable.
    DATA(t1) = i_source1.
    DATA(t2) = i_source2.
    DATA(t3) = i_node1.
    DATA(t4) = i_node2.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    t5 = t6.
    IF t6 = abap_false.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t15) = t2.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t14.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      t13 = t18.
      t5 = t13.
    ENDIF.
    IF t5 = abap_true.
      DATA(t20) = abap_true.
      result = t20.
      RETURN.
    ENDIF.
    DATA(t21) = VALUE abap_bool( ).
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE abap_bool.
    DATA(t24) = t1.
    t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_hex_type ).
    t22 = t23.
    IF t23 = abap_true.
      DATA t25 TYPE abap_bool.
      DATA(t26) = t3.
      t25 = me->is_calculated( i_node = t26 ).
      t22 = t25.
    ENDIF.
    t21 = t22.
    IF t22 = abap_true.
      DATA t27 TYPE abap_bool.
      DATA(t28) = t2.
      t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_integer_type ).
      t21 = t27.
    ENDIF.
    IF t21 = abap_true.
      DATA(t29) = abap_false.
      result = t29.
      RETURN.
    ENDIF.
    DATA(t30) = VALUE abap_bool( ).
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    DATA(t33) = t2.
    t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_hex_type ).
    t31 = t32.
    IF t32 = abap_true.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t4.
      t34 = me->is_calculated( i_node = t35 ).
      t31 = t34.
    ENDIF.
    t30 = t31.
    IF t31 = abap_true.
      DATA t36 TYPE abap_bool.
      DATA(t37) = t1.
      t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_integer_type ).
      t30 = t36.
    ENDIF.
    IF t30 = abap_true.
      DATA(t38) = abap_false.
      result = t38.
      RETURN.
    ENDIF.
    DATA(t39) = VALUE abap_bool( ).
    DATA t40 TYPE abap_bool.
    DATA t41 TYPE abap_bool.
    DATA(t42) = t1.
    t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_date_type ).
    t40 = t41.
    IF t41 = abap_true.
      DATA t43 TYPE abap_bool.
      DATA(t44) = t4.
      t43 = me->is_calculated( i_node = t44 ).
      t40 = t43.
    ENDIF.
    t39 = t40.
    IF t40 = abap_true.
      DATA t45 TYPE abap_bool.
      DATA(t46) = t2.
      t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_integer_type ).
      t39 = t45.
    ENDIF.
    IF t39 = abap_true.
      DATA(t47) = abap_false.
      result = t47.
      RETURN.
    ENDIF.
    DATA(t48) = VALUE abap_bool( ).
    DATA t49 TYPE abap_bool.
    DATA t50 TYPE abap_bool.
    DATA(t51) = t2.
    t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_date_type ).
    t49 = t50.
    IF t50 = abap_true.
      DATA t52 TYPE abap_bool.
      DATA(t53) = t3.
      t52 = me->is_calculated( i_node = t53 ).
      t49 = t52.
    ENDIF.
    t48 = t49.
    IF t49 = abap_true.
      DATA t54 TYPE abap_bool.
      DATA(t55) = t1.
      t54 = xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_integer_type ).
      t48 = t54.
    ENDIF.
    IF t48 = abap_true.
      DATA(t56) = abap_false.
      result = t56.
      RETURN.
    ENDIF.
    DATA(t57) = abap_true.
    result = t57.

  ENDMETHOD.

  METHOD structure_contains_string.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_structure_type.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = t3.
    t5 = t6->components.
    t2 = t5.
    DATA t7 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
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
      DATA(t18) = t7.
      t17 = t18->zlnt_view_read_sr_455340cd1e80( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_string_type ).
      IF t16 = abap_true.
        DATA(t19) = abap_true.
        result = t19.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t20) = abap_false.
    result = t20.

  ENDMETHOD.

  METHOD structure_contains_void.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_structure_type.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA(t6) = t3.
    t5 = t6->components.
    t2 = t5.
    DATA t7 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
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
      DATA(t18) = t7.
      t17 = t18->zlnt_view_read_sr_455340cd1e80( ).
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_void_type ).
      IF t16 = abap_true.
        DATA(t19) = abap_true.
        result = t19.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t20) = abap_false.
    result = t20.

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
    DATA(t9) = t1.
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = t8.
    t10 = t11->children.
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
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t16) = t1.
      t15 = t16.
      DATA t17 TYPE REF TO zif_lnt_node.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA t19 TYPE REF TO zif_lnt_node.
        CLEAR t19.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t21) = t15.
        t20 = t21->children.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        t20->load( ).
        CLEAR t22.
        READ TABLE t20->items INDEX 1 INTO t22.
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t23.
        CLEAR t19.
        IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t23 ?= t22.
          DATA t24 TYPE REF TO object.
          t24 = t23->as_ref( ).
          t19 ?= t24.
        ELSE.
          t19 ?= t22.
        ENDIF.
        t17 = t19.
      ELSE.
        DATA t25 TYPE REF TO zif_lnt_node.
        CLEAR t25.
        t17 = t25.
      ENDIF.
      t14 = t17.
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_token_node_regex ).
      t3 = t13.
    ENDIF.
    t2 = t3.
    IF t3 = abap_true.
      DATA(t26) = VALUE abap_bool( ).
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t28.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      DATA t30 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t30.
      DATA t31 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t31.
      DATA t32 TYPE REF TO zif_lnt_node.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t34) = t1.
      t33 = t34.
      DATA t35 TYPE REF TO zif_lnt_node.
      CLEAR t35.
      DATA(t36) = abap_true.
      IF t36 = abap_true.
        DATA t37 TYPE REF TO zif_lnt_node.
        CLEAR t37.
        DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t39) = t33.
        t38 = t39->children.
        DATA t40 TYPE REF TO object.
        CLEAR t40.
        t38->load( ).
        CLEAR t40.
        READ TABLE t38->items INDEX 1 INTO t40.
        DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t41.
        CLEAR t37.
        IF t40 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t41 ?= t40.
          DATA t42 TYPE REF TO object.
          t42 = t41->as_ref( ).
          t37 ?= t42.
        ELSE.
          t37 ?= t40.
        ENDIF.
        t35 = t37.
      ELSE.
        DATA t43 TYPE REF TO zif_lnt_node.
        CLEAR t43.
        t35 = t43.
      ENDIF.
      t32 = t35.
      t31 ?= t32.
      t30 = t31.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t44.
      DATA(t45) = VALUE abap_bool( ).
      DATA(t46) = t30.
      IF t46 IS INITIAL.
        t45 = abap_true.
      ENDIF.
      IF t45 = abap_true.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        t44 = t47.
      ELSE.
        DATA t48 TYPE string.
        DATA t49 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t50) = t30.
        t49 = t50.
        t48 = t49->concat_tokens( ).
        DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t51->has = abap_true.
        t51->value = t48.
        t44 = t51.
      ENDIF.
      t29 = t44.
      t28 = t29.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t52.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = t28.
      IF t54 IS INITIAL.
        t53 = abap_true.
      ELSEIF t54->has = abap_false.
        t53 = abap_true.
      ENDIF.
      IF t53 = abap_true.
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t55.
        t52 = t55.
      ELSE.
        DATA t56 TYPE string.
        DATA t57 TYPE string.
        DATA(t58) = t28.
        t57 = t58->value.
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
      CLEAR t61.
      DATA(t62) = abap_true.
      IF t62 = abap_true.
        DATA(t63) = |BOOLC|.
        DATA(t64) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t64->has = abap_true.
        t64->value = t63.
        t61 = t64.
      ELSE.
        DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t65.
        t61 = t65.
      ENDIF.
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
      DATA(t68) = abap_true.
      result = t68.
      RETURN.
    ENDIF.
    DATA t69 TYPE abap_bool.
    DATA t70 TYPE i.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t73 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t74) = t1.
    t73 = t74.
    DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t76) = t73.
    t75 = t76->children.
    t72 = t75.
    t71 ?= t72.
    t71->load( ).
    t70 = lines( t71->items ).
    DATA(t77) = 3.
    t69 = xsdbool( t70 >= t77 ).
    IF t69 = abap_true.
      DATA t78 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t78.
      DATA t79 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t79.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t81 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t82 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t83) = t1.
      t82 = t83.
      DATA t84 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t85) = t82.
      t84 = t85->children.
      t81 = t84.
      t80 ?= t81.
      DATA t86 TYPE REF TO object.
      CLEAR t86.
      t80->load( ).
      CLEAR t86.
      READ TABLE t80->items INDEX 2 INTO t86.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t87.
      CLEAR t79.
      IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t87 ?= t86.
        DATA t88 TYPE REF TO object.
        t88 = t87->as_ref( ).
        t79 ?= t88.
      ELSE.
        t79 ?= t86.
      ENDIF.
      t78 = t79.
      DATA t89 TYPE abap_bool.
      DATA t90 TYPE string.
      DATA t91 TYPE REF TO zcl_lnt_abstract_token.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t93) = t78.
      t92 = t93->get_first_token( ).
      t91 = t92.
      DATA t94 TYPE string.
      DATA(t95) = t91.
      t94 = t95->str.
      t90 = t94.
      DATA(t96) = |&&|.
      t89 = xsdbool( t90 = t96 ).
      IF t89 = abap_true.
        DATA(t97) = abap_true.
        result = t97.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t98) = VALUE abap_bool( ).
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = VALUE abap_bool( ).
    DATA t102 TYPE REF TO zcl_lnt_expression_node.
    DATA t103 TYPE REF TO zcl_lnt_expression_node.
    DATA(t104) = t1.
    DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d122_32972f7bb68e.
    t103 = t104->find_first_expression( i_type_9913 = t105 ).
    t102 = t103.
    DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t107.
    t106 = t107.
    DATA(t108) = VALUE abap_bool( ).
    DATA(t109) = VALUE abap_bool( ).
    DATA(t110) = t102.
    IF t110 IS INITIAL.
      t109 = abap_true.
    ENDIF.
    t108 = xsdbool( t109 = abap_false ).
    t101 = t108.
    t100 = t101.
    IF t101 = abap_false.
      DATA(t111) = VALUE abap_bool( ).
      DATA t112 TYPE REF TO zcl_lnt_expression_node.
      DATA t113 TYPE REF TO zcl_lnt_expression_node.
      DATA(t114) = t1.
      DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d278_cacef970a917.
      t113 = t114->find_first_expression( i_type_9913 = t115 ).
      t112 = t113.
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      t116 = t117.
      DATA(t118) = VALUE abap_bool( ).
      DATA(t119) = VALUE abap_bool( ).
      DATA(t120) = t112.
      IF t120 IS INITIAL.
        t119 = abap_true.
      ENDIF.
      t118 = xsdbool( t119 = abap_false ).
      t111 = t118.
      t100 = t111.
    ENDIF.
    t99 = t100.
    IF t100 = abap_false.
      DATA(t121) = VALUE abap_bool( ).
      DATA t122 TYPE REF TO zcl_lnt_expression_node.
      DATA t123 TYPE REF TO zcl_lnt_expression_node.
      DATA(t124) = t1.
      DATA(t125) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
      t123 = t124->find_first_expression( i_type_9913 = t125 ).
      t122 = t123.
      DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t127.
      t126 = t127.
      DATA(t128) = VALUE abap_bool( ).
      DATA(t129) = VALUE abap_bool( ).
      DATA(t130) = t122.
      IF t130 IS INITIAL.
        t129 = abap_true.
      ENDIF.
      t128 = xsdbool( t129 = abap_false ).
      t121 = t128.
      t99 = t121.
    ENDIF.
    t98 = t99.
    DATA(t131) = t98.
    result = t131.

  ENDMETHOD.

  METHOD is_hex_constant.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t4.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t9.
      t6 = t9.
    ELSE.
      DATA t10 TYPE string.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = t4.
      t11 = t12.
      t10 = t11->concat_tokens( ).
      DATA(t13) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t13->has = abap_true.
      t13->value = t10.
      t6 = t13.
    ENDIF.
    t3 = t6.
    t2 = t3.
    DATA(t14) = VALUE abap_bool( ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t16) = t2.
    t15 = t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    t17 = t18.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = t15.
    IF t20 IS INITIAL.
      t19 = abap_true.
    ELSEIF t20->has = abap_false.
      t19 = abap_true.
    ENDIF.
    t14 = t19.
    IF t14 = abap_true.
      DATA(t21) = abap_true.
      result = t21.
      RETURN.
    ENDIF.
    DATA(t22) = VALUE abap_bool( ).
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE string.
    DATA(t26) = t2.
    t25 = t26->value.
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
      DATA(t34) = t2.
      t33 = t34->value.
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
      DATA(t43) = t2.
      t42 = t43->value.
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
        DATA(t51) = t2.
        t50 = t51->value.
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
      DATA(t60) = t2.
      t59 = t60->value.
      DATA(t61) = 1.
      DATA t62 TYPE i.
      DATA t63 TYPE i.
      DATA t64 TYPE string.
      DATA(t65) = t2.
      t64 = t65->value.
      DATA(t66) = strlen( t64 ).
      t63 = t66.
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
      DATA(t72) = t57.
      DATA(t73) = strlen( t72 ).
      t71 = t73.
      DATA(t74) = 0.
      t70 = xsdbool( t71 > t74 ).
      t69 = t70.
      IF t70 = abap_true.
        DATA t75 TYPE abap_bool.
        DATA t76 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t76.
        DATA(t77) = |^[0-9A-Fa-f]+$|.
        DATA(t78) = ||.
        CREATE OBJECT t76 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t77 flags = t78.
        DATA(t79) = t57.
        t75 = t76->test( p0 = t79 ).
        t69 = t75.
      ENDIF.
      result = t69.
      RETURN.
    ENDIF.
    DATA(t80) = abap_true.
    result = t80.

  ENDMETHOD.

  METHOD is_assignable_new.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = i_node.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = t3.
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t8.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    IF t11 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t13.
      t10 = t13.
    ELSE.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      DATA(t16) = t8.
      t15 = t16.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d91_10c609bb0b604f.
      t14 = t15->find_first_expression( i_type_9913 = t17 ).
      t10 = t14.
    ENDIF.
    t7 = t10.
    t6 = t7.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    t18 = t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t6.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t20 = xsdbool( t21 = abap_false ).
    t5 = t20.
    t4 = t5.
    DATA(t23) = VALUE abap_bool( ).
    DATA t24 TYPE abap_bool.
    DATA(t25) = t4.
    t24 = t25.
    IF t25 = abap_true.
      DATA t26 TYPE abap_bool.
      DATA(t27) = t1.
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_hex_type ).
      t24 = t26.
    ENDIF.
    t23 = t24.
    IF t24 = abap_true.
      DATA t28 TYPE abap_bool.
      DATA(t29) = t2.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_integer_type ).
      t23 = t28.
    ENDIF.
    IF t23 = abap_true.
      DATA(t30) = abap_false.
      result = t30.
      RETURN.
    ENDIF.
    DATA t31 TYPE abap_bool.
    DATA(t32) = t1.
    DATA(t33) = t2.
    t31 = me->is_assignable( i_source_75cf = t32 i_target_5f8a = t33 ).
    result = t31.

  ENDMETHOD.

  METHOD is_assignable_strict.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = i_node.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t3.
    t6 = xsdbool( t7 IS BOUND ).
    IF t6 = abap_true.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t9.
      DATA(t10) = t3.
      t9 = t10.
      t8 = me->is_calculated( i_node = t9 ).
      t5 = t8.
    ELSE.
      DATA(t11) = abap_false.
      t5 = t11.
    ENDIF.
    t4 = t5.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t4.
    t13 = t14.
    IF t14 = abap_true.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t1.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_string_type ).
      t13 = t15.
    ENDIF.
    t12 = t13.
    IF t13 = abap_true.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t2.
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_x_string_type ).
      t17 = t18.
      IF t18 = abap_false.
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = t2.
        t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_x_sequence_type ).
        t17 = t20.
      ENDIF.
      t12 = t17.
    ENDIF.
    IF t12 = abap_true.
      DATA(t22) = abap_false.
      result = t22.
      RETURN.
    ENDIF.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = t4.
    t24 = t25.
    IF t25 = abap_true.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = t1.
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_integer_type ).
      t24 = t26.
    ENDIF.
    t23 = t24.
    IF t24 = abap_true.
      DATA(t28) = VALUE abap_bool( ).
      DATA(t29) = t2.
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_date_type ).
      t23 = t28.
    ENDIF.
    IF t23 = abap_true.
      DATA(t30) = abap_false.
      result = t30.
      RETURN.
    ENDIF.
    DATA(t31) = VALUE abap_bool( ).
    DATA(t32) = VALUE abap_bool( ).
    DATA(t33) = VALUE abap_bool( ).
    DATA(t34) = t2.
    t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_numeric_type ).
    t32 = t33.
    IF t33 = abap_true.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t1.
      t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_character_type ).
      t35 = t36.
      IF t36 = abap_false.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = t1.
        t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_string_type ).
        t35 = t38.
      ENDIF.
      t32 = t35.
    ENDIF.
    t31 = t32.
    IF t32 = abap_true.
      DATA(t40) = VALUE abap_bool( ).
      DATA t41 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t41.
      DATA t42 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t43.
      DATA t44 TYPE REF TO zif_lnt_union_f16d2839.
      CLEAR t44.
      DATA t45 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t45.
      DATA(t46) = t1.
      t45 = t46.
      t44 ?= t45.
      t43 = t44->get_abstract_type_data( ).
      t42 = t43.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = t42.
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      IF t48 = abap_true.
        DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t50.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t51.
        DATA t52 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t52.
        DATA(t53) = t42.
        t52 = t53.
        t51 = t52->zlnt_view_read_sr_b01015468803( ).
        t47 = t51.
      ENDIF.
      t41 = t47.
      DATA t54 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t54.
      DATA(t55) = abap_true.
      IF t55 = abap_true.
        DATA(t56) = abap_true.
        DATA(t57) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t57->has = abap_true.
        t57->value = t56.
        t54 = t57.
      ELSE.
        DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t58.
        t54 = t58.
      ENDIF.
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
      CLEAR t61.
      DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t62.
      DATA t63 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t63.
      DATA(t64) = t3.
      t63 = t64.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = t63.
      IF t67 IS INITIAL.
        t66 = abap_true.
      ENDIF.
      IF t66 = abap_true.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t65 = t68.
      ELSE.
        DATA(t69) = VALUE string( ).
        DATA t70 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t70.
        DATA(t71) = t63.
        t70 = t71.
        t69 = t70->concat_tokens( ).
        DATA(t72) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t72->has = abap_true.
        t72->value = t69.
        t65 = t72.
      ENDIF.
      t62 = t65.
      t61 = t62.
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = VALUE abap_bool( ).
      DATA(t75) = VALUE abap_bool( ).
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t76.
      DATA(t77) = t61.
      t76 = t77.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t78.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      t78 = t79.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = t76.
      IF t82 IS INITIAL.
        t81 = abap_true.
      ELSEIF t82->has = abap_false.
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
        DATA(t87) = t61.
        t86 = t87->value.
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
          DATA(t95) = t61.
          t94 = t95->value.
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
          DATA(t104) = t61.
          t103 = t104->value.
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
            DATA(t112) = t61.
            t111 = t112->value.
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
        CLEAR t120.
        DATA(t121) = `^\d*$`.
        DATA(t122) = |^[0-9]*$|.
        DATA(t123) = ||.
        CREATE OBJECT t120 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t122 flags = t123.
        t120->source = t121.
        DATA(t124) = VALUE string( ).
        DATA(t125) = VALUE string( ).
        DATA(t126) = t61.
        t125 = t126->value.
        DATA(t127) = 1.
        DATA(t128) = VALUE i( ).
        DATA(t129) = VALUE i( ).
        DATA(t130) = VALUE string( ).
        DATA(t131) = t61.
        t130 = t131->value.
        DATA(t132) = strlen( t130 ).
        t129 = t132.
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
        DATA(t135) = abap_false.
        t118 = xsdbool( t119 = t135 ).
        t73 = t118.
      ENDIF.
      IF t73 = abap_true.
        DATA(t136) = abap_false.
        result = t136.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t137) = t4.
    IF t137 = abap_true.
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = t1.
      DATA(t140) = t2.
      t138 = me->is_assignable( i_source_75cf = t139 i_target_5f8a = t140 ).
      result = t138.
      RETURN.
    ENDIF.
    DATA(t141) = VALUE abap_bool( ).
    DATA(t142) = t2.
    t141 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_c_like_type ).
    IF t141 = abap_true.
      DATA(t143) = VALUE abap_bool( ).
      DATA(t144) = t1.
      t143 = me->is_char_like_strict( i_type_9913 = t144 ).
      result = t143.
      RETURN.
    ENDIF.
    DATA(t145) = VALUE abap_bool( ).
    DATA(t146) = t2.
    t145 = xsdbool( t146 IS BOUND AND t146 IS INSTANCE OF zcl_lnt_p_generic_type ).
    IF t145 = abap_true.
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = VALUE abap_bool( ).
      DATA(t149) = VALUE abap_bool( ).
      DATA(t150) = VALUE abap_bool( ).
      DATA(t151) = VALUE abap_bool( ).
      DATA(t152) = VALUE abap_bool( ).
      DATA(t153) = t1.
      t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_packed_type ).
      t151 = t152.
      IF t152 = abap_false.
        DATA(t154) = VALUE abap_bool( ).
        DATA(t155) = t1.
        t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_p_generic_type ).
        t151 = t154.
      ENDIF.
      t150 = t151.
      IF t151 = abap_false.
        DATA(t156) = VALUE abap_bool( ).
        DATA(t157) = t1.
        t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_void_type ).
        t150 = t156.
      ENDIF.
      t149 = t150.
      IF t150 = abap_false.
        DATA(t158) = VALUE abap_bool( ).
        DATA(t159) = t1.
        t158 = xsdbool( t159 IS BOUND AND t159 IS INSTANCE OF zcl_lnt_any_type ).
        t149 = t158.
      ENDIF.
      t148 = t149.
      IF t149 = abap_false.
        DATA(t160) = VALUE abap_bool( ).
        DATA(t161) = t1.
        t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_data_type ).
        t148 = t160.
      ENDIF.
      t147 = t148.
      IF t148 = abap_false.
        DATA(t162) = VALUE abap_bool( ).
        DATA(t163) = t1.
        t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_unknown_type ).
        t147 = t162.
      ENDIF.
      result = t147.
      RETURN.
    ENDIF.
    DATA(t164) = VALUE abap_bool( ).
    DATA(t165) = VALUE abap_bool( ).
    DATA(t166) = t1.
    t165 = xsdbool( t166 IS BOUND AND t166 IS INSTANCE OF zcl_lnt_c_generic_type ).
    t164 = t165.
    IF t165 = abap_true.
      DATA(t167) = VALUE abap_bool( ).
      DATA(t168) = t2.
      t167 = xsdbool( t168 IS BOUND AND t168 IS INSTANCE OF zcl_lnt_string_type ).
      t164 = t167.
    ENDIF.
    IF t164 = abap_true.
      DATA(t169) = abap_false.
      result = t169.
      RETURN.
    ELSE.
      DATA(t170) = VALUE abap_bool( ).
      DATA(t171) = t1.
      t170 = xsdbool( t171 IS BOUND AND t171 IS INSTANCE OF zcl_lnt_character_type ).
      IF t170 = abap_true.
        DATA(t172) = VALUE abap_bool( ).
        DATA(t173) = t2.
        t172 = xsdbool( t173 IS BOUND AND t173 IS INSTANCE OF zcl_lnt_character_type ).
        IF t172 = abap_true.
          DATA(t174) = VALUE abap_bool( ).
          DATA t175 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t175.
          DATA t176 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t176.
          DATA t177 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t177.
          DATA t178 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t178.
          DATA t179 TYPE REF TO zcl_lnt_character_type.
          CLEAR t179.
          DATA(t180) = t1.
          t179 ?= t180.
          t178 = t179.
          DATA t181 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t181.
          DATA(t182) = t178.
          t181 = t182->data_56cc.
          t177 = t181.
          t176 = t177.
          DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = t176.
          IF t185 IS INITIAL.
            t184 = abap_true.
          ENDIF.
          IF t184 = abap_true.
            DATA t186 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t186.
            t183 = t186.
          ELSE.
            DATA t187 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t187.
            DATA t188 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t188.
            DATA(t189) = t176.
            t188 = t189.
            t187 = t188->zlnt_view_read_sr_b01015468803( ).
            t183 = t187.
          ENDIF.
          t175 = t183.
          DATA t190 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t190.
          DATA(t191) = abap_true.
          IF t191 = abap_true.
            DATA(t192) = abap_true.
            DATA(t193) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t193->has = abap_true.
            t193->value = t192.
            t190 = t193.
          ELSE.
            DATA t194 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t194.
            t190 = t194.
          ENDIF.
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
            DATA t199 TYPE REF TO zcl_lnt_character_type.
            CLEAR t199.
            DATA t200 TYPE REF TO zcl_lnt_character_type.
            CLEAR t200.
            DATA(t201) = t1.
            t200 ?= t201.
            t199 = t200.
            DATA(t202) = VALUE f( ).
            DATA(t203) = t199.
            t202 = t203->length.
            t198 = t202.
            DATA(t204) = VALUE f( ).
            DATA t205 TYPE REF TO zcl_lnt_character_type.
            CLEAR t205.
            DATA t206 TYPE REF TO zcl_lnt_character_type.
            CLEAR t206.
            DATA(t207) = t2.
            t206 ?= t207.
            t205 = t206.
            DATA(t208) = VALUE f( ).
            DATA(t209) = t205.
            t208 = t209->length.
            t204 = t208.
            t197 = xsdbool( t198 <= t204 ).
            result = t197.
            RETURN.
          ENDIF.
          DATA(t210) = VALUE abap_bool( ).
          DATA(t211) = VALUE f( ).
          DATA t212 TYPE REF TO zcl_lnt_character_type.
          CLEAR t212.
          DATA t213 TYPE REF TO zcl_lnt_character_type.
          CLEAR t213.
          DATA(t214) = t1.
          t213 ?= t214.
          t212 = t213.
          DATA(t215) = VALUE f( ).
          DATA(t216) = t212.
          t215 = t216->length.
          t211 = t215.
          DATA(t217) = VALUE f( ).
          DATA t218 TYPE REF TO zcl_lnt_character_type.
          CLEAR t218.
          DATA t219 TYPE REF TO zcl_lnt_character_type.
          CLEAR t219.
          DATA(t220) = t2.
          t219 ?= t220.
          t218 = t219.
          DATA(t221) = VALUE f( ).
          DATA(t222) = t218.
          t221 = t222->length.
          t217 = t221.
          t210 = xsdbool( t211 = t217 ).
          result = t210.
          RETURN.
        ELSE.
          DATA(t223) = VALUE abap_bool( ).
          DATA(t224) = t2.
          t223 = xsdbool( t224 IS BOUND AND t224 IS INSTANCE OF zcl_lnt_integer_type ).
          IF t223 = abap_true.
            DATA(t225) = VALUE abap_bool( ).
            DATA t226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t226.
            DATA t227 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t227.
            DATA t228 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t228.
            DATA t229 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t229.
            DATA t230 TYPE REF TO zcl_lnt_character_type.
            CLEAR t230.
            DATA(t231) = t1.
            t230 ?= t231.
            t229 = t230.
            DATA t232 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t232.
            DATA(t233) = t229.
            t232 = t233->data_56cc.
            t228 = t232.
            t227 = t228.
            DATA t234 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t234.
            DATA(t235) = VALUE abap_bool( ).
            DATA(t236) = t227.
            IF t236 IS INITIAL.
              t235 = abap_true.
            ENDIF.
            IF t235 = abap_true.
              DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t237.
              t234 = t237.
            ELSE.
              DATA t238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t238.
              DATA t239 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t239.
              DATA(t240) = t227.
              t239 = t240.
              t238 = t239->zlnt_view_read_sr_b01015468803( ).
              t234 = t238.
            ENDIF.
            t226 = t234.
            DATA t241 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t241.
            DATA(t242) = abap_true.
            IF t242 = abap_true.
              DATA(t243) = abap_true.
              DATA(t244) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t244->has = abap_true.
              t244->value = t243.
              t241 = t244.
            ELSE.
              DATA t245 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t245.
              t241 = t245.
            ENDIF.
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
              DATA(t248) = abap_true.
              result = t248.
              RETURN.
            ENDIF.
            DATA(t249) = abap_false.
            result = t249.
            RETURN.
          ELSE.
            DATA(t250) = VALUE abap_bool( ).
            DATA(t251) = t2.
            t250 = xsdbool( t251 IS BOUND AND t251 IS INSTANCE OF zcl_lnt_x_string_type ).
            IF t250 = abap_true.
              DATA(t252) = VALUE abap_bool( ).
              DATA t253 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t253.
              DATA t254 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t254.
              DATA t255 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t255.
              DATA t256 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t256.
              DATA t257 TYPE REF TO zcl_lnt_character_type.
              CLEAR t257.
              DATA(t258) = t1.
              t257 ?= t258.
              t256 = t257.
              DATA t259 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t259.
              DATA(t260) = t256.
              t259 = t260->data_56cc.
              t255 = t259.
              t254 = t255.
              DATA t261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t261.
              DATA(t262) = VALUE abap_bool( ).
              DATA(t263) = t254.
              IF t263 IS INITIAL.
                t262 = abap_true.
              ENDIF.
              IF t262 = abap_true.
                DATA t264 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t264.
                t261 = t264.
              ELSE.
                DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t265.
                DATA t266 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t266.
                DATA(t267) = t254.
                t266 = t267.
                t265 = t266->zlnt_view_read_sr_b01015468803( ).
                t261 = t265.
              ENDIF.
              t253 = t261.
              DATA t268 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t268.
              DATA(t269) = abap_true.
              IF t269 = abap_true.
                DATA(t270) = abap_true.
                DATA(t271) = NEW zlnt_runtime_opti_7f2541396f43( ).
                t271->has = abap_true.
                t271->value = t270.
                t268 = t271.
              ELSE.
                DATA t272 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t272.
                t268 = t272.
              ENDIF.
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
                DATA t276 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t276.
                DATA(t277) = t3.
                t276 = t277.
                DATA(t278) = VALUE abap_bool( ).
                DATA t279 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t279.
                DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t280.
                DATA t281 TYPE REF TO zcl_lnt_expression_node.
                CLEAR t281.
                DATA(t282) = t276.
                t281 = t282.
                DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t283.
                DATA(t284) = VALUE abap_bool( ).
                DATA(t285) = t281.
                IF t285 IS INITIAL.
                  t284 = abap_true.
                ENDIF.
                IF t284 = abap_true.
                  DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t286.
                  t283 = t286.
                ELSE.
                  DATA(t287) = VALUE string( ).
                  DATA t288 TYPE REF TO zcl_lnt_expression_node.
                  CLEAR t288.
                  DATA(t289) = t281.
                  t288 = t289.
                  t287 = t288->concat_tokens( ).
                  DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t290->has = abap_true.
                  t290->value = t287.
                  t283 = t290.
                ENDIF.
                t280 = t283.
                t279 = t280.
                DATA(t291) = VALUE abap_bool( ).
                DATA(t292) = VALUE abap_bool( ).
                DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t293.
                DATA(t294) = t279.
                t293 = t294.
                DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t295.
                DATA t296 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t296.
                t295 = t296.
                DATA(t297) = VALUE abap_bool( ).
                DATA(t298) = t293.
                IF t298 IS INITIAL.
                  t297 = abap_true.
                ELSEIF t298->has = abap_false.
                  t297 = abap_true.
                ENDIF.
                t292 = t297.
                IF t292 = abap_true.
                  DATA(t299) = abap_true.
                  t291 = t299.
                ELSE.
                  DATA(t300) = VALUE abap_bool( ).
                  DATA(t301) = VALUE abap_bool( ).
                  DATA(t302) = VALUE abap_bool( ).
                  DATA(t303) = VALUE abap_bool( ).
                  DATA(t304) = VALUE string( ).
                  DATA(t305) = t279.
                  t304 = t305->value.
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
                    DATA(t313) = t279.
                    t312 = t313->value.
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
                    DATA(t322) = t279.
                    t321 = t322->value.
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
                      DATA(t330) = t279.
                      t329 = t330->value.
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
                    DATA(t340) = t279.
                    t339 = t340->value.
                    DATA(t341) = 1.
                    DATA(t342) = VALUE i( ).
                    DATA(t343) = VALUE i( ).
                    DATA(t344) = VALUE string( ).
                    DATA(t345) = t279.
                    t344 = t345->value.
                    DATA(t346) = strlen( t344 ).
                    t343 = t346.
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
                    DATA(t352) = t337.
                    DATA(t353) = strlen( t352 ).
                    t351 = t353.
                    DATA(t354) = 0.
                    t350 = xsdbool( t351 > t354 ).
                    t349 = t350.
                    IF t350 = abap_true.
                      DATA(t355) = VALUE abap_bool( ).
                      DATA t356 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
                      CLEAR t356.
                      DATA(t357) = |^[0-9A-Fa-f]+$|.
                      DATA(t358) = ||.
                      CREATE OBJECT t356 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t357 flags = t358.
                      DATA(t359) = t337.
                      t355 = t356->test( p0 = t359 ).
                      t349 = t355.
                    ENDIF.
                    t336 = t349.
                    t300 = t336.
                  ELSE.
                    DATA(t360) = abap_true.
                    t300 = t360.
                  ENDIF.
                  t291 = t300.
                ENDIF.
                t278 = t291.
                t275 = t278.
                result = t275.
                RETURN.
              ENDIF.
              DATA(t361) = abap_false.
              result = t361.
              RETURN.
            ELSE.
              DATA(t362) = VALUE abap_bool( ).
              DATA(t363) = t2.
              t362 = xsdbool( t363 IS BOUND AND t363 IS INSTANCE OF zcl_lnt_string_type ).
              IF t362 = abap_true.
                DATA(t364) = VALUE abap_bool( ).
                DATA t365 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t365.
                DATA t366 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t366.
                DATA t367 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t367.
                DATA t368 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t368.
                DATA t369 TYPE REF TO zcl_lnt_character_type.
                CLEAR t369.
                DATA(t370) = t1.
                t369 ?= t370.
                t368 = t369.
                DATA t371 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t371.
                DATA(t372) = t368.
                t371 = t372->data_56cc.
                t367 = t371.
                t366 = t367.
                DATA t373 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t373.
                DATA(t374) = VALUE abap_bool( ).
                DATA(t375) = t366.
                IF t375 IS INITIAL.
                  t374 = abap_true.
                ENDIF.
                IF t374 = abap_true.
                  DATA t376 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t376.
                  t373 = t376.
                ELSE.
                  DATA t377 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t377.
                  DATA t378 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t378.
                  DATA(t379) = t366.
                  t378 = t379.
                  t377 = t378->zlnt_view_read_sr_b01015468803( ).
                  t373 = t377.
                ENDIF.
                t365 = t373.
                DATA t380 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t380.
                DATA(t381) = abap_true.
                IF t381 = abap_true.
                  DATA(t382) = abap_true.
                  DATA(t383) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t383->has = abap_true.
                  t383->value = t382.
                  t380 = t383.
                ELSE.
                  DATA t384 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t384.
                  t380 = t384.
                ENDIF.
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
                  DATA(t387) = abap_true.
                  result = t387.
                  RETURN.
                ENDIF.
                DATA(t388) = abap_false.
                result = t388.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t389) = VALUE abap_bool( ).
        DATA(t390) = t1.
        t389 = xsdbool( t390 IS BOUND AND t390 IS INSTANCE OF zcl_lnt_hex_type ).
        IF t389 = abap_true.
          DATA(t391) = VALUE abap_bool( ).
          DATA(t392) = t2.
          t391 = xsdbool( t392 IS BOUND AND t392 IS INSTANCE OF zcl_lnt_hex_type ).
          IF t391 = abap_true.
            DATA(t393) = VALUE abap_bool( ).
            DATA t394 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t394.
            DATA t395 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t395.
            DATA t396 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t396.
            DATA t397 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t397.
            DATA t398 TYPE REF TO zcl_lnt_hex_type.
            CLEAR t398.
            DATA(t399) = t1.
            t398 ?= t399.
            t397 = t398.
            DATA t400 TYPE REF TO zcl_lnt_abstract_type_data.
            CLEAR t400.
            DATA(t401) = t397.
            t400 = t401->data_56cc.
            t396 = t400.
            t395 = t396.
            DATA t402 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t402.
            DATA(t403) = VALUE abap_bool( ).
            DATA(t404) = t395.
            IF t404 IS INITIAL.
              t403 = abap_true.
            ENDIF.
            IF t403 = abap_true.
              DATA t405 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t405.
              t402 = t405.
            ELSE.
              DATA t406 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t406.
              DATA t407 TYPE REF TO zcl_lnt_abstract_type_data.
              CLEAR t407.
              DATA(t408) = t395.
              t407 = t408.
              t406 = t407->zlnt_view_read_sr_b01015468803( ).
              t402 = t406.
            ENDIF.
            t394 = t402.
            DATA t409 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t409.
            DATA(t410) = abap_true.
            IF t410 = abap_true.
              DATA(t411) = abap_true.
              DATA(t412) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t412->has = abap_true.
              t412->value = t411.
              t409 = t412.
            ELSE.
              DATA t413 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t413.
              t409 = t413.
            ENDIF.
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
              DATA t418 TYPE REF TO zcl_lnt_hex_type.
              CLEAR t418.
              DATA t419 TYPE REF TO zcl_lnt_hex_type.
              CLEAR t419.
              DATA(t420) = t1.
              t419 ?= t420.
              t418 = t419.
              DATA(t421) = VALUE f( ).
              DATA(t422) = t418.
              t421 = t422->length.
              t417 = t421.
              DATA(t423) = VALUE f( ).
              DATA t424 TYPE REF TO zcl_lnt_hex_type.
              CLEAR t424.
              DATA t425 TYPE REF TO zcl_lnt_hex_type.
              CLEAR t425.
              DATA(t426) = t2.
              t425 ?= t426.
              t424 = t425.
              DATA(t427) = VALUE f( ).
              DATA(t428) = t424.
              t427 = t428->length.
              t423 = t427.
              t416 = xsdbool( t417 <= t423 ).
              result = t416.
              RETURN.
            ENDIF.
            DATA(t429) = VALUE abap_bool( ).
            DATA(t430) = VALUE f( ).
            DATA t431 TYPE REF TO zcl_lnt_hex_type.
            CLEAR t431.
            DATA t432 TYPE REF TO zcl_lnt_hex_type.
            CLEAR t432.
            DATA(t433) = t1.
            t432 ?= t433.
            t431 = t432.
            DATA(t434) = VALUE f( ).
            DATA(t435) = t431.
            t434 = t435->length.
            t430 = t434.
            DATA(t436) = VALUE f( ).
            DATA t437 TYPE REF TO zcl_lnt_hex_type.
            CLEAR t437.
            DATA t438 TYPE REF TO zcl_lnt_hex_type.
            CLEAR t438.
            DATA(t439) = t2.
            t438 ?= t439.
            t437 = t438.
            DATA(t440) = VALUE f( ).
            DATA(t441) = t437.
            t440 = t441->length.
            t436 = t440.
            t429 = xsdbool( t430 = t436 ).
            result = t429.
            RETURN.
          ELSE.
            DATA(t442) = VALUE abap_bool( ).
            DATA(t443) = t2.
            t442 = xsdbool( t443 IS BOUND AND t443 IS INSTANCE OF zcl_lnt_x_string_type ).
            IF t442 = abap_true.
              DATA(t444) = abap_false.
              result = t444.
              RETURN.
            ELSE.
              DATA(t445) = VALUE abap_bool( ).
              DATA(t446) = VALUE abap_bool( ).
              DATA(t447) = t2.
              t446 = xsdbool( t447 IS BOUND AND t447 IS INSTANCE OF zcl_lnt_integer_type ).
              t445 = t446.
              IF t446 = abap_false.
                DATA(t448) = VALUE abap_bool( ).
                DATA(t449) = t2.
                t448 = xsdbool( t449 IS BOUND AND t449 IS INSTANCE OF zcl_lnt_integer8_type ).
                t445 = t448.
              ENDIF.
              IF t445 = abap_true.
                DATA(t450) = VALUE abap_bool( ).
                DATA t451 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t451.
                DATA t452 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t452.
                DATA t453 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t453.
                DATA t454 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t454.
                DATA t455 TYPE REF TO zcl_lnt_hex_type.
                CLEAR t455.
                DATA(t456) = t1.
                t455 ?= t456.
                t454 = t455.
                DATA t457 TYPE REF TO zcl_lnt_abstract_type_data.
                CLEAR t457.
                DATA(t458) = t454.
                t457 = t458->data_56cc.
                t453 = t457.
                t452 = t453.
                DATA t459 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t459.
                DATA(t460) = VALUE abap_bool( ).
                DATA(t461) = t452.
                IF t461 IS INITIAL.
                  t460 = abap_true.
                ENDIF.
                IF t460 = abap_true.
                  DATA t462 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t462.
                  t459 = t462.
                ELSE.
                  DATA t463 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t463.
                  DATA t464 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t464.
                  DATA(t465) = t452.
                  t464 = t465.
                  t463 = t464->zlnt_view_read_sr_b01015468803( ).
                  t459 = t463.
                ENDIF.
                t451 = t459.
                DATA t466 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t466.
                DATA(t467) = abap_true.
                IF t467 = abap_true.
                  DATA(t468) = abap_true.
                  DATA(t469) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t469->has = abap_true.
                  t469->value = t468.
                  t466 = t469.
                ELSE.
                  DATA t470 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t470.
                  t466 = t470.
                ENDIF.
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
                  DATA(t473) = abap_true.
                  result = t473.
                  RETURN.
                ENDIF.
                DATA(t474) = abap_false.
                result = t474.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ELSE.
          DATA(t475) = VALUE abap_bool( ).
          DATA(t476) = VALUE abap_bool( ).
          DATA(t477) = t1.
          t476 = xsdbool( t477 IS BOUND AND t477 IS INSTANCE OF zcl_lnt_date_type ).
          t475 = t476.
          IF t476 = abap_false.
            DATA(t478) = VALUE abap_bool( ).
            DATA(t479) = t1.
            t478 = xsdbool( t479 IS BOUND AND t479 IS INSTANCE OF zcl_lnt_time_type ).
            t475 = t478.
          ENDIF.
          IF t475 = abap_true.
            DATA(t480) = VALUE abap_bool( ).
            DATA(t481) = VALUE abap_bool( ).
            DATA(t482) = t2.
            t481 = xsdbool( t482 IS BOUND AND t482 IS INSTANCE OF zcl_lnt_character_type ).
            t480 = t481.
            IF t481 = abap_false.
              DATA(t483) = VALUE abap_bool( ).
              DATA(t484) = t2.
              t483 = xsdbool( t484 IS BOUND AND t484 IS INSTANCE OF zcl_lnt_string_type ).
              t480 = t483.
            ENDIF.
            IF t480 = abap_true.
              DATA(t485) = abap_false.
              result = t485.
              RETURN.
            ENDIF.
          ELSE.
            DATA(t486) = VALUE abap_bool( ).
            DATA(t487) = t1.
            t486 = xsdbool( t487 IS BOUND AND t487 IS INSTANCE OF zcl_lnt_string_type ).
            IF t486 = abap_true.
              DATA(t488) = VALUE abap_bool( ).
              DATA(t489) = VALUE abap_bool( ).
              DATA(t490) = t2.
              t489 = xsdbool( t490 IS BOUND AND t490 IS INSTANCE OF zcl_lnt_structure_type ).
              t488 = t489.
              IF t489 = abap_true.
                DATA(t491) = VALUE abap_bool( ).
                DATA t492 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t492.
                DATA(t493) = t2.
                t492 ?= t493.
                t491 = me->structure_contains_string( i_structure = t492 ).
                t488 = t491.
              ENDIF.
              IF t488 = abap_true.
                DATA(t494) = abap_false.
                result = t494.
                RETURN.
              ELSE.
                DATA(t495) = VALUE abap_bool( ).
                DATA(t496) = t2.
                t495 = xsdbool( t496 IS BOUND AND t496 IS INSTANCE OF zcl_lnt_character_type ).
                IF t495 = abap_true.
                  DATA(t497) = VALUE abap_bool( ).
                  DATA t498 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t498.
                  DATA t499 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t499.
                  DATA t500 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t500.
                  DATA t501 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t501.
                  DATA t502 TYPE REF TO zcl_lnt_string_type.
                  CLEAR t502.
                  DATA(t503) = t1.
                  t502 ?= t503.
                  t501 = t502.
                  DATA t504 TYPE REF TO zcl_lnt_abstract_type_data.
                  CLEAR t504.
                  DATA(t505) = t501.
                  t504 = t505->data_56cc.
                  t500 = t504.
                  t499 = t500.
                  DATA t506 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t506.
                  DATA(t507) = VALUE abap_bool( ).
                  DATA(t508) = t499.
                  IF t508 IS INITIAL.
                    t507 = abap_true.
                  ENDIF.
                  IF t507 = abap_true.
                    DATA t509 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t509.
                    t506 = t509.
                  ELSE.
                    DATA t510 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t510.
                    DATA t511 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t511.
                    DATA(t512) = t499.
                    t511 = t512.
                    t510 = t511->zlnt_view_read_sr_b01015468803( ).
                    t506 = t510.
                  ENDIF.
                  t498 = t506.
                  DATA t513 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t513.
                  DATA(t514) = abap_true.
                  IF t514 = abap_true.
                    DATA(t515) = abap_true.
                    DATA(t516) = NEW zlnt_runtime_opti_7f2541396f43( ).
                    t516->has = abap_true.
                    t516->value = t515.
                    t513 = t516.
                  ELSE.
                    DATA t517 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t517.
                    t513 = t517.
                  ENDIF.
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
                    DATA(t520) = abap_true.
                    result = t520.
                    RETURN.
                  ENDIF.
                  DATA(t521) = abap_false.
                  result = t521.
                  RETURN.
                ELSE.
                  DATA(t522) = VALUE abap_bool( ).
                  DATA(t523) = t2.
                  t522 = xsdbool( t523 IS BOUND AND t523 IS INSTANCE OF zcl_lnt_integer_type ).
                  IF t522 = abap_true.
                    DATA(t524) = VALUE abap_bool( ).
                    DATA t525 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t525.
                    DATA t526 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t526.
                    DATA t527 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t527.
                    DATA t528 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t528.
                    DATA t529 TYPE REF TO zcl_lnt_string_type.
                    CLEAR t529.
                    DATA(t530) = t1.
                    t529 ?= t530.
                    t528 = t529.
                    DATA t531 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t531.
                    DATA(t532) = t528.
                    t531 = t532->data_56cc.
                    t527 = t531.
                    t526 = t527.
                    DATA t533 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t533.
                    DATA(t534) = VALUE abap_bool( ).
                    DATA(t535) = t526.
                    IF t535 IS INITIAL.
                      t534 = abap_true.
                    ENDIF.
                    IF t534 = abap_true.
                      DATA t536 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t536.
                      t533 = t536.
                    ELSE.
                      DATA t537 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t537.
                      DATA t538 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t538.
                      DATA(t539) = t526.
                      t538 = t539.
                      t537 = t538->zlnt_view_read_sr_b01015468803( ).
                      t533 = t537.
                    ENDIF.
                    t525 = t533.
                    DATA t540 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t540.
                    DATA(t541) = abap_true.
                    IF t541 = abap_true.
                      DATA(t542) = abap_true.
                      DATA(t543) = NEW zlnt_runtime_opti_7f2541396f43( ).
                      t543->has = abap_true.
                      t543->value = t542.
                      t540 = t543.
                    ELSE.
                      DATA t544 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t544.
                      t540 = t544.
                    ENDIF.
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
                      DATA(t547) = abap_true.
                      result = t547.
                      RETURN.
                    ENDIF.
                    DATA(t548) = abap_false.
                    result = t548.
                    RETURN.
                  ELSE.
                    DATA(t549) = VALUE abap_bool( ).
                    DATA(t550) = VALUE abap_bool( ).
                    DATA(t551) = t2.
                    t550 = xsdbool( t551 IS BOUND AND t551 IS INSTANCE OF zcl_lnt_c_generic_type ).
                    t549 = t550.
                    IF t550 = abap_false.
                      DATA(t552) = VALUE abap_bool( ).
                      DATA(t553) = t2.
                      t552 = xsdbool( t553 IS BOUND AND t553 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
                      t549 = t552.
                    ENDIF.
                    IF t549 = abap_true.
                      DATA(t554) = abap_false.
                      result = t554.
                      RETURN.
                    ELSE.
                      DATA(t555) = VALUE abap_bool( ).
                      DATA(t556) = VALUE abap_bool( ).
                      DATA(t557) = t2.
                      t556 = xsdbool( t557 IS BOUND AND t557 IS INSTANCE OF zcl_lnt_x_sequence_type ).
                      t555 = t556.
                      IF t556 = abap_false.
                        DATA(t558) = VALUE abap_bool( ).
                        DATA(t559) = t2.
                        t558 = xsdbool( t559 IS BOUND AND t559 IS INSTANCE OF zcl_lnt_x_string_type ).
                        t555 = t558.
                      ENDIF.
                      IF t555 = abap_true.
                        DATA(t560) = VALUE abap_bool( ).
                        DATA t561 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t561.
                        DATA t562 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t562.
                        DATA t563 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t563.
                        DATA t564 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t564.
                        DATA t565 TYPE REF TO zcl_lnt_string_type.
                        CLEAR t565.
                        DATA(t566) = t1.
                        t565 ?= t566.
                        t564 = t565.
                        DATA t567 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t567.
                        DATA(t568) = t564.
                        t567 = t568->data_56cc.
                        t563 = t567.
                        t562 = t563.
                        DATA t569 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t569.
                        DATA(t570) = VALUE abap_bool( ).
                        DATA(t571) = t562.
                        IF t571 IS INITIAL.
                          t570 = abap_true.
                        ENDIF.
                        IF t570 = abap_true.
                          DATA t572 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t572.
                          t569 = t572.
                        ELSE.
                          DATA t573 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t573.
                          DATA t574 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t574.
                          DATA(t575) = t562.
                          t574 = t575.
                          t573 = t574->zlnt_view_read_sr_b01015468803( ).
                          t569 = t573.
                        ENDIF.
                        t561 = t569.
                        DATA t576 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t576.
                        DATA(t577) = abap_true.
                        IF t577 = abap_true.
                          DATA(t578) = abap_true.
                          DATA(t579) = NEW zlnt_runtime_opti_7f2541396f43( ).
                          t579->has = abap_true.
                          t579->value = t578.
                          t576 = t579.
                        ELSE.
                          DATA t580 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t580.
                          t576 = t580.
                        ENDIF.
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
                          DATA(t583) = abap_true.
                          result = t583.
                          RETURN.
                        ENDIF.
                        DATA(t584) = abap_false.
                        result = t584.
                        RETURN.
                      ELSE.
                        DATA(t585) = VALUE abap_bool( ).
                        DATA(t586) = VALUE abap_bool( ).
                        DATA(t587) = VALUE abap_bool( ).
                        DATA(t588) = t2.
                        t587 = xsdbool( t588 IS BOUND AND t588 IS INSTANCE OF zcl_lnt_ty_table_type ).
                        t586 = t587.
                        IF t587 = abap_false.
                          DATA(t589) = VALUE abap_bool( ).
                          DATA(t590) = t2.
                          t589 = xsdbool( t590 IS BOUND AND t590 IS INSTANCE OF zcl_lnt_data_reference ).
                          t586 = t589.
                        ENDIF.
                        t585 = t586.
                        IF t586 = abap_false.
                          DATA(t591) = VALUE abap_bool( ).
                          DATA(t592) = t2.
                          t591 = xsdbool( t592 IS BOUND AND t592 IS INSTANCE OF zcl_lnt_object_reference_type ).
                          t585 = t591.
                        ENDIF.
                        IF t585 = abap_true.
                          DATA(t593) = abap_false.
                          result = t593.
                          RETURN.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
              DATA(t594) = abap_true.
              result = t594.
              RETURN.
            ELSE.
              DATA(t595) = VALUE abap_bool( ).
              DATA(t596) = t1.
              t595 = xsdbool( t596 IS BOUND AND t596 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t595 = abap_true.
                DATA(t597) = VALUE abap_bool( ).
                DATA(t598) = t2.
                t597 = xsdbool( t598 IS BOUND AND t598 IS INSTANCE OF zcl_lnt_structure_type ).
                IF t597 = abap_true.
                  DATA t599 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t599.
                  DATA t600 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t600.
                  DATA t601 TYPE REF TO zcl_lnt_structure_type.
                  CLEAR t601.
                  DATA t602 TYPE REF TO zcl_lnt_structure_type.
                  CLEAR t602.
                  DATA(t603) = t1.
                  t602 ?= t603.
                  t601 = t602.
                  DATA t604 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t604.
                  DATA(t605) = t601.
                  t604 = t605->components.
                  t600 = t604.
                  t599 = t600.
                  DATA t606 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t606.
                  DATA t607 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t607.
                  DATA t608 TYPE REF TO zcl_lnt_structure_type.
                  CLEAR t608.
                  DATA t609 TYPE REF TO zcl_lnt_structure_type.
                  CLEAR t609.
                  DATA(t610) = t2.
                  t609 ?= t610.
                  t608 = t609.
                  DATA t611 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t611.
                  DATA(t612) = t608.
                  t611 = t612->components.
                  t607 = t611.
                  t606 = t607.
                  DATA(t613) = VALUE abap_bool( ).
                  DATA(t614) = VALUE i( ).
                  DATA(t615) = t599.
                  t615->load( ).
                  t614 = lines( t615->items ).
                  DATA(t616) = VALUE i( ).
                  DATA(t617) = t606.
                  t617->load( ).
                  t616 = lines( t617->items ).
                  t613 = xsdbool( t614 <> t616 ).
                  IF t613 = abap_true.
                    DATA(t618) = abap_false.
                    result = t618.
                    RETURN.
                  ENDIF.
                  DATA(t619) = VALUE i( ).
                  DATA(t620) = 0.
                  t619 = t620.
                  DO.
                    DATA(t621) = VALUE abap_bool( ).
                    DATA(t622) = t619.
                    DATA(t623) = VALUE i( ).
                    DATA(t624) = t599.
                    t624->load( ).
                    t623 = lines( t624->items ).
                    t621 = xsdbool( t622 < t623 ).
                    IF t621 = abap_false.
                      EXIT.
                    ENDIF.
                    DATA(t625) = VALUE abap_bool( ).
                    DATA(t626) = VALUE abap_bool( ).
                    DATA t627 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t627.
                    DATA(t628) = abap_true.
                    IF t628 = abap_true.
                      DATA t629 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t629.
                      DATA t630 TYPE REF TO zcl_lnt_istructure_component.
                      CLEAR t630.
                      DATA(t631) = t599.
                      DATA(t632) = t619.
                      t632 = t632 + 1.
                      DATA t633 TYPE REF TO object.
                      CLEAR t633.
                      t631->load( ).
                      CLEAR t633.
                      READ TABLE t631->items INDEX t632 INTO t633.
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
                    ELSE.
                      DATA t640 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t640.
                      t627 = t640.
                    ENDIF.
                    DATA t641 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t641.
                    DATA(t642) = abap_true.
                    IF t642 = abap_true.
                      DATA t643 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t643.
                      DATA t644 TYPE REF TO zcl_lnt_istructure_component.
                      CLEAR t644.
                      DATA(t645) = t606.
                      DATA(t646) = t619.
                      t646 = t646 + 1.
                      DATA t647 TYPE REF TO object.
                      CLEAR t647.
                      t645->load( ).
                      CLEAR t647.
                      READ TABLE t645->items INDEX t646 INTO t647.
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
                    ELSE.
                      DATA t654 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t654.
                      t641 = t654.
                    ENDIF.
                    DATA t655 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t655.
                    t626 = me->is_assignable_strict( i_source_75cf = t627 i_target_5f8a = t641 i_node = t655 ).
                    DATA(t656) = abap_false.
                    t625 = xsdbool( t626 = t656 ).
                    IF t625 = abap_true.
                      DATA(t657) = abap_false.
                      result = t657.
                      RETURN.
                    ENDIF.
                    DATA(t658) = VALUE i( ).
                    DATA(t659) = t619.
                    DATA(t660) = 1.
                    t658 = t659 + t660.
                    t619 = t658.
                  ENDDO.
                  DATA(t661) = abap_true.
                  result = t661.
                  RETURN.
                ELSE.
                  DATA(t662) = VALUE abap_bool( ).
                  DATA(t663) = t2.
                  t662 = xsdbool( t663 IS BOUND AND t663 IS INSTANCE OF zcl_lnt_simple_type ).
                  IF t662 = abap_true.
                    DATA(t664) = VALUE abap_bool( ).
                    DATA t665 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t665.
                    DATA(t666) = t1.
                    t665 ?= t666.
                    t664 = me->is_char_like_strict( i_type_9913 = t665 ).
                    result = t664.
                    RETURN.
                  ELSE.
                    DATA(t667) = VALUE abap_bool( ).
                    DATA(t668) = t2.
                    t667 = xsdbool( t668 IS BOUND AND t668 IS INSTANCE OF zcl_lnt_c_like_type ).
                    IF t667 = abap_true.
                      DATA(t669) = VALUE abap_bool( ).
                      DATA t670 TYPE REF TO zcl_lnt_structure_type.
                      CLEAR t670.
                      DATA(t671) = t1.
                      t670 ?= t671.
                      t669 = me->is_char_like_strict( i_type_9913 = t670 ).
                      result = t669.
                      RETURN.
                    ELSE.
                      DATA(t672) = VALUE abap_bool( ).
                      DATA(t673) = VALUE abap_bool( ).
                      DATA(t674) = VALUE abap_bool( ).
                      DATA(t675) = VALUE abap_bool( ).
                      DATA(t676) = t2.
                      t675 = xsdbool( t676 IS BOUND AND t676 IS INSTANCE OF zcl_lnt_void_type ).
                      t674 = t675.
                      IF t675 = abap_false.
                        DATA(t677) = VALUE abap_bool( ).
                        DATA(t678) = t2.
                        t677 = xsdbool( t678 IS BOUND AND t678 IS INSTANCE OF zcl_lnt_any_type ).
                        t674 = t677.
                      ENDIF.
                      t673 = t674.
                      IF t674 = abap_false.
                        DATA(t679) = VALUE abap_bool( ).
                        DATA(t680) = t2.
                        t679 = xsdbool( t680 IS BOUND AND t680 IS INSTANCE OF zcl_lnt_data_type ).
                        t673 = t679.
                      ENDIF.
                      t672 = t673.
                      IF t673 = abap_false.
                        DATA(t681) = VALUE abap_bool( ).
                        DATA(t682) = t2.
                        t681 = xsdbool( t682 IS BOUND AND t682 IS INSTANCE OF zcl_lnt_unknown_type ).
                        t672 = t681.
                      ENDIF.
                      IF t672 = abap_true.
                        DATA(t683) = abap_true.
                        result = t683.
                        RETURN.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
                DATA(t684) = abap_false.
                result = t684.
                RETURN.
              ELSE.
                DATA(t685) = VALUE abap_bool( ).
                DATA(t686) = t1.
                t685 = xsdbool( t686 IS BOUND AND t686 IS INSTANCE OF zcl_lnt_integer8_type ).
                IF t685 = abap_true.
                  DATA(t687) = VALUE abap_bool( ).
                  DATA(t688) = VALUE abap_bool( ).
                  DATA(t689) = t2.
                  t688 = xsdbool( t689 IS BOUND AND t689 IS INSTANCE OF zcl_lnt_integer_type ).
                  t687 = t688.
                  IF t688 = abap_false.
                    DATA(t690) = VALUE abap_bool( ).
                    DATA(t691) = t2.
                    t690 = xsdbool( t691 IS BOUND AND t691 IS INSTANCE OF zcl_lnt_string_type ).
                    t687 = t690.
                  ENDIF.
                  IF t687 = abap_true.
                    DATA(t692) = abap_false.
                    result = t692.
                    RETURN.
                  ENDIF.
                ELSE.
                  DATA(t693) = VALUE abap_bool( ).
                  DATA(t694) = t1.
                  t693 = xsdbool( t694 IS BOUND AND t694 IS INSTANCE OF zcl_lnt_integer_type ).
                  IF t693 = abap_true.
                    DATA(t695) = VALUE abap_bool( ).
                    DATA(t696) = VALUE abap_bool( ).
                    DATA(t697) = VALUE abap_bool( ).
                    DATA(t698) = t2.
                    t697 = xsdbool( t698 IS BOUND AND t698 IS INSTANCE OF zcl_lnt_string_type ).
                    t696 = t697.
                    IF t697 = abap_false.
                      DATA(t699) = VALUE abap_bool( ).
                      DATA(t700) = t2.
                      t699 = xsdbool( t700 IS BOUND AND t700 IS INSTANCE OF zcl_lnt_date_type ).
                      t696 = t699.
                    ENDIF.
                    t695 = t696.
                    IF t696 = abap_false.
                      DATA(t701) = VALUE abap_bool( ).
                      DATA(t702) = t2.
                      t701 = xsdbool( t702 IS BOUND AND t702 IS INSTANCE OF zcl_lnt_character_type ).
                      t695 = t701.
                    ENDIF.
                    IF t695 = abap_true.
                      DATA(t703) = abap_false.
                      result = t703.
                      RETURN.
                    ELSE.
                      DATA(t704) = VALUE abap_bool( ).
                      DATA(t705) = VALUE abap_bool( ).
                      DATA(t706) = t2.
                      t705 = xsdbool( t706 IS BOUND AND t706 IS INSTANCE OF zcl_lnt_integer8_type ).
                      t704 = t705.
                      IF t705 = abap_false.
                        DATA(t707) = VALUE abap_bool( ).
                        DATA(t708) = t2.
                        t707 = xsdbool( t708 IS BOUND AND t708 IS INSTANCE OF zcl_lnt_packed_type ).
                        t704 = t707.
                      ENDIF.
                      IF t704 = abap_true.
                        DATA(t709) = VALUE abap_bool( ).
                        DATA t710 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t710.
                        DATA t711 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t711.
                        DATA t712 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t712.
                        DATA t713 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t713.
                        DATA t714 TYPE REF TO zcl_lnt_integer_type.
                        CLEAR t714.
                        DATA(t715) = t1.
                        t714 ?= t715.
                        t713 = t714.
                        DATA t716 TYPE REF TO zcl_lnt_abstract_type_data.
                        CLEAR t716.
                        DATA(t717) = t713.
                        t716 = t717->data_56cc.
                        t712 = t716.
                        t711 = t712.
                        DATA t718 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t718.
                        DATA(t719) = VALUE abap_bool( ).
                        DATA(t720) = t711.
                        IF t720 IS INITIAL.
                          t719 = abap_true.
                        ENDIF.
                        IF t719 = abap_true.
                          DATA t721 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t721.
                          t718 = t721.
                        ELSE.
                          DATA t722 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t722.
                          DATA t723 TYPE REF TO zcl_lnt_abstract_type_data.
                          CLEAR t723.
                          DATA(t724) = t711.
                          t723 = t724.
                          t722 = t723->zlnt_view_read_sr_b01015468803( ).
                          t718 = t722.
                        ENDIF.
                        t710 = t718.
                        DATA t725 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t725.
                        DATA(t726) = abap_true.
                        IF t726 = abap_true.
                          DATA(t727) = abap_true.
                          DATA(t728) = NEW zlnt_runtime_opti_7f2541396f43( ).
                          t728->has = abap_true.
                          t728->value = t727.
                          t725 = t728.
                        ELSE.
                          DATA t729 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t729.
                          t725 = t729.
                        ENDIF.
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
                          DATA(t732) = abap_true.
                          result = t732.
                          RETURN.
                        ENDIF.
                        DATA(t733) = abap_false.
                        result = t733.
                        RETURN.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    DATA(t734) = VALUE abap_bool( ).
                    DATA(t735) = VALUE abap_bool( ).
                    DATA(t736) = t1.
                    t735 = xsdbool( t736 IS BOUND AND t736 IS INSTANCE OF zcl_lnt_packed_type ).
                    t734 = t735.
                    IF t735 = abap_true.
                      DATA(t737) = VALUE abap_bool( ).
                      DATA(t738) = t2.
                      t737 = xsdbool( t738 IS BOUND AND t738 IS INSTANCE OF zcl_lnt_packed_type ).
                      t734 = t737.
                    ENDIF.
                    IF t734 = abap_true.
                      DATA(t739) = VALUE abap_bool( ).
                      DATA(t740) = VALUE abap_bool( ).
                      DATA(t741) = VALUE f( ).
                      DATA t742 TYPE REF TO zcl_lnt_packed_type.
                      CLEAR t742.
                      DATA t743 TYPE REF TO zcl_lnt_packed_type.
                      CLEAR t743.
                      DATA(t744) = t1.
                      t743 ?= t744.
                      t742 = t743.
                      DATA(t745) = VALUE f( ).
                      DATA(t746) = t742.
                      t745 = t746->length.
                      t741 = t745.
                      DATA(t747) = VALUE f( ).
                      DATA t748 TYPE REF TO zcl_lnt_packed_type.
                      CLEAR t748.
                      DATA t749 TYPE REF TO zcl_lnt_packed_type.
                      CLEAR t749.
                      DATA(t750) = t2.
                      t749 ?= t750.
                      t748 = t749.
                      DATA(t751) = VALUE f( ).
                      DATA(t752) = t748.
                      t751 = t752->length.
                      t747 = t751.
                      t740 = xsdbool( t741 = t747 ).
                      t739 = t740.
                      IF t740 = abap_true.
                        DATA(t753) = VALUE abap_bool( ).
                        DATA(t754) = VALUE f( ).
                        DATA t755 TYPE REF TO zcl_lnt_packed_type.
                        CLEAR t755.
                        DATA t756 TYPE REF TO zcl_lnt_packed_type.
                        CLEAR t756.
                        DATA(t757) = t1.
                        t756 ?= t757.
                        t755 = t756.
                        DATA(t758) = VALUE f( ).
                        DATA(t759) = t755.
                        t758 = t759->decimals_29bf.
                        t754 = t758.
                        DATA(t760) = VALUE f( ).
                        DATA t761 TYPE REF TO zcl_lnt_packed_type.
                        CLEAR t761.
                        DATA t762 TYPE REF TO zcl_lnt_packed_type.
                        CLEAR t762.
                        DATA(t763) = t2.
                        t762 ?= t763.
                        t761 = t762.
                        DATA(t764) = VALUE f( ).
                        DATA(t765) = t761.
                        t764 = t765->decimals_29bf.
                        t760 = t764.
                        t753 = xsdbool( t754 = t760 ).
                        t739 = t753.
                      ENDIF.
                      result = t739.
                      RETURN.
                    ELSE.
                      DATA(t766) = VALUE abap_bool( ).
                      DATA(t767) = t1.
                      t766 = xsdbool( t767 IS BOUND AND t767 IS INSTANCE OF zcl_lnt_float_type ).
                      IF t766 = abap_true.
                        DATA(t768) = VALUE abap_bool( ).
                        DATA(t769) = t2.
                        t768 = xsdbool( t769 IS BOUND AND t769 IS INSTANCE OF zcl_lnt_integer_type ).
                        IF t768 = abap_true.
                          DATA(t770) = abap_false.
                          result = t770.
                          RETURN.
                        ENDIF.
                      ELSE.
                        DATA(t771) = VALUE abap_bool( ).
                        DATA(t772) = t1.
                        t771 = xsdbool( t772 IS BOUND AND t772 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
                        IF t771 = abap_true.
                          DATA(t773) = VALUE abap_bool( ).
                          DATA(t774) = VALUE abap_bool( ).
                          DATA(t775) = VALUE abap_bool( ).
                          DATA(t776) = VALUE abap_bool( ).
                          DATA(t777) = VALUE abap_bool( ).
                          DATA(t778) = t2.
                          t777 = xsdbool( t778 IS BOUND AND t778 IS INSTANCE OF zcl_lnt_object_reference_type ).
                          t776 = t777.
                          IF t777 = abap_false.
                            DATA(t779) = VALUE abap_bool( ).
                            DATA(t780) = t2.
                            t779 = xsdbool( t780 IS BOUND AND t780 IS INSTANCE OF zcl_lnt_string_type ).
                            t776 = t779.
                          ENDIF.
                          t775 = t776.
                          IF t776 = abap_false.
                            DATA(t781) = VALUE abap_bool( ).
                            DATA(t782) = t2.
                            t781 = xsdbool( t782 IS BOUND AND t782 IS INSTANCE OF zcl_lnt_character_type ).
                            t775 = t781.
                          ENDIF.
                          t774 = t775.
                          IF t775 = abap_false.
                            DATA(t783) = VALUE abap_bool( ).
                            DATA(t784) = t2.
                            t783 = xsdbool( t784 IS BOUND AND t784 IS INSTANCE OF zcl_lnt_ty_table_type ).
                            t774 = t783.
                          ENDIF.
                          t773 = t774.
                          IF t774 = abap_false.
                            DATA(t785) = VALUE abap_bool( ).
                            DATA(t786) = t2.
                            t785 = xsdbool( t786 IS BOUND AND t786 IS INSTANCE OF zcl_lnt_c_like_type ).
                            t773 = t785.
                          ENDIF.
                          IF t773 = abap_true.
                            DATA(t787) = abap_false.
                            result = t787.
                            RETURN.
                          ENDIF.
                        ELSE.
                          DATA(t788) = VALUE abap_bool( ).
                          DATA(t789) = t1.
                          t788 = xsdbool( t789 IS BOUND AND t789 IS INSTANCE OF zcl_lnt_object_reference_type ).
                          IF t788 = abap_true.
                            DATA(t790) = VALUE abap_bool( ).
                            DATA(t791) = VALUE abap_bool( ).
                            DATA(t792) = VALUE abap_bool( ).
                            DATA(t793) = VALUE abap_bool( ).
                            DATA(t794) = VALUE abap_bool( ).
                            DATA(t795) = t2.
                            t794 = xsdbool( t795 IS BOUND AND t795 IS INSTANCE OF zcl_lnt_x_sequence_type ).
                            t793 = t794.
                            IF t794 = abap_false.
                              DATA(t796) = VALUE abap_bool( ).
                              DATA(t797) = t2.
                              t796 = xsdbool( t797 IS BOUND AND t797 IS INSTANCE OF zcl_lnt_integer_type ).
                              t793 = t796.
                            ENDIF.
                            t792 = t793.
                            IF t793 = abap_false.
                              DATA(t798) = VALUE abap_bool( ).
                              DATA(t799) = t2.
                              t798 = xsdbool( t799 IS BOUND AND t799 IS INSTANCE OF zcl_lnt_structure_type ).
                              t792 = t798.
                            ENDIF.
                            t791 = t792.
                            IF t792 = abap_false.
                              DATA(t800) = VALUE abap_bool( ).
                              DATA(t801) = t2.
                              t800 = xsdbool( t801 IS BOUND AND t801 IS INSTANCE OF zcl_lnt_ty_table_type ).
                              t791 = t800.
                            ENDIF.
                            t790 = t791.
                            IF t791 = abap_false.
                              DATA(t802) = VALUE abap_bool( ).
                              DATA(t803) = t2.
                              t802 = xsdbool( t803 IS BOUND AND t803 IS INSTANCE OF zcl_lnt_x_string_type ).
                              t790 = t802.
                            ENDIF.
                            IF t790 = abap_true.
                              DATA(t804) = abap_false.
                              result = t804.
                              RETURN.
                            ENDIF.
                          ELSE.
                            DATA(t805) = VALUE abap_bool( ).
                            DATA(t806) = t1.
                            t805 = xsdbool( t806 IS BOUND AND t806 IS INSTANCE OF zcl_lnt_x_string_type ).
                            IF t805 = abap_true.
                              DATA(t807) = VALUE abap_bool( ).
                              DATA(t808) = VALUE abap_bool( ).
                              DATA(t809) = VALUE abap_bool( ).
                              DATA(t810) = VALUE abap_bool( ).
                              DATA(t811) = VALUE abap_bool( ).
                              DATA(t812) = VALUE abap_bool( ).
                              DATA(t813) = t2.
                              t812 = xsdbool( t813 IS BOUND AND t813 IS INSTANCE OF zcl_lnt_character_type ).
                              t811 = t812.
                              IF t812 = abap_false.
                                DATA(t814) = VALUE abap_bool( ).
                                DATA(t815) = t2.
                                t814 = xsdbool( t815 IS BOUND AND t815 IS INSTANCE OF zcl_lnt_c_like_type ).
                                t811 = t814.
                              ENDIF.
                              t810 = t811.
                              IF t811 = abap_false.
                                DATA(t816) = VALUE abap_bool( ).
                                DATA(t817) = t2.
                                t816 = xsdbool( t817 IS BOUND AND t817 IS INSTANCE OF zcl_lnt_integer_type ).
                                t810 = t816.
                              ENDIF.
                              t809 = t810.
                              IF t810 = abap_false.
                                DATA(t818) = VALUE abap_bool( ).
                                DATA(t819) = t2.
                                t818 = xsdbool( t819 IS BOUND AND t819 IS INSTANCE OF zcl_lnt_string_type ).
                                t809 = t818.
                              ENDIF.
                              t808 = t809.
                              IF t809 = abap_false.
                                DATA(t820) = VALUE abap_bool( ).
                                DATA(t821) = t2.
                                t820 = xsdbool( t821 IS BOUND AND t821 IS INSTANCE OF zcl_lnt_object_reference_type ).
                                t808 = t820.
                              ENDIF.
                              t807 = t808.
                              IF t808 = abap_false.
                                DATA(t822) = VALUE abap_bool( ).
                                DATA(t823) = t2.
                                t822 = xsdbool( t823 IS BOUND AND t823 IS INSTANCE OF zcl_lnt_hex_type ).
                                t807 = t822.
                              ENDIF.
                              IF t807 = abap_true.
                                DATA(t824) = abap_false.
                                result = t824.
                                RETURN.
                              ENDIF.
                            ELSE.
                              DATA(t825) = VALUE abap_bool( ).
                              DATA(t826) = t1.
                              t825 = xsdbool( t826 IS BOUND AND t826 IS INSTANCE OF zcl_lnt_ty_table_type ).
                              IF t825 = abap_true.
                                DATA(t827) = VALUE abap_bool( ).
                                DATA t828 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t828.
                                DATA t829 TYPE REF TO zcl_lnt_ty_table_type.
                                CLEAR t829.
                                DATA t830 TYPE REF TO zcl_lnt_ty_table_type.
                                CLEAR t830.
                                DATA(t831) = t1.
                                t830 ?= t831.
                                t829 = t830.
                                DATA t832 TYPE REF TO zcl_lnt_abstract_type.
                                CLEAR t832.
                                DATA(t833) = t829.
                                t832 = t833->row_type.
                                t828 = t832.
                                t827 = xsdbool( t828 IS BOUND AND t828 IS INSTANCE OF zcl_lnt_any_type ).
                                IF t827 = abap_true.
                                  DATA(t834) = abap_true.
                                  result = t834.
                                  RETURN.
                                ELSE.
                                  DATA(t835) = VALUE abap_bool( ).
                                  DATA(t836) = VALUE abap_bool( ).
                                  DATA(t837) = t2.
                                  t836 = xsdbool( t837 IS BOUND AND t837 IS INSTANCE OF zcl_lnt_ty_table_type ).
                                  t835 = t836.
                                  IF t836 = abap_true.
                                    DATA(t838) = VALUE abap_bool( ).
                                    DATA t839 TYPE REF TO zcl_lnt_abstract_type.
                                    CLEAR t839.
                                    DATA t840 TYPE REF TO zcl_lnt_ty_table_type.
                                    CLEAR t840.
                                    DATA t841 TYPE REF TO zcl_lnt_ty_table_type.
                                    CLEAR t841.
                                    DATA(t842) = t2.
                                    t841 ?= t842.
                                    t840 = t841.
                                    DATA t843 TYPE REF TO zcl_lnt_abstract_type.
                                    CLEAR t843.
                                    DATA(t844) = t840.
                                    t843 = t844->row_type.
                                    t839 = t843.
                                    t838 = xsdbool( t839 IS BOUND AND t839 IS INSTANCE OF zcl_lnt_any_type ).
                                    t835 = t838.
                                  ENDIF.
                                  IF t835 = abap_true.
                                    DATA(t845) = abap_true.
                                    result = t845.
                                    RETURN.
                                  ELSE.
                                    DATA(t846) = VALUE abap_bool( ).
                                    DATA(t847) = t2.
                                    t846 = xsdbool( t847 IS BOUND AND t847 IS INSTANCE OF zcl_lnt_ty_table_type ).
                                    IF t846 = abap_true.
                                      DATA(t848) = VALUE string( ).
                                      DATA(t849) = VALUE string( ).
                                      DATA t850 TYPE REF TO zcl_lnt_itable_options.
                                      CLEAR t850.
                                      DATA t851 TYPE REF TO zcl_lnt_ty_table_type.
                                      CLEAR t851.
                                      DATA t852 TYPE REF TO zcl_lnt_ty_table_type.
                                      CLEAR t852.
                                      DATA(t853) = t1.
                                      t852 ?= t853.
                                      t851 = t852.
                                      DATA t854 TYPE REF TO zcl_lnt_itable_options.
                                      CLEAR t854.
                                      DATA(t855) = t851.
                                      t854 = t855->options.
                                      t850 = t854.
                                      t849 = t850->zlnt_view_read_sr_79d5aa355dd3( ).
                                      t848 = t849.
                                      DATA(t856) = VALUE string( ).
                                      DATA(t857) = VALUE string( ).
                                      DATA t858 TYPE REF TO zcl_lnt_itable_options.
                                      CLEAR t858.
                                      DATA t859 TYPE REF TO zcl_lnt_ty_table_type.
                                      CLEAR t859.
                                      DATA t860 TYPE REF TO zcl_lnt_ty_table_type.
                                      CLEAR t860.
                                      DATA(t861) = t2.
                                      t860 ?= t861.
                                      t859 = t860.
                                      DATA t862 TYPE REF TO zcl_lnt_itable_options.
                                      CLEAR t862.
                                      DATA(t863) = t859.
                                      t862 = t863->options.
                                      t858 = t862.
                                      t857 = t858->zlnt_view_read_sr_79d5aa355dd3( ).
                                      t856 = t857.
                                      DATA(t864) = VALUE abap_bool( ).
                                      DATA(t865) = VALUE abap_bool( ).
                                      DATA(t866) = VALUE abap_bool( ).
                                      DATA(t867) = t848.
                                      DATA(t868) = t856.
                                      t866 = xsdbool( t867 <> t868 ).
                                      t865 = t866.
                                      IF t866 = abap_true.
                                        DATA(t869) = VALUE abap_bool( ).
                                        DATA(t870) = t848.
                                        DATA(t871) = |USER|.
                                        t869 = xsdbool( t870 <> t871 ).
                                        t865 = t869.
                                      ENDIF.
                                      t864 = t865.
                                      IF t865 = abap_true.
                                        DATA(t872) = VALUE abap_bool( ).
                                        DATA(t873) = t856.
                                        DATA(t874) = |USER|.
                                        t872 = xsdbool( t873 <> t874 ).
                                        t864 = t872.
                                      ENDIF.
                                      IF t864 = abap_true.
                                        DATA(t875) = abap_false.
                                        result = t875.
                                        RETURN.
                                      ENDIF.
                                      DATA(t876) = VALUE abap_bool( ).
                                      DATA(t877) = VALUE abap_bool( ).
                                      DATA(t878) = VALUE abap_bool( ).
                                      DATA(t879) = t848.
                                      DATA(t880) = |EMPTY|.
                                      t878 = xsdbool( t879 = t880 ).
                                      t877 = t878.
                                      IF t878 = abap_true.
                                        DATA(t881) = VALUE abap_bool( ).
                                        DATA(t882) = t856.
                                        DATA(t883) = |EMPTY|.
                                        t881 = xsdbool( t882 <> t883 ).
                                        t877 = t881.
                                      ENDIF.
                                      t876 = t877.
                                      IF t877 = abap_true.
                                        DATA(t884) = VALUE abap_bool( ).
                                        DATA(t885) = VALUE abap_bool( ).
                                        DATA t886 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t886.
                                        DATA t887 TYPE REF TO zcl_lnt_ty_table_type.
                                        CLEAR t887.
                                        DATA t888 TYPE REF TO zcl_lnt_ty_table_type.
                                        CLEAR t888.
                                        DATA(t889) = t2.
                                        t888 ?= t889.
                                        t887 = t888.
                                        DATA t890 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t890.
                                        DATA(t891) = t887.
                                        t890 = t891->row_type.
                                        t886 = t890.
                                        t885 = xsdbool( t886 IS BOUND AND t886 IS INSTANCE OF zcl_lnt_any_type ).
                                        t884 = xsdbool( t885 = abap_false ).
                                        t876 = t884.
                                      ENDIF.
                                      IF t876 = abap_true.
                                        DATA(t892) = abap_false.
                                        result = t892.
                                        RETURN.
                                      ENDIF.
                                      DATA(t893) = VALUE abap_bool( ).
                                      DATA t894 TYPE REF TO zcl_lnt_abstract_type.
                                      CLEAR t894.
                                      DATA(t895) = abap_true.
                                      IF t895 = abap_true.
                                        DATA t896 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t896.
                                        DATA t897 TYPE REF TO zcl_lnt_ty_table_type.
                                        CLEAR t897.
                                        DATA t898 TYPE REF TO zcl_lnt_ty_table_type.
                                        CLEAR t898.
                                        DATA(t899) = t1.
                                        t898 ?= t899.
                                        t897 = t898.
                                        DATA t900 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t900.
                                        DATA(t901) = t897.
                                        t900 = t901->row_type.
                                        t896 = t900.
                                        t894 = t896.
                                      ELSE.
                                        DATA t902 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t902.
                                        t894 = t902.
                                      ENDIF.
                                      DATA t903 TYPE REF TO zcl_lnt_abstract_type.
                                      CLEAR t903.
                                      DATA(t904) = abap_true.
                                      IF t904 = abap_true.
                                        DATA t905 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t905.
                                        DATA t906 TYPE REF TO zcl_lnt_ty_table_type.
                                        CLEAR t906.
                                        DATA t907 TYPE REF TO zcl_lnt_ty_table_type.
                                        CLEAR t907.
                                        DATA(t908) = t2.
                                        t907 ?= t908.
                                        t906 = t907.
                                        DATA t909 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t909.
                                        DATA(t910) = t906.
                                        t909 = t910->row_type.
                                        t905 = t909.
                                        t903 = t905.
                                      ELSE.
                                        DATA t911 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t911.
                                        t903 = t911.
                                      ENDIF.
                                      DATA t912 TYPE REF TO zcl_lnt_expression_node.
                                      CLEAR t912.
                                      t893 = me->is_assignable_strict( i_source_75cf = t894 i_target_5f8a = t903 i_node = t912 ).
                                      result = t893.
                                      RETURN.
                                    ELSE.
                                      DATA(t913) = VALUE abap_bool( ).
                                      DATA(t914) = VALUE abap_bool( ).
                                      DATA(t915) = VALUE abap_bool( ).
                                      DATA(t916) = t2.
                                      t915 = xsdbool( t916 IS BOUND AND t916 IS INSTANCE OF zcl_lnt_unknown_type ).
                                      t914 = t915.
                                      IF t915 = abap_false.
                                        DATA(t917) = VALUE abap_bool( ).
                                        DATA(t918) = t2.
                                        t917 = xsdbool( t918 IS BOUND AND t918 IS INSTANCE OF zcl_lnt_any_type ).
                                        t914 = t917.
                                      ENDIF.
                                      t913 = t914.
                                      IF t914 = abap_false.
                                        DATA(t919) = VALUE abap_bool( ).
                                        DATA(t920) = t2.
                                        t919 = xsdbool( t920 IS BOUND AND t920 IS INSTANCE OF zcl_lnt_void_type ).
                                        t913 = t919.
                                      ENDIF.
                                      IF t913 = abap_true.
                                        DATA(t921) = abap_true.
                                        result = t921.
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
    DATA(t923) = t1.
    DATA(t924) = t2.
    t922 = me->is_assignable( i_source_75cf = t923 i_target_5f8a = t924 ).
    result = t922.

  ENDMETHOD.

  METHOD is_assignable_structure_typing.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = i_node.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_structure_type ).
    t4 = t5.
    IF t5 = abap_true.
      DATA(t7) = VALUE abap_bool( ).
      DATA(t8) = t2.
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_structure_type ).
      t4 = t7.
    ENDIF.
    IF t4 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t10.
      DATA t11 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t11.
      DATA t12 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t12.
      DATA(t13) = t1.
      t12 ?= t13.
      t11 = t12.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA(t15) = t11.
      t14 = t15->components.
      t10 = t14.
      t9 = t10.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t18.
      DATA t19 TYPE REF TO zcl_lnt_structure_type.
      CLEAR t19.
      DATA(t20) = t2.
      t19 ?= t20.
      t18 = t19.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      DATA(t22) = t18.
      t21 = t22->components.
      t17 = t21.
      t16 = t17.
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE i( ).
      DATA(t25) = t9.
      t25->load( ).
      t24 = lines( t25->items ).
      DATA(t26) = VALUE i( ).
      DATA(t27) = t16.
      t27->load( ).
      t26 = lines( t27->items ).
      t23 = xsdbool( t24 < t26 ).
      IF t23 = abap_true.
        DATA(t28) = abap_false.
        result = t28.
        RETURN.
      ENDIF.
      DATA(t29) = VALUE i( ).
      DATA(t30) = 0.
      t29 = t30.
      DO.
        DATA(t31) = VALUE abap_bool( ).
        DATA(t32) = t29.
        DATA(t33) = VALUE i( ).
        DATA(t34) = t16.
        t34->load( ).
        t33 = lines( t34->items ).
        t31 = xsdbool( t32 < t33 ).
        IF t31 = abap_false.
          EXIT.
        ENDIF.
        DATA(t35) = VALUE abap_bool( ).
        DATA(t36) = VALUE abap_bool( ).
        DATA t37 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t37.
        DATA(t38) = abap_true.
        IF t38 = abap_true.
          DATA t39 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t39.
          DATA t40 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t40.
          DATA(t41) = t9.
          DATA(t42) = t29.
          t42 = t42 + 1.
          DATA t43 TYPE REF TO object.
          CLEAR t43.
          t41->load( ).
          CLEAR t43.
          READ TABLE t41->items INDEX t42 INTO t43.
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
        ELSE.
          DATA t50 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t50.
          t37 = t50.
        ENDIF.
        DATA t51 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t51.
        DATA(t52) = abap_true.
        IF t52 = abap_true.
          DATA t53 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t53.
          DATA t54 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t54.
          DATA(t55) = t16.
          DATA(t56) = t29.
          t56 = t56 + 1.
          DATA t57 TYPE REF TO object.
          CLEAR t57.
          t55->load( ).
          CLEAR t57.
          READ TABLE t55->items INDEX t56 INTO t57.
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
        ELSE.
          DATA t64 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t64.
          t51 = t64.
        ENDIF.
        DATA t65 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t65.
        t36 = me->is_assignable_strict( i_source_75cf = t37 i_target_5f8a = t51 i_node = t65 ).
        DATA(t66) = abap_false.
        t35 = xsdbool( t36 = t66 ).
        IF t35 = abap_true.
          DATA(t67) = abap_false.
          result = t67.
          RETURN.
        ENDIF.
        DATA(t68) = VALUE i( ).
        DATA(t69) = t29.
        DATA(t70) = 1.
        t68 = t69 + t70.
        t29 = t68.
      ENDDO.
      DATA(t71) = abap_true.
      result = t71.
      RETURN.
    ELSE.
      DATA(t72) = VALUE abap_bool( ).
      DATA(t73) = VALUE abap_bool( ).
      DATA(t74) = t1.
      t73 = xsdbool( t74 IS BOUND AND t74 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t72 = t73.
      IF t73 = abap_true.
        DATA(t75) = VALUE abap_bool( ).
        DATA(t76) = t2.
        t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t72 = t75.
      ENDIF.
      IF t72 = abap_true.
        DATA(t77) = VALUE abap_bool( ).
        DATA t78 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA t80 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t80.
          DATA t81 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t81.
          DATA t82 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t82.
          DATA(t83) = t1.
          t82 ?= t83.
          t81 = t82.
          DATA t84 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t84.
          DATA(t85) = t81.
          t84 = t85->row_type.
          t80 = t84.
          t78 = t80.
        ELSE.
          DATA t86 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t86.
          t78 = t86.
        ENDIF.
        DATA t87 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t87.
        DATA(t88) = abap_true.
        IF t88 = abap_true.
          DATA t89 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t89.
          DATA t90 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t90.
          DATA t91 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t91.
          DATA(t92) = t2.
          t91 ?= t92.
          t90 = t91.
          DATA t93 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t93.
          DATA(t94) = t90.
          t93 = t94->row_type.
          t89 = t93.
          t87 = t89.
        ELSE.
          DATA t95 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t95.
          t87 = t95.
        ENDIF.
        DATA t96 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t96.
        t77 = me->is_assignable_structure_typing( i_source_75cf = t78 i_target_5f8a = t87 i_node = t96 ).
        result = t77.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t97) = VALUE abap_bool( ).
    DATA(t98) = t1.
    DATA(t99) = t2.
    DATA(t100) = t3.
    t97 = me->is_assignable_strict( i_source_75cf = t98 i_target_5f8a = t99 i_node = t100 ).
    result = t97.

  ENDMETHOD.

  METHOD is_assignable.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    CLEAR t5.
    DATA(t6) = t1.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t5.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t12.
      DATA(t13) = t2.
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t12.
      IF t17 IS INITIAL.
        t16 = abap_true.
      ENDIF.
      t11 = t16.
      t3 = t11.
    ENDIF.
    IF t3 = abap_true.
      DATA(t18) = abap_true.
      result = t18.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = t1.
    t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_utc_long_type ).
    t19 = t20.
    IF t20 = abap_false.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = t2.
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_utc_long_type ).
      t19 = t22.
    ENDIF.
    IF t19 = abap_true.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t25.
      DATA t26 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t26.
      DATA(t27) = t1.
      t26 = t27.
      t25 = t26.
      DATA t28 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t28.
      DATA t29 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t29.
      DATA(t30) = t2.
      t29 = t30.
      t28 = t29.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t34.
      DATA(t35) = t25.
      t34 = t35.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = VALUE abap_bool( ).
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = t34.
      t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_void_type ).
      t38 = t39.
      IF t39 = abap_false.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = t34.
        t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_any_type ).
        t38 = t41.
      ENDIF.
      t37 = t38.
      IF t38 = abap_false.
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = t34.
        t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_data_type ).
        t37 = t43.
      ENDIF.
      t36 = t37.
      IF t37 = abap_false.
        DATA(t45) = VALUE abap_bool( ).
        DATA(t46) = t34.
        t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_unknown_type ).
        t36 = t45.
      ENDIF.
      t33 = t36.
      t32 = t33.
      IF t33 = abap_false.
        DATA(t47) = VALUE abap_bool( ).
        DATA t48 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t48.
        DATA(t49) = t28.
        t48 = t49.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = VALUE abap_bool( ).
        DATA(t52) = VALUE abap_bool( ).
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = t48.
        t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_void_type ).
        t52 = t53.
        IF t53 = abap_false.
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = t48.
          t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_any_type ).
          t52 = t55.
        ENDIF.
        t51 = t52.
        IF t52 = abap_false.
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = t48.
          t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_data_type ).
          t51 = t57.
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          DATA(t59) = VALUE abap_bool( ).
          DATA(t60) = t48.
          t59 = xsdbool( t60 IS BOUND AND t60 IS INSTANCE OF zcl_lnt_unknown_type ).
          t50 = t59.
        ENDIF.
        t47 = t50.
        t32 = t47.
      ENDIF.
      IF t32 = abap_true.
        DATA(t61) = abap_true.
        t31 = t61.
      ELSE.
        DATA(t62) = VALUE abap_bool( ).
        DATA(t63) = VALUE abap_bool( ).
        DATA(t64) = VALUE abap_bool( ).
        DATA(t65) = t25.
        t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_utc_long_type ).
        t63 = t64.
        IF t64 = abap_true.
          DATA(t66) = VALUE abap_bool( ).
          DATA(t67) = t28.
          t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_utc_long_type ).
          t63 = t66.
        ENDIF.
        IF t63 = abap_true.
          DATA(t68) = abap_true.
          t62 = t68.
        ELSE.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = VALUE abap_bool( ).
          DATA(t71) = t25.
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_utc_long_type ).
          IF t70 = abap_true.
            DATA(t72) = VALUE abap_bool( ).
            DATA t73 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t73.
            DATA(t74) = t28.
            t73 = t74.
            DATA(t75) = VALUE abap_bool( ).
            DATA(t76) = VALUE abap_bool( ).
            DATA(t77) = VALUE abap_bool( ).
            DATA(t78) = VALUE abap_bool( ).
            DATA(t79) = VALUE abap_bool( ).
            DATA(t80) = VALUE abap_bool( ).
            DATA(t81) = t73.
            t80 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_character_type ).
            t79 = t80.
            IF t80 = abap_false.
              DATA(t82) = VALUE abap_bool( ).
              DATA(t83) = t73.
              t82 = xsdbool( t83 IS BOUND AND t83 IS INSTANCE OF zcl_lnt_string_type ).
              t79 = t82.
            ENDIF.
            t78 = t79.
            IF t79 = abap_false.
              DATA(t84) = VALUE abap_bool( ).
              DATA(t85) = t73.
              t84 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_c_like_type ).
              t78 = t84.
            ENDIF.
            t77 = t78.
            IF t78 = abap_false.
              DATA(t86) = VALUE abap_bool( ).
              DATA(t87) = t73.
              t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_c_sequence_type ).
              t77 = t86.
            ENDIF.
            t76 = t77.
            IF t77 = abap_false.
              DATA(t88) = VALUE abap_bool( ).
              DATA(t89) = t73.
              t88 = xsdbool( t89 IS BOUND AND t89 IS INSTANCE OF zcl_lnt_c_generic_type ).
              t76 = t88.
            ENDIF.
            t75 = t76.
            IF t76 = abap_false.
              DATA(t90) = VALUE abap_bool( ).
              DATA(t91) = t73.
              t90 = xsdbool( t91 IS BOUND AND t91 IS INSTANCE OF zcl_lnt_simple_type ).
              t75 = t90.
            ENDIF.
            t72 = t75.
            t69 = t72.
          ELSE.
            DATA(t92) = VALUE abap_bool( ).
            DATA t93 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t93.
            DATA(t94) = t25.
            t93 = t94.
            DATA(t95) = VALUE abap_bool( ).
            DATA(t96) = VALUE abap_bool( ).
            DATA(t97) = VALUE abap_bool( ).
            DATA(t98) = VALUE abap_bool( ).
            DATA(t99) = VALUE abap_bool( ).
            DATA(t100) = VALUE abap_bool( ).
            DATA(t101) = t93.
            t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_character_type ).
            t99 = t100.
            IF t100 = abap_false.
              DATA(t102) = VALUE abap_bool( ).
              DATA(t103) = t93.
              t102 = xsdbool( t103 IS BOUND AND t103 IS INSTANCE OF zcl_lnt_string_type ).
              t99 = t102.
            ENDIF.
            t98 = t99.
            IF t99 = abap_false.
              DATA(t104) = VALUE abap_bool( ).
              DATA(t105) = t93.
              t104 = xsdbool( t105 IS BOUND AND t105 IS INSTANCE OF zcl_lnt_c_like_type ).
              t98 = t104.
            ENDIF.
            t97 = t98.
            IF t98 = abap_false.
              DATA(t106) = VALUE abap_bool( ).
              DATA(t107) = t93.
              t106 = xsdbool( t107 IS BOUND AND t107 IS INSTANCE OF zcl_lnt_c_sequence_type ).
              t97 = t106.
            ENDIF.
            t96 = t97.
            IF t97 = abap_false.
              DATA(t108) = VALUE abap_bool( ).
              DATA(t109) = t93.
              t108 = xsdbool( t109 IS BOUND AND t109 IS INSTANCE OF zcl_lnt_c_generic_type ).
              t96 = t108.
            ENDIF.
            t95 = t96.
            IF t96 = abap_false.
              DATA(t110) = VALUE abap_bool( ).
              DATA(t111) = t93.
              t110 = xsdbool( t111 IS BOUND AND t111 IS INSTANCE OF zcl_lnt_simple_type ).
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
    DATA(t113) = t2.
    t112 = xsdbool( t113 IS BOUND AND t113 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t112 = abap_true.
      DATA(t114) = VALUE abap_bool( ).
      DATA t115 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t115.
      DATA t116 TYPE REF TO zcl_lnt_ty_table_type.
      CLEAR t116.
      DATA(t117) = t2.
      t116 ?= t117.
      t115 = t116.
      DATA(t118) = VALUE abap_bool( ).
      DATA t119 TYPE REF TO zcl_lnt_itable_options.
      CLEAR t119.
      DATA(t120) = t115.
      t119 = t120->options.
      t118 = t119->zlnt_view_read_sr_ec4602663c93( ).
      t114 = t118.
      IF t114 = abap_true.
        DATA(t121) = VALUE abap_bool( ).
        DATA t122 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t122.
        DATA(t123) = abap_true.
        IF t123 = abap_true.
          DATA t124 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t124.
          DATA(t125) = t1.
          t124 = t125.
          t122 = t124.
        ELSE.
          DATA t126 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t126.
          t122 = t126.
        ENDIF.
        DATA t127 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t127.
        DATA(t128) = abap_true.
        IF t128 = abap_true.
          DATA t129 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t129.
          DATA t130 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t130.
          DATA t131 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t131.
          DATA(t132) = t2.
          t131 ?= t132.
          t130 = t131.
          DATA t133 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t133.
          DATA(t134) = t130.
          t133 = t134->row_type.
          t129 = t133.
          t127 = t129.
        ELSE.
          DATA t135 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t135.
          t127 = t135.
        ENDIF.
        t121 = me->is_assignable( i_source_75cf = t122 i_target_5f8a = t127 ).
        result = t121.
        RETURN.
      ENDIF.
      DATA(t136) = VALUE abap_bool( ).
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = VALUE abap_bool( ).
      DATA(t140) = t1.
      t139 = xsdbool( t140 IS BOUND AND t140 IS INSTANCE OF zcl_lnt_void_type ).
      t138 = t139.
      IF t139 = abap_false.
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = t1.
        t141 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_any_type ).
        t138 = t141.
      ENDIF.
      t137 = t138.
      IF t138 = abap_false.
        DATA(t143) = VALUE abap_bool( ).
        DATA(t144) = t1.
        t143 = xsdbool( t144 IS BOUND AND t144 IS INSTANCE OF zcl_lnt_data_type ).
        t137 = t143.
      ENDIF.
      t136 = t137.
      IF t137 = abap_false.
        DATA(t145) = VALUE abap_bool( ).
        DATA(t146) = t1.
        t145 = xsdbool( t146 IS BOUND AND t146 IS INSTANCE OF zcl_lnt_unknown_type ).
        t136 = t145.
      ENDIF.
      IF t136 = abap_true.
        DATA(t147) = abap_true.
        result = t147.
        RETURN.
      ELSE.
        DATA(t148) = VALUE abap_bool( ).
        DATA(t149) = t1.
        t148 = xsdbool( t149 IS BOUND AND t149 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t148 = abap_true.
          DATA t150 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t150.
          DATA t151 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t151.
          DATA t152 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t152.
          DATA t153 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t153.
          DATA(t154) = t2.
          t153 ?= t154.
          t152 = t153.
          DATA t155 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t155.
          DATA(t156) = t152.
          t155 = t156->row_type.
          t151 = t155.
          t150 = t151.
          DATA t157 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t157.
          DATA t158 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t158.
          DATA t159 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t159.
          DATA t160 TYPE REF TO zcl_lnt_ty_table_type.
          CLEAR t160.
          DATA(t161) = t1.
          t160 ?= t161.
          t159 = t160.
          DATA t162 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t162.
          DATA(t163) = t159.
          t162 = t163->row_type.
          t158 = t162.
          t157 = t158.
          DATA(t164) = VALUE abap_bool( ).
          DATA(t165) = VALUE abap_bool( ).
          DATA(t166) = VALUE abap_bool( ).
          DATA(t167) = t150.
          t166 = xsdbool( t167 IS BOUND AND t167 IS INSTANCE OF zcl_lnt_void_type ).
          t165 = t166.
          IF t166 = abap_false.
            DATA(t168) = VALUE abap_bool( ).
            DATA(t169) = t150.
            t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_any_type ).
            t165 = t168.
          ENDIF.
          t164 = t165.
          IF t165 = abap_false.
            DATA(t170) = VALUE abap_bool( ).
            DATA(t171) = t150.
            t170 = xsdbool( t171 IS BOUND AND t171 IS INSTANCE OF zcl_lnt_unknown_type ).
            t164 = t170.
          ENDIF.
          IF t164 = abap_true.
            DATA(t172) = abap_true.
            result = t172.
            RETURN.
          ELSE.
            DATA(t173) = VALUE abap_bool( ).
            DATA(t174) = VALUE abap_bool( ).
            DATA(t175) = VALUE abap_bool( ).
            DATA(t176) = t157.
            t175 = xsdbool( t176 IS BOUND AND t176 IS INSTANCE OF zcl_lnt_void_type ).
            t174 = t175.
            IF t175 = abap_false.
              DATA(t177) = VALUE abap_bool( ).
              DATA(t178) = t157.
              t177 = xsdbool( t178 IS BOUND AND t178 IS INSTANCE OF zcl_lnt_any_type ).
              t174 = t177.
            ENDIF.
            t173 = t174.
            IF t174 = abap_false.
              DATA(t179) = VALUE abap_bool( ).
              DATA(t180) = t157.
              t179 = xsdbool( t180 IS BOUND AND t180 IS INSTANCE OF zcl_lnt_unknown_type ).
              t173 = t179.
            ENDIF.
            IF t173 = abap_true.
              DATA(t181) = abap_true.
              result = t181.
              RETURN.
            ENDIF.
          ENDIF.
          DATA(t182) = VALUE abap_bool( ).
          DATA(t183) = VALUE abap_bool( ).
          DATA(t184) = t150.
          t183 = xsdbool( t184 IS BOUND AND t184 IS INSTANCE OF zcl_lnt_structure_type ).
          t182 = t183.
          IF t183 = abap_true.
            DATA(t185) = VALUE abap_bool( ).
            DATA t186 TYPE REF TO zcl_lnt_structure_type.
            CLEAR t186.
            DATA(t187) = t150.
            t186 ?= t187.
            t185 = me->structure_contains_string( i_structure = t186 ).
            t182 = t185.
          ENDIF.
          IF t182 = abap_true.
            DATA(t188) = VALUE abap_bool( ).
            DATA(t189) = VALUE abap_bool( ).
            DATA(t190) = t157.
            t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_structure_type ).
            t188 = xsdbool( t189 = abap_false ).
            IF t188 = abap_true.
              DATA(t191) = abap_false.
              result = t191.
              RETURN.
            ELSE.
              DATA(t192) = VALUE abap_bool( ).
              DATA(t193) = VALUE abap_bool( ).
              DATA(t194) = VALUE abap_bool( ).
              DATA t195 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t195.
              DATA(t196) = t157.
              t195 ?= t196.
              t194 = me->structure_contains_string( i_structure = t195 ).
              t193 = xsdbool( t194 = abap_false ).
              t192 = t193.
              IF t193 = abap_true.
                DATA(t197) = VALUE abap_bool( ).
                DATA(t198) = VALUE abap_bool( ).
                DATA t199 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t199.
                DATA(t200) = t157.
                t199 ?= t200.
                t198 = me->structure_contains_void( i_structure = t199 ).
                DATA(t201) = abap_false.
                t197 = xsdbool( t198 = t201 ).
                t192 = t197.
              ENDIF.
              IF t192 = abap_true.
                DATA(t202) = abap_false.
                result = t202.
                RETURN.
              ENDIF.
            ENDIF.
          ELSE.
            DATA(t203) = VALUE abap_bool( ).
            DATA(t204) = VALUE abap_bool( ).
            DATA(t205) = t157.
            t204 = xsdbool( t205 IS BOUND AND t205 IS INSTANCE OF zcl_lnt_structure_type ).
            t203 = t204.
            IF t204 = abap_true.
              DATA(t206) = VALUE abap_bool( ).
              DATA t207 TYPE REF TO zcl_lnt_structure_type.
              CLEAR t207.
              DATA(t208) = t157.
              t207 ?= t208.
              t206 = me->structure_contains_string( i_structure = t207 ).
              t203 = t206.
            ENDIF.
            IF t203 = abap_true.
              DATA(t209) = VALUE abap_bool( ).
              DATA(t210) = VALUE abap_bool( ).
              DATA(t211) = t150.
              t210 = xsdbool( t211 IS BOUND AND t211 IS INSTANCE OF zcl_lnt_structure_type ).
              t209 = xsdbool( t210 = abap_false ).
              IF t209 = abap_true.
                DATA(t212) = abap_false.
                result = t212.
                RETURN.
              ELSE.
                DATA(t213) = VALUE abap_bool( ).
                DATA(t214) = VALUE abap_bool( ).
                DATA(t215) = VALUE abap_bool( ).
                DATA t216 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t216.
                DATA(t217) = t150.
                t216 ?= t217.
                t215 = me->structure_contains_string( i_structure = t216 ).
                t214 = xsdbool( t215 = abap_false ).
                t213 = t214.
                IF t214 = abap_true.
                  DATA(t218) = VALUE abap_bool( ).
                  DATA(t219) = VALUE abap_bool( ).
                  DATA t220 TYPE REF TO zcl_lnt_structure_type.
                  CLEAR t220.
                  DATA(t221) = t150.
                  t220 ?= t221.
                  t219 = me->structure_contains_void( i_structure = t220 ).
                  DATA(t222) = abap_false.
                  t218 = xsdbool( t219 = t222 ).
                  t213 = t218.
                ENDIF.
                IF t213 = abap_true.
                  DATA(t223) = abap_false.
                  result = t223.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA(t224) = abap_true.
          result = t224.
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t225) = abap_false.
      result = t225.
      RETURN.
    ELSE.
      DATA(t226) = VALUE abap_bool( ).
      DATA(t227) = VALUE abap_bool( ).
      DATA(t228) = t2.
      t227 = xsdbool( t228 IS BOUND AND t228 IS INSTANCE OF zcl_lnt_object_reference_type ).
      t226 = t227.
      IF t227 = abap_true.
        DATA(t229) = VALUE abap_bool( ).
        DATA(t230) = t1.
        t229 = xsdbool( t230 IS BOUND AND t230 IS INSTANCE OF zcl_lnt_object_reference_type ).
        t226 = t229.
      ENDIF.
      IF t226 = abap_true.
        DATA(t231) = VALUE abap_bool( ).
        DATA t232 TYPE REF TO zcl_lnt_object_reference_type.
        CLEAR t232.
        DATA(t233) = t1.
        t232 ?= t233.
        DATA t234 TYPE REF TO zcl_lnt_object_reference_type.
        CLEAR t234.
        DATA(t235) = t2.
        t234 ?= t235.
        t231 = me->is_oo_assignable( i_source_75cf = t232 i_target_5f8a = t234 ).
        result = t231.
        RETURN.
      ELSE.
        DATA(t236) = VALUE abap_bool( ).
        DATA(t237) = VALUE abap_bool( ).
        DATA(t238) = t2.
        t237 = xsdbool( t238 IS BOUND AND t238 IS INSTANCE OF zcl_lnt_object_reference_type ).
        t236 = t237.
        IF t237 = abap_false.
          DATA(t239) = VALUE abap_bool( ).
          DATA(t240) = t2.
          t239 = xsdbool( t240 IS BOUND AND t240 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
          t236 = t239.
        ENDIF.
        IF t236 = abap_true.
          DATA(t241) = VALUE abap_bool( ).
          DATA(t242) = VALUE abap_bool( ).
          DATA(t243) = VALUE abap_bool( ).
          DATA(t244) = VALUE abap_bool( ).
          DATA(t245) = VALUE abap_bool( ).
          DATA(t246) = VALUE abap_bool( ).
          DATA(t247) = t1.
          t246 = xsdbool( t247 IS BOUND AND t247 IS INSTANCE OF zcl_lnt_object_reference_type ).
          t245 = t246.
          IF t246 = abap_false.
            DATA(t248) = VALUE abap_bool( ).
            DATA(t249) = t1.
            t248 = xsdbool( t249 IS BOUND AND t249 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
            t245 = t248.
          ENDIF.
          t244 = t245.
          IF t245 = abap_false.
            DATA(t250) = VALUE abap_bool( ).
            DATA(t251) = t1.
            t250 = xsdbool( t251 IS BOUND AND t251 IS INSTANCE OF zcl_lnt_void_type ).
            t244 = t250.
          ENDIF.
          t243 = t244.
          IF t244 = abap_false.
            DATA(t252) = VALUE abap_bool( ).
            DATA(t253) = t1.
            t252 = xsdbool( t253 IS BOUND AND t253 IS INSTANCE OF zcl_lnt_data_type ).
            t243 = t252.
          ENDIF.
          t242 = t243.
          IF t243 = abap_false.
            DATA(t254) = VALUE abap_bool( ).
            DATA(t255) = t1.
            t254 = xsdbool( t255 IS BOUND AND t255 IS INSTANCE OF zcl_lnt_any_type ).
            t242 = t254.
          ENDIF.
          t241 = t242.
          IF t242 = abap_false.
            DATA(t256) = VALUE abap_bool( ).
            DATA(t257) = t1.
            t256 = xsdbool( t257 IS BOUND AND t257 IS INSTANCE OF zcl_lnt_unknown_type ).
            t241 = t256.
          ENDIF.
          IF t241 = abap_true.
            DATA(t258) = abap_true.
            result = t258.
            RETURN.
          ENDIF.
          DATA(t259) = abap_false.
          result = t259.
          RETURN.
        ELSE.
          DATA(t260) = VALUE abap_bool( ).
          DATA(t261) = t2.
          t260 = xsdbool( t261 IS BOUND AND t261 IS INSTANCE OF zcl_lnt_data_reference ).
          IF t260 = abap_true.
            DATA(t262) = VALUE abap_bool( ).
            DATA(t263) = VALUE abap_bool( ).
            DATA(t264) = VALUE abap_bool( ).
            DATA(t265) = VALUE abap_bool( ).
            DATA(t266) = VALUE abap_bool( ).
            DATA(t267) = t1.
            t266 = xsdbool( t267 IS BOUND AND t267 IS INSTANCE OF zcl_lnt_data_reference ).
            t265 = t266.
            IF t266 = abap_false.
              DATA(t268) = VALUE abap_bool( ).
              DATA(t269) = t1.
              t268 = xsdbool( t269 IS BOUND AND t269 IS INSTANCE OF zcl_lnt_void_type ).
              t265 = t268.
            ENDIF.
            t264 = t265.
            IF t265 = abap_false.
              DATA(t270) = VALUE abap_bool( ).
              DATA(t271) = t1.
              t270 = xsdbool( t271 IS BOUND AND t271 IS INSTANCE OF zcl_lnt_data_type ).
              t264 = t270.
            ENDIF.
            t263 = t264.
            IF t264 = abap_false.
              DATA(t272) = VALUE abap_bool( ).
              DATA(t273) = t1.
              t272 = xsdbool( t273 IS BOUND AND t273 IS INSTANCE OF zcl_lnt_any_type ).
              t263 = t272.
            ENDIF.
            t262 = t263.
            IF t263 = abap_false.
              DATA(t274) = VALUE abap_bool( ).
              DATA(t275) = t1.
              t274 = xsdbool( t275 IS BOUND AND t275 IS INSTANCE OF zcl_lnt_unknown_type ).
              t262 = t274.
            ENDIF.
            IF t262 = abap_true.
              DATA(t276) = abap_true.
              result = t276.
              RETURN.
            ENDIF.
            DATA(t277) = abap_false.
            result = t277.
            RETURN.
          ELSE.
            DATA(t278) = VALUE abap_bool( ).
            DATA(t279) = t2.
            t278 = xsdbool( t279 IS BOUND AND t279 IS INSTANCE OF zcl_lnt_structure_type ).
            IF t278 = abap_true.
              DATA(t280) = VALUE abap_bool( ).
              DATA(t281) = VALUE abap_bool( ).
              DATA(t282) = t1.
              t281 = xsdbool( t282 IS BOUND AND t282 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t280 = t281.
              IF t281 = abap_true.
                DATA(t283) = VALUE abap_bool( ).
                DATA t284 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t284.
                DATA t285 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t285.
                DATA(t286) = t1.
                t285 ?= t286.
                t284 = t285.
                DATA(t287) = VALUE abap_bool( ).
                DATA t288 TYPE REF TO zcl_lnt_itable_options.
                CLEAR t288.
                DATA(t289) = t284.
                t288 = t289->options.
                t287 = t288->zlnt_view_read_sr_ec4602663c93( ).
                t283 = t287.
                t280 = t283.
              ENDIF.
              IF t280 = abap_true.
                DATA(t290) = VALUE abap_bool( ).
                DATA t291 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t291.
                DATA(t292) = abap_true.
                IF t292 = abap_true.
                  DATA t293 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t293.
                  DATA t294 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t294.
                  DATA t295 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t295.
                  DATA(t296) = t1.
                  t295 ?= t296.
                  t294 = t295.
                  DATA t297 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t297.
                  DATA(t298) = t294.
                  t297 = t298->row_type.
                  t293 = t297.
                  t291 = t293.
                ELSE.
                  DATA t299 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t299.
                  t291 = t299.
                ENDIF.
                DATA t300 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t300.
                DATA(t301) = t2.
                t300 ?= t301.
                t290 = me->is_assignable( i_source_75cf = t291 i_target_5f8a = t300 ).
                result = t290.
                RETURN.
              ELSE.
                DATA(t302) = VALUE abap_bool( ).
                DATA(t303) = VALUE abap_bool( ).
                DATA(t304) = VALUE abap_bool( ).
                DATA(t305) = VALUE abap_bool( ).
                DATA(t306) = t1.
                t305 = xsdbool( t306 IS BOUND AND t306 IS INSTANCE OF zcl_lnt_void_type ).
                t304 = t305.
                IF t305 = abap_false.
                  DATA(t307) = VALUE abap_bool( ).
                  DATA(t308) = t1.
                  t307 = xsdbool( t308 IS BOUND AND t308 IS INSTANCE OF zcl_lnt_any_type ).
                  t304 = t307.
                ENDIF.
                t303 = t304.
                IF t304 = abap_false.
                  DATA(t309) = VALUE abap_bool( ).
                  DATA(t310) = t1.
                  t309 = xsdbool( t310 IS BOUND AND t310 IS INSTANCE OF zcl_lnt_data_type ).
                  t303 = t309.
                ENDIF.
                t302 = t303.
                IF t303 = abap_false.
                  DATA(t311) = VALUE abap_bool( ).
                  DATA(t312) = t1.
                  t311 = xsdbool( t312 IS BOUND AND t312 IS INSTANCE OF zcl_lnt_unknown_type ).
                  t302 = t311.
                ENDIF.
                IF t302 = abap_true.
                  DATA(t313) = abap_true.
                  result = t313.
                  RETURN.
                ELSE.
                  DATA(t314) = VALUE abap_bool( ).
                  DATA(t315) = t1.
                  t314 = xsdbool( t315 IS BOUND AND t315 IS INSTANCE OF zcl_lnt_structure_type ).
                  IF t314 = abap_true.
                    DATA(t316) = VALUE abap_bool( ).
                    DATA(t317) = VALUE abap_bool( ).
                    DATA t318 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t318.
                    DATA(t319) = t2.
                    t318 ?= t319.
                    t317 = me->structure_contains_string( i_structure = t318 ).
                    t316 = t317.
                    DATA(t320) = VALUE abap_bool( ).
                    DATA(t321) = VALUE abap_bool( ).
                    DATA t322 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t322.
                    DATA(t323) = t1.
                    t322 ?= t323.
                    t321 = me->structure_contains_string( i_structure = t322 ).
                    t320 = t321.
                    DATA(t324) = VALUE abap_bool( ).
                    DATA(t325) = t316.
                    t324 = t325.
                    IF t325 = abap_true.
                      DATA(t326) = VALUE abap_bool( ).
                      DATA(t327) = t320.
                      t326 = xsdbool( t327 = abap_false ).
                      t324 = t326.
                    ENDIF.
                    IF t324 = abap_true.
                      DATA(t328) = abap_false.
                      result = t328.
                      RETURN.
                    ENDIF.
                    DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t329.
                    DATA t330 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t330.
                    DATA t331 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t331.
                    DATA t332 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t332.
                    DATA(t333) = t2.
                    t332 ?= t333.
                    t331 = t332.
                    DATA t334 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t334.
                    DATA(t335) = t331.
                    t334 = t335->components.
                    t330 = t334.
                    t329 = t330.
                    DATA t336 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t336.
                    DATA t337 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t337.
                    DATA t338 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t338.
                    DATA t339 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t339.
                    DATA(t340) = t1.
                    t339 ?= t340.
                    t338 = t339.
                    DATA t341 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t341.
                    DATA(t342) = t338.
                    t341 = t342->components.
                    t337 = t341.
                    t336 = t337.
                    DATA(t343) = VALUE abap_bool( ).
                    DATA(t344) = VALUE i( ).
                    DATA(t345) = t329.
                    t345->load( ).
                    t344 = lines( t345->items ).
                    DATA(t346) = VALUE i( ).
                    DATA(t347) = t336.
                    t347->load( ).
                    t346 = lines( t347->items ).
                    t343 = xsdbool( t344 <> t346 ).
                    IF t343 = abap_true.
                      DATA(t348) = VALUE abap_bool( ).
                      DATA(t349) = VALUE abap_bool( ).
                      DATA(t350) = t316.
                      DATA(t351) = abap_true.
                      t349 = xsdbool( t350 = t351 ).
                      t348 = t349.
                      IF t349 = abap_false.
                        DATA(t352) = VALUE abap_bool( ).
                        DATA(t353) = t320.
                        DATA(t354) = abap_true.
                        t352 = xsdbool( t353 = t354 ).
                        t348 = t352.
                      ENDIF.
                      IF t348 = abap_true.
                        DATA(t355) = abap_false.
                        result = t355.
                        RETURN.
                      ENDIF.
                    ENDIF.
                    DATA(t356) = VALUE i( ).
                    DATA(t357) = 0.
                    t356 = t357.
                    DO.
                      DATA(t358) = VALUE abap_bool( ).
                      DATA(t359) = t356.
                      DATA(t360) = VALUE i( ).
                      DATA(t361) = t329.
                      t361->load( ).
                      t360 = lines( t361->items ).
                      t358 = xsdbool( t359 < t360 ).
                      IF t358 = abap_false.
                        EXIT.
                      ENDIF.
                      DATA(t362) = VALUE abap_bool( ).
                      DATA t363 TYPE REF TO zcl_lnt_istructure_component.
                      CLEAR t363.
                      DATA t364 TYPE REF TO zcl_lnt_istructure_component.
                      CLEAR t364.
                      DATA(t365) = t336.
                      DATA(t366) = t356.
                      t366 = t366 + 1.
                      DATA t367 TYPE REF TO object.
                      CLEAR t367.
                      t365->load( ).
                      CLEAR t367.
                      READ TABLE t365->items INDEX t366 INTO t367.
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
                      t363 = t364.
                      DATA t374 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t374.
                      DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t375.
                      t374 = t375.
                      DATA(t376) = VALUE abap_bool( ).
                      DATA(t377) = t363.
                      IF t377 IS INITIAL.
                        t376 = abap_true.
                      ENDIF.
                      t362 = t376.
                      IF t362 = abap_true.
                        DATA(t378) = VALUE i( ).
                        DATA(t379) = t356.
                        DATA(t380) = 1.
                        t378 = t379 + t380.
                        t356 = t378.
                        CONTINUE.
                      ENDIF.
                      DATA(t381) = VALUE abap_bool( ).
                      DATA(t382) = VALUE abap_bool( ).
                      DATA t383 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t383.
                      DATA t384 TYPE REF TO zcl_lnt_istructure_component.
                      CLEAR t384.
                      DATA(t385) = t336.
                      DATA(t386) = t356.
                      t386 = t386 + 1.
                      DATA t387 TYPE REF TO object.
                      CLEAR t387.
                      t385->load( ).
                      CLEAR t387.
                      READ TABLE t385->items INDEX t386 INTO t387.
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
                        DATA(t398) = t329.
                        DATA(t399) = t356.
                        t399 = t399 + 1.
                        DATA t400 TYPE REF TO object.
                        CLEAR t400.
                        t398->load( ).
                        CLEAR t400.
                        READ TABLE t398->items INDEX t399 INTO t400.
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
                        DATA(t407) = abap_false.
                        result = t407.
                        RETURN.
                      ELSE.
                        DATA(t408) = VALUE abap_bool( ).
                        DATA(t409) = VALUE abap_bool( ).
                        DATA(t410) = VALUE abap_bool( ).
                        DATA t411 TYPE REF TO zcl_lnt_abstract_type.
                        CLEAR t411.
                        DATA t412 TYPE REF TO zcl_lnt_istructure_component.
                        CLEAR t412.
                        DATA(t413) = t336.
                        DATA(t414) = t356.
                        t414 = t414 + 1.
                        DATA t415 TYPE REF TO object.
                        CLEAR t415.
                        t413->load( ).
                        CLEAR t415.
                        READ TABLE t413->items INDEX t414 INTO t415.
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
                          DATA(t425) = t329.
                          DATA(t426) = t356.
                          t426 = t426 + 1.
                          DATA t427 TYPE REF TO object.
                          CLEAR t427.
                          t425->load( ).
                          CLEAR t427.
                          READ TABLE t425->items INDEX t426 INTO t427.
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
                          DATA(t434) = abap_false.
                          result = t434.
                          RETURN.
                        ENDIF.
                      ENDIF.
                      DATA(t435) = VALUE i( ).
                      DATA(t436) = t356.
                      DATA(t437) = 1.
                      t435 = t436 + t437.
                      t356 = t435.
                    ENDDO.
                    DATA(t438) = abap_true.
                    result = t438.
                    RETURN.
                  ELSE.
                    DATA(t439) = VALUE abap_bool( ).
                    DATA(t440) = VALUE abap_bool( ).
                    DATA t441 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t441.
                    DATA(t442) = t2.
                    t441 ?= t442.
                    t440 = t441->contains_void( ).
                    DATA(t443) = abap_true.
                    t439 = xsdbool( t440 = t443 ).
                    IF t439 = abap_true.
                      DATA(t444) = abap_true.
                      result = t444.
                      RETURN.
                    ELSE.
                      DATA(t445) = VALUE abap_bool( ).
                      DATA(t446) = VALUE abap_bool( ).
                      DATA(t447) = t1.
                      t446 = xsdbool( t447 IS BOUND AND t447 IS INSTANCE OF zcl_lnt_string_type ).
                      t445 = t446.
                      IF t446 = abap_true.
                        DATA(t448) = VALUE abap_bool( ).
                        DATA t449 TYPE REF TO zcl_lnt_structure_type.
                        CLEAR t449.
                        DATA(t450) = t2.
                        t449 ?= t450.
                        t448 = me->structure_contains_string( i_structure = t449 ).
                        t445 = t448.
                      ENDIF.
                      IF t445 = abap_true.
                        DATA(t451) = abap_false.
                        result = t451.
                        RETURN.
                      ELSE.
                        DATA(t452) = VALUE abap_bool( ).
                        DATA(t453) = t1.
                        t452 = xsdbool( t453 IS BOUND AND t453 IS INSTANCE OF zcl_lnt_integer_type ).
                        IF t452 = abap_true.
                          DATA(t454) = abap_false.
                          result = t454.
                          RETURN.
                        ELSE.
                          DATA(t455) = VALUE abap_bool( ).
                          DATA(t456) = VALUE abap_bool( ).
                          DATA t457 TYPE REF TO zcl_lnt_structure_type.
                          CLEAR t457.
                          DATA(t458) = t2.
                          t457 ?= t458.
                          t456 = me->is_char_like( i_type_9913 = t457 ).
                          t455 = t456.
                          IF t456 = abap_true.
                            DATA(t459) = VALUE abap_bool( ).
                            DATA t460 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t460.
                            DATA(t461) = abap_true.
                            IF t461 = abap_true.
                              DATA t462 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t462.
                              DATA(t463) = t1.
                              t462 = t463.
                              t460 = t462.
                            ELSE.
                              DATA t464 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t464.
                              t460 = t464.
                            ENDIF.
                            t459 = me->is_char_like( i_type_9913 = t460 ).
                            t455 = t459.
                          ENDIF.
                          IF t455 = abap_true.
                            DATA(t465) = abap_true.
                            result = t465.
                            RETURN.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
              DATA(t466) = abap_false.
              result = t466.
              RETURN.
            ELSE.
              DATA(t467) = VALUE abap_bool( ).
              DATA(t468) = VALUE abap_bool( ).
              DATA(t469) = VALUE abap_bool( ).
              DATA(t470) = t2.
              t469 = xsdbool( t470 IS BOUND AND t470 IS INSTANCE OF zcl_lnt_integer_type ).
              t468 = t469.
              IF t469 = abap_false.
                DATA(t471) = VALUE abap_bool( ).
                DATA(t472) = t2.
                t471 = xsdbool( t472 IS BOUND AND t472 IS INSTANCE OF zcl_lnt_character_type ).
                t468 = t471.
              ENDIF.
              t467 = t468.
              IF t468 = abap_false.
                DATA(t473) = VALUE abap_bool( ).
                DATA(t474) = t2.
                t473 = xsdbool( t474 IS BOUND AND t474 IS INSTANCE OF zcl_lnt_string_type ).
                t467 = t473.
              ENDIF.
              IF t467 = abap_true.
                DATA(t475) = VALUE abap_bool( ).
                DATA(t476) = VALUE abap_bool( ).
                DATA(t477) = t1.
                t476 = xsdbool( t477 IS BOUND AND t477 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t475 = t476.
                IF t476 = abap_true.
                  DATA(t478) = VALUE abap_bool( ).
                  DATA(t479) = VALUE abap_bool( ).
                  DATA t480 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t480.
                  DATA t481 TYPE REF TO zcl_lnt_ty_table_type.
                  CLEAR t481.
                  DATA(t482) = t1.
                  t481 ?= t482.
                  t480 = t481.
                  DATA(t483) = VALUE abap_bool( ).
                  DATA t484 TYPE REF TO zcl_lnt_itable_options.
                  CLEAR t484.
                  DATA(t485) = t480.
                  t484 = t485->options.
                  t483 = t484->zlnt_view_read_sr_ec4602663c93( ).
                  t479 = t483.
                  DATA(t486) = abap_false.
                  t478 = xsdbool( t479 = t486 ).
                  t475 = t478.
                ENDIF.
                IF t475 = abap_true.
                  DATA(t487) = abap_false.
                  result = t487.
                  RETURN.
                ELSE.
                  DATA(t488) = VALUE abap_bool( ).
                  DATA(t489) = VALUE abap_bool( ).
                  DATA(t490) = VALUE abap_bool( ).
                  DATA(t491) = VALUE abap_bool( ).
                  DATA(t492) = t2.
                  t491 = xsdbool( t492 IS BOUND AND t492 IS INSTANCE OF zcl_lnt_string_type ).
                  t490 = t491.
                  IF t491 = abap_false.
                    DATA(t493) = VALUE abap_bool( ).
                    DATA(t494) = t2.
                    t493 = xsdbool( t494 IS BOUND AND t494 IS INSTANCE OF zcl_lnt_character_type ).
                    t490 = t493.
                  ENDIF.
                  t489 = t490.
                  IF t490 = abap_true.
                    DATA(t495) = VALUE abap_bool( ).
                    DATA(t496) = t1.
                    t495 = xsdbool( t496 IS BOUND AND t496 IS INSTANCE OF zcl_lnt_structure_type ).
                    t489 = t495.
                  ENDIF.
                  t488 = t489.
                  IF t489 = abap_true.
                    DATA(t497) = VALUE abap_bool( ).
                    DATA t498 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t498.
                    DATA(t499) = t1.
                    t498 ?= t499.
                    t497 = me->is_char_like( i_type_9913 = t498 ).
                    t488 = t497.
                  ENDIF.
                  IF t488 = abap_true.
                    DATA(t500) = VALUE abap_bool( ).
                    DATA(t501) = VALUE abap_bool( ).
                    DATA t502 TYPE REF TO zcl_lnt_structure_type.
                    CLEAR t502.
                    DATA(t503) = t1.
                    t502 ?= t503.
                    t501 = me->structure_contains_string( i_structure = t502 ).
                    DATA(t504) = abap_true.
                    t500 = xsdbool( t501 = t504 ).
                    IF t500 = abap_true.
                      DATA(t505) = abap_false.
                      result = t505.
                      RETURN.
                    ENDIF.
                    DATA(t506) = abap_true.
                    result = t506.
                    RETURN.
                  ELSE.
                    DATA(t507) = VALUE abap_bool( ).
                    DATA(t508) = t1.
                    t507 = xsdbool( t508 IS BOUND AND t508 IS INSTANCE OF zcl_lnt_structure_type ).
                    IF t507 = abap_true.
                      DATA(t509) = VALUE abap_bool( ).
                      DATA t510 TYPE REF TO zcl_lnt_structure_type.
                      CLEAR t510.
                      DATA(t511) = t1.
                      t510 ?= t511.
                      t509 = me->is_char_like_strict( i_type_9913 = t510 ).
                      result = t509.
                      RETURN.
                    ELSE.
                      DATA(t512) = VALUE abap_bool( ).
                      DATA(t513) = VALUE abap_bool( ).
                      DATA(t514) = VALUE abap_bool( ).
                      DATA(t515) = t1.
                      t514 = xsdbool( t515 IS BOUND AND t515 IS INSTANCE OF zcl_lnt_data_reference ).
                      t513 = t514.
                      IF t514 = abap_false.
                        DATA(t516) = VALUE abap_bool( ).
                        DATA(t517) = t1.
                        t516 = xsdbool( t517 IS BOUND AND t517 IS INSTANCE OF zcl_lnt_object_reference_type ).
                        t513 = t516.
                      ENDIF.
                      t512 = t513.
                      IF t513 = abap_false.
                        DATA(t518) = VALUE abap_bool( ).
                        DATA(t519) = t1.
                        t518 = xsdbool( t519 IS BOUND AND t519 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
                        t512 = t518.
                      ENDIF.
                      IF t512 = abap_true.
                        DATA(t520) = abap_false.
                        result = t520.
                        RETURN.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
                DATA(t521) = abap_true.
                result = t521.
                RETURN.
              ELSE.
                DATA(t522) = VALUE abap_bool( ).
                DATA(t523) = t2.
                t522 = xsdbool( t523 IS BOUND AND t523 IS INSTANCE OF zcl_lnt_simple_type ).
                IF t522 = abap_true.
                  DATA(t524) = VALUE abap_bool( ).
                  DATA(t525) = VALUE abap_bool( ).
                  DATA(t526) = t1.
                  t525 = xsdbool( t526 IS BOUND AND t526 IS INSTANCE OF zcl_lnt_object_reference_type ).
                  t524 = t525.
                  IF t525 = abap_false.
                    DATA(t527) = VALUE abap_bool( ).
                    DATA(t528) = t1.
                    t527 = xsdbool( t528 IS BOUND AND t528 IS INSTANCE OF zcl_lnt_ty_table_type ).
                    t524 = t527.
                  ENDIF.
                  IF t524 = abap_true.
                    DATA(t529) = abap_false.
                    result = t529.
                    RETURN.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t530) = abap_true.
    result = t530.

  ENDMETHOD.

  METHOD is_utc_long_assignable.
    DATA(t1) = i_source_75cf.
    DATA(t2) = i_target_5f8a.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t6) = t1.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    DATA(t11) = t5.
    t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_void_type ).
    t9 = t10.
    IF t10 = abap_false.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t5.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_any_type ).
      t9 = t12.
    ENDIF.
    t8 = t9.
    IF t9 = abap_false.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t5.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_data_type ).
      t8 = t14.
    ENDIF.
    t7 = t8.
    IF t8 = abap_false.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t5.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_unknown_type ).
      t7 = t16.
    ENDIF.
    t4 = t7.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t20) = t2.
      t19 = t20.
      DATA(t21) = VALUE abap_bool( ).
      DATA(t22) = VALUE abap_bool( ).
      DATA t23 TYPE abap_bool.
      DATA t24 TYPE abap_bool.
      DATA(t25) = t19.
      t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_void_type ).
      t23 = t24.
      IF t24 = abap_false.
        DATA t26 TYPE abap_bool.
        DATA(t27) = t19.
        t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_any_type ).
        t23 = t26.
      ENDIF.
      t22 = t23.
      IF t23 = abap_false.
        DATA t28 TYPE abap_bool.
        DATA(t29) = t19.
        t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_data_type ).
        t22 = t28.
      ENDIF.
      t21 = t22.
      IF t22 = abap_false.
        DATA t30 TYPE abap_bool.
        DATA(t31) = t19.
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_unknown_type ).
        t21 = t30.
      ENDIF.
      t18 = t21.
      t3 = t18.
    ENDIF.
    IF t3 = abap_true.
      DATA(t32) = abap_true.
      result = t32.
      RETURN.
    ELSE.
      DATA t33 TYPE abap_bool.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t1.
      t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_utc_long_type ).
      t33 = t34.
      IF t34 = abap_true.
        DATA t36 TYPE abap_bool.
        DATA(t37) = t2.
        t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_utc_long_type ).
        t33 = t36.
      ENDIF.
      IF t33 = abap_true.
        DATA(t38) = abap_true.
        result = t38.
        RETURN.
      ELSE.
        DATA t39 TYPE abap_bool.
        DATA(t40) = t1.
        t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_utc_long_type ).
        IF t39 = abap_true.
          DATA(t41) = VALUE abap_bool( ).
          DATA t42 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t43) = t2.
          t42 = t43.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = VALUE abap_bool( ).
          DATA(t46) = VALUE abap_bool( ).
          DATA(t47) = VALUE abap_bool( ).
          DATA t48 TYPE abap_bool.
          DATA t49 TYPE abap_bool.
          DATA(t50) = t42.
          t49 = xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_character_type ).
          t48 = t49.
          IF t49 = abap_false.
            DATA t51 TYPE abap_bool.
            DATA(t52) = t42.
            t51 = xsdbool( t52 IS BOUND AND t52 IS INSTANCE OF zcl_lnt_string_type ).
            t48 = t51.
          ENDIF.
          t47 = t48.
          IF t48 = abap_false.
            DATA t53 TYPE abap_bool.
            DATA(t54) = t42.
            t53 = xsdbool( t54 IS BOUND AND t54 IS INSTANCE OF zcl_lnt_c_like_type ).
            t47 = t53.
          ENDIF.
          t46 = t47.
          IF t47 = abap_false.
            DATA t55 TYPE abap_bool.
            DATA(t56) = t42.
            t55 = xsdbool( t56 IS BOUND AND t56 IS INSTANCE OF zcl_lnt_c_sequence_type ).
            t46 = t55.
          ENDIF.
          t45 = t46.
          IF t46 = abap_false.
            DATA t57 TYPE abap_bool.
            DATA(t58) = t42.
            t57 = xsdbool( t58 IS BOUND AND t58 IS INSTANCE OF zcl_lnt_c_generic_type ).
            t45 = t57.
          ENDIF.
          t44 = t45.
          IF t45 = abap_false.
            DATA t59 TYPE abap_bool.
            DATA(t60) = t42.
            t59 = xsdbool( t60 IS BOUND AND t60 IS INSTANCE OF zcl_lnt_simple_type ).
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
    DATA(t63) = t1.
    t62 = t63.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = VALUE abap_bool( ).
    DATA(t67) = VALUE abap_bool( ).
    DATA t68 TYPE abap_bool.
    DATA t69 TYPE abap_bool.
    DATA(t70) = t62.
    t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_character_type ).
    t68 = t69.
    IF t69 = abap_false.
      DATA t71 TYPE abap_bool.
      DATA(t72) = t62.
      t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_string_type ).
      t68 = t71.
    ENDIF.
    t67 = t68.
    IF t68 = abap_false.
      DATA t73 TYPE abap_bool.
      DATA(t74) = t62.
      t73 = xsdbool( t74 IS BOUND AND t74 IS INSTANCE OF zcl_lnt_c_like_type ).
      t67 = t73.
    ENDIF.
    t66 = t67.
    IF t67 = abap_false.
      DATA t75 TYPE abap_bool.
      DATA(t76) = t62.
      t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_c_sequence_type ).
      t66 = t75.
    ENDIF.
    t65 = t66.
    IF t66 = abap_false.
      DATA t77 TYPE abap_bool.
      DATA(t78) = t62.
      t77 = xsdbool( t78 IS BOUND AND t78 IS INSTANCE OF zcl_lnt_c_generic_type ).
      t65 = t77.
    ENDIF.
    t64 = t65.
    IF t65 = abap_false.
      DATA t79 TYPE abap_bool.
      DATA(t80) = t62.
      t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_simple_type ).
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
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_void_type ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA(t8) = t1.
      t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_any_type ).
      t4 = t7.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t1.
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_data_type ).
      t3 = t9.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t1.
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_unknown_type ).
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
    DATA(t8) = t1.
    t7 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_character_type ).
    t6 = t7.
    IF t7 = abap_false.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t1.
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_string_type ).
      t6 = t9.
    ENDIF.
    t5 = t6.
    IF t6 = abap_false.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t1.
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_c_like_type ).
      t5 = t11.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t13 TYPE abap_bool.
      DATA(t14) = t1.
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_c_sequence_type ).
      t4 = t13.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t1.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_c_generic_type ).
      t3 = t15.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t1.
      t17 = xsdbool( t18 IS BOUND AND t18 IS INSTANCE OF zcl_lnt_simple_type ).
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
