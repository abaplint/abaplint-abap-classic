* TS: src/abap/5_syntax/_type_utils.ts:12:1 TypeUtils
CLASS zcl_lnt_type_utils DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_type_utils IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_current_scope( i_scope ).
    DATA(t2) = CAST zcl_lnt_current_scope( t1 ).
    me->scope = t2.
  ENDMETHOD.

  METHOD is_char_like_strict.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t4) = CAST zcl_lnt_abstract_type( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_abstract_type( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_false.
      result = t9.
      RETURN.
    ELSE.
      DATA t10 TYPE abap_bool.
      DATA(t11) = CAST zcl_lnt_abstract_type( t1 ).
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t10 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t13 TYPE REF TO zcl_lnt_structure_type.
        DATA t14 TYPE REF TO zcl_lnt_structure_type.
        DATA(t15) = CAST zcl_lnt_abstract_type( t1 ).
        t14 ?= t15.
        t13 = t14.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t17) = CAST zcl_lnt_structure_type( t13 ).
        t16 = t17->components.
        t12 = t16.
        DATA t18 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t18.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        LOOP AT t12->items INTO t19.
          t18 ?= t19.
          DATA(t20) = VALUE abap_bool( ).
          DATA(t21) = VALUE abap_bool( ).
          DATA t22 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t22.
          DATA(t23) = abap_true.
          IF t23 = abap_true.
            DATA t24 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t25) = CAST zcl_lnt_istructure_component( t18 ).
            t24 = t25->type_cba0.
            t22 = t24.
          ELSE.
            DATA t26 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t26.
            t22 = t26.
          ENDIF.
          t21 = me->is_char_like_strict( i_type_9913 = t22 ).
          DATA(t27) = abap_false.
          t20 = xsdbool( t21 = t27 ).
          IF t20 = abap_true.
            DATA(t28) = abap_false.
            result = t28.
            RETURN.
          ENDIF.
        ENDLOOP.
        DATA(t29) = abap_true.
        result = t29.
        RETURN.
      ELSE.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA(t32) = CAST zcl_lnt_abstract_type( t1 ).
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t30 = t31.
        IF t31 = abap_true.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t35 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t36) = CAST zcl_lnt_abstract_type( t1 ).
          t35 ?= t36.
          t34 = t35.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE REF TO zcl_lnt_itable_options.
          DATA(t39) = CAST zcl_lnt_ty_table_type( t34 ).
          t38 = t39->options.
          t37 = t38->with_header.
          t33 = t37.
          t30 = t33.
        ENDIF.
        IF t30 = abap_true.
          DATA(t40) = VALUE abap_bool( ).
          DATA t41 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t41.
          DATA(t42) = abap_true.
          IF t42 = abap_true.
            DATA t43 TYPE REF TO zcl_lnt_abstract_type.
            DATA t44 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t45 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t46) = CAST zcl_lnt_abstract_type( t1 ).
            t45 ?= t46.
            t44 = t45.
            DATA t47 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t48) = CAST zcl_lnt_ty_table_type( t44 ).
            t47 = t48->row_type.
            t43 = t47.
            t41 = t43.
          ELSE.
            DATA t49 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t49.
            t41 = t49.
          ENDIF.
          t40 = me->is_char_like_strict( i_type_9913 = t41 ).
          result = t40.
          RETURN.
        ELSE.
          DATA(t50) = VALUE abap_bool( ).
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = VALUE abap_bool( ).
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = VALUE abap_bool( ).
          DATA(t57) = VALUE abap_bool( ).
          DATA(t58) = VALUE abap_bool( ).
          DATA(t59) = VALUE abap_bool( ).
          DATA(t60) = VALUE abap_bool( ).
          DATA(t61) = VALUE abap_bool( ).
          DATA t62 TYPE abap_bool.
          DATA t63 TYPE abap_bool.
          DATA(t64) = CAST zcl_lnt_abstract_type( t1 ).
          t63 = xsdbool( t64 IS BOUND AND t64 IS INSTANCE OF zcl_lnt_string_type ).
          t62 = t63.
          IF t63 = abap_false.
            DATA t65 TYPE abap_bool.
            DATA(t66) = CAST zcl_lnt_abstract_type( t1 ).
            t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_any_type ).
            t62 = t65.
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            DATA t67 TYPE abap_bool.
            DATA(t68) = CAST zcl_lnt_abstract_type( t1 ).
            t67 = xsdbool( t68 IS BOUND AND t68 IS INSTANCE OF zcl_lnt_data_type ).
            t61 = t67.
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            DATA t69 TYPE abap_bool.
            DATA(t70) = CAST zcl_lnt_abstract_type( t1 ).
            t69 = xsdbool( t70 IS BOUND AND t70 IS INSTANCE OF zcl_lnt_character_type ).
            t60 = t69.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA t71 TYPE abap_bool.
            DATA(t72) = CAST zcl_lnt_abstract_type( t1 ).
            t71 = xsdbool( t72 IS BOUND AND t72 IS INSTANCE OF zcl_lnt_simple_type ).
            t59 = t71.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA t73 TYPE abap_bool.
            DATA(t74) = CAST zcl_lnt_abstract_type( t1 ).
            t73 = xsdbool( t74 IS BOUND AND t74 IS INSTANCE OF zcl_lnt_c_generic_type ).
            t58 = t73.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA t75 TYPE abap_bool.
            DATA(t76) = CAST zcl_lnt_abstract_type( t1 ).
            t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_c_like_type ).
            t57 = t75.
          ENDIF.
          t56 = t57.
          IF t57 = abap_false.
            DATA t77 TYPE abap_bool.
            DATA(t78) = CAST zcl_lnt_abstract_type( t1 ).
            t77 = xsdbool( t78 IS BOUND AND t78 IS INSTANCE OF zcl_lnt_date_type ).
            t56 = t77.
          ENDIF.
          t55 = t56.
          IF t56 = abap_false.
            DATA t79 TYPE abap_bool.
            DATA(t80) = CAST zcl_lnt_abstract_type( t1 ).
            t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_c_sequence_type ).
            t55 = t79.
          ENDIF.
          t54 = t55.
          IF t55 = abap_false.
            DATA t81 TYPE abap_bool.
            DATA(t82) = CAST zcl_lnt_abstract_type( t1 ).
            t81 = xsdbool( t82 IS BOUND AND t82 IS INSTANCE OF zcl_lnt_numeric_generic_type ).
            t54 = t81.
          ENDIF.
          t53 = t54.
          IF t54 = abap_false.
            DATA t83 TYPE abap_bool.
            DATA(t84) = CAST zcl_lnt_abstract_type( t1 ).
            t83 = xsdbool( t84 IS BOUND AND t84 IS INSTANCE OF zcl_lnt_numeric_type ).
            t53 = t83.
          ENDIF.
          t52 = t53.
          IF t53 = abap_false.
            DATA t85 TYPE abap_bool.
            DATA(t86) = CAST zcl_lnt_abstract_type( t1 ).
            t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_time_type ).
            t52 = t85.
          ENDIF.
          t51 = t52.
          IF t52 = abap_false.
            DATA t87 TYPE abap_bool.
            DATA(t88) = CAST zcl_lnt_abstract_type( t1 ).
            t87 = xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_unknown_type ).
            t51 = t87.
          ENDIF.
          t50 = t51.
          IF t51 = abap_false.
            DATA t89 TYPE abap_bool.
            DATA(t90) = CAST zcl_lnt_abstract_type( t1 ).
            t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_void_type ).
            t50 = t89.
          ENDIF.
          IF t50 = abap_true.
            DATA(t91) = abap_true.
            result = t91.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t92) = abap_false.
    result = t92.

  ENDMETHOD.

  METHOD is_char_like_field.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CAST zcl_lnt_abstract_type( t1 ).
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_structure_type ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t5 TYPE abap_bool.
      DATA t6 TYPE abap_bool.
      DATA(t7) = CAST zcl_lnt_abstract_type( t1 ).
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t5 = t6.
      IF t6 = abap_true.
        DATA t8 TYPE abap_bool.
        DATA t9 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t10 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t11) = CAST zcl_lnt_abstract_type( t1 ).
        t10 ?= t11.
        t9 = t10.
        DATA t12 TYPE abap_bool.
        DATA t13 TYPE REF TO zcl_lnt_itable_options.
        DATA(t14) = CAST zcl_lnt_ty_table_type( t9 ).
        t13 = t14->options.
        t12 = t13->with_header.
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
        DATA(t21) = CAST zcl_lnt_abstract_type( t1 ).
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
    DATA(t32) = CAST zcl_lnt_abstract_type( t1 ).
    t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_character_type ).
    t30 = t31.
    IF t31 = abap_false.
      DATA t33 TYPE abap_bool.
      DATA(t34) = CAST zcl_lnt_abstract_type( t1 ).
      t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_numeric_type ).
      t30 = t33.
    ENDIF.
    t29 = t30.
    IF t30 = abap_false.
      DATA t35 TYPE abap_bool.
      DATA(t36) = CAST zcl_lnt_abstract_type( t1 ).
      t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_date_type ).
      t29 = t35.
    ENDIF.
    t28 = t29.
    IF t29 = abap_false.
      DATA t37 TYPE abap_bool.
      DATA(t38) = CAST zcl_lnt_abstract_type( t1 ).
      t37 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_time_type ).
      t28 = t37.
    ENDIF.
    t27 = t28.
    IF t28 = abap_false.
      DATA t39 TYPE abap_bool.
      DATA(t40) = CAST zcl_lnt_abstract_type( t1 ).
      t39 = xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_c_generic_type ).
      t27 = t39.
    ENDIF.
    t26 = t27.
    IF t27 = abap_false.
      DATA t41 TYPE abap_bool.
      DATA(t42) = CAST zcl_lnt_abstract_type( t1 ).
      t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_c_like_type ).
      t26 = t41.
    ENDIF.
    t25 = t26.
    IF t26 = abap_false.
      DATA t43 TYPE abap_bool.
      DATA(t44) = CAST zcl_lnt_abstract_type( t1 ).
      t43 = xsdbool( t44 IS BOUND AND t44 IS INSTANCE OF zcl_lnt_any_type ).
      t25 = t43.
    ENDIF.
    t24 = t25.
    IF t25 = abap_false.
      DATA t45 TYPE abap_bool.
      DATA(t46) = CAST zcl_lnt_abstract_type( t1 ).
      t45 = xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcl_lnt_unknown_type ).
      t24 = t45.
    ENDIF.
    t23 = t24.
    IF t24 = abap_false.
      DATA t47 TYPE abap_bool.
      DATA(t48) = CAST zcl_lnt_abstract_type( t1 ).
      t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcl_lnt_void_type ).
      t23 = t47.
    ENDIF.
    result = t23.

  ENDMETHOD.

  METHOD is_char_like_for_compare.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t8) = CAST zcl_lnt_abstract_type( t1 ).
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zcl_lnt_abstract_type( t7 ).
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    t5 = t6.
    IF t6 = abap_false.
      DATA t13 TYPE abap_bool.
      DATA(t14) = CAST zcl_lnt_abstract_type( t1 ).
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_string_type ).
      t5 = t13.
    ENDIF.
    t4 = t5.
    IF t5 = abap_false.
      DATA t15 TYPE abap_bool.
      DATA(t16) = CAST zcl_lnt_abstract_type( t1 ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_c_like_type ).
      t4 = t15.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA t17 TYPE abap_bool.
      DATA(t18) = CAST zcl_lnt_abstract_type( t1 ).
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
        DATA(t24) = CAST zcl_lnt_abstract_type( t1 ).
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
      DATA(t29) = CAST zcl_lnt_abstract_type( t20 ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_structure_type ).
      t27 = t28.
      IF t28 = abap_false.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA(t32) = CAST zcl_lnt_abstract_type( t20 ).
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t30 = t31.
        IF t31 = abap_true.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t35 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t36) = CAST zcl_lnt_abstract_type( t20 ).
          t35 ?= t36.
          t34 = t35.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE REF TO zcl_lnt_itable_options.
          DATA(t39) = CAST zcl_lnt_ty_table_type( t34 ).
          t38 = t39->options.
          t37 = t38->with_header.
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
          DATA(t46) = CAST zcl_lnt_abstract_type( t20 ).
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
        DATA(t57) = CAST zcl_lnt_abstract_type( t20 ).
        t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_character_type ).
        t55 = t56.
        IF t56 = abap_false.
          DATA t58 TYPE abap_bool.
          DATA(t59) = CAST zcl_lnt_abstract_type( t20 ).
          t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_numeric_type ).
          t55 = t58.
        ENDIF.
        t54 = t55.
        IF t55 = abap_false.
          DATA t60 TYPE abap_bool.
          DATA(t61) = CAST zcl_lnt_abstract_type( t20 ).
          t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_date_type ).
          t54 = t60.
        ENDIF.
        t53 = t54.
        IF t54 = abap_false.
          DATA t62 TYPE abap_bool.
          DATA(t63) = CAST zcl_lnt_abstract_type( t20 ).
          t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_time_type ).
          t53 = t62.
        ENDIF.
        t52 = t53.
        IF t53 = abap_false.
          DATA t64 TYPE abap_bool.
          DATA(t65) = CAST zcl_lnt_abstract_type( t20 ).
          t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_c_generic_type ).
          t52 = t64.
        ENDIF.
        t51 = t52.
        IF t52 = abap_false.
          DATA t66 TYPE abap_bool.
          DATA(t67) = CAST zcl_lnt_abstract_type( t20 ).
          t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_c_like_type ).
          t51 = t66.
        ENDIF.
        t50 = t51.
        IF t51 = abap_false.
          DATA t68 TYPE abap_bool.
          DATA(t69) = CAST zcl_lnt_abstract_type( t20 ).
          t68 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_any_type ).
          t50 = t68.
        ENDIF.
        t49 = t50.
        IF t50 = abap_false.
          DATA t70 TYPE abap_bool.
          DATA(t71) = CAST zcl_lnt_abstract_type( t20 ).
          t70 = xsdbool( t71 IS BOUND AND t71 IS INSTANCE OF zcl_lnt_unknown_type ).
          t49 = t70.
        ENDIF.
        t48 = t49.
        IF t49 = abap_false.
          DATA t72 TYPE abap_bool.
          DATA(t73) = CAST zcl_lnt_abstract_type( t20 ).
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
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t4) = CAST zcl_lnt_abstract_type( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_abstract_type( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_false.
      result = t9.
      RETURN.
    ELSE.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      DATA(t12) = CAST zcl_lnt_abstract_type( t1 ).
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_ty_table_type ).
      t10 = t11.
      IF t11 = abap_true.
        DATA t13 TYPE abap_bool.
        DATA t14 TYPE REF TO zcl_lnt_ty_table_type.
        DATA t15 TYPE REF TO zcl_lnt_ty_table_type.
        DATA(t16) = CAST zcl_lnt_abstract_type( t1 ).
        t15 ?= t16.
        t14 = t15.
        DATA t17 TYPE abap_bool.
        DATA t18 TYPE REF TO zcl_lnt_itable_options.
        DATA(t19) = CAST zcl_lnt_ty_table_type( t14 ).
        t18 = t19->options.
        t17 = t18->with_header.
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
          DATA t24 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t25 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t26) = CAST zcl_lnt_abstract_type( t1 ).
          t25 ?= t26.
          t24 = t25.
          DATA t27 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t28) = CAST zcl_lnt_ty_table_type( t24 ).
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
        DATA t30 TYPE abap_bool.
        DATA(t31) = CAST zcl_lnt_abstract_type( t1 ).
        t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_structure_type ).
        IF t30 = abap_true.
          DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t33 TYPE REF TO zcl_lnt_structure_type.
          DATA t34 TYPE REF TO zcl_lnt_structure_type.
          DATA(t35) = CAST zcl_lnt_abstract_type( t1 ).
          t34 ?= t35.
          t33 = t34.
          DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t37) = CAST zcl_lnt_structure_type( t33 ).
          t36 = t37->components.
          t32 = t36.
          DATA t38 TYPE REF TO zcl_lnt_istructure_component.
          CLEAR t38.
          DATA t39 TYPE REF TO object.
          CLEAR t39.
          LOOP AT t32->items INTO t39.
            t38 ?= t39.
            DATA(t40) = VALUE abap_bool( ).
            DATA(t41) = VALUE abap_bool( ).
            DATA t42 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t42.
            DATA(t43) = abap_true.
            IF t43 = abap_true.
              DATA t44 TYPE REF TO zcl_lnt_abstract_type.
              DATA(t45) = CAST zcl_lnt_istructure_component( t38 ).
              t44 = t45->type_cba0.
              t42 = t44.
            ELSE.
              DATA t46 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t46.
              t42 = t46.
            ENDIF.
            t41 = me->is_char_like( i_type_9913 = t42 ).
            DATA(t47) = abap_false.
            t40 = xsdbool( t41 = t47 ).
            IF t40 = abap_true.
              DATA(t48) = abap_false.
              result = t48.
              RETURN.
            ENDIF.
          ENDLOOP.
          DATA(t49) = abap_true.
          result = t49.
          RETURN.
        ELSE.
          DATA(t50) = VALUE abap_bool( ).
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = VALUE abap_bool( ).
          DATA(t55) = VALUE abap_bool( ).
          DATA(t56) = VALUE abap_bool( ).
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
          DATA t72 TYPE abap_bool.
          DATA t73 TYPE abap_bool.
          DATA(t74) = CAST zcl_lnt_abstract_type( t1 ).
          t73 = xsdbool( t74 IS BOUND AND t74 IS INSTANCE OF zcl_lnt_string_type ).
          t72 = t73.
          IF t73 = abap_false.
            DATA t75 TYPE abap_bool.
            DATA(t76) = CAST zcl_lnt_abstract_type( t1 ).
            t75 = xsdbool( t76 IS BOUND AND t76 IS INSTANCE OF zcl_lnt_character_type ).
            t72 = t75.
          ENDIF.
          t71 = t72.
          IF t72 = abap_false.
            DATA t77 TYPE abap_bool.
            DATA(t78) = CAST zcl_lnt_abstract_type( t1 ).
            t77 = xsdbool( t78 IS BOUND AND t78 IS INSTANCE OF zcl_lnt_void_type ).
            t71 = t77.
          ENDIF.
          t70 = t71.
          IF t71 = abap_false.
            DATA t79 TYPE abap_bool.
            DATA(t80) = CAST zcl_lnt_abstract_type( t1 ).
            t79 = xsdbool( t80 IS BOUND AND t80 IS INSTANCE OF zcl_lnt_any_type ).
            t70 = t79.
          ENDIF.
          t69 = t70.
          IF t70 = abap_false.
            DATA t81 TYPE abap_bool.
            DATA(t82) = CAST zcl_lnt_abstract_type( t1 ).
            t81 = xsdbool( t82 IS BOUND AND t82 IS INSTANCE OF zcl_lnt_unknown_type ).
            t69 = t81.
          ENDIF.
          t68 = t69.
          IF t69 = abap_false.
            DATA t83 TYPE abap_bool.
            DATA(t84) = CAST zcl_lnt_abstract_type( t1 ).
            t83 = xsdbool( t84 IS BOUND AND t84 IS INSTANCE OF zcl_lnt_numeric_type ).
            t68 = t83.
          ENDIF.
          t67 = t68.
          IF t68 = abap_false.
            DATA t85 TYPE abap_bool.
            DATA(t86) = CAST zcl_lnt_abstract_type( t1 ).
            t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_integer_type ).
            t67 = t85.
          ENDIF.
          t66 = t67.
          IF t67 = abap_false.
            DATA t87 TYPE abap_bool.
            DATA(t88) = CAST zcl_lnt_abstract_type( t1 ).
            t87 = xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_integer8_type ).
            t66 = t87.
          ENDIF.
          t65 = t66.
          IF t66 = abap_false.
            DATA t89 TYPE abap_bool.
            DATA(t90) = CAST zcl_lnt_abstract_type( t1 ).
            t89 = xsdbool( t90 IS BOUND AND t90 IS INSTANCE OF zcl_lnt_simple_type ).
            t65 = t89.
          ENDIF.
          t64 = t65.
          IF t65 = abap_false.
            DATA t91 TYPE abap_bool.
            DATA(t92) = CAST zcl_lnt_abstract_type( t1 ).
            t91 = xsdbool( t92 IS BOUND AND t92 IS INSTANCE OF zcl_lnt_float_type ).
            t64 = t91.
          ENDIF.
          t63 = t64.
          IF t64 = abap_false.
            DATA t93 TYPE abap_bool.
            DATA(t94) = CAST zcl_lnt_abstract_type( t1 ).
            t93 = xsdbool( t94 IS BOUND AND t94 IS INSTANCE OF zcl_lnt_floating_point_type ).
            t63 = t93.
          ENDIF.
          t62 = t63.
          IF t63 = abap_false.
            DATA t95 TYPE abap_bool.
            DATA(t96) = CAST zcl_lnt_abstract_type( t1 ).
            t95 = xsdbool( t96 IS BOUND AND t96 IS INSTANCE OF zcl_lnt_dec_float_type ).
            t62 = t95.
          ENDIF.
          t61 = t62.
          IF t62 = abap_false.
            DATA t97 TYPE abap_bool.
            DATA(t98) = CAST zcl_lnt_abstract_type( t1 ).
            t97 = xsdbool( t98 IS BOUND AND t98 IS INSTANCE OF zcl_lnt_dec_float16_type ).
            t61 = t97.
          ENDIF.
          t60 = t61.
          IF t61 = abap_false.
            DATA t99 TYPE abap_bool.
            DATA(t100) = CAST zcl_lnt_abstract_type( t1 ).
            t99 = xsdbool( t100 IS BOUND AND t100 IS INSTANCE OF zcl_lnt_dec_float34_type ).
            t60 = t99.
          ENDIF.
          t59 = t60.
          IF t60 = abap_false.
            DATA t101 TYPE abap_bool.
            DATA(t102) = CAST zcl_lnt_abstract_type( t1 ).
            t101 = xsdbool( t102 IS BOUND AND t102 IS INSTANCE OF zcl_lnt_numeric_generic_type ).
            t59 = t101.
          ENDIF.
          t58 = t59.
          IF t59 = abap_false.
            DATA t103 TYPE abap_bool.
            DATA(t104) = CAST zcl_lnt_abstract_type( t1 ).
            t103 = xsdbool( t104 IS BOUND AND t104 IS INSTANCE OF zcl_lnt_c_sequence_type ).
            t58 = t103.
          ENDIF.
          t57 = t58.
          IF t58 = abap_false.
            DATA t105 TYPE abap_bool.
            DATA(t106) = CAST zcl_lnt_abstract_type( t1 ).
            t105 = xsdbool( t106 IS BOUND AND t106 IS INSTANCE OF zcl_lnt_c_generic_type ).
            t57 = t105.
          ENDIF.
          t56 = t57.
          IF t57 = abap_false.
            DATA t107 TYPE abap_bool.
            DATA(t108) = CAST zcl_lnt_abstract_type( t1 ).
            t107 = xsdbool( t108 IS BOUND AND t108 IS INSTANCE OF zcl_lnt_date_type ).
            t56 = t107.
          ENDIF.
          t55 = t56.
          IF t56 = abap_false.
            DATA t109 TYPE abap_bool.
            DATA(t110) = CAST zcl_lnt_abstract_type( t1 ).
            t109 = xsdbool( t110 IS BOUND AND t110 IS INSTANCE OF zcl_lnt_data_type ).
            t55 = t109.
          ENDIF.
          t54 = t55.
          IF t55 = abap_false.
            DATA t111 TYPE abap_bool.
            DATA(t112) = CAST zcl_lnt_abstract_type( t1 ).
            t111 = xsdbool( t112 IS BOUND AND t112 IS INSTANCE OF zcl_lnt_c_like_type ).
            t54 = t111.
          ENDIF.
          t53 = t54.
          IF t54 = abap_false.
            DATA t113 TYPE abap_bool.
            DATA(t114) = CAST zcl_lnt_abstract_type( t1 ).
            t113 = xsdbool( t114 IS BOUND AND t114 IS INSTANCE OF zcl_lnt_packed_type ).
            t53 = t113.
          ENDIF.
          t52 = t53.
          IF t53 = abap_false.
            DATA t115 TYPE abap_bool.
            DATA(t116) = CAST zcl_lnt_abstract_type( t1 ).
            t115 = xsdbool( t116 IS BOUND AND t116 IS INSTANCE OF zcl_lnt_p_generic_type ).
            t52 = t115.
          ENDIF.
          t51 = t52.
          IF t52 = abap_false.
            DATA t117 TYPE abap_bool.
            DATA(t118) = CAST zcl_lnt_abstract_type( t1 ).
            t117 = xsdbool( t118 IS BOUND AND t118 IS INSTANCE OF zcl_lnt_time_type ).
            t51 = t117.
          ENDIF.
          t50 = t51.
          IF t51 = abap_false.
            DATA t119 TYPE abap_bool.
            DATA(t120) = CAST zcl_lnt_abstract_type( t1 ).
            t119 = xsdbool( t120 IS BOUND AND t120 IS INSTANCE OF zcl_lnt_enum_type ).
            t50 = t119.
          ENDIF.
          IF t50 = abap_true.
            DATA(t121) = abap_true.
            result = t121.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t122) = abap_false.
    result = t122.

  ENDMETHOD.

  METHOD is_hex_like.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t4) = CAST zcl_lnt_abstract_type( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zcl_lnt_abstract_type( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA(t9) = abap_false.
      result = t9.
      RETURN.
    ELSE.
      DATA t10 TYPE abap_bool.
      DATA(t11) = CAST zcl_lnt_abstract_type( t1 ).
      t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t10 = abap_true.
        DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t13 TYPE REF TO zcl_lnt_structure_type.
        DATA t14 TYPE REF TO zcl_lnt_structure_type.
        DATA(t15) = CAST zcl_lnt_abstract_type( t1 ).
        t14 ?= t15.
        t13 = t14.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t17) = CAST zcl_lnt_structure_type( t13 ).
        t16 = t17->components.
        t12 = t16.
        DATA t18 TYPE REF TO zcl_lnt_istructure_component.
        CLEAR t18.
        DATA t19 TYPE REF TO object.
        CLEAR t19.
        LOOP AT t12->items INTO t19.
          t18 ?= t19.
          DATA(t20) = VALUE abap_bool( ).
          DATA(t21) = VALUE abap_bool( ).
          DATA t22 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t22.
          DATA(t23) = abap_true.
          IF t23 = abap_true.
            DATA t24 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t25) = CAST zcl_lnt_istructure_component( t18 ).
            t24 = t25->type_cba0.
            t22 = t24.
          ELSE.
            DATA t26 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t26.
            t22 = t26.
          ENDIF.
          t21 = me->is_hex_like( i_type_9913 = t22 ).
          DATA(t27) = abap_false.
          t20 = xsdbool( t21 = t27 ).
          IF t20 = abap_true.
            DATA(t28) = abap_false.
            result = t28.
            RETURN.
          ENDIF.
        ENDLOOP.
        DATA(t29) = abap_true.
        result = t29.
        RETURN.
      ELSE.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE abap_bool.
        DATA(t32) = CAST zcl_lnt_abstract_type( t1 ).
        t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t30 = t31.
        IF t31 = abap_true.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t35 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t36) = CAST zcl_lnt_abstract_type( t1 ).
          t35 ?= t36.
          t34 = t35.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE REF TO zcl_lnt_itable_options.
          DATA(t39) = CAST zcl_lnt_ty_table_type( t34 ).
          t38 = t39->options.
          t37 = t38->with_header.
          t33 = t37.
          t30 = t33.
        ENDIF.
        IF t30 = abap_true.
          DATA(t40) = VALUE abap_bool( ).
          DATA t41 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t41.
          DATA(t42) = abap_true.
          IF t42 = abap_true.
            DATA t43 TYPE REF TO zcl_lnt_abstract_type.
            DATA t44 TYPE REF TO zcl_lnt_ty_table_type.
            DATA t45 TYPE REF TO zcl_lnt_ty_table_type.
            DATA(t46) = CAST zcl_lnt_abstract_type( t1 ).
            t45 ?= t46.
            t44 = t45.
            DATA t47 TYPE REF TO zcl_lnt_abstract_type.
            DATA(t48) = CAST zcl_lnt_ty_table_type( t44 ).
            t47 = t48->row_type.
            t43 = t47.
            t41 = t43.
          ELSE.
            DATA t49 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t49.
            t41 = t49.
          ENDIF.
          t40 = me->is_hex_like( i_type_9913 = t41 ).
          result = t40.
          RETURN.
        ELSE.
          DATA(t50) = VALUE abap_bool( ).
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = VALUE abap_bool( ).
          DATA t55 TYPE abap_bool.
          DATA t56 TYPE abap_bool.
          DATA(t57) = CAST zcl_lnt_abstract_type( t1 ).
          t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_x_string_type ).
          t55 = t56.
          IF t56 = abap_false.
            DATA t58 TYPE abap_bool.
            DATA(t59) = CAST zcl_lnt_abstract_type( t1 ).
            t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_hex_type ).
            t55 = t58.
          ENDIF.
          t54 = t55.
          IF t55 = abap_false.
            DATA t60 TYPE abap_bool.
            DATA(t61) = CAST zcl_lnt_abstract_type( t1 ).
            t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_void_type ).
            t54 = t60.
          ENDIF.
          t53 = t54.
          IF t54 = abap_false.
            DATA t62 TYPE abap_bool.
            DATA(t63) = CAST zcl_lnt_abstract_type( t1 ).
            t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_x_generic_type ).
            t53 = t62.
          ENDIF.
          t52 = t53.
          IF t53 = abap_false.
            DATA t64 TYPE abap_bool.
            DATA(t65) = CAST zcl_lnt_abstract_type( t1 ).
            t64 = xsdbool( t65 IS BOUND AND t65 IS INSTANCE OF zcl_lnt_x_sequence_type ).
            t52 = t64.
          ENDIF.
          t51 = t52.
          IF t52 = abap_false.
            DATA t66 TYPE abap_bool.
            DATA(t67) = CAST zcl_lnt_abstract_type( t1 ).
            t66 = xsdbool( t67 IS BOUND AND t67 IS INSTANCE OF zcl_lnt_any_type ).
            t51 = t66.
          ENDIF.
          t50 = t51.
          IF t51 = abap_false.
            DATA t68 TYPE abap_bool.
            DATA(t69) = CAST zcl_lnt_abstract_type( t1 ).
            t68 = xsdbool( t69 IS BOUND AND t69 IS INSTANCE OF zcl_lnt_unknown_type ).
            t50 = t68.
          ENDIF.
          IF t50 = abap_true.
            DATA(t70) = abap_true.
            result = t70.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t71) = abap_false.
    result = t71.

  ENDMETHOD.

  METHOD is_oo_assignable.
    DATA(t1) = CAST zcl_lnt_object_reference_type( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_object_reference_type( i_target_5f8a ).
    DATA t3 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t4 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t5 TYPE REF TO zcl_lnt_object_reference_type.
    DATA(t6) = CAST zcl_lnt_object_reference_type( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t8) = CAST zcl_lnt_object_reference_type( t5 ).
    t7 = t8->identifier.
    t4 = t7.
    t3 = t4.
    DATA t9 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t11 TYPE REF TO zcl_lnt_object_reference_type.
    DATA(t12) = CAST zcl_lnt_object_reference_type( t2 ).
    t11 = t12.
    DATA t13 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t14) = CAST zcl_lnt_object_reference_type( t11 ).
    t13 = t14->identifier.
    t10 = t13.
    t9 = t10.
    DATA(t15) = VALUE string( ).
    DATA(t16) = VALUE string( ).
    DATA(t17) = VALUE string( ).
    DATA t18 TYPE REF TO zcl_lnt_fi_identifier.
    DATA(t19) = CAST zcl_lnt_fi_identifier( t9 ).
    t18 = t19.
    DATA(t20) = VALUE string( ).
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t25) = CAST zcl_lnt_fi_identifier( t18 ).
    t24 = t25->token.
    t23 = t24.
    DATA t26 TYPE string.
    DATA(t27) = CAST zcl_lnt_abstract_token( t23 ).
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
    DATA(t51) = CAST zcl_lnt_fi_identifier( t3 ).
    t50 = t51.
    DATA(t52) = VALUE string( ).
    DATA t53 TYPE string.
    DATA t54 TYPE string.
    DATA t55 TYPE REF TO zcl_lnt_abstract_token.
    DATA t56 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t57) = CAST zcl_lnt_fi_identifier( t50 ).
    t56 = t57->token.
    t55 = t56.
    DATA t58 TYPE string.
    DATA(t59) = CAST zcl_lnt_abstract_token( t55 ).
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
    DATA(t86) = CAST zcl_lnt_fi_identifier( t3 ).
    t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    t84 = t85.
    IF t85 = abap_false.
      DATA t87 TYPE abap_bool.
      DATA(t88) = CAST zcl_lnt_fi_identifier( t3 ).
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
      DATA(t92) = CAST zcl_lnt_current_scope( me->scope ).
      t91 = t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA t94 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t94.
      DATA(t95) = abap_true.
      IF t95 = abap_true.
        DATA(t96) = VALUE string( ).
        DATA t97 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t98) = CAST zcl_lnt_fi_identifier( t3 ).
        t97 = t98.
        DATA(t99) = VALUE string( ).
        DATA t100 TYPE string.
        DATA t101 TYPE string.
        DATA t102 TYPE REF TO zcl_lnt_abstract_token.
        DATA t103 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t104) = CAST zcl_lnt_fi_identifier( t97 ).
        t103 = t104->token.
        t102 = t103.
        DATA t105 TYPE string.
        DATA(t106) = CAST zcl_lnt_abstract_token( t102 ).
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
      DATA(t130) = CAST zlnt_runtime_opti_4ba3bdccd169( t93 ).
      t129 = t130.
      DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t132.
      t131 = t132.
      DATA(t133) = VALUE abap_bool( ).
      DATA(t134) = CAST zlnt_runtime_opti_4ba3bdccd169( t129 ).
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
          DATA(t143) = CAST zlnt_runtime_opti_4ba3bdccd169( t93 ).
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
        DATA(t149) = CAST zlnt_runtime_opti_4ba3bdccd169( t139 ).
        t148 = t149.
        DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t151.
        t150 = t151.
        DATA(t152) = VALUE abap_bool( ).
        DATA(t153) = CAST zlnt_runtime_opti_4ba3bdccd169( t148 ).
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
          DATA(t160) = CAST zcl_lnt_current_scope( t91 ).
          t159 = t160->current.
          t158 = t159.
          DATA t161 TYPE REF TO zif_lnt_class_definition.
          CLEAR t161.
          DATA(t162) = VALUE abap_bool( ).
          DATA(t163) = CAST zcl_lnt_spaghetti_scope_node( t158 ).
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
            DATA(t167) = CAST zcl_lnt_spaghetti_scope_node( t158 ).
            t166 = t167.
            DATA t168 TYPE string.
            DATA(t169) = CAST zlnt_runtime_opti_4ba3bdccd169( t139 ).
            t168 = t169->value.
            t165 = t166->find_class_definition( i_name = t168 ).
            t161 = t165.
          ENDIF.
          t157 = t161.
          t156 = t157.
          DATA t170 TYPE REF TO zif_lnt_class_definition.
          CLEAR t170.
          DATA t171 TYPE abap_bool.
          DATA(t172) = CAST zif_lnt_class_definition( t156 ).
          t171 = xsdbool( t172 IS BOUND ).
          IF t171 = abap_true.
            DATA t173 TYPE REF TO zif_lnt_class_definition.
            CLEAR t173.
            DATA(t174) = abap_true.
            IF t174 = abap_true.
              DATA t175 TYPE REF TO zif_lnt_class_definition.
              DATA(t176) = CAST zif_lnt_class_definition( t156 ).
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
            DATA(t183) = CAST zcl_lnt_current_scope( t91 ).
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
              DATA(t192) = CAST zlnt_runtime_opti_4ba3bdccd169( t139 ).
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
            DATA(t198) = CAST zcl_lnt_class( t179 ).
            t197 = xsdbool( t198 IS BOUND ).
            IF t197 = abap_true.
              DATA t199 TYPE REF TO zif_lnt_class_definition.
              DATA t200 TYPE REF TO zcl_lnt_class.
              DATA(t201) = CAST zcl_lnt_class( t179 ).
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
        DATA(t205) = CAST zif_lnt_class_definition( t137 ).
        t204 = xsdbool( t205 IS BOUND ).
        IF t204 = abap_true.
          DATA t206 TYPE REF TO zif_lnt_interface_definition.
          DATA t207 TYPE REF TO zif_lnt_class_definition.
          DATA(t208) = CAST zif_lnt_class_definition( t137 ).
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
            DATA(t216) = CAST zlnt_runtime_opti_4ba3bdccd169( t93 ).
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
          DATA(t222) = CAST zlnt_runtime_opti_4ba3bdccd169( t212 ).
          t221 = t222.
          DATA t223 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t224 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t224.
          t223 = t224.
          DATA(t225) = VALUE abap_bool( ).
          DATA(t226) = CAST zlnt_runtime_opti_4ba3bdccd169( t221 ).
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
            DATA(t233) = CAST zcl_lnt_current_scope( t91 ).
            t232 = t233->current.
            t231 = t232.
            DATA t234 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t234.
            DATA(t235) = VALUE abap_bool( ).
            DATA(t236) = CAST zcl_lnt_spaghetti_scope_node( t231 ).
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
              DATA(t240) = CAST zcl_lnt_spaghetti_scope_node( t231 ).
              t239 = t240.
              DATA t241 TYPE string.
              DATA(t242) = CAST zlnt_runtime_opti_4ba3bdccd169( t212 ).
              t241 = t242->value.
              t238 = t239->find_interface_definition( i_name = t241 ).
              t234 = t238.
            ENDIF.
            t230 = t234.
            t229 = t230.
            DATA t243 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t243.
            DATA t244 TYPE abap_bool.
            DATA(t245) = CAST zif_lnt_interface_definition( t229 ).
            t244 = xsdbool( t245 IS BOUND ).
            IF t244 = abap_true.
              DATA t246 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t246.
              DATA(t247) = abap_true.
              IF t247 = abap_true.
                DATA t248 TYPE REF TO zif_lnt_interface_definition.
                DATA(t249) = CAST zif_lnt_interface_definition( t229 ).
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
              DATA(t256) = CAST zcl_lnt_current_scope( t91 ).
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
                DATA(t265) = CAST zlnt_runtime_opti_4ba3bdccd169( t212 ).
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
              DATA(t271) = CAST zcl_lnt_ob_interface( t252 ).
              t270 = xsdbool( t271 IS BOUND ).
              IF t270 = abap_true.
                DATA t272 TYPE REF TO zif_lnt_interface_definition.
                DATA t273 TYPE REF TO zcl_lnt_ob_interface.
                DATA t274 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t275) = CAST zcl_lnt_ob_interface( t252 ).
                t274 = t275.
                t273 = t274.
                DATA t276 TYPE REF TO zif_lnt_interface_definition.
                DATA(t277) = CAST zcl_lnt_ob_interface( t273 ).
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
          DATA(t281) = CAST zif_lnt_interface_definition( t210 ).
          t280 = xsdbool( t281 IS BOUND ).
          IF t280 = abap_true.
            DATA t282 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t282.
            DATA(t283) = abap_true.
            IF t283 = abap_true.
              DATA t284 TYPE REF TO zif_lnt_interface_definition.
              DATA(t285) = CAST zif_lnt_interface_definition( t210 ).
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
      DATA(t289) = CAST zif_lnt_interface_definition( t89 ).
      t288 = xsdbool( t289 IS BOUND ).
      IF t288 = abap_true.
        DATA t290 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t291 TYPE REF TO zif_lnt_interface_definition.
        DATA(t292) = CAST zif_lnt_interface_definition( t89 ).
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
    DATA(t297) = CAST zcl_lnt_fi_identifier( t9 ).
    t296 = xsdbool( t297 IS BOUND AND t297 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    t295 = t296.
    IF t296 = abap_false.
      DATA t298 TYPE abap_bool.
      DATA(t299) = CAST zcl_lnt_fi_identifier( t9 ).
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
      DATA(t303) = CAST zcl_lnt_current_scope( me->scope ).
      t302 = t303.
      DATA t304 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t304.
      DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t305.
      DATA(t306) = abap_true.
      IF t306 = abap_true.
        DATA(t307) = VALUE string( ).
        DATA t308 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t309) = CAST zcl_lnt_fi_identifier( t9 ).
        t308 = t309.
        DATA(t310) = VALUE string( ).
        DATA t311 TYPE string.
        DATA t312 TYPE string.
        DATA t313 TYPE REF TO zcl_lnt_abstract_token.
        DATA t314 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t315) = CAST zcl_lnt_fi_identifier( t308 ).
        t314 = t315->token.
        t313 = t314.
        DATA t316 TYPE string.
        DATA(t317) = CAST zcl_lnt_abstract_token( t313 ).
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
      DATA(t341) = CAST zlnt_runtime_opti_4ba3bdccd169( t304 ).
      t340 = t341.
      DATA t342 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t343.
      t342 = t343.
      DATA(t344) = VALUE abap_bool( ).
      DATA(t345) = CAST zlnt_runtime_opti_4ba3bdccd169( t340 ).
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
          DATA(t354) = CAST zlnt_runtime_opti_4ba3bdccd169( t304 ).
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
        DATA(t360) = CAST zlnt_runtime_opti_4ba3bdccd169( t350 ).
        t359 = t360.
        DATA t361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t362.
        t361 = t362.
        DATA(t363) = VALUE abap_bool( ).
        DATA(t364) = CAST zlnt_runtime_opti_4ba3bdccd169( t359 ).
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
          DATA(t371) = CAST zcl_lnt_current_scope( t302 ).
          t370 = t371->current.
          t369 = t370.
          DATA t372 TYPE REF TO zif_lnt_class_definition.
          CLEAR t372.
          DATA(t373) = VALUE abap_bool( ).
          DATA(t374) = CAST zcl_lnt_spaghetti_scope_node( t369 ).
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
            DATA(t378) = CAST zcl_lnt_spaghetti_scope_node( t369 ).
            t377 = t378.
            DATA t379 TYPE string.
            DATA(t380) = CAST zlnt_runtime_opti_4ba3bdccd169( t350 ).
            t379 = t380->value.
            t376 = t377->find_class_definition( i_name = t379 ).
            t372 = t376.
          ENDIF.
          t368 = t372.
          t367 = t368.
          DATA t381 TYPE REF TO zif_lnt_class_definition.
          CLEAR t381.
          DATA t382 TYPE abap_bool.
          DATA(t383) = CAST zif_lnt_class_definition( t367 ).
          t382 = xsdbool( t383 IS BOUND ).
          IF t382 = abap_true.
            DATA t384 TYPE REF TO zif_lnt_class_definition.
            CLEAR t384.
            DATA(t385) = abap_true.
            IF t385 = abap_true.
              DATA t386 TYPE REF TO zif_lnt_class_definition.
              DATA(t387) = CAST zif_lnt_class_definition( t367 ).
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
            DATA(t394) = CAST zcl_lnt_current_scope( t302 ).
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
              DATA(t403) = CAST zlnt_runtime_opti_4ba3bdccd169( t350 ).
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
            DATA(t409) = CAST zcl_lnt_class( t390 ).
            t408 = xsdbool( t409 IS BOUND ).
            IF t408 = abap_true.
              DATA t410 TYPE REF TO zif_lnt_class_definition.
              DATA t411 TYPE REF TO zcl_lnt_class.
              DATA(t412) = CAST zcl_lnt_class( t390 ).
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
        DATA(t416) = CAST zif_lnt_class_definition( t348 ).
        t415 = xsdbool( t416 IS BOUND ).
        IF t415 = abap_true.
          DATA t417 TYPE REF TO zif_lnt_interface_definition.
          DATA t418 TYPE REF TO zif_lnt_class_definition.
          DATA(t419) = CAST zif_lnt_class_definition( t348 ).
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
            DATA(t427) = CAST zlnt_runtime_opti_4ba3bdccd169( t304 ).
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
          DATA(t433) = CAST zlnt_runtime_opti_4ba3bdccd169( t423 ).
          t432 = t433.
          DATA t434 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t435 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t435.
          t434 = t435.
          DATA(t436) = VALUE abap_bool( ).
          DATA(t437) = CAST zlnt_runtime_opti_4ba3bdccd169( t432 ).
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
            DATA(t444) = CAST zcl_lnt_current_scope( t302 ).
            t443 = t444->current.
            t442 = t443.
            DATA t445 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t445.
            DATA(t446) = VALUE abap_bool( ).
            DATA(t447) = CAST zcl_lnt_spaghetti_scope_node( t442 ).
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
              DATA(t451) = CAST zcl_lnt_spaghetti_scope_node( t442 ).
              t450 = t451.
              DATA t452 TYPE string.
              DATA(t453) = CAST zlnt_runtime_opti_4ba3bdccd169( t423 ).
              t452 = t453->value.
              t449 = t450->find_interface_definition( i_name = t452 ).
              t445 = t449.
            ENDIF.
            t441 = t445.
            t440 = t441.
            DATA t454 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t454.
            DATA t455 TYPE abap_bool.
            DATA(t456) = CAST zif_lnt_interface_definition( t440 ).
            t455 = xsdbool( t456 IS BOUND ).
            IF t455 = abap_true.
              DATA t457 TYPE REF TO zif_lnt_interface_definition.
              CLEAR t457.
              DATA(t458) = abap_true.
              IF t458 = abap_true.
                DATA t459 TYPE REF TO zif_lnt_interface_definition.
                DATA(t460) = CAST zif_lnt_interface_definition( t440 ).
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
              DATA(t467) = CAST zcl_lnt_current_scope( t302 ).
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
                DATA(t476) = CAST zlnt_runtime_opti_4ba3bdccd169( t423 ).
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
              DATA(t482) = CAST zcl_lnt_ob_interface( t463 ).
              t481 = xsdbool( t482 IS BOUND ).
              IF t481 = abap_true.
                DATA t483 TYPE REF TO zif_lnt_interface_definition.
                DATA t484 TYPE REF TO zcl_lnt_ob_interface.
                DATA t485 TYPE REF TO zcl_lnt_ob_interface.
                DATA(t486) = CAST zcl_lnt_ob_interface( t463 ).
                t485 = t486.
                t484 = t485.
                DATA t487 TYPE REF TO zif_lnt_interface_definition.
                DATA(t488) = CAST zcl_lnt_ob_interface( t484 ).
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
          DATA(t492) = CAST zif_lnt_interface_definition( t421 ).
          t491 = xsdbool( t492 IS BOUND ).
          IF t491 = abap_true.
            DATA t493 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t493.
            DATA(t494) = abap_true.
            IF t494 = abap_true.
              DATA t495 TYPE REF TO zif_lnt_interface_definition.
              DATA(t496) = CAST zif_lnt_interface_definition( t421 ).
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
      DATA(t500) = CAST zif_lnt_interface_definition( t300 ).
      t499 = xsdbool( t500 IS BOUND ).
      IF t499 = abap_true.
        DATA t501 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t502 TYPE REF TO zif_lnt_interface_definition.
        DATA(t503) = CAST zif_lnt_interface_definition( t300 ).
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
    DATA(t507) = CAST zcl_lnt_fi_identifier( t3 ).
    t506 = xsdbool( t507 IS BOUND AND t507 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    t505 = t506.
    IF t506 = abap_true.
      DATA t508 TYPE abap_bool.
      DATA(t509) = CAST zcl_lnt_fi_identifier( t9 ).
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
      DATA(t517) = CAST zcl_lnt_fi_identifier( t3 ).
      t516 ?= t517.
      t515 = me->list_all_supers( i_cdef = t516 ).
      t514 = t515.
      DATA t518 TYPE abap_bool.
      DATA t519 TYPE i.
      DATA(t520) = CAST zlnt_runtime_arra_8ecd6afe19e0( t514 ).
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
      DATA(t526) = CAST zcl_lnt_fi_identifier( t3 ).
      t525 = xsdbool( t526 IS BOUND AND t526 IS INSTANCE OF zcl_lnt_ty_class_definition ).
      t524 = t525.
      IF t525 = abap_true.
        DATA t527 TYPE abap_bool.
        DATA(t528) = CAST zcl_lnt_fi_identifier( t9 ).
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
        DATA(t535) = CAST zcl_lnt_fi_identifier( t3 ).
        t534 ?= t535.
        t533 = t534.
        DATA t536 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t537) = CAST zcl_lnt_ty_class_definition( t533 ).
        t536 = t537->implementing.
        t532 = t536.
        DATA t538 TYPE REF TO zcl_lnt_iimplementing.
        CLEAR t538.
        DATA t539 TYPE REF TO object.
        CLEAR t539.
        LOOP AT t532->items INTO t539.
          t538 ?= t539.
          DATA t540 TYPE abap_bool.
          DATA t541 TYPE string.
          DATA(t542) = CAST zcl_lnt_iimplementing( t538 ).
          t541 = t542->name.
          DATA(t543) = t15.
          t540 = xsdbool( t541 = t543 ).
          IF t540 = abap_true.
            DATA(t544) = abap_true.
            t530 = t544.
            EXIT.
          ENDIF.
        ENDLOOP.
        DATA(t545) = t530.
        t529 = t545.
        IF t529 = abap_true.
          DATA(t546) = abap_true.
          result = t546.
          RETURN.
        ENDIF.
        DATA t547 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t548 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t549 TYPE REF TO zcl_lnt_ty_class_definition.
        DATA(t550) = CAST zcl_lnt_fi_identifier( t3 ).
        t549 ?= t550.
        t548 = me->list_all_interfaces( i_cdef = t549 ).
        t547 = t548.
        DATA t551 TYPE abap_bool.
        DATA t552 TYPE i.
        DATA(t553) = CAST zlnt_runtime_arra_8ecd6afe19e0( t547 ).
        DATA(t554) = t15.
        t552 = t553->indexof( p0 = t554 ).
        DATA(t555) = 0.
        t551 = xsdbool( t552 >= t555 ).
        IF t551 = abap_true.
          DATA(t556) = abap_true.
          result = t556.
          RETURN.
        ENDIF.
      ELSE.
        DATA t557 TYPE abap_bool.
        DATA t558 TYPE abap_bool.
        DATA(t559) = CAST zcl_lnt_fi_identifier( t3 ).
        t558 = xsdbool( t559 IS BOUND AND t559 IS INSTANCE OF zcl_lnt_interface_definition ).
        t557 = t558.
        IF t558 = abap_true.
          DATA t560 TYPE abap_bool.
          DATA(t561) = CAST zcl_lnt_fi_identifier( t9 ).
          t560 = xsdbool( t561 IS BOUND AND t561 IS INSTANCE OF zcl_lnt_interface_definition ).
          t557 = t560.
        ENDIF.
        IF t557 = abap_true.
          DATA t562 TYPE abap_bool.
          DATA(t563) = t47.
          DATA(t564) = t15.
          t562 = xsdbool( t563 = t564 ).
          IF t562 = abap_true.
            DATA(t565) = abap_true.
            result = t565.
            RETURN.
          ENDIF.
          DATA(t566) = VALUE abap_bool( ).
          DATA t567 TYPE abap_bool.
          DATA(t568) = abap_false.
          t567 = t568.
          DATA t569 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t570 TYPE REF TO zcl_lnt_interface_definition.
          DATA t571 TYPE REF TO zcl_lnt_interface_definition.
          DATA(t572) = CAST zcl_lnt_fi_identifier( t3 ).
          t571 ?= t572.
          t570 = t571.
          DATA t573 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t574) = CAST zcl_lnt_interface_definition( t570 ).
          t573 = t574->implementing.
          t569 = t573.
          DATA t575 TYPE REF TO zcl_lnt_iimplementing.
          CLEAR t575.
          DATA t576 TYPE REF TO object.
          CLEAR t576.
          LOOP AT t569->items INTO t576.
            t575 ?= t576.
            DATA t577 TYPE abap_bool.
            DATA t578 TYPE string.
            DATA(t579) = CAST zcl_lnt_iimplementing( t575 ).
            t578 = t579->name.
            DATA(t580) = t15.
            t577 = xsdbool( t578 = t580 ).
            IF t577 = abap_true.
              DATA(t581) = abap_true.
              t567 = t581.
              EXIT.
            ENDIF.
          ENDLOOP.
          DATA(t582) = t567.
          t566 = t582.
          IF t566 = abap_true.
            DATA(t583) = abap_true.
            result = t583.
            RETURN.
          ENDIF.
          DATA t584 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t585 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t586 TYPE REF TO zcl_lnt_interface_definition.
          DATA(t587) = CAST zcl_lnt_fi_identifier( t3 ).
          t586 ?= t587.
          t585 = me->list_all_interfaces( i_cdef = t586 ).
          t584 = t585.
          DATA t588 TYPE abap_bool.
          DATA t589 TYPE i.
          DATA(t590) = CAST zlnt_runtime_arra_8ecd6afe19e0( t584 ).
          DATA(t591) = t15.
          t589 = t590->indexof( p0 = t591 ).
          DATA(t592) = 0.
          t588 = xsdbool( t589 >= t592 ).
          IF t588 = abap_true.
            DATA(t593) = abap_true.
            result = t593.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t594) = abap_false.
    result = t594.

  ENDMETHOD.

  METHOD list_all_interfaces.
    DATA(t1) = CAST zif_lnt_union_865ccdda( i_cdef ).
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
    DATA(t9) = CAST zif_lnt_union_865ccdda( t1 ).
    t8 = t9->get_implementing( ).
    t7 = t8.
    DATA t10 TYPE i.
    DATA t11 TYPE i.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
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
      DATA t19 TYPE REF TO zcl_lnt_iimplementing.
      DATA t20 TYPE REF TO zcl_lnt_iimplementing.
      DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
      DATA(t22) = t13.
      DATA t23 TYPE REF TO object.
      t23 = t21->get( p0 = t22 ).
      t20 ?= t23.
      t19 = t20.
      t18 = t19.
      DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      DATA t25 TYPE string.
      DATA(t26) = CAST zcl_lnt_iimplementing( t18 ).
      t25 = t26->name.
      APPEND t25 TO t24->items.
      DATA t27 TYPE i.
      DATA(t28) = t13.
      DATA(t29) = 1.
      t27 = t28 + t29.
      t13 = t27.
    ENDDO.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    t6 = t30.
    DATA t31 TYPE abap_bool.
    DATA(t32) = CAST zif_lnt_union_865ccdda( t1 ).
    t31 = xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_ty_class_definition ).
    IF t31 = abap_true.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t35 TYPE REF TO zcl_lnt_ty_class_definition.
      DATA(t36) = CAST zif_lnt_union_865ccdda( t1 ).
      DATA t37 TYPE REF TO object.
      t37 = t36.
      t35 ?= t37.
      t34 = me->list_all_supers( i_cdef = t35 ).
      t33 = t34.
      DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t33 ).
      DATA(t39) = VALUE string( ).
      LOOP AT t38->items INTO t39.
        DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t40.
        DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t42.
        DATA t43 TYPE REF TO zif_lnt_class_definition.
        CLEAR t43.
        DATA t44 TYPE REF TO zif_lnt_class_definition.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_current_scope.
        DATA(t46) = CAST zcl_lnt_current_scope( me->scope ).
        t45 = t46.
        DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t48.
        DATA(t49) = abap_true.
        IF t49 = abap_true.
          DATA(t50) = t39.
          DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t51->has = abap_true.
          t51->value = t50.
          t48 = t51.
        ELSE.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t48 = t52.
        ENDIF.
        t47 = t48.
        DATA t53 TYPE REF TO zif_lnt_class_definition.
        CLEAR t53.
        DATA(t54) = VALUE abap_bool( ).
        DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t56) = CAST zlnt_runtime_opti_4ba3bdccd169( t47 ).
        t55 = t56.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t58.
        t57 = t58.
        DATA(t59) = VALUE abap_bool( ).
        DATA(t60) = CAST zlnt_runtime_opti_4ba3bdccd169( t55 ).
        IF t60 IS INITIAL.
          t59 = abap_true.
        ELSEIF t60->has = abap_false.
          t59 = abap_true.
        ENDIF.
        t54 = t59.
        IF t54 = abap_true.
          DATA t61 TYPE REF TO zif_lnt_class_definition.
          CLEAR t61.
          t53 = t61.
        ELSE.
          DATA t62 TYPE REF TO zif_lnt_class_definition.
          CLEAR t62.
          DATA t63 TYPE REF TO zif_lnt_class_definition.
          CLEAR t63.
          DATA t64 TYPE REF TO zif_lnt_class_definition.
          CLEAR t64.
          DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA t66 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t67) = CAST zcl_lnt_current_scope( t45 ).
          t66 = t67->current.
          t65 = t66.
          DATA t68 TYPE REF TO zif_lnt_class_definition.
          CLEAR t68.
          DATA(t69) = VALUE abap_bool( ).
          DATA(t70) = CAST zcl_lnt_spaghetti_scope_node( t65 ).
          IF t70 IS INITIAL.
            t69 = abap_true.
          ENDIF.
          IF t69 = abap_true.
            DATA t71 TYPE REF TO zif_lnt_class_definition.
            CLEAR t71.
            t68 = t71.
          ELSE.
            DATA t72 TYPE REF TO zif_lnt_class_definition.
            DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            DATA(t74) = CAST zcl_lnt_spaghetti_scope_node( t65 ).
            t73 = t74.
            DATA t75 TYPE string.
            DATA(t76) = CAST zlnt_runtime_opti_4ba3bdccd169( t47 ).
            t75 = t76->value.
            t72 = t73->find_class_definition( i_name = t75 ).
            t68 = t72.
          ENDIF.
          t64 = t68.
          t63 = t64.
          DATA t77 TYPE REF TO zif_lnt_class_definition.
          CLEAR t77.
          DATA t78 TYPE abap_bool.
          DATA(t79) = CAST zif_lnt_class_definition( t63 ).
          t78 = xsdbool( t79 IS BOUND ).
          IF t78 = abap_true.
            DATA t80 TYPE REF TO zif_lnt_class_definition.
            CLEAR t80.
            DATA(t81) = abap_true.
            IF t81 = abap_true.
              DATA t82 TYPE REF TO zif_lnt_class_definition.
              DATA(t83) = CAST zif_lnt_class_definition( t63 ).
              t82 = t83.
              t80 = t82.
            ELSE.
              DATA t84 TYPE REF TO zif_lnt_class_definition.
              CLEAR t84.
              t80 = t84.
            ENDIF.
            t77 = t80.
          ELSE.
            DATA t85 TYPE REF TO zif_lnt_class_definition.
            CLEAR t85.
            DATA t86 TYPE REF TO zcl_lnt_class.
            CLEAR t86.
            DATA t87 TYPE REF TO zcl_lnt_class.
            CLEAR t87.
            DATA t88 TYPE REF TO zif_lnt_object.
            CLEAR t88.
            DATA t89 TYPE REF TO zif_lnt_registry.
            DATA(t90) = CAST zcl_lnt_current_scope( t45 ).
            t89 = t90->reg.
            DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t91.
            DATA(t92) = abap_true.
            IF t92 = abap_true.
              DATA(t93) = |CLAS|.
              DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t94->has = abap_true.
              t94->value = t93.
              t91 = t94.
            ELSE.
              DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t95.
              t91 = t95.
            ENDIF.
            DATA t96 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t96.
            DATA(t97) = abap_true.
            IF t97 = abap_true.
              DATA t98 TYPE string.
              DATA(t99) = CAST zlnt_runtime_opti_4ba3bdccd169( t47 ).
              t98 = t99->value.
              DATA(t100) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t100->has = abap_true.
              t100->value = t98.
              t96 = t100.
            ELSE.
              DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t101.
              t96 = t101.
            ENDIF.
            t88 = t89->get_object( i_type_9913 = t91 i_name = t96 ).
            DATA t102 TYPE REF TO object.
            t102 = t88.
            t87 ?= t102.
            t86 = t87.
            DATA t103 TYPE REF TO zif_lnt_class_definition.
            CLEAR t103.
            DATA t104 TYPE abap_bool.
            DATA(t105) = CAST zcl_lnt_class( t86 ).
            t104 = xsdbool( t105 IS BOUND ).
            IF t104 = abap_true.
              DATA t106 TYPE REF TO zif_lnt_class_definition.
              DATA t107 TYPE REF TO zcl_lnt_class.
              DATA(t108) = CAST zcl_lnt_class( t86 ).
              t107 = t108.
              t106 = t107->gt_dfn_ins_src_obj_cls_ts_clss( ).
              t103 = t106.
            ELSE.
              DATA t109 TYPE REF TO zif_lnt_class_definition.
              CLEAR t109.
              t103 = t109.
            ENDIF.
            t85 = t103.
            t77 = t85.
          ENDIF.
          t62 = t77.
          t53 = t62.
        ENDIF.
        t44 = t53.
        t43 = t44.
        DATA t110 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t110.
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = CAST zif_lnt_class_definition( t43 ).
        IF t112 IS INITIAL.
          t111 = abap_true.
        ENDIF.
        IF t111 = abap_true.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t113.
          t110 = t113.
        ELSE.
          DATA t114 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t115 TYPE REF TO zif_lnt_class_definition.
          DATA(t116) = CAST zif_lnt_class_definition( t43 ).
          t115 = t116.
          t114 = t115->get_implementing( ).
          t110 = t114.
        ENDIF.
        t42 = t110.
        t41 = t42.
        DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t117.
        DATA(t118) = VALUE abap_bool( ).
        DATA(t119) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
        IF t119 IS INITIAL.
          t118 = abap_true.
        ENDIF.
        IF t118 = abap_true.
          DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t120.
          t117 = t120.
        ELSE.
          DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t121.
          DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t123 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t124) = CAST zlnt_runtime_arra_c22708faf2e3( t41 ).
          t123 = t124.
          t122 = t123.
          DATA t125 TYPE i.
          DATA t126 TYPE i.
          DATA(t127) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
          t126 = lines( t127->items ).
          t125 = t126.
          DATA t128 TYPE i.
          DATA(t129) = 0.
          t128 = t129.
          DO.
            DATA t130 TYPE abap_bool.
            DATA(t131) = t128.
            DATA(t132) = t125.
            t130 = xsdbool( t131 < t132 ).
            IF t130 = abap_false.
              EXIT.
            ENDIF.
            DATA t133 TYPE REF TO zcl_lnt_iimplementing.
            DATA t134 TYPE REF TO zcl_lnt_iimplementing.
            DATA t135 TYPE REF TO zcl_lnt_iimplementing.
            DATA(t136) = CAST zlnt_runtime_arra_c22708faf2e3( t122 ).
            DATA(t137) = t128.
            DATA t138 TYPE REF TO object.
            t138 = t136->get( p0 = t137 ).
            t135 ?= t138.
            t134 = t135.
            t133 = t134.
            DATA(t139) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
            DATA t140 TYPE string.
            DATA(t141) = CAST zcl_lnt_iimplementing( t133 ).
            t140 = t141->name.
            APPEND t140 TO t139->items.
            DATA t142 TYPE i.
            DATA(t143) = t128.
            DATA(t144) = 1.
            t142 = t143 + t144.
            t128 = t142.
          ENDDO.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          t121 = t145.
          t117 = t121.
        ENDIF.
        t40 = t117.
      ENDLOOP.
    ENDIF.
    DO.
      DATA t146 TYPE abap_bool.
      DATA t147 TYPE i.
      DATA(t148) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      t147 = lines( t148->items ).
      DATA(t149) = 0.
      t146 = xsdbool( t147 > t149 ).
      IF t146 = abap_false.
        EXIT.
      ENDIF.
      DATA(t150) = VALUE string( ).
      DATA t151 TYPE string.
      DATA t152 TYPE string.
      DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t154) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
      t153 = t154->pop( ).
      t152 = t153->value.
      DATA(t155) = strlen( t152 ).
      t151 = t152.
      IF t151 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t151 TO UPPER CASE.
      ELSE.
        t151 = zlnt_runtime_uppe_91169605024d=>full( t151 ).
      ENDIF.
      t150 = t151.
      DATA t156 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
      DATA(t157) = CAST zlnt_runtime_set__1827558fd4c7( t2 ).
      DATA(t158) = t150.
      t156 = t157->add( p0 = t158 ).
      DATA t159 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t159.
      DATA t160 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t160.
      DATA t161 TYPE REF TO zcl_lnt_current_scope.
      DATA(t162) = CAST zcl_lnt_current_scope( me->scope ).
      t161 = t162.
      DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t163.
      DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t164.
      DATA(t165) = abap_true.
      IF t165 = abap_true.
        DATA(t166) = t150.
        DATA(t167) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t167->has = abap_true.
        t167->value = t166.
        t164 = t167.
      ELSE.
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t168.
        t164 = t168.
      ENDIF.
      t163 = t164.
      DATA t169 TYPE REF TO zif_lnt_interface_definition.
      CLEAR t169.
      DATA(t170) = VALUE abap_bool( ).
      DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t172) = CAST zlnt_runtime_opti_4ba3bdccd169( t163 ).
      t171 = t172.
      DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t174.
      t173 = t174.
      DATA(t175) = VALUE abap_bool( ).
      DATA(t176) = CAST zlnt_runtime_opti_4ba3bdccd169( t171 ).
      IF t176 IS INITIAL.
        t175 = abap_true.
      ELSEIF t176->has = abap_false.
        t175 = abap_true.
      ENDIF.
      t170 = t175.
      IF t170 = abap_true.
        DATA t177 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t177.
        t169 = t177.
      ELSE.
        DATA t178 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t178.
        DATA t179 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t179.
        DATA t180 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t180.
        DATA t181 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA t182 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        DATA(t183) = CAST zcl_lnt_current_scope( t161 ).
        t182 = t183->current.
        t181 = t182.
        DATA t184 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t184.
        DATA(t185) = VALUE abap_bool( ).
        DATA(t186) = CAST zcl_lnt_spaghetti_scope_node( t181 ).
        IF t186 IS INITIAL.
          t185 = abap_true.
        ENDIF.
        IF t185 = abap_true.
          DATA t187 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t187.
          t184 = t187.
        ELSE.
          DATA t188 TYPE REF TO zif_lnt_interface_definition.
          DATA t189 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          DATA(t190) = CAST zcl_lnt_spaghetti_scope_node( t181 ).
          t189 = t190.
          DATA t191 TYPE string.
          DATA(t192) = CAST zlnt_runtime_opti_4ba3bdccd169( t163 ).
          t191 = t192->value.
          t188 = t189->find_interface_definition( i_name = t191 ).
          t184 = t188.
        ENDIF.
        t180 = t184.
        t179 = t180.
        DATA t193 TYPE REF TO zif_lnt_interface_definition.
        CLEAR t193.
        DATA t194 TYPE abap_bool.
        DATA(t195) = CAST zif_lnt_interface_definition( t179 ).
        t194 = xsdbool( t195 IS BOUND ).
        IF t194 = abap_true.
          DATA t196 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t196.
          DATA(t197) = abap_true.
          IF t197 = abap_true.
            DATA t198 TYPE REF TO zif_lnt_interface_definition.
            DATA(t199) = CAST zif_lnt_interface_definition( t179 ).
            t198 = t199.
            t196 = t198.
          ELSE.
            DATA t200 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t200.
            t196 = t200.
          ENDIF.
          t193 = t196.
        ELSE.
          DATA t201 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t201.
          DATA t202 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t202.
          DATA t203 TYPE REF TO zcl_lnt_ob_interface.
          CLEAR t203.
          DATA t204 TYPE REF TO zif_lnt_object.
          CLEAR t204.
          DATA t205 TYPE REF TO zif_lnt_registry.
          DATA(t206) = CAST zcl_lnt_current_scope( t161 ).
          t205 = t206->reg.
          DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t207.
          DATA(t208) = abap_true.
          IF t208 = abap_true.
            DATA(t209) = |INTF|.
            DATA(t210) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t210->has = abap_true.
            t210->value = t209.
            t207 = t210.
          ELSE.
            DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t211.
            t207 = t211.
          ENDIF.
          DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t212.
          DATA(t213) = abap_true.
          IF t213 = abap_true.
            DATA t214 TYPE string.
            DATA(t215) = CAST zlnt_runtime_opti_4ba3bdccd169( t163 ).
            t214 = t215->value.
            DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t216->has = abap_true.
            t216->value = t214.
            t212 = t216.
          ELSE.
            DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t217.
            t212 = t217.
          ENDIF.
          t204 = t205->get_object( i_type_9913 = t207 i_name = t212 ).
          DATA t218 TYPE REF TO object.
          t218 = t204.
          t203 ?= t218.
          t202 = t203.
          DATA t219 TYPE REF TO zif_lnt_interface_definition.
          CLEAR t219.
          DATA t220 TYPE abap_bool.
          DATA(t221) = CAST zcl_lnt_ob_interface( t202 ).
          t220 = xsdbool( t221 IS BOUND ).
          IF t220 = abap_true.
            DATA t222 TYPE REF TO zif_lnt_interface_definition.
            DATA t223 TYPE REF TO zcl_lnt_ob_interface.
            DATA t224 TYPE REF TO zcl_lnt_ob_interface.
            DATA(t225) = CAST zcl_lnt_ob_interface( t202 ).
            t224 = t225.
            t223 = t224.
            DATA t226 TYPE REF TO zif_lnt_interface_definition.
            DATA(t227) = CAST zcl_lnt_ob_interface( t223 ).
            t226 = t227->def.
            t222 = t226.
            t219 = t222.
          ELSE.
            DATA t228 TYPE REF TO zif_lnt_interface_definition.
            CLEAR t228.
            t219 = t228.
          ENDIF.
          t201 = t219.
          t193 = t201.
        ENDIF.
        t178 = t193.
        t169 = t178.
      ENDIF.
      t160 = t169.
      t159 = t160.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      DATA t230 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t230.
      DATA t231 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t231.
      DATA t232 TYPE REF TO zif_lnt_interface_definition.
      DATA(t233) = CAST zif_lnt_interface_definition( t159 ).
      t232 = t233.
      DATA t234 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t234.
      DATA(t235) = VALUE abap_bool( ).
      DATA(t236) = CAST zif_lnt_interface_definition( t232 ).
      IF t236 IS INITIAL.
        t235 = abap_true.
      ENDIF.
      IF t235 = abap_true.
        DATA t237 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t237.
        t234 = t237.
      ELSE.
        DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t239 TYPE REF TO zif_lnt_interface_definition.
        DATA(t240) = CAST zif_lnt_interface_definition( t232 ).
        t239 = t240.
        t238 = t239->get_implementing( ).
        t234 = t238.
      ENDIF.
      t231 = t234.
      t230 = t231.
      DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t241.
      DATA(t242) = VALUE abap_bool( ).
      DATA(t243) = CAST zlnt_runtime_arra_c22708faf2e3( t230 ).
      IF t243 IS INITIAL.
        t242 = abap_true.
      ENDIF.
      IF t242 = abap_true.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        t241 = t244.
      ELSE.
        DATA t245 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t245.
        DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t248) = CAST zlnt_runtime_arra_c22708faf2e3( t230 ).
        t247 = t248.
        t246 = t247.
        DATA t249 TYPE i.
        DATA t250 TYPE i.
        DATA(t251) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
        t250 = lines( t251->items ).
        t249 = t250.
        DATA t252 TYPE i.
        DATA(t253) = 0.
        t252 = t253.
        DO.
          DATA t254 TYPE abap_bool.
          DATA(t255) = t252.
          DATA(t256) = t249.
          t254 = xsdbool( t255 < t256 ).
          IF t254 = abap_false.
            EXIT.
          ENDIF.
          DATA t257 TYPE REF TO zcl_lnt_iimplementing.
          DATA t258 TYPE REF TO zcl_lnt_iimplementing.
          DATA t259 TYPE REF TO zcl_lnt_iimplementing.
          DATA(t260) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
          DATA(t261) = t252.
          DATA t262 TYPE REF TO object.
          t262 = t260->get( p0 = t261 ).
          t259 ?= t262.
          t258 = t259.
          t257 = t258.
          DATA(t263) = CAST zlnt_runtime_arra_8ecd6afe19e0( t4 ).
          DATA t264 TYPE string.
          DATA(t265) = CAST zcl_lnt_iimplementing( t257 ).
          t264 = t265->name.
          APPEND t264 TO t263->items.
          DATA t266 TYPE i.
          DATA(t267) = t252.
          DATA(t268) = 1.
          t266 = t267 + t268.
          t252 = t266.
        ENDDO.
        DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t269.
        t245 = t269.
        t241 = t245.
      ENDIF.
      t229 = t241.
    ENDDO.
    DATA t270 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t272) = CAST zlnt_runtime_set__1827558fd4c7( t2 ).
    t271 = t272->values( ).
    t270 = t271->slice0( ).
    result = t270.

  ENDMETHOD.

  METHOD list_all_supers.
    DATA(t1) = CAST zcl_lnt_ty_class_definition( i_cdef ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zcl_lnt_ty_class_definition.
    DATA(t7) = CAST zcl_lnt_ty_class_definition( t1 ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t9) = CAST zcl_lnt_ty_class_definition( t6 ).
    t8 = t9->super_class.
    t5 = t8.
    t4 = t5.
    DO.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t12) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( t11 ).
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
      DATA(t18) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
      DATA t19 TYPE string.
      DATA t20 TYPE string.
      DATA(t21) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
      t20 = t21->value.
      DATA(t22) = strlen( t20 ).
      t19 = t20.
      IF t19 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t19 TO UPPER CASE.
      ELSE.
        t19 = zlnt_runtime_uppe_91169605024d=>full( t19 ).
      ENDIF.
      APPEND t19 TO t18->items.
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
      DATA(t29) = CAST zcl_lnt_current_scope( me->scope ).
      t28 = t29.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA(t32) = abap_true.
      IF t32 = abap_true.
        DATA t33 TYPE string.
        DATA(t34) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
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
      DATA(t40) = CAST zlnt_runtime_opti_4ba3bdccd169( t30 ).
      t39 = t40.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t42.
      t41 = t42.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = CAST zlnt_runtime_opti_4ba3bdccd169( t39 ).
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
        DATA(t51) = CAST zcl_lnt_current_scope( t28 ).
        t50 = t51->current.
        t49 = t50.
        DATA t52 TYPE REF TO zif_lnt_class_definition.
        CLEAR t52.
        DATA(t53) = VALUE abap_bool( ).
        DATA(t54) = CAST zcl_lnt_spaghetti_scope_node( t49 ).
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
          DATA(t58) = CAST zcl_lnt_spaghetti_scope_node( t49 ).
          t57 = t58.
          DATA t59 TYPE string.
          DATA(t60) = CAST zlnt_runtime_opti_4ba3bdccd169( t30 ).
          t59 = t60->value.
          t56 = t57->find_class_definition( i_name = t59 ).
          t52 = t56.
        ENDIF.
        t48 = t52.
        t47 = t48.
        DATA t61 TYPE REF TO zif_lnt_class_definition.
        CLEAR t61.
        DATA t62 TYPE abap_bool.
        DATA(t63) = CAST zif_lnt_class_definition( t47 ).
        t62 = xsdbool( t63 IS BOUND ).
        IF t62 = abap_true.
          DATA t64 TYPE REF TO zif_lnt_class_definition.
          CLEAR t64.
          DATA(t65) = abap_true.
          IF t65 = abap_true.
            DATA t66 TYPE REF TO zif_lnt_class_definition.
            DATA(t67) = CAST zif_lnt_class_definition( t47 ).
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
          DATA(t74) = CAST zcl_lnt_current_scope( t28 ).
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
            DATA(t83) = CAST zlnt_runtime_opti_4ba3bdccd169( t30 ).
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
          DATA(t89) = CAST zcl_lnt_class( t70 ).
          t88 = xsdbool( t89 IS BOUND ).
          IF t88 = abap_true.
            DATA t90 TYPE REF TO zif_lnt_class_definition.
            DATA t91 TYPE REF TO zcl_lnt_class.
            DATA(t92) = CAST zcl_lnt_class( t70 ).
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
      DATA(t96) = CAST zif_lnt_class_definition( t26 ).
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
        DATA(t100) = CAST zif_lnt_class_definition( t26 ).
        t99 = t100.
        t98 = t99->get_super_class( ).
        t94 = t98.
      ENDIF.
      t25 = t94.
      t24 = t25.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = CAST zlnt_runtime_opti_4ba3bdccd169( t24 ).
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
        DATA(t107) = CAST zlnt_runtime_opti_4ba3bdccd169( t24 ).
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
    DATA(t110) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    result = t110.

  ENDMETHOD.

  METHOD is_convable.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_target_5f8a ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/_type_utils.ts:238|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD is_castable.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_source_3828 ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_target_d687 ).
    DATA(t3) = abap_true.
    result = t3.

  ENDMETHOD.

  METHOD is_compareable.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_source1 ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_source2 ).
    DATA(t3) = CAST zcl_lnt_expression_node( i_node1 ).
    DATA(t4) = CAST zcl_lnt_expression_node( i_node2 ).
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t8) = CAST zcl_lnt_abstract_type( t1 ).
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zcl_lnt_abstract_type( t7 ).
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    t5 = t6.
    IF t6 = abap_false.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t15) = CAST zcl_lnt_abstract_type( t2 ).
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = CAST zcl_lnt_abstract_type( t14 ).
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
    DATA(t24) = CAST zcl_lnt_abstract_type( t1 ).
    t23 = xsdbool( t24 IS BOUND AND t24 IS INSTANCE OF zcl_lnt_hex_type ).
    t22 = t23.
    IF t23 = abap_true.
      DATA t25 TYPE abap_bool.
      DATA(t26) = CAST zcl_lnt_expression_node( t3 ).
      t25 = me->is_calculated( i_node = t26 ).
      t22 = t25.
    ENDIF.
    t21 = t22.
    IF t22 = abap_true.
      DATA t27 TYPE abap_bool.
      DATA(t28) = CAST zcl_lnt_abstract_type( t2 ).
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
    DATA(t33) = CAST zcl_lnt_abstract_type( t2 ).
    t32 = xsdbool( t33 IS BOUND AND t33 IS INSTANCE OF zcl_lnt_hex_type ).
    t31 = t32.
    IF t32 = abap_true.
      DATA t34 TYPE abap_bool.
      DATA(t35) = CAST zcl_lnt_expression_node( t4 ).
      t34 = me->is_calculated( i_node = t35 ).
      t31 = t34.
    ENDIF.
    t30 = t31.
    IF t31 = abap_true.
      DATA t36 TYPE abap_bool.
      DATA(t37) = CAST zcl_lnt_abstract_type( t1 ).
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
    DATA(t42) = CAST zcl_lnt_abstract_type( t1 ).
    t41 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_date_type ).
    t40 = t41.
    IF t41 = abap_true.
      DATA t43 TYPE abap_bool.
      DATA(t44) = CAST zcl_lnt_expression_node( t4 ).
      t43 = me->is_calculated( i_node = t44 ).
      t40 = t43.
    ENDIF.
    t39 = t40.
    IF t40 = abap_true.
      DATA t45 TYPE abap_bool.
      DATA(t46) = CAST zcl_lnt_abstract_type( t2 ).
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
    DATA(t51) = CAST zcl_lnt_abstract_type( t2 ).
    t50 = xsdbool( t51 IS BOUND AND t51 IS INSTANCE OF zcl_lnt_date_type ).
    t49 = t50.
    IF t50 = abap_true.
      DATA t52 TYPE abap_bool.
      DATA(t53) = CAST zcl_lnt_expression_node( t3 ).
      t52 = me->is_calculated( i_node = t53 ).
      t49 = t52.
    ENDIF.
    t48 = t49.
    IF t49 = abap_true.
      DATA t54 TYPE abap_bool.
      DATA(t55) = CAST zcl_lnt_abstract_type( t1 ).
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
    DATA(t1) = CAST zcl_lnt_structure_type( i_structure ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_structure_type.
    DATA(t4) = CAST zcl_lnt_structure_type( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = CAST zcl_lnt_structure_type( t3 ).
    t5 = t6->components.
    t2 = t5.
    DATA t7 TYPE REF TO zcl_lnt_istructure_component.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t2->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t11) = CAST zcl_lnt_istructure_component( t7 ).
      t10 = t11->type_cba0.
      t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_string_type ).
      IF t9 = abap_true.
        DATA(t12) = abap_true.
        result = t12.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA(t13) = abap_false.
    result = t13.

  ENDMETHOD.

  METHOD structure_contains_void.
    DATA(t1) = CAST zcl_lnt_structure_type( i_structure ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_type_utils.ts:289|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_calculated.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE i.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t1 ).
    t8 = t9.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t11) = CAST zcl_lnt_abstract_node( t8 ).
    t10 = t11->children.
    t7 = t10.
    t6 ?= t7.
    t5 = lines( t6->items ).
    DATA(t12) = 4.
    t4 = xsdbool( t5 = t12 ).
    t3 = t4.
    IF t4 = abap_true.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zif_lnt_node.
      CLEAR t14.
      DATA t15 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t16) = CAST zcl_lnt_expression_node( t1 ).
      t15 = t16.
      DATA t17 TYPE REF TO zif_lnt_node.
      CLEAR t17.
      DATA(t18) = abap_true.
      IF t18 = abap_true.
        DATA t19 TYPE REF TO zif_lnt_node.
        DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t21) = CAST zcl_lnt_abstract_node( t15 ).
        t20 = t21->children.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        READ TABLE t20->items INDEX 1 INTO t22.
        t19 ?= t22.
        t17 = t19.
      ELSE.
        DATA t23 TYPE REF TO zif_lnt_node.
        CLEAR t23.
        t17 = t23.
      ENDIF.
      t14 = t17.
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_token_node_regex ).
      t3 = t13.
    ENDIF.
    t2 = t3.
    IF t3 = abap_true.
      DATA(t24) = VALUE abap_bool( ).
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t27.
      DATA t28 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t28.
      DATA t29 TYPE REF TO zif_lnt_union_4cf1d054.
      CLEAR t29.
      DATA t30 TYPE REF TO zif_lnt_node.
      CLEAR t30.
      DATA t31 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t32) = CAST zcl_lnt_expression_node( t1 ).
      t31 = t32.
      DATA t33 TYPE REF TO zif_lnt_node.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA t35 TYPE REF TO zif_lnt_node.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t37) = CAST zcl_lnt_abstract_node( t31 ).
        t36 = t37->children.
        DATA t38 TYPE REF TO object.
        CLEAR t38.
        READ TABLE t36->items INDEX 1 INTO t38.
        t35 ?= t38.
        t33 = t35.
      ELSE.
        DATA t39 TYPE REF TO zif_lnt_node.
        CLEAR t39.
        t33 = t39.
      ENDIF.
      t30 = t33.
      t29 ?= t30.
      t28 = t29.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = CAST zif_lnt_union_4cf1d054( t28 ).
      IF t42 IS INITIAL.
        t41 = abap_true.
      ENDIF.
      IF t41 = abap_true.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        t40 = t43.
      ELSE.
        DATA t44 TYPE string.
        DATA t45 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t46) = CAST zif_lnt_union_4cf1d054( t28 ).
        t45 = t46.
        t44 = t45->concat_tokens( ).
        DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t47->has = abap_true.
        t47->value = t44.
        t40 = t47.
      ENDIF.
      t27 = t40.
      t26 = t27.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = CAST zlnt_runtime_opti_4ba3bdccd169( t26 ).
      IF t50 IS INITIAL.
        t49 = abap_true.
      ELSEIF t50->has = abap_false.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA(t54) = CAST zlnt_runtime_opti_4ba3bdccd169( t26 ).
        t53 = t54->value.
        DATA(t55) = strlen( t53 ).
        t52 = t53.
        IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t52 TO UPPER CASE.
        ELSE.
          t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
        ENDIF.
        DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t56->has = abap_true.
        t56->value = t52.
        t48 = t56.
      ENDIF.
      t25 = t48.
      DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t57.
      DATA(t58) = abap_true.
      IF t58 = abap_true.
        DATA(t59) = |BOOLC|.
        DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t60->has = abap_true.
        t60->value = t59.
        t57 = t60.
      ELSE.
        DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t61.
        t57 = t61.
      ENDIF.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = VALUE abap_bool( ).
      IF t25 IS BOUND.
        t62 = t25->has.
      ENDIF.
      IF t57 IS BOUND.
        t63 = t57->has.
      ENDIF.
      IF t62 = t63.
        IF t62 = abap_false.
          t24 = abap_true.
        ELSEIF t25->value = t57->value.
          t24 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t24.
    ENDIF.
    IF t2 = abap_true.
      DATA(t64) = abap_true.
      result = t64.
      RETURN.
    ENDIF.
    DATA t65 TYPE abap_bool.
    DATA t66 TYPE i.
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t69 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t70) = CAST zcl_lnt_expression_node( t1 ).
    t69 = t70.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t72) = CAST zcl_lnt_abstract_node( t69 ).
    t71 = t72->children.
    t68 = t71.
    t67 ?= t68.
    t66 = lines( t67->items ).
    DATA(t73) = 3.
    t65 = xsdbool( t66 >= t73 ).
    IF t65 = abap_true.
      DATA t74 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t75 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t78 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t79) = CAST zcl_lnt_expression_node( t1 ).
      t78 = t79.
      DATA t80 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t81) = CAST zcl_lnt_abstract_node( t78 ).
      t80 = t81->children.
      t77 = t80.
      t76 ?= t77.
      DATA t82 TYPE REF TO object.
      CLEAR t82.
      READ TABLE t76->items INDEX 2 INTO t82.
      t75 ?= t82.
      t74 = t75.
      DATA t83 TYPE abap_bool.
      DATA t84 TYPE string.
      DATA t85 TYPE REF TO zcl_lnt_abstract_token.
      DATA t86 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t87) = CAST zif_lnt_union_4cf1d054( t74 ).
      t86 = t87->get_first_token( ).
      t85 = t86.
      DATA t88 TYPE string.
      DATA(t89) = CAST zcl_lnt_abstract_token( t85 ).
      t88 = t89->str.
      t84 = t88.
      DATA(t90) = |&&|.
      t83 = xsdbool( t84 = t90 ).
      IF t83 = abap_true.
        DATA(t91) = abap_true.
        result = t91.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t92) = VALUE abap_bool( ).
    DATA(t93) = VALUE abap_bool( ).
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = VALUE abap_bool( ).
    DATA t96 TYPE REF TO zcl_lnt_expression_node.
    DATA t97 TYPE REF TO zcl_lnt_expression_node.
    DATA(t98) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t99) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3 ).
    t97 = t98->find_first_expression( i_type_9913 = t99 ).
    t96 = t97.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t101.
    t100 = t101.
    DATA(t102) = VALUE abap_bool( ).
    DATA(t103) = VALUE abap_bool( ).
    DATA(t104) = CAST zcl_lnt_expression_node( t96 ).
    IF t104 IS INITIAL.
      t103 = abap_true.
    ENDIF.
    t102 = xsdbool( t103 = abap_false ).
    t95 = t102.
    t94 = t95.
    IF t95 = abap_false.
      DATA(t105) = VALUE abap_bool( ).
      DATA t106 TYPE REF TO zcl_lnt_expression_node.
      DATA t107 TYPE REF TO zcl_lnt_expression_node.
      DATA(t108) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t109) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d257_509c7b1190c0 ).
      t107 = t108->find_first_expression( i_type_9913 = t109 ).
      t106 = t107.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      t110 = t111.
      DATA(t112) = VALUE abap_bool( ).
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = CAST zcl_lnt_expression_node( t106 ).
      IF t114 IS INITIAL.
        t113 = abap_true.
      ENDIF.
      t112 = xsdbool( t113 = abap_false ).
      t105 = t112.
      t94 = t105.
    ENDIF.
    t93 = t94.
    IF t94 = abap_false.
      DATA(t115) = VALUE abap_bool( ).
      DATA t116 TYPE REF TO zcl_lnt_expression_node.
      DATA t117 TYPE REF TO zcl_lnt_expression_node.
      DATA(t118) = CAST zcl_lnt_expression_node( t1 ).
      DATA(t119) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d89_8ce847e06100c3 ).
      t117 = t118->find_first_expression( i_type_9913 = t119 ).
      t116 = t117.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      t120 = t121.
      DATA(t122) = VALUE abap_bool( ).
      DATA(t123) = VALUE abap_bool( ).
      DATA(t124) = CAST zcl_lnt_expression_node( t116 ).
      IF t124 IS INITIAL.
        t123 = abap_true.
      ENDIF.
      t122 = xsdbool( t123 = abap_false ).
      t115 = t122.
      t93 = t115.
    ENDIF.
    t92 = t93.
    DATA(t125) = t92.
    result = t125.

  ENDMETHOD.

  METHOD is_hex_constant.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_type_utils.ts:328|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_assignable_new.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_target_5f8a ).
    DATA(t3) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t6.
    DATA t7 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = CAST zcl_lnt_expression_node( t3 ).
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zcl_lnt_expression_node( t8 ).
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
      DATA(t16) = CAST zcl_lnt_expression_node( t8 ).
      t15 = t16.
      DATA(t17) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d89_8ce847e06100c3 ).
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
    DATA(t22) = CAST zcl_lnt_expression_node( t6 ).
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
      DATA(t27) = CAST zcl_lnt_abstract_type( t1 ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_hex_type ).
      t24 = t26.
    ENDIF.
    t23 = t24.
    IF t24 = abap_true.
      DATA t28 TYPE abap_bool.
      DATA(t29) = CAST zcl_lnt_abstract_type( t2 ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_integer_type ).
      t23 = t28.
    ENDIF.
    IF t23 = abap_true.
      DATA(t30) = abap_false.
      result = t30.
      RETURN.
    ENDIF.
    DATA t31 TYPE abap_bool.
    DATA(t32) = CAST zcl_lnt_abstract_type( t1 ).
    DATA(t33) = CAST zcl_lnt_abstract_type( t2 ).
    t31 = me->is_assignable( i_source_75cf = t32 i_target_5f8a = t33 ).
    result = t31.

  ENDMETHOD.

  METHOD is_assignable_strict.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_target_5f8a ).
    DATA(t3) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t6 TYPE abap_bool.
    DATA(t7) = CAST zcl_lnt_expression_node( t3 ).
    t6 = xsdbool( t7 IS BOUND ).
    IF t6 = abap_true.
      DATA t8 TYPE abap_bool.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA(t10) = CAST zcl_lnt_expression_node( t3 ).
      t9 = t10.
      t8 = me->is_calculated( i_node = t9 ).
      t5 = t8.
    ELSE.
      DATA(t11) = abap_false.
      t5 = t11.
    ENDIF.
    t4 = t5.
    DATA(t12) = VALUE abap_bool( ).
    DATA t13 TYPE abap_bool.
    DATA(t14) = t4.
    t13 = t14.
    IF t14 = abap_true.
      DATA t15 TYPE abap_bool.
      DATA(t16) = CAST zcl_lnt_abstract_type( t1 ).
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_string_type ).
      t13 = t15.
    ENDIF.
    t12 = t13.
    IF t13 = abap_true.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA(t19) = CAST zcl_lnt_abstract_type( t2 ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_x_string_type ).
      t17 = t18.
      IF t18 = abap_false.
        DATA t20 TYPE abap_bool.
        DATA(t21) = CAST zcl_lnt_abstract_type( t2 ).
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
    DATA t24 TYPE abap_bool.
    DATA(t25) = t4.
    t24 = t25.
    IF t25 = abap_true.
      DATA t26 TYPE abap_bool.
      DATA(t27) = CAST zcl_lnt_abstract_type( t1 ).
      t26 = xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_integer_type ).
      t24 = t26.
    ENDIF.
    t23 = t24.
    IF t24 = abap_true.
      DATA t28 TYPE abap_bool.
      DATA(t29) = CAST zcl_lnt_abstract_type( t2 ).
      t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_date_type ).
      t23 = t28.
    ENDIF.
    IF t23 = abap_true.
      DATA(t30) = abap_false.
      result = t30.
      RETURN.
    ENDIF.
    DATA(t31) = VALUE abap_bool( ).
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE abap_bool.
    DATA(t34) = CAST zcl_lnt_abstract_type( t2 ).
    t33 = xsdbool( t34 IS BOUND AND t34 IS INSTANCE OF zcl_lnt_numeric_type ).
    t32 = t33.
    IF t33 = abap_true.
      DATA t35 TYPE abap_bool.
      DATA t36 TYPE abap_bool.
      DATA(t37) = CAST zcl_lnt_abstract_type( t1 ).
      t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_character_type ).
      t35 = t36.
      IF t36 = abap_false.
        DATA t38 TYPE abap_bool.
        DATA(t39) = CAST zcl_lnt_abstract_type( t1 ).
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
      DATA t43 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t44 TYPE REF TO zif_lnt_union_f16d2839.
      DATA t45 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t46) = CAST zcl_lnt_abstract_type( t1 ).
      t45 = t46.
      t44 ?= t45.
      t43 = t44->get_abstract_type_data( ).
      t42 = t43.
      DATA t47 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t47.
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = CAST zcl_lnt_abstract_type_data( t42 ).
      IF t49 IS INITIAL.
        t48 = abap_true.
      ENDIF.
      IF t48 = abap_true.
        DATA t50 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t50.
        t47 = t50.
      ELSE.
        DATA t51 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t52 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA(t53) = CAST zcl_lnt_abstract_type_data( t42 ).
        t52 = t53.
        t51 = t52->derived_from_constant.
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
      DATA(t64) = CAST zcl_lnt_expression_node( t3 ).
      t63 = t64.
      DATA t65 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t65.
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = CAST zcl_lnt_expression_node( t63 ).
      IF t67 IS INITIAL.
        t66 = abap_true.
      ENDIF.
      IF t66 = abap_true.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t68.
        t65 = t68.
      ELSE.
        DATA t69 TYPE string.
        DATA t70 TYPE REF TO zcl_lnt_expression_node.
        DATA(t71) = CAST zcl_lnt_expression_node( t63 ).
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
      DATA(t77) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
      t76 = t77.
      DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      t78 = t79.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = VALUE abap_bool( ).
      DATA(t82) = CAST zlnt_runtime_opti_4ba3bdccd169( t76 ).
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
        DATA t86 TYPE string.
        DATA(t87) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
        t86 = t87->value.
        DATA(t88) = |'|.
        DATA(t89) = strlen( t86 ).
        DATA t90 TYPE i.
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
          DATA t94 TYPE string.
          DATA(t95) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
          t94 = t95->value.
          DATA(t96) = |'|.
          DATA(t97) = strlen( t94 ).
          DATA t98 TYPE i.
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
          DATA t103 TYPE string.
          DATA(t104) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
          t103 = t104->value.
          DATA(t105) = |`|.
          DATA(t106) = strlen( t103 ).
          DATA t107 TYPE i.
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
            DATA t111 TYPE string.
            DATA(t112) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
            t111 = t112->value.
            DATA(t113) = |`|.
            DATA(t114) = strlen( t111 ).
            DATA t115 TYPE i.
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
        DATA t125 TYPE string.
        DATA(t126) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
        t125 = t126->value.
        DATA(t127) = 1.
        DATA t128 TYPE i.
        DATA t129 TYPE i.
        DATA t130 TYPE string.
        DATA(t131) = CAST zlnt_runtime_opti_4ba3bdccd169( t61 ).
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
      DATA t138 TYPE abap_bool.
      DATA(t139) = CAST zcl_lnt_abstract_type( t1 ).
      DATA(t140) = CAST zcl_lnt_abstract_type( t2 ).
      t138 = me->is_assignable( i_source_75cf = t139 i_target_5f8a = t140 ).
      result = t138.
      RETURN.
    ENDIF.
    DATA t141 TYPE abap_bool.
    DATA(t142) = CAST zcl_lnt_abstract_type( t2 ).
    t141 = xsdbool( t142 IS BOUND AND t142 IS INSTANCE OF zcl_lnt_c_like_type ).
    IF t141 = abap_true.
      DATA t143 TYPE abap_bool.
      DATA(t144) = CAST zcl_lnt_abstract_type( t1 ).
      t143 = me->is_char_like_strict( i_type_9913 = t144 ).
      result = t143.
      RETURN.
    ENDIF.
    DATA t145 TYPE abap_bool.
    DATA(t146) = CAST zcl_lnt_abstract_type( t2 ).
    t145 = xsdbool( t146 IS BOUND AND t146 IS INSTANCE OF zcl_lnt_p_generic_type ).
    IF t145 = abap_true.
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = VALUE abap_bool( ).
      DATA(t149) = VALUE abap_bool( ).
      DATA(t150) = VALUE abap_bool( ).
      DATA t151 TYPE abap_bool.
      DATA t152 TYPE abap_bool.
      DATA(t153) = CAST zcl_lnt_abstract_type( t1 ).
      t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_packed_type ).
      t151 = t152.
      IF t152 = abap_false.
        DATA t154 TYPE abap_bool.
        DATA(t155) = CAST zcl_lnt_abstract_type( t1 ).
        t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_p_generic_type ).
        t151 = t154.
      ENDIF.
      t150 = t151.
      IF t151 = abap_false.
        DATA t156 TYPE abap_bool.
        DATA(t157) = CAST zcl_lnt_abstract_type( t1 ).
        t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_void_type ).
        t150 = t156.
      ENDIF.
      t149 = t150.
      IF t150 = abap_false.
        DATA t158 TYPE abap_bool.
        DATA(t159) = CAST zcl_lnt_abstract_type( t1 ).
        t158 = xsdbool( t159 IS BOUND AND t159 IS INSTANCE OF zcl_lnt_any_type ).
        t149 = t158.
      ENDIF.
      t148 = t149.
      IF t149 = abap_false.
        DATA t160 TYPE abap_bool.
        DATA(t161) = CAST zcl_lnt_abstract_type( t1 ).
        t160 = xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_data_type ).
        t148 = t160.
      ENDIF.
      t147 = t148.
      IF t148 = abap_false.
        DATA t162 TYPE abap_bool.
        DATA(t163) = CAST zcl_lnt_abstract_type( t1 ).
        t162 = xsdbool( t163 IS BOUND AND t163 IS INSTANCE OF zcl_lnt_unknown_type ).
        t147 = t162.
      ENDIF.
      result = t147.
      RETURN.
    ENDIF.
    DATA t164 TYPE abap_bool.
    DATA t165 TYPE abap_bool.
    DATA(t166) = CAST zcl_lnt_abstract_type( t1 ).
    t165 = xsdbool( t166 IS BOUND AND t166 IS INSTANCE OF zcl_lnt_c_generic_type ).
    t164 = t165.
    IF t165 = abap_true.
      DATA t167 TYPE abap_bool.
      DATA(t168) = CAST zcl_lnt_abstract_type( t2 ).
      t167 = xsdbool( t168 IS BOUND AND t168 IS INSTANCE OF zcl_lnt_string_type ).
      t164 = t167.
    ENDIF.
    IF t164 = abap_true.
      DATA(t169) = abap_false.
      result = t169.
      RETURN.
    ELSE.
      DATA t170 TYPE abap_bool.
      DATA(t171) = CAST zcl_lnt_abstract_type( t1 ).
      t170 = xsdbool( t171 IS BOUND AND t171 IS INSTANCE OF zcl_lnt_character_type ).
      IF t170 = abap_true.
        DATA t172 TYPE abap_bool.
        DATA(t173) = CAST zcl_lnt_abstract_type( t2 ).
        t172 = xsdbool( t173 IS BOUND AND t173 IS INSTANCE OF zcl_lnt_character_type ).
        IF t172 = abap_true.
          DATA(t174) = VALUE abap_bool( ).
          DATA t175 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t175.
          DATA t176 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t177 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA t178 TYPE REF TO zcl_lnt_abstract_type.
          DATA t179 TYPE REF TO zcl_lnt_character_type.
          DATA(t180) = CAST zcl_lnt_abstract_type( t1 ).
          t179 ?= t180.
          t178 = t179.
          DATA t181 TYPE REF TO zcl_lnt_abstract_type_data.
          DATA(t182) = CAST zcl_lnt_abstract_type( t178 ).
          t181 = t182->data_56cc.
          t177 = t181.
          t176 = t177.
          DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t183.
          DATA(t184) = VALUE abap_bool( ).
          DATA(t185) = CAST zcl_lnt_abstract_type_data( t176 ).
          IF t185 IS INITIAL.
            t184 = abap_true.
          ENDIF.
          IF t184 = abap_true.
            DATA t186 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t186.
            t183 = t186.
          ELSE.
            DATA t187 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA t188 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t189) = CAST zcl_lnt_abstract_type_data( t176 ).
            t188 = t189.
            t187 = t188->derived_from_constant.
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
            DATA t197 TYPE abap_bool.
            DATA t198 TYPE int8.
            DATA t199 TYPE REF TO zcl_lnt_character_type.
            DATA t200 TYPE REF TO zcl_lnt_character_type.
            DATA(t201) = CAST zcl_lnt_abstract_type( t1 ).
            t200 ?= t201.
            t199 = t200.
            DATA t202 TYPE int8.
            DATA(t203) = CAST zcl_lnt_character_type( t199 ).
            t202 = t203->length.
            t198 = t202.
            DATA t204 TYPE int8.
            DATA t205 TYPE REF TO zcl_lnt_character_type.
            DATA t206 TYPE REF TO zcl_lnt_character_type.
            DATA(t207) = CAST zcl_lnt_abstract_type( t2 ).
            t206 ?= t207.
            t205 = t206.
            DATA t208 TYPE int8.
            DATA(t209) = CAST zcl_lnt_character_type( t205 ).
            t208 = t209->length.
            t204 = t208.
            t197 = xsdbool( t198 <= t204 ).
            result = t197.
            RETURN.
          ENDIF.
          DATA t210 TYPE abap_bool.
          DATA t211 TYPE int8.
          DATA t212 TYPE REF TO zcl_lnt_character_type.
          DATA t213 TYPE REF TO zcl_lnt_character_type.
          DATA(t214) = CAST zcl_lnt_abstract_type( t1 ).
          t213 ?= t214.
          t212 = t213.
          DATA t215 TYPE int8.
          DATA(t216) = CAST zcl_lnt_character_type( t212 ).
          t215 = t216->length.
          t211 = t215.
          DATA t217 TYPE int8.
          DATA t218 TYPE REF TO zcl_lnt_character_type.
          DATA t219 TYPE REF TO zcl_lnt_character_type.
          DATA(t220) = CAST zcl_lnt_abstract_type( t2 ).
          t219 ?= t220.
          t218 = t219.
          DATA t221 TYPE int8.
          DATA(t222) = CAST zcl_lnt_character_type( t218 ).
          t221 = t222->length.
          t217 = t221.
          t210 = xsdbool( t211 = t217 ).
          result = t210.
          RETURN.
        ELSE.
          DATA t223 TYPE abap_bool.
          DATA(t224) = CAST zcl_lnt_abstract_type( t2 ).
          t223 = xsdbool( t224 IS BOUND AND t224 IS INSTANCE OF zcl_lnt_integer_type ).
          IF t223 = abap_true.
            DATA(t225) = VALUE abap_bool( ).
            DATA t226 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t226.
            DATA t227 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t228 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t229 TYPE REF TO zcl_lnt_abstract_type.
            DATA t230 TYPE REF TO zcl_lnt_character_type.
            DATA(t231) = CAST zcl_lnt_abstract_type( t1 ).
            t230 ?= t231.
            t229 = t230.
            DATA t232 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t233) = CAST zcl_lnt_abstract_type( t229 ).
            t232 = t233->data_56cc.
            t228 = t232.
            t227 = t228.
            DATA t234 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t234.
            DATA(t235) = VALUE abap_bool( ).
            DATA(t236) = CAST zcl_lnt_abstract_type_data( t227 ).
            IF t236 IS INITIAL.
              t235 = abap_true.
            ENDIF.
            IF t235 = abap_true.
              DATA t237 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t237.
              t234 = t237.
            ELSE.
              DATA t238 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t239 TYPE REF TO zcl_lnt_abstract_type_data.
              DATA(t240) = CAST zcl_lnt_abstract_type_data( t227 ).
              t239 = t240.
              t238 = t239->derived_from_constant.
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
            DATA t250 TYPE abap_bool.
            DATA(t251) = CAST zcl_lnt_abstract_type( t2 ).
            t250 = xsdbool( t251 IS BOUND AND t251 IS INSTANCE OF zcl_lnt_x_string_type ).
            IF t250 = abap_true.
              DATA(t252) = VALUE abap_bool( ).
              DATA t253 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t253.
              DATA t254 TYPE REF TO zcl_lnt_abstract_type_data.
              DATA t255 TYPE REF TO zcl_lnt_abstract_type_data.
              DATA t256 TYPE REF TO zcl_lnt_abstract_type.
              DATA t257 TYPE REF TO zcl_lnt_character_type.
              DATA(t258) = CAST zcl_lnt_abstract_type( t1 ).
              t257 ?= t258.
              t256 = t257.
              DATA t259 TYPE REF TO zcl_lnt_abstract_type_data.
              DATA(t260) = CAST zcl_lnt_abstract_type( t256 ).
              t259 = t260->data_56cc.
              t255 = t259.
              t254 = t255.
              DATA t261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t261.
              DATA(t262) = VALUE abap_bool( ).
              DATA(t263) = CAST zcl_lnt_abstract_type_data( t254 ).
              IF t263 IS INITIAL.
                t262 = abap_true.
              ENDIF.
              IF t262 = abap_true.
                DATA t264 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t264.
                t261 = t264.
              ELSE.
                DATA t265 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t266 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA(t267) = CAST zcl_lnt_abstract_type_data( t254 ).
                t266 = t267.
                t265 = t266->derived_from_constant.
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
                DATA t275 TYPE abap_bool.
                DATA(t276) = CAST zcl_lnt_expression_node( t3 ).
                t275 = me->is_hex_constant( i_node = t276 ).
                result = t275.
                RETURN.
              ENDIF.
              DATA(t277) = abap_false.
              result = t277.
              RETURN.
            ELSE.
              DATA t278 TYPE abap_bool.
              DATA(t279) = CAST zcl_lnt_abstract_type( t2 ).
              t278 = xsdbool( t279 IS BOUND AND t279 IS INSTANCE OF zcl_lnt_string_type ).
              IF t278 = abap_true.
                DATA(t280) = VALUE abap_bool( ).
                DATA t281 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t281.
                DATA t282 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA t283 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA t284 TYPE REF TO zcl_lnt_abstract_type.
                DATA t285 TYPE REF TO zcl_lnt_character_type.
                DATA(t286) = CAST zcl_lnt_abstract_type( t1 ).
                t285 ?= t286.
                t284 = t285.
                DATA t287 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA(t288) = CAST zcl_lnt_abstract_type( t284 ).
                t287 = t288->data_56cc.
                t283 = t287.
                t282 = t283.
                DATA t289 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t289.
                DATA(t290) = VALUE abap_bool( ).
                DATA(t291) = CAST zcl_lnt_abstract_type_data( t282 ).
                IF t291 IS INITIAL.
                  t290 = abap_true.
                ENDIF.
                IF t290 = abap_true.
                  DATA t292 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t292.
                  t289 = t292.
                ELSE.
                  DATA t293 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA t294 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA(t295) = CAST zcl_lnt_abstract_type_data( t282 ).
                  t294 = t295.
                  t293 = t294->derived_from_constant.
                  t289 = t293.
                ENDIF.
                t281 = t289.
                DATA t296 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t296.
                DATA(t297) = abap_true.
                IF t297 = abap_true.
                  DATA(t298) = abap_true.
                  DATA(t299) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t299->has = abap_true.
                  t299->value = t298.
                  t296 = t299.
                ELSE.
                  DATA t300 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t300.
                  t296 = t300.
                ENDIF.
                DATA(t301) = VALUE abap_bool( ).
                DATA(t302) = VALUE abap_bool( ).
                IF t281 IS BOUND.
                  t301 = t281->has.
                ENDIF.
                IF t296 IS BOUND.
                  t302 = t296->has.
                ENDIF.
                IF t301 = t302.
                  IF t301 = abap_false.
                    t280 = abap_true.
                  ELSEIF t281->value = t296->value.
                    t280 = abap_true.
                  ENDIF.
                ENDIF.
                IF t280 = abap_true.
                  DATA(t303) = abap_true.
                  result = t303.
                  RETURN.
                ENDIF.
                DATA(t304) = abap_false.
                result = t304.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t305 TYPE abap_bool.
        DATA(t306) = CAST zcl_lnt_abstract_type( t1 ).
        t305 = xsdbool( t306 IS BOUND AND t306 IS INSTANCE OF zcl_lnt_hex_type ).
        IF t305 = abap_true.
          DATA t307 TYPE abap_bool.
          DATA(t308) = CAST zcl_lnt_abstract_type( t2 ).
          t307 = xsdbool( t308 IS BOUND AND t308 IS INSTANCE OF zcl_lnt_hex_type ).
          IF t307 = abap_true.
            DATA(t309) = VALUE abap_bool( ).
            DATA t310 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t310.
            DATA t311 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t312 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t313 TYPE REF TO zcl_lnt_abstract_type.
            DATA t314 TYPE REF TO zcl_lnt_hex_type.
            DATA(t315) = CAST zcl_lnt_abstract_type( t1 ).
            t314 ?= t315.
            t313 = t314.
            DATA t316 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA(t317) = CAST zcl_lnt_abstract_type( t313 ).
            t316 = t317->data_56cc.
            t312 = t316.
            t311 = t312.
            DATA t318 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t318.
            DATA(t319) = VALUE abap_bool( ).
            DATA(t320) = CAST zcl_lnt_abstract_type_data( t311 ).
            IF t320 IS INITIAL.
              t319 = abap_true.
            ENDIF.
            IF t319 = abap_true.
              DATA t321 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t321.
              t318 = t321.
            ELSE.
              DATA t322 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t323 TYPE REF TO zcl_lnt_abstract_type_data.
              DATA(t324) = CAST zcl_lnt_abstract_type_data( t311 ).
              t323 = t324.
              t322 = t323->derived_from_constant.
              t318 = t322.
            ENDIF.
            t310 = t318.
            DATA t325 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t325.
            DATA(t326) = abap_true.
            IF t326 = abap_true.
              DATA(t327) = abap_true.
              DATA(t328) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t328->has = abap_true.
              t328->value = t327.
              t325 = t328.
            ELSE.
              DATA t329 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t329.
              t325 = t329.
            ENDIF.
            DATA(t330) = VALUE abap_bool( ).
            DATA(t331) = VALUE abap_bool( ).
            IF t310 IS BOUND.
              t330 = t310->has.
            ENDIF.
            IF t325 IS BOUND.
              t331 = t325->has.
            ENDIF.
            IF t330 = t331.
              IF t330 = abap_false.
                t309 = abap_true.
              ELSEIF t310->value = t325->value.
                t309 = abap_true.
              ENDIF.
            ENDIF.
            IF t309 = abap_true.
              DATA t332 TYPE abap_bool.
              DATA t333 TYPE int8.
              DATA t334 TYPE REF TO zcl_lnt_hex_type.
              DATA t335 TYPE REF TO zcl_lnt_hex_type.
              DATA(t336) = CAST zcl_lnt_abstract_type( t1 ).
              t335 ?= t336.
              t334 = t335.
              DATA t337 TYPE int8.
              DATA(t338) = CAST zcl_lnt_hex_type( t334 ).
              t337 = t338->length.
              t333 = t337.
              DATA t339 TYPE int8.
              DATA t340 TYPE REF TO zcl_lnt_hex_type.
              DATA t341 TYPE REF TO zcl_lnt_hex_type.
              DATA(t342) = CAST zcl_lnt_abstract_type( t2 ).
              t341 ?= t342.
              t340 = t341.
              DATA t343 TYPE int8.
              DATA(t344) = CAST zcl_lnt_hex_type( t340 ).
              t343 = t344->length.
              t339 = t343.
              t332 = xsdbool( t333 <= t339 ).
              result = t332.
              RETURN.
            ENDIF.
            DATA t345 TYPE abap_bool.
            DATA t346 TYPE int8.
            DATA t347 TYPE REF TO zcl_lnt_hex_type.
            DATA t348 TYPE REF TO zcl_lnt_hex_type.
            DATA(t349) = CAST zcl_lnt_abstract_type( t1 ).
            t348 ?= t349.
            t347 = t348.
            DATA t350 TYPE int8.
            DATA(t351) = CAST zcl_lnt_hex_type( t347 ).
            t350 = t351->length.
            t346 = t350.
            DATA t352 TYPE int8.
            DATA t353 TYPE REF TO zcl_lnt_hex_type.
            DATA t354 TYPE REF TO zcl_lnt_hex_type.
            DATA(t355) = CAST zcl_lnt_abstract_type( t2 ).
            t354 ?= t355.
            t353 = t354.
            DATA t356 TYPE int8.
            DATA(t357) = CAST zcl_lnt_hex_type( t353 ).
            t356 = t357->length.
            t352 = t356.
            t345 = xsdbool( t346 = t352 ).
            result = t345.
            RETURN.
          ELSE.
            DATA t358 TYPE abap_bool.
            DATA(t359) = CAST zcl_lnt_abstract_type( t2 ).
            t358 = xsdbool( t359 IS BOUND AND t359 IS INSTANCE OF zcl_lnt_x_string_type ).
            IF t358 = abap_true.
              DATA(t360) = abap_false.
              result = t360.
              RETURN.
            ELSE.
              DATA t361 TYPE abap_bool.
              DATA t362 TYPE abap_bool.
              DATA(t363) = CAST zcl_lnt_abstract_type( t2 ).
              t362 = xsdbool( t363 IS BOUND AND t363 IS INSTANCE OF zcl_lnt_integer_type ).
              t361 = t362.
              IF t362 = abap_false.
                DATA t364 TYPE abap_bool.
                DATA(t365) = CAST zcl_lnt_abstract_type( t2 ).
                t364 = xsdbool( t365 IS BOUND AND t365 IS INSTANCE OF zcl_lnt_integer8_type ).
                t361 = t364.
              ENDIF.
              IF t361 = abap_true.
                DATA(t366) = VALUE abap_bool( ).
                DATA t367 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t367.
                DATA t368 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA t369 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA t370 TYPE REF TO zcl_lnt_abstract_type.
                DATA t371 TYPE REF TO zcl_lnt_hex_type.
                DATA(t372) = CAST zcl_lnt_abstract_type( t1 ).
                t371 ?= t372.
                t370 = t371.
                DATA t373 TYPE REF TO zcl_lnt_abstract_type_data.
                DATA(t374) = CAST zcl_lnt_abstract_type( t370 ).
                t373 = t374->data_56cc.
                t369 = t373.
                t368 = t369.
                DATA t375 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t375.
                DATA(t376) = VALUE abap_bool( ).
                DATA(t377) = CAST zcl_lnt_abstract_type_data( t368 ).
                IF t377 IS INITIAL.
                  t376 = abap_true.
                ENDIF.
                IF t376 = abap_true.
                  DATA t378 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t378.
                  t375 = t378.
                ELSE.
                  DATA t379 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  DATA t380 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA(t381) = CAST zcl_lnt_abstract_type_data( t368 ).
                  t380 = t381.
                  t379 = t380->derived_from_constant.
                  t375 = t379.
                ENDIF.
                t367 = t375.
                DATA t382 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                CLEAR t382.
                DATA(t383) = abap_true.
                IF t383 = abap_true.
                  DATA(t384) = abap_true.
                  DATA(t385) = NEW zlnt_runtime_opti_7f2541396f43( ).
                  t385->has = abap_true.
                  t385->value = t384.
                  t382 = t385.
                ELSE.
                  DATA t386 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t386.
                  t382 = t386.
                ENDIF.
                DATA(t387) = VALUE abap_bool( ).
                DATA(t388) = VALUE abap_bool( ).
                IF t367 IS BOUND.
                  t387 = t367->has.
                ENDIF.
                IF t382 IS BOUND.
                  t388 = t382->has.
                ENDIF.
                IF t387 = t388.
                  IF t387 = abap_false.
                    t366 = abap_true.
                  ELSEIF t367->value = t382->value.
                    t366 = abap_true.
                  ENDIF.
                ENDIF.
                IF t366 = abap_true.
                  DATA(t389) = abap_true.
                  result = t389.
                  RETURN.
                ENDIF.
                DATA(t390) = abap_false.
                result = t390.
                RETURN.
              ENDIF.
            ENDIF.
          ENDIF.
        ELSE.
          DATA t391 TYPE abap_bool.
          DATA t392 TYPE abap_bool.
          DATA(t393) = CAST zcl_lnt_abstract_type( t1 ).
          t392 = xsdbool( t393 IS BOUND AND t393 IS INSTANCE OF zcl_lnt_date_type ).
          t391 = t392.
          IF t392 = abap_false.
            DATA t394 TYPE abap_bool.
            DATA(t395) = CAST zcl_lnt_abstract_type( t1 ).
            t394 = xsdbool( t395 IS BOUND AND t395 IS INSTANCE OF zcl_lnt_time_type ).
            t391 = t394.
          ENDIF.
          IF t391 = abap_true.
            DATA t396 TYPE abap_bool.
            DATA t397 TYPE abap_bool.
            DATA(t398) = CAST zcl_lnt_abstract_type( t2 ).
            t397 = xsdbool( t398 IS BOUND AND t398 IS INSTANCE OF zcl_lnt_character_type ).
            t396 = t397.
            IF t397 = abap_false.
              DATA t399 TYPE abap_bool.
              DATA(t400) = CAST zcl_lnt_abstract_type( t2 ).
              t399 = xsdbool( t400 IS BOUND AND t400 IS INSTANCE OF zcl_lnt_string_type ).
              t396 = t399.
            ENDIF.
            IF t396 = abap_true.
              DATA(t401) = abap_false.
              result = t401.
              RETURN.
            ENDIF.
          ELSE.
            DATA t402 TYPE abap_bool.
            DATA(t403) = CAST zcl_lnt_abstract_type( t1 ).
            t402 = xsdbool( t403 IS BOUND AND t403 IS INSTANCE OF zcl_lnt_string_type ).
            IF t402 = abap_true.
              DATA t404 TYPE abap_bool.
              DATA t405 TYPE abap_bool.
              DATA(t406) = CAST zcl_lnt_abstract_type( t2 ).
              t405 = xsdbool( t406 IS BOUND AND t406 IS INSTANCE OF zcl_lnt_structure_type ).
              t404 = t405.
              IF t405 = abap_true.
                DATA t407 TYPE abap_bool.
                DATA t408 TYPE REF TO zcl_lnt_structure_type.
                DATA(t409) = CAST zcl_lnt_abstract_type( t2 ).
                t408 ?= t409.
                t407 = me->structure_contains_string( i_structure = t408 ).
                t404 = t407.
              ENDIF.
              IF t404 = abap_true.
                DATA(t410) = abap_false.
                result = t410.
                RETURN.
              ELSE.
                DATA t411 TYPE abap_bool.
                DATA(t412) = CAST zcl_lnt_abstract_type( t2 ).
                t411 = xsdbool( t412 IS BOUND AND t412 IS INSTANCE OF zcl_lnt_character_type ).
                IF t411 = abap_true.
                  DATA(t413) = VALUE abap_bool( ).
                  DATA t414 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t414.
                  DATA t415 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA t416 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA t417 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t418 TYPE REF TO zcl_lnt_string_type.
                  DATA(t419) = CAST zcl_lnt_abstract_type( t1 ).
                  t418 ?= t419.
                  t417 = t418.
                  DATA t420 TYPE REF TO zcl_lnt_abstract_type_data.
                  DATA(t421) = CAST zcl_lnt_abstract_type( t417 ).
                  t420 = t421->data_56cc.
                  t416 = t420.
                  t415 = t416.
                  DATA t422 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t422.
                  DATA(t423) = VALUE abap_bool( ).
                  DATA(t424) = CAST zcl_lnt_abstract_type_data( t415 ).
                  IF t424 IS INITIAL.
                    t423 = abap_true.
                  ENDIF.
                  IF t423 = abap_true.
                    DATA t425 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t425.
                    t422 = t425.
                  ELSE.
                    DATA t426 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    DATA t427 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA(t428) = CAST zcl_lnt_abstract_type_data( t415 ).
                    t427 = t428.
                    t426 = t427->derived_from_constant.
                    t422 = t426.
                  ENDIF.
                  t414 = t422.
                  DATA t429 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                  CLEAR t429.
                  DATA(t430) = abap_true.
                  IF t430 = abap_true.
                    DATA(t431) = abap_true.
                    DATA(t432) = NEW zlnt_runtime_opti_7f2541396f43( ).
                    t432->has = abap_true.
                    t432->value = t431.
                    t429 = t432.
                  ELSE.
                    DATA t433 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t433.
                    t429 = t433.
                  ENDIF.
                  DATA(t434) = VALUE abap_bool( ).
                  DATA(t435) = VALUE abap_bool( ).
                  IF t414 IS BOUND.
                    t434 = t414->has.
                  ENDIF.
                  IF t429 IS BOUND.
                    t435 = t429->has.
                  ENDIF.
                  IF t434 = t435.
                    IF t434 = abap_false.
                      t413 = abap_true.
                    ELSEIF t414->value = t429->value.
                      t413 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t413 = abap_true.
                    DATA(t436) = abap_true.
                    result = t436.
                    RETURN.
                  ENDIF.
                  DATA(t437) = abap_false.
                  result = t437.
                  RETURN.
                ELSE.
                  DATA t438 TYPE abap_bool.
                  DATA(t439) = CAST zcl_lnt_abstract_type( t2 ).
                  t438 = xsdbool( t439 IS BOUND AND t439 IS INSTANCE OF zcl_lnt_integer_type ).
                  IF t438 = abap_true.
                    DATA(t440) = VALUE abap_bool( ).
                    DATA t441 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t441.
                    DATA t442 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA t443 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA t444 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t445 TYPE REF TO zcl_lnt_string_type.
                    DATA(t446) = CAST zcl_lnt_abstract_type( t1 ).
                    t445 ?= t446.
                    t444 = t445.
                    DATA t447 TYPE REF TO zcl_lnt_abstract_type_data.
                    DATA(t448) = CAST zcl_lnt_abstract_type( t444 ).
                    t447 = t448->data_56cc.
                    t443 = t447.
                    t442 = t443.
                    DATA t449 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t449.
                    DATA(t450) = VALUE abap_bool( ).
                    DATA(t451) = CAST zcl_lnt_abstract_type_data( t442 ).
                    IF t451 IS INITIAL.
                      t450 = abap_true.
                    ENDIF.
                    IF t450 = abap_true.
                      DATA t452 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t452.
                      t449 = t452.
                    ELSE.
                      DATA t453 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      DATA t454 TYPE REF TO zcl_lnt_abstract_type_data.
                      DATA(t455) = CAST zcl_lnt_abstract_type_data( t442 ).
                      t454 = t455.
                      t453 = t454->derived_from_constant.
                      t449 = t453.
                    ENDIF.
                    t441 = t449.
                    DATA t456 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                    CLEAR t456.
                    DATA(t457) = abap_true.
                    IF t457 = abap_true.
                      DATA(t458) = abap_true.
                      DATA(t459) = NEW zlnt_runtime_opti_7f2541396f43( ).
                      t459->has = abap_true.
                      t459->value = t458.
                      t456 = t459.
                    ELSE.
                      DATA t460 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                      CLEAR t460.
                      t456 = t460.
                    ENDIF.
                    DATA(t461) = VALUE abap_bool( ).
                    DATA(t462) = VALUE abap_bool( ).
                    IF t441 IS BOUND.
                      t461 = t441->has.
                    ENDIF.
                    IF t456 IS BOUND.
                      t462 = t456->has.
                    ENDIF.
                    IF t461 = t462.
                      IF t461 = abap_false.
                        t440 = abap_true.
                      ELSEIF t441->value = t456->value.
                        t440 = abap_true.
                      ENDIF.
                    ENDIF.
                    IF t440 = abap_true.
                      DATA(t463) = abap_true.
                      result = t463.
                      RETURN.
                    ENDIF.
                    DATA(t464) = abap_false.
                    result = t464.
                    RETURN.
                  ELSE.
                    DATA t465 TYPE abap_bool.
                    DATA t466 TYPE abap_bool.
                    DATA(t467) = CAST zcl_lnt_abstract_type( t2 ).
                    t466 = xsdbool( t467 IS BOUND AND t467 IS INSTANCE OF zcl_lnt_c_generic_type ).
                    t465 = t466.
                    IF t466 = abap_false.
                      DATA t468 TYPE abap_bool.
                      DATA(t469) = CAST zcl_lnt_abstract_type( t2 ).
                      t468 = xsdbool( t469 IS BOUND AND t469 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
                      t465 = t468.
                    ENDIF.
                    IF t465 = abap_true.
                      DATA(t470) = abap_false.
                      result = t470.
                      RETURN.
                    ELSE.
                      DATA t471 TYPE abap_bool.
                      DATA t472 TYPE abap_bool.
                      DATA(t473) = CAST zcl_lnt_abstract_type( t2 ).
                      t472 = xsdbool( t473 IS BOUND AND t473 IS INSTANCE OF zcl_lnt_x_sequence_type ).
                      t471 = t472.
                      IF t472 = abap_false.
                        DATA t474 TYPE abap_bool.
                        DATA(t475) = CAST zcl_lnt_abstract_type( t2 ).
                        t474 = xsdbool( t475 IS BOUND AND t475 IS INSTANCE OF zcl_lnt_x_string_type ).
                        t471 = t474.
                      ENDIF.
                      IF t471 = abap_true.
                        DATA(t476) = VALUE abap_bool( ).
                        DATA t477 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t477.
                        DATA t478 TYPE REF TO zcl_lnt_abstract_type_data.
                        DATA t479 TYPE REF TO zcl_lnt_abstract_type_data.
                        DATA t480 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t481 TYPE REF TO zcl_lnt_string_type.
                        DATA(t482) = CAST zcl_lnt_abstract_type( t1 ).
                        t481 ?= t482.
                        t480 = t481.
                        DATA t483 TYPE REF TO zcl_lnt_abstract_type_data.
                        DATA(t484) = CAST zcl_lnt_abstract_type( t480 ).
                        t483 = t484->data_56cc.
                        t479 = t483.
                        t478 = t479.
                        DATA t485 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t485.
                        DATA(t486) = VALUE abap_bool( ).
                        DATA(t487) = CAST zcl_lnt_abstract_type_data( t478 ).
                        IF t487 IS INITIAL.
                          t486 = abap_true.
                        ENDIF.
                        IF t486 = abap_true.
                          DATA t488 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t488.
                          t485 = t488.
                        ELSE.
                          DATA t489 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          DATA t490 TYPE REF TO zcl_lnt_abstract_type_data.
                          DATA(t491) = CAST zcl_lnt_abstract_type_data( t478 ).
                          t490 = t491.
                          t489 = t490->derived_from_constant.
                          t485 = t489.
                        ENDIF.
                        t477 = t485.
                        DATA t492 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t492.
                        DATA(t493) = abap_true.
                        IF t493 = abap_true.
                          DATA(t494) = abap_true.
                          DATA(t495) = NEW zlnt_runtime_opti_7f2541396f43( ).
                          t495->has = abap_true.
                          t495->value = t494.
                          t492 = t495.
                        ELSE.
                          DATA t496 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t496.
                          t492 = t496.
                        ENDIF.
                        DATA(t497) = VALUE abap_bool( ).
                        DATA(t498) = VALUE abap_bool( ).
                        IF t477 IS BOUND.
                          t497 = t477->has.
                        ENDIF.
                        IF t492 IS BOUND.
                          t498 = t492->has.
                        ENDIF.
                        IF t497 = t498.
                          IF t497 = abap_false.
                            t476 = abap_true.
                          ELSEIF t477->value = t492->value.
                            t476 = abap_true.
                          ENDIF.
                        ENDIF.
                        IF t476 = abap_true.
                          DATA(t499) = abap_true.
                          result = t499.
                          RETURN.
                        ENDIF.
                        DATA(t500) = abap_false.
                        result = t500.
                        RETURN.
                      ELSE.
                        DATA(t501) = VALUE abap_bool( ).
                        DATA t502 TYPE abap_bool.
                        DATA t503 TYPE abap_bool.
                        DATA(t504) = CAST zcl_lnt_abstract_type( t2 ).
                        t503 = xsdbool( t504 IS BOUND AND t504 IS INSTANCE OF zcl_lnt_ty_table_type ).
                        t502 = t503.
                        IF t503 = abap_false.
                          DATA t505 TYPE abap_bool.
                          DATA(t506) = CAST zcl_lnt_abstract_type( t2 ).
                          t505 = xsdbool( t506 IS BOUND AND t506 IS INSTANCE OF zcl_lnt_data_reference ).
                          t502 = t505.
                        ENDIF.
                        t501 = t502.
                        IF t502 = abap_false.
                          DATA t507 TYPE abap_bool.
                          DATA(t508) = CAST zcl_lnt_abstract_type( t2 ).
                          t507 = xsdbool( t508 IS BOUND AND t508 IS INSTANCE OF zcl_lnt_object_reference_type ).
                          t501 = t507.
                        ENDIF.
                        IF t501 = abap_true.
                          DATA(t509) = abap_false.
                          result = t509.
                          RETURN.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
              DATA(t510) = abap_true.
              result = t510.
              RETURN.
            ELSE.
              DATA t511 TYPE abap_bool.
              DATA(t512) = CAST zcl_lnt_abstract_type( t1 ).
              t511 = xsdbool( t512 IS BOUND AND t512 IS INSTANCE OF zcl_lnt_structure_type ).
              IF t511 = abap_true.
                DATA t513 TYPE abap_bool.
                DATA(t514) = CAST zcl_lnt_abstract_type( t2 ).
                t513 = xsdbool( t514 IS BOUND AND t514 IS INSTANCE OF zcl_lnt_structure_type ).
                IF t513 = abap_true.
                  DATA t515 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t516 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t517 TYPE REF TO zcl_lnt_structure_type.
                  DATA t518 TYPE REF TO zcl_lnt_structure_type.
                  DATA(t519) = CAST zcl_lnt_abstract_type( t1 ).
                  t518 ?= t519.
                  t517 = t518.
                  DATA t520 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t521) = CAST zcl_lnt_structure_type( t517 ).
                  t520 = t521->components.
                  t516 = t520.
                  t515 = t516.
                  DATA t522 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t523 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA t524 TYPE REF TO zcl_lnt_structure_type.
                  DATA t525 TYPE REF TO zcl_lnt_structure_type.
                  DATA(t526) = CAST zcl_lnt_abstract_type( t2 ).
                  t525 ?= t526.
                  t524 = t525.
                  DATA t527 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  DATA(t528) = CAST zcl_lnt_structure_type( t524 ).
                  t527 = t528->components.
                  t523 = t527.
                  t522 = t523.
                  DATA t529 TYPE abap_bool.
                  DATA t530 TYPE i.
                  DATA(t531) = CAST zlnt_runtime_arra_c22708faf2e3( t515 ).
                  t530 = lines( t531->items ).
                  DATA t532 TYPE i.
                  DATA(t533) = CAST zlnt_runtime_arra_c22708faf2e3( t522 ).
                  t532 = lines( t533->items ).
                  t529 = xsdbool( t530 <> t532 ).
                  IF t529 = abap_true.
                    DATA(t534) = abap_false.
                    result = t534.
                    RETURN.
                  ENDIF.
                  DATA t535 TYPE i.
                  DATA(t536) = 0.
                  t535 = t536.
                  DO.
                    DATA t537 TYPE abap_bool.
                    DATA(t538) = t535.
                    DATA t539 TYPE i.
                    DATA(t540) = CAST zlnt_runtime_arra_c22708faf2e3( t515 ).
                    t539 = lines( t540->items ).
                    t537 = xsdbool( t538 < t539 ).
                    IF t537 = abap_false.
                      EXIT.
                    ENDIF.
                    DATA(t541) = VALUE abap_bool( ).
                    DATA(t542) = VALUE abap_bool( ).
                    DATA t543 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t543.
                    DATA(t544) = abap_true.
                    IF t544 = abap_true.
                      DATA t545 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t546 TYPE REF TO zcl_lnt_istructure_component.
                      DATA(t547) = CAST zlnt_runtime_arra_c22708faf2e3( t515 ).
                      DATA(t548) = t535.
                      t548 = t548 + 1.
                      DATA t549 TYPE REF TO object.
                      CLEAR t549.
                      READ TABLE t547->items INDEX t548 INTO t549.
                      t546 ?= t549.
                      t545 = t546->type_cba0.
                      t543 = t545.
                    ELSE.
                      DATA t550 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t550.
                      t543 = t550.
                    ENDIF.
                    DATA t551 TYPE REF TO zcl_lnt_abstract_type.
                    CLEAR t551.
                    DATA(t552) = abap_true.
                    IF t552 = abap_true.
                      DATA t553 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t554 TYPE REF TO zcl_lnt_istructure_component.
                      DATA(t555) = CAST zlnt_runtime_arra_c22708faf2e3( t522 ).
                      DATA(t556) = t535.
                      t556 = t556 + 1.
                      DATA t557 TYPE REF TO object.
                      CLEAR t557.
                      READ TABLE t555->items INDEX t556 INTO t557.
                      t554 ?= t557.
                      t553 = t554->type_cba0.
                      t551 = t553.
                    ELSE.
                      DATA t558 TYPE REF TO zcl_lnt_abstract_type.
                      CLEAR t558.
                      t551 = t558.
                    ENDIF.
                    DATA t559 TYPE REF TO zcl_lnt_expression_node.
                    CLEAR t559.
                    t542 = me->is_assignable_strict( i_source_75cf = t543 i_target_5f8a = t551 i_node = t559 ).
                    DATA(t560) = abap_false.
                    t541 = xsdbool( t542 = t560 ).
                    IF t541 = abap_true.
                      DATA(t561) = abap_false.
                      result = t561.
                      RETURN.
                    ENDIF.
                    DATA t562 TYPE i.
                    DATA(t563) = t535.
                    DATA(t564) = 1.
                    t562 = t563 + t564.
                    t535 = t562.
                  ENDDO.
                  DATA(t565) = abap_true.
                  result = t565.
                  RETURN.
                ELSE.
                  DATA t566 TYPE abap_bool.
                  DATA(t567) = CAST zcl_lnt_abstract_type( t2 ).
                  t566 = xsdbool( t567 IS BOUND AND t567 IS INSTANCE OF zcl_lnt_simple_type ).
                  IF t566 = abap_true.
                    DATA t568 TYPE abap_bool.
                    DATA t569 TYPE REF TO zcl_lnt_structure_type.
                    DATA(t570) = CAST zcl_lnt_abstract_type( t1 ).
                    t569 ?= t570.
                    t568 = me->is_char_like_strict( i_type_9913 = t569 ).
                    result = t568.
                    RETURN.
                  ELSE.
                    DATA t571 TYPE abap_bool.
                    DATA(t572) = CAST zcl_lnt_abstract_type( t2 ).
                    t571 = xsdbool( t572 IS BOUND AND t572 IS INSTANCE OF zcl_lnt_c_like_type ).
                    IF t571 = abap_true.
                      DATA t573 TYPE abap_bool.
                      DATA t574 TYPE REF TO zcl_lnt_structure_type.
                      DATA(t575) = CAST zcl_lnt_abstract_type( t1 ).
                      t574 ?= t575.
                      t573 = me->is_char_like_strict( i_type_9913 = t574 ).
                      result = t573.
                      RETURN.
                    ELSE.
                      DATA(t576) = VALUE abap_bool( ).
                      DATA(t577) = VALUE abap_bool( ).
                      DATA t578 TYPE abap_bool.
                      DATA t579 TYPE abap_bool.
                      DATA(t580) = CAST zcl_lnt_abstract_type( t2 ).
                      t579 = xsdbool( t580 IS BOUND AND t580 IS INSTANCE OF zcl_lnt_void_type ).
                      t578 = t579.
                      IF t579 = abap_false.
                        DATA t581 TYPE abap_bool.
                        DATA(t582) = CAST zcl_lnt_abstract_type( t2 ).
                        t581 = xsdbool( t582 IS BOUND AND t582 IS INSTANCE OF zcl_lnt_any_type ).
                        t578 = t581.
                      ENDIF.
                      t577 = t578.
                      IF t578 = abap_false.
                        DATA t583 TYPE abap_bool.
                        DATA(t584) = CAST zcl_lnt_abstract_type( t2 ).
                        t583 = xsdbool( t584 IS BOUND AND t584 IS INSTANCE OF zcl_lnt_data_type ).
                        t577 = t583.
                      ENDIF.
                      t576 = t577.
                      IF t577 = abap_false.
                        DATA t585 TYPE abap_bool.
                        DATA(t586) = CAST zcl_lnt_abstract_type( t2 ).
                        t585 = xsdbool( t586 IS BOUND AND t586 IS INSTANCE OF zcl_lnt_unknown_type ).
                        t576 = t585.
                      ENDIF.
                      IF t576 = abap_true.
                        DATA(t587) = abap_true.
                        result = t587.
                        RETURN.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
                DATA(t588) = abap_false.
                result = t588.
                RETURN.
              ELSE.
                DATA t589 TYPE abap_bool.
                DATA(t590) = CAST zcl_lnt_abstract_type( t1 ).
                t589 = xsdbool( t590 IS BOUND AND t590 IS INSTANCE OF zcl_lnt_integer8_type ).
                IF t589 = abap_true.
                  DATA t591 TYPE abap_bool.
                  DATA t592 TYPE abap_bool.
                  DATA(t593) = CAST zcl_lnt_abstract_type( t2 ).
                  t592 = xsdbool( t593 IS BOUND AND t593 IS INSTANCE OF zcl_lnt_integer_type ).
                  t591 = t592.
                  IF t592 = abap_false.
                    DATA t594 TYPE abap_bool.
                    DATA(t595) = CAST zcl_lnt_abstract_type( t2 ).
                    t594 = xsdbool( t595 IS BOUND AND t595 IS INSTANCE OF zcl_lnt_string_type ).
                    t591 = t594.
                  ENDIF.
                  IF t591 = abap_true.
                    DATA(t596) = abap_false.
                    result = t596.
                    RETURN.
                  ENDIF.
                ELSE.
                  DATA t597 TYPE abap_bool.
                  DATA(t598) = CAST zcl_lnt_abstract_type( t1 ).
                  t597 = xsdbool( t598 IS BOUND AND t598 IS INSTANCE OF zcl_lnt_integer_type ).
                  IF t597 = abap_true.
                    DATA(t599) = VALUE abap_bool( ).
                    DATA t600 TYPE abap_bool.
                    DATA t601 TYPE abap_bool.
                    DATA(t602) = CAST zcl_lnt_abstract_type( t2 ).
                    t601 = xsdbool( t602 IS BOUND AND t602 IS INSTANCE OF zcl_lnt_string_type ).
                    t600 = t601.
                    IF t601 = abap_false.
                      DATA t603 TYPE abap_bool.
                      DATA(t604) = CAST zcl_lnt_abstract_type( t2 ).
                      t603 = xsdbool( t604 IS BOUND AND t604 IS INSTANCE OF zcl_lnt_date_type ).
                      t600 = t603.
                    ENDIF.
                    t599 = t600.
                    IF t600 = abap_false.
                      DATA t605 TYPE abap_bool.
                      DATA(t606) = CAST zcl_lnt_abstract_type( t2 ).
                      t605 = xsdbool( t606 IS BOUND AND t606 IS INSTANCE OF zcl_lnt_character_type ).
                      t599 = t605.
                    ENDIF.
                    IF t599 = abap_true.
                      DATA(t607) = abap_false.
                      result = t607.
                      RETURN.
                    ELSE.
                      DATA t608 TYPE abap_bool.
                      DATA t609 TYPE abap_bool.
                      DATA(t610) = CAST zcl_lnt_abstract_type( t2 ).
                      t609 = xsdbool( t610 IS BOUND AND t610 IS INSTANCE OF zcl_lnt_integer8_type ).
                      t608 = t609.
                      IF t609 = abap_false.
                        DATA t611 TYPE abap_bool.
                        DATA(t612) = CAST zcl_lnt_abstract_type( t2 ).
                        t611 = xsdbool( t612 IS BOUND AND t612 IS INSTANCE OF zcl_lnt_packed_type ).
                        t608 = t611.
                      ENDIF.
                      IF t608 = abap_true.
                        DATA(t613) = VALUE abap_bool( ).
                        DATA t614 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t614.
                        DATA t615 TYPE REF TO zcl_lnt_abstract_type_data.
                        DATA t616 TYPE REF TO zcl_lnt_abstract_type_data.
                        DATA t617 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t618 TYPE REF TO zcl_lnt_integer_type.
                        DATA(t619) = CAST zcl_lnt_abstract_type( t1 ).
                        t618 ?= t619.
                        t617 = t618.
                        DATA t620 TYPE REF TO zcl_lnt_abstract_type_data.
                        DATA(t621) = CAST zcl_lnt_abstract_type( t617 ).
                        t620 = t621->data_56cc.
                        t616 = t620.
                        t615 = t616.
                        DATA t622 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t622.
                        DATA(t623) = VALUE abap_bool( ).
                        DATA(t624) = CAST zcl_lnt_abstract_type_data( t615 ).
                        IF t624 IS INITIAL.
                          t623 = abap_true.
                        ENDIF.
                        IF t623 = abap_true.
                          DATA t625 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t625.
                          t622 = t625.
                        ELSE.
                          DATA t626 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          DATA t627 TYPE REF TO zcl_lnt_abstract_type_data.
                          DATA(t628) = CAST zcl_lnt_abstract_type_data( t615 ).
                          t627 = t628.
                          t626 = t627->derived_from_constant.
                          t622 = t626.
                        ENDIF.
                        t614 = t622.
                        DATA t629 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                        CLEAR t629.
                        DATA(t630) = abap_true.
                        IF t630 = abap_true.
                          DATA(t631) = abap_true.
                          DATA(t632) = NEW zlnt_runtime_opti_7f2541396f43( ).
                          t632->has = abap_true.
                          t632->value = t631.
                          t629 = t632.
                        ELSE.
                          DATA t633 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                          CLEAR t633.
                          t629 = t633.
                        ENDIF.
                        DATA(t634) = VALUE abap_bool( ).
                        DATA(t635) = VALUE abap_bool( ).
                        IF t614 IS BOUND.
                          t634 = t614->has.
                        ENDIF.
                        IF t629 IS BOUND.
                          t635 = t629->has.
                        ENDIF.
                        IF t634 = t635.
                          IF t634 = abap_false.
                            t613 = abap_true.
                          ELSEIF t614->value = t629->value.
                            t613 = abap_true.
                          ENDIF.
                        ENDIF.
                        IF t613 = abap_true.
                          DATA(t636) = abap_true.
                          result = t636.
                          RETURN.
                        ENDIF.
                        DATA(t637) = abap_false.
                        result = t637.
                        RETURN.
                      ENDIF.
                    ENDIF.
                  ELSE.
                    DATA t638 TYPE abap_bool.
                    DATA t639 TYPE abap_bool.
                    DATA(t640) = CAST zcl_lnt_abstract_type( t1 ).
                    t639 = xsdbool( t640 IS BOUND AND t640 IS INSTANCE OF zcl_lnt_packed_type ).
                    t638 = t639.
                    IF t639 = abap_true.
                      DATA t641 TYPE abap_bool.
                      DATA(t642) = CAST zcl_lnt_abstract_type( t2 ).
                      t641 = xsdbool( t642 IS BOUND AND t642 IS INSTANCE OF zcl_lnt_packed_type ).
                      t638 = t641.
                    ENDIF.
                    IF t638 = abap_true.
                      DATA t643 TYPE abap_bool.
                      DATA t644 TYPE abap_bool.
                      DATA t645 TYPE int8.
                      DATA t646 TYPE REF TO zcl_lnt_packed_type.
                      DATA(t647) = CAST zcl_lnt_abstract_type( t1 ).
                      t646 ?= t647.
                      t645 = t646->get_length( ).
                      DATA t648 TYPE int8.
                      DATA t649 TYPE REF TO zcl_lnt_packed_type.
                      DATA(t650) = CAST zcl_lnt_abstract_type( t2 ).
                      t649 ?= t650.
                      t648 = t649->get_length( ).
                      t644 = xsdbool( t645 = t648 ).
                      t643 = t644.
                      IF t644 = abap_true.
                        DATA t651 TYPE abap_bool.
                        DATA t652 TYPE int8.
                        DATA t653 TYPE REF TO zcl_lnt_packed_type.
                        DATA(t654) = CAST zcl_lnt_abstract_type( t1 ).
                        t653 ?= t654.
                        t652 = t653->get_decimals( ).
                        DATA t655 TYPE int8.
                        DATA t656 TYPE REF TO zcl_lnt_packed_type.
                        DATA(t657) = CAST zcl_lnt_abstract_type( t2 ).
                        t656 ?= t657.
                        t655 = t656->get_decimals( ).
                        t651 = xsdbool( t652 = t655 ).
                        t643 = t651.
                      ENDIF.
                      result = t643.
                      RETURN.
                    ELSE.
                      DATA t658 TYPE abap_bool.
                      DATA(t659) = CAST zcl_lnt_abstract_type( t1 ).
                      t658 = xsdbool( t659 IS BOUND AND t659 IS INSTANCE OF zcl_lnt_float_type ).
                      IF t658 = abap_true.
                        DATA t660 TYPE abap_bool.
                        DATA(t661) = CAST zcl_lnt_abstract_type( t2 ).
                        t660 = xsdbool( t661 IS BOUND AND t661 IS INSTANCE OF zcl_lnt_integer_type ).
                        IF t660 = abap_true.
                          DATA(t662) = abap_false.
                          result = t662.
                          RETURN.
                        ENDIF.
                      ELSE.
                        DATA t663 TYPE abap_bool.
                        DATA(t664) = CAST zcl_lnt_abstract_type( t1 ).
                        t663 = xsdbool( t664 IS BOUND AND t664 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
                        IF t663 = abap_true.
                          DATA(t665) = VALUE abap_bool( ).
                          DATA(t666) = VALUE abap_bool( ).
                          DATA(t667) = VALUE abap_bool( ).
                          DATA t668 TYPE abap_bool.
                          DATA t669 TYPE abap_bool.
                          DATA(t670) = CAST zcl_lnt_abstract_type( t2 ).
                          t669 = xsdbool( t670 IS BOUND AND t670 IS INSTANCE OF zcl_lnt_object_reference_type ).
                          t668 = t669.
                          IF t669 = abap_false.
                            DATA t671 TYPE abap_bool.
                            DATA(t672) = CAST zcl_lnt_abstract_type( t2 ).
                            t671 = xsdbool( t672 IS BOUND AND t672 IS INSTANCE OF zcl_lnt_string_type ).
                            t668 = t671.
                          ENDIF.
                          t667 = t668.
                          IF t668 = abap_false.
                            DATA t673 TYPE abap_bool.
                            DATA(t674) = CAST zcl_lnt_abstract_type( t2 ).
                            t673 = xsdbool( t674 IS BOUND AND t674 IS INSTANCE OF zcl_lnt_character_type ).
                            t667 = t673.
                          ENDIF.
                          t666 = t667.
                          IF t667 = abap_false.
                            DATA t675 TYPE abap_bool.
                            DATA(t676) = CAST zcl_lnt_abstract_type( t2 ).
                            t675 = xsdbool( t676 IS BOUND AND t676 IS INSTANCE OF zcl_lnt_ty_table_type ).
                            t666 = t675.
                          ENDIF.
                          t665 = t666.
                          IF t666 = abap_false.
                            DATA t677 TYPE abap_bool.
                            DATA(t678) = CAST zcl_lnt_abstract_type( t2 ).
                            t677 = xsdbool( t678 IS BOUND AND t678 IS INSTANCE OF zcl_lnt_c_like_type ).
                            t665 = t677.
                          ENDIF.
                          IF t665 = abap_true.
                            DATA(t679) = abap_false.
                            result = t679.
                            RETURN.
                          ENDIF.
                        ELSE.
                          DATA t680 TYPE abap_bool.
                          DATA(t681) = CAST zcl_lnt_abstract_type( t1 ).
                          t680 = xsdbool( t681 IS BOUND AND t681 IS INSTANCE OF zcl_lnt_object_reference_type ).
                          IF t680 = abap_true.
                            DATA(t682) = VALUE abap_bool( ).
                            DATA(t683) = VALUE abap_bool( ).
                            DATA(t684) = VALUE abap_bool( ).
                            DATA t685 TYPE abap_bool.
                            DATA t686 TYPE abap_bool.
                            DATA(t687) = CAST zcl_lnt_abstract_type( t2 ).
                            t686 = xsdbool( t687 IS BOUND AND t687 IS INSTANCE OF zcl_lnt_x_sequence_type ).
                            t685 = t686.
                            IF t686 = abap_false.
                              DATA t688 TYPE abap_bool.
                              DATA(t689) = CAST zcl_lnt_abstract_type( t2 ).
                              t688 = xsdbool( t689 IS BOUND AND t689 IS INSTANCE OF zcl_lnt_integer_type ).
                              t685 = t688.
                            ENDIF.
                            t684 = t685.
                            IF t685 = abap_false.
                              DATA t690 TYPE abap_bool.
                              DATA(t691) = CAST zcl_lnt_abstract_type( t2 ).
                              t690 = xsdbool( t691 IS BOUND AND t691 IS INSTANCE OF zcl_lnt_structure_type ).
                              t684 = t690.
                            ENDIF.
                            t683 = t684.
                            IF t684 = abap_false.
                              DATA t692 TYPE abap_bool.
                              DATA(t693) = CAST zcl_lnt_abstract_type( t2 ).
                              t692 = xsdbool( t693 IS BOUND AND t693 IS INSTANCE OF zcl_lnt_ty_table_type ).
                              t683 = t692.
                            ENDIF.
                            t682 = t683.
                            IF t683 = abap_false.
                              DATA t694 TYPE abap_bool.
                              DATA(t695) = CAST zcl_lnt_abstract_type( t2 ).
                              t694 = xsdbool( t695 IS BOUND AND t695 IS INSTANCE OF zcl_lnt_x_string_type ).
                              t682 = t694.
                            ENDIF.
                            IF t682 = abap_true.
                              DATA(t696) = abap_false.
                              result = t696.
                              RETURN.
                            ENDIF.
                          ELSE.
                            DATA t697 TYPE abap_bool.
                            DATA(t698) = CAST zcl_lnt_abstract_type( t1 ).
                            t697 = xsdbool( t698 IS BOUND AND t698 IS INSTANCE OF zcl_lnt_x_string_type ).
                            IF t697 = abap_true.
                              DATA(t699) = VALUE abap_bool( ).
                              DATA(t700) = VALUE abap_bool( ).
                              DATA(t701) = VALUE abap_bool( ).
                              DATA(t702) = VALUE abap_bool( ).
                              DATA t703 TYPE abap_bool.
                              DATA t704 TYPE abap_bool.
                              DATA(t705) = CAST zcl_lnt_abstract_type( t2 ).
                              t704 = xsdbool( t705 IS BOUND AND t705 IS INSTANCE OF zcl_lnt_character_type ).
                              t703 = t704.
                              IF t704 = abap_false.
                                DATA t706 TYPE abap_bool.
                                DATA(t707) = CAST zcl_lnt_abstract_type( t2 ).
                                t706 = xsdbool( t707 IS BOUND AND t707 IS INSTANCE OF zcl_lnt_c_like_type ).
                                t703 = t706.
                              ENDIF.
                              t702 = t703.
                              IF t703 = abap_false.
                                DATA t708 TYPE abap_bool.
                                DATA(t709) = CAST zcl_lnt_abstract_type( t2 ).
                                t708 = xsdbool( t709 IS BOUND AND t709 IS INSTANCE OF zcl_lnt_integer_type ).
                                t702 = t708.
                              ENDIF.
                              t701 = t702.
                              IF t702 = abap_false.
                                DATA t710 TYPE abap_bool.
                                DATA(t711) = CAST zcl_lnt_abstract_type( t2 ).
                                t710 = xsdbool( t711 IS BOUND AND t711 IS INSTANCE OF zcl_lnt_string_type ).
                                t701 = t710.
                              ENDIF.
                              t700 = t701.
                              IF t701 = abap_false.
                                DATA t712 TYPE abap_bool.
                                DATA(t713) = CAST zcl_lnt_abstract_type( t2 ).
                                t712 = xsdbool( t713 IS BOUND AND t713 IS INSTANCE OF zcl_lnt_object_reference_type ).
                                t700 = t712.
                              ENDIF.
                              t699 = t700.
                              IF t700 = abap_false.
                                DATA t714 TYPE abap_bool.
                                DATA(t715) = CAST zcl_lnt_abstract_type( t2 ).
                                t714 = xsdbool( t715 IS BOUND AND t715 IS INSTANCE OF zcl_lnt_hex_type ).
                                t699 = t714.
                              ENDIF.
                              IF t699 = abap_true.
                                DATA(t716) = abap_false.
                                result = t716.
                                RETURN.
                              ENDIF.
                            ELSE.
                              DATA t717 TYPE abap_bool.
                              DATA(t718) = CAST zcl_lnt_abstract_type( t1 ).
                              t717 = xsdbool( t718 IS BOUND AND t718 IS INSTANCE OF zcl_lnt_ty_table_type ).
                              IF t717 = abap_true.
                                DATA t719 TYPE abap_bool.
                                DATA t720 TYPE REF TO zcl_lnt_abstract_type.
                                DATA t721 TYPE REF TO zcl_lnt_ty_table_type.
                                DATA t722 TYPE REF TO zcl_lnt_ty_table_type.
                                DATA(t723) = CAST zcl_lnt_abstract_type( t1 ).
                                t722 ?= t723.
                                t721 = t722.
                                DATA t724 TYPE REF TO zcl_lnt_abstract_type.
                                DATA(t725) = CAST zcl_lnt_ty_table_type( t721 ).
                                t724 = t725->row_type.
                                t720 = t724.
                                t719 = xsdbool( t720 IS BOUND AND t720 IS INSTANCE OF zcl_lnt_any_type ).
                                IF t719 = abap_true.
                                  DATA(t726) = abap_true.
                                  result = t726.
                                  RETURN.
                                ELSE.
                                  DATA t727 TYPE abap_bool.
                                  DATA t728 TYPE abap_bool.
                                  DATA(t729) = CAST zcl_lnt_abstract_type( t2 ).
                                  t728 = xsdbool( t729 IS BOUND AND t729 IS INSTANCE OF zcl_lnt_ty_table_type ).
                                  t727 = t728.
                                  IF t728 = abap_true.
                                    DATA t730 TYPE abap_bool.
                                    DATA t731 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA t732 TYPE REF TO zcl_lnt_ty_table_type.
                                    DATA t733 TYPE REF TO zcl_lnt_ty_table_type.
                                    DATA(t734) = CAST zcl_lnt_abstract_type( t2 ).
                                    t733 ?= t734.
                                    t732 = t733.
                                    DATA t735 TYPE REF TO zcl_lnt_abstract_type.
                                    DATA(t736) = CAST zcl_lnt_ty_table_type( t732 ).
                                    t735 = t736->row_type.
                                    t731 = t735.
                                    t730 = xsdbool( t731 IS BOUND AND t731 IS INSTANCE OF zcl_lnt_any_type ).
                                    t727 = t730.
                                  ENDIF.
                                  IF t727 = abap_true.
                                    DATA(t737) = abap_true.
                                    result = t737.
                                    RETURN.
                                  ELSE.
                                    DATA t738 TYPE abap_bool.
                                    DATA(t739) = CAST zcl_lnt_abstract_type( t2 ).
                                    t738 = xsdbool( t739 IS BOUND AND t739 IS INSTANCE OF zcl_lnt_ty_table_type ).
                                    IF t738 = abap_true.
                                      DATA t740 TYPE string.
                                      DATA t741 TYPE string.
                                      DATA t742 TYPE REF TO zcl_lnt_itable_options.
                                      DATA t743 TYPE REF TO zcl_lnt_ty_table_type.
                                      DATA t744 TYPE REF TO zcl_lnt_ty_table_type.
                                      DATA(t745) = CAST zcl_lnt_abstract_type( t1 ).
                                      t744 ?= t745.
                                      t743 = t744.
                                      DATA t746 TYPE REF TO zcl_lnt_itable_options.
                                      DATA(t747) = CAST zcl_lnt_ty_table_type( t743 ).
                                      t746 = t747->options.
                                      t742 = t746.
                                      t741 = t742->key_type.
                                      t740 = t741.
                                      DATA t748 TYPE string.
                                      DATA t749 TYPE string.
                                      DATA t750 TYPE REF TO zcl_lnt_itable_options.
                                      DATA t751 TYPE REF TO zcl_lnt_ty_table_type.
                                      DATA t752 TYPE REF TO zcl_lnt_ty_table_type.
                                      DATA(t753) = CAST zcl_lnt_abstract_type( t2 ).
                                      t752 ?= t753.
                                      t751 = t752.
                                      DATA t754 TYPE REF TO zcl_lnt_itable_options.
                                      DATA(t755) = CAST zcl_lnt_ty_table_type( t751 ).
                                      t754 = t755->options.
                                      t750 = t754.
                                      t749 = t750->key_type.
                                      t748 = t749.
                                      DATA(t756) = VALUE abap_bool( ).
                                      DATA t757 TYPE abap_bool.
                                      DATA t758 TYPE abap_bool.
                                      DATA(t759) = t740.
                                      DATA(t760) = t748.
                                      t758 = xsdbool( t759 <> t760 ).
                                      t757 = t758.
                                      IF t758 = abap_true.
                                        DATA t761 TYPE abap_bool.
                                        DATA(t762) = t740.
                                        DATA(t763) = |USER|.
                                        t761 = xsdbool( t762 <> t763 ).
                                        t757 = t761.
                                      ENDIF.
                                      t756 = t757.
                                      IF t757 = abap_true.
                                        DATA t764 TYPE abap_bool.
                                        DATA(t765) = t748.
                                        DATA(t766) = |USER|.
                                        t764 = xsdbool( t765 <> t766 ).
                                        t756 = t764.
                                      ENDIF.
                                      IF t756 = abap_true.
                                        DATA(t767) = abap_false.
                                        result = t767.
                                        RETURN.
                                      ENDIF.
                                      DATA(t768) = VALUE abap_bool( ).
                                      DATA t769 TYPE abap_bool.
                                      DATA t770 TYPE abap_bool.
                                      DATA(t771) = t740.
                                      DATA(t772) = |EMPTY|.
                                      t770 = xsdbool( t771 = t772 ).
                                      t769 = t770.
                                      IF t770 = abap_true.
                                        DATA t773 TYPE abap_bool.
                                        DATA(t774) = t748.
                                        DATA(t775) = |EMPTY|.
                                        t773 = xsdbool( t774 <> t775 ).
                                        t769 = t773.
                                      ENDIF.
                                      t768 = t769.
                                      IF t769 = abap_true.
                                        DATA t776 TYPE abap_bool.
                                        DATA t777 TYPE abap_bool.
                                        DATA t778 TYPE REF TO zcl_lnt_abstract_type.
                                        DATA t779 TYPE REF TO zcl_lnt_ty_table_type.
                                        DATA t780 TYPE REF TO zcl_lnt_ty_table_type.
                                        DATA(t781) = CAST zcl_lnt_abstract_type( t2 ).
                                        t780 ?= t781.
                                        t779 = t780.
                                        DATA t782 TYPE REF TO zcl_lnt_abstract_type.
                                        DATA(t783) = CAST zcl_lnt_ty_table_type( t779 ).
                                        t782 = t783->row_type.
                                        t778 = t782.
                                        t777 = xsdbool( t778 IS BOUND AND t778 IS INSTANCE OF zcl_lnt_any_type ).
                                        t776 = xsdbool( t777 = abap_false ).
                                        t768 = t776.
                                      ENDIF.
                                      IF t768 = abap_true.
                                        DATA(t784) = abap_false.
                                        result = t784.
                                        RETURN.
                                      ENDIF.
                                      DATA(t785) = VALUE abap_bool( ).
                                      DATA t786 TYPE REF TO zcl_lnt_abstract_type.
                                      CLEAR t786.
                                      DATA(t787) = abap_true.
                                      IF t787 = abap_true.
                                        DATA t788 TYPE REF TO zcl_lnt_abstract_type.
                                        DATA t789 TYPE REF TO zcl_lnt_ty_table_type.
                                        DATA t790 TYPE REF TO zcl_lnt_ty_table_type.
                                        DATA(t791) = CAST zcl_lnt_abstract_type( t1 ).
                                        t790 ?= t791.
                                        t789 = t790.
                                        DATA t792 TYPE REF TO zcl_lnt_abstract_type.
                                        DATA(t793) = CAST zcl_lnt_ty_table_type( t789 ).
                                        t792 = t793->row_type.
                                        t788 = t792.
                                        t786 = t788.
                                      ELSE.
                                        DATA t794 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t794.
                                        t786 = t794.
                                      ENDIF.
                                      DATA t795 TYPE REF TO zcl_lnt_abstract_type.
                                      CLEAR t795.
                                      DATA(t796) = abap_true.
                                      IF t796 = abap_true.
                                        DATA t797 TYPE REF TO zcl_lnt_abstract_type.
                                        DATA t798 TYPE REF TO zcl_lnt_ty_table_type.
                                        DATA t799 TYPE REF TO zcl_lnt_ty_table_type.
                                        DATA(t800) = CAST zcl_lnt_abstract_type( t2 ).
                                        t799 ?= t800.
                                        t798 = t799.
                                        DATA t801 TYPE REF TO zcl_lnt_abstract_type.
                                        DATA(t802) = CAST zcl_lnt_ty_table_type( t798 ).
                                        t801 = t802->row_type.
                                        t797 = t801.
                                        t795 = t797.
                                      ELSE.
                                        DATA t803 TYPE REF TO zcl_lnt_abstract_type.
                                        CLEAR t803.
                                        t795 = t803.
                                      ENDIF.
                                      DATA t804 TYPE REF TO zcl_lnt_expression_node.
                                      CLEAR t804.
                                      t785 = me->is_assignable_strict( i_source_75cf = t786 i_target_5f8a = t795 i_node = t804 ).
                                      result = t785.
                                      RETURN.
                                    ELSE.
                                      DATA(t805) = VALUE abap_bool( ).
                                      DATA t806 TYPE abap_bool.
                                      DATA t807 TYPE abap_bool.
                                      DATA(t808) = CAST zcl_lnt_abstract_type( t2 ).
                                      t807 = xsdbool( t808 IS BOUND AND t808 IS INSTANCE OF zcl_lnt_unknown_type ).
                                      t806 = t807.
                                      IF t807 = abap_false.
                                        DATA t809 TYPE abap_bool.
                                        DATA(t810) = CAST zcl_lnt_abstract_type( t2 ).
                                        t809 = xsdbool( t810 IS BOUND AND t810 IS INSTANCE OF zcl_lnt_any_type ).
                                        t806 = t809.
                                      ENDIF.
                                      t805 = t806.
                                      IF t806 = abap_false.
                                        DATA t811 TYPE abap_bool.
                                        DATA(t812) = CAST zcl_lnt_abstract_type( t2 ).
                                        t811 = xsdbool( t812 IS BOUND AND t812 IS INSTANCE OF zcl_lnt_void_type ).
                                        t805 = t811.
                                      ENDIF.
                                      IF t805 = abap_true.
                                        DATA(t813) = abap_true.
                                        result = t813.
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
    DATA t814 TYPE abap_bool.
    DATA(t815) = CAST zcl_lnt_abstract_type( t1 ).
    DATA(t816) = CAST zcl_lnt_abstract_type( t2 ).
    t814 = me->is_assignable( i_source_75cf = t815 i_target_5f8a = t816 ).
    result = t814.

  ENDMETHOD.

  METHOD is_assignable_structure_typing.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_target_5f8a ).
    DATA(t3) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/abap/5_syntax/_type_utils.ts:573|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD is_assignable.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_target_5f8a ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t6) = CAST zcl_lnt_abstract_type( t1 ).
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t8.
    t7 = t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = CAST zcl_lnt_abstract_type( t5 ).
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    t4 = t9.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t13) = CAST zcl_lnt_abstract_type( t2 ).
      t12 = t13.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = CAST zcl_lnt_abstract_type( t12 ).
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
    DATA t19 TYPE abap_bool.
    DATA t20 TYPE abap_bool.
    DATA(t21) = CAST zcl_lnt_abstract_type( t1 ).
    t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_utc_long_type ).
    t19 = t20.
    IF t20 = abap_false.
      DATA t22 TYPE abap_bool.
      DATA(t23) = CAST zcl_lnt_abstract_type( t2 ).
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_utc_long_type ).
      t19 = t22.
    ENDIF.
    IF t19 = abap_true.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t26) = CAST zcl_lnt_abstract_type( t1 ).
      t25 = t26.
      DATA t27 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t28) = CAST zcl_lnt_abstract_type( t2 ).
      t27 = t28.
      t24 = me->is_utc_long_assignable( i_source_75cf = t25 i_target_5f8a = t27 ).
      result = t24.
      RETURN.
    ENDIF.
    DATA t29 TYPE abap_bool.
    DATA(t30) = CAST zcl_lnt_abstract_type( t2 ).
    t29 = xsdbool( t30 IS BOUND AND t30 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t29 = abap_true.
      DATA t31 TYPE abap_bool.
      DATA t32 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t33 TYPE REF TO zcl_lnt_ty_table_type.
      DATA(t34) = CAST zcl_lnt_abstract_type( t2 ).
      t33 ?= t34.
      t32 = t33.
      DATA t35 TYPE abap_bool.
      DATA t36 TYPE REF TO zcl_lnt_itable_options.
      DATA(t37) = CAST zcl_lnt_ty_table_type( t32 ).
      t36 = t37->options.
      t35 = t36->with_header.
      t31 = t35.
      IF t31 = abap_true.
        DATA(t38) = VALUE abap_bool( ).
        DATA t39 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t39.
        DATA(t40) = abap_true.
        IF t40 = abap_true.
          DATA t41 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t42) = CAST zcl_lnt_abstract_type( t1 ).
          t41 = t42.
          t39 = t41.
        ELSE.
          DATA t43 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t43.
          t39 = t43.
        ENDIF.
        DATA t44 TYPE REF TO zcl_lnt_abstract_type.
        CLEAR t44.
        DATA(t45) = abap_true.
        IF t45 = abap_true.
          DATA t46 TYPE REF TO zcl_lnt_abstract_type.
          DATA t47 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t48 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t49) = CAST zcl_lnt_abstract_type( t2 ).
          t48 ?= t49.
          t47 = t48.
          DATA t50 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t51) = CAST zcl_lnt_ty_table_type( t47 ).
          t50 = t51->row_type.
          t46 = t50.
          t44 = t46.
        ELSE.
          DATA t52 TYPE REF TO zcl_lnt_abstract_type.
          CLEAR t52.
          t44 = t52.
        ENDIF.
        t38 = me->is_assignable( i_source_75cf = t39 i_target_5f8a = t44 ).
        result = t38.
        RETURN.
      ENDIF.
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE abap_bool( ).
      DATA t55 TYPE abap_bool.
      DATA t56 TYPE abap_bool.
      DATA(t57) = CAST zcl_lnt_abstract_type( t1 ).
      t56 = xsdbool( t57 IS BOUND AND t57 IS INSTANCE OF zcl_lnt_void_type ).
      t55 = t56.
      IF t56 = abap_false.
        DATA t58 TYPE abap_bool.
        DATA(t59) = CAST zcl_lnt_abstract_type( t1 ).
        t58 = xsdbool( t59 IS BOUND AND t59 IS INSTANCE OF zcl_lnt_any_type ).
        t55 = t58.
      ENDIF.
      t54 = t55.
      IF t55 = abap_false.
        DATA t60 TYPE abap_bool.
        DATA(t61) = CAST zcl_lnt_abstract_type( t1 ).
        t60 = xsdbool( t61 IS BOUND AND t61 IS INSTANCE OF zcl_lnt_data_type ).
        t54 = t60.
      ENDIF.
      t53 = t54.
      IF t54 = abap_false.
        DATA t62 TYPE abap_bool.
        DATA(t63) = CAST zcl_lnt_abstract_type( t1 ).
        t62 = xsdbool( t63 IS BOUND AND t63 IS INSTANCE OF zcl_lnt_unknown_type ).
        t53 = t62.
      ENDIF.
      IF t53 = abap_true.
        DATA(t64) = abap_true.
        result = t64.
        RETURN.
      ELSE.
        DATA t65 TYPE abap_bool.
        DATA(t66) = CAST zcl_lnt_abstract_type( t1 ).
        t65 = xsdbool( t66 IS BOUND AND t66 IS INSTANCE OF zcl_lnt_ty_table_type ).
        IF t65 = abap_true.
          DATA t67 TYPE REF TO zcl_lnt_abstract_type.
          DATA t68 TYPE REF TO zcl_lnt_abstract_type.
          DATA t69 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t70 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t71) = CAST zcl_lnt_abstract_type( t2 ).
          t70 ?= t71.
          t69 = t70.
          DATA t72 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t73) = CAST zcl_lnt_ty_table_type( t69 ).
          t72 = t73->row_type.
          t68 = t72.
          t67 = t68.
          DATA t74 TYPE REF TO zcl_lnt_abstract_type.
          DATA t75 TYPE REF TO zcl_lnt_abstract_type.
          DATA t76 TYPE REF TO zcl_lnt_ty_table_type.
          DATA t77 TYPE REF TO zcl_lnt_ty_table_type.
          DATA(t78) = CAST zcl_lnt_abstract_type( t1 ).
          t77 ?= t78.
          t76 = t77.
          DATA t79 TYPE REF TO zcl_lnt_abstract_type.
          DATA(t80) = CAST zcl_lnt_ty_table_type( t76 ).
          t79 = t80->row_type.
          t75 = t79.
          t74 = t75.
          DATA(t81) = VALUE abap_bool( ).
          DATA t82 TYPE abap_bool.
          DATA t83 TYPE abap_bool.
          DATA(t84) = CAST zcl_lnt_abstract_type( t67 ).
          t83 = xsdbool( t84 IS BOUND AND t84 IS INSTANCE OF zcl_lnt_void_type ).
          t82 = t83.
          IF t83 = abap_false.
            DATA t85 TYPE abap_bool.
            DATA(t86) = CAST zcl_lnt_abstract_type( t67 ).
            t85 = xsdbool( t86 IS BOUND AND t86 IS INSTANCE OF zcl_lnt_any_type ).
            t82 = t85.
          ENDIF.
          t81 = t82.
          IF t82 = abap_false.
            DATA t87 TYPE abap_bool.
            DATA(t88) = CAST zcl_lnt_abstract_type( t67 ).
            t87 = xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_unknown_type ).
            t81 = t87.
          ENDIF.
          IF t81 = abap_true.
            DATA(t89) = abap_true.
            result = t89.
            RETURN.
          ELSE.
            DATA(t90) = VALUE abap_bool( ).
            DATA t91 TYPE abap_bool.
            DATA t92 TYPE abap_bool.
            DATA(t93) = CAST zcl_lnt_abstract_type( t74 ).
            t92 = xsdbool( t93 IS BOUND AND t93 IS INSTANCE OF zcl_lnt_void_type ).
            t91 = t92.
            IF t92 = abap_false.
              DATA t94 TYPE abap_bool.
              DATA(t95) = CAST zcl_lnt_abstract_type( t74 ).
              t94 = xsdbool( t95 IS BOUND AND t95 IS INSTANCE OF zcl_lnt_any_type ).
              t91 = t94.
            ENDIF.
            t90 = t91.
            IF t91 = abap_false.
              DATA t96 TYPE abap_bool.
              DATA(t97) = CAST zcl_lnt_abstract_type( t74 ).
              t96 = xsdbool( t97 IS BOUND AND t97 IS INSTANCE OF zcl_lnt_unknown_type ).
              t90 = t96.
            ENDIF.
            IF t90 = abap_true.
              DATA(t98) = abap_true.
              result = t98.
              RETURN.
            ENDIF.
          ENDIF.
          DATA t99 TYPE abap_bool.
          DATA t100 TYPE abap_bool.
          DATA(t101) = CAST zcl_lnt_abstract_type( t67 ).
          t100 = xsdbool( t101 IS BOUND AND t101 IS INSTANCE OF zcl_lnt_structure_type ).
          t99 = t100.
          IF t100 = abap_true.
            DATA t102 TYPE abap_bool.
            DATA t103 TYPE REF TO zcl_lnt_structure_type.
            DATA(t104) = CAST zcl_lnt_abstract_type( t67 ).
            t103 ?= t104.
            t102 = me->structure_contains_string( i_structure = t103 ).
            t99 = t102.
          ENDIF.
          IF t99 = abap_true.
            DATA t105 TYPE abap_bool.
            DATA t106 TYPE abap_bool.
            DATA(t107) = CAST zcl_lnt_abstract_type( t74 ).
            t106 = xsdbool( t107 IS BOUND AND t107 IS INSTANCE OF zcl_lnt_structure_type ).
            t105 = xsdbool( t106 = abap_false ).
            IF t105 = abap_true.
              DATA(t108) = abap_false.
              result = t108.
              RETURN.
            ELSE.
              DATA t109 TYPE abap_bool.
              DATA t110 TYPE abap_bool.
              DATA t111 TYPE abap_bool.
              DATA t112 TYPE REF TO zcl_lnt_structure_type.
              DATA(t113) = CAST zcl_lnt_abstract_type( t74 ).
              t112 ?= t113.
              t111 = me->structure_contains_string( i_structure = t112 ).
              t110 = xsdbool( t111 = abap_false ).
              t109 = t110.
              IF t110 = abap_true.
                DATA t114 TYPE abap_bool.
                DATA t115 TYPE abap_bool.
                DATA t116 TYPE REF TO zcl_lnt_structure_type.
                DATA(t117) = CAST zcl_lnt_abstract_type( t74 ).
                t116 ?= t117.
                t115 = me->structure_contains_void( i_structure = t116 ).
                DATA(t118) = abap_false.
                t114 = xsdbool( t115 = t118 ).
                t109 = t114.
              ENDIF.
              IF t109 = abap_true.
                DATA(t119) = abap_false.
                result = t119.
                RETURN.
              ENDIF.
            ENDIF.
          ELSE.
            DATA t120 TYPE abap_bool.
            DATA t121 TYPE abap_bool.
            DATA(t122) = CAST zcl_lnt_abstract_type( t74 ).
            t121 = xsdbool( t122 IS BOUND AND t122 IS INSTANCE OF zcl_lnt_structure_type ).
            t120 = t121.
            IF t121 = abap_true.
              DATA t123 TYPE abap_bool.
              DATA t124 TYPE REF TO zcl_lnt_structure_type.
              DATA(t125) = CAST zcl_lnt_abstract_type( t74 ).
              t124 ?= t125.
              t123 = me->structure_contains_string( i_structure = t124 ).
              t120 = t123.
            ENDIF.
            IF t120 = abap_true.
              DATA t126 TYPE abap_bool.
              DATA t127 TYPE abap_bool.
              DATA(t128) = CAST zcl_lnt_abstract_type( t67 ).
              t127 = xsdbool( t128 IS BOUND AND t128 IS INSTANCE OF zcl_lnt_structure_type ).
              t126 = xsdbool( t127 = abap_false ).
              IF t126 = abap_true.
                DATA(t129) = abap_false.
                result = t129.
                RETURN.
              ELSE.
                DATA t130 TYPE abap_bool.
                DATA t131 TYPE abap_bool.
                DATA t132 TYPE abap_bool.
                DATA t133 TYPE REF TO zcl_lnt_structure_type.
                DATA(t134) = CAST zcl_lnt_abstract_type( t67 ).
                t133 ?= t134.
                t132 = me->structure_contains_string( i_structure = t133 ).
                t131 = xsdbool( t132 = abap_false ).
                t130 = t131.
                IF t131 = abap_true.
                  DATA t135 TYPE abap_bool.
                  DATA t136 TYPE abap_bool.
                  DATA t137 TYPE REF TO zcl_lnt_structure_type.
                  DATA(t138) = CAST zcl_lnt_abstract_type( t67 ).
                  t137 ?= t138.
                  t136 = me->structure_contains_void( i_structure = t137 ).
                  DATA(t139) = abap_false.
                  t135 = xsdbool( t136 = t139 ).
                  t130 = t135.
                ENDIF.
                IF t130 = abap_true.
                  DATA(t140) = abap_false.
                  result = t140.
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA(t141) = abap_true.
          result = t141.
          RETURN.
        ENDIF.
      ENDIF.
      DATA(t142) = abap_false.
      result = t142.
      RETURN.
    ELSE.
      DATA t143 TYPE abap_bool.
      DATA t144 TYPE abap_bool.
      DATA(t145) = CAST zcl_lnt_abstract_type( t2 ).
      t144 = xsdbool( t145 IS BOUND AND t145 IS INSTANCE OF zcl_lnt_object_reference_type ).
      t143 = t144.
      IF t144 = abap_true.
        DATA t146 TYPE abap_bool.
        DATA(t147) = CAST zcl_lnt_abstract_type( t1 ).
        t146 = xsdbool( t147 IS BOUND AND t147 IS INSTANCE OF zcl_lnt_object_reference_type ).
        t143 = t146.
      ENDIF.
      IF t143 = abap_true.
        DATA t148 TYPE abap_bool.
        DATA t149 TYPE REF TO zcl_lnt_object_reference_type.
        DATA(t150) = CAST zcl_lnt_abstract_type( t1 ).
        t149 ?= t150.
        DATA t151 TYPE REF TO zcl_lnt_object_reference_type.
        DATA(t152) = CAST zcl_lnt_abstract_type( t2 ).
        t151 ?= t152.
        t148 = me->is_oo_assignable( i_source_75cf = t149 i_target_5f8a = t151 ).
        result = t148.
        RETURN.
      ELSE.
        DATA t153 TYPE abap_bool.
        DATA t154 TYPE abap_bool.
        DATA(t155) = CAST zcl_lnt_abstract_type( t2 ).
        t154 = xsdbool( t155 IS BOUND AND t155 IS INSTANCE OF zcl_lnt_object_reference_type ).
        t153 = t154.
        IF t154 = abap_false.
          DATA t156 TYPE abap_bool.
          DATA(t157) = CAST zcl_lnt_abstract_type( t2 ).
          t156 = xsdbool( t157 IS BOUND AND t157 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
          t153 = t156.
        ENDIF.
        IF t153 = abap_true.
          DATA(t158) = VALUE abap_bool( ).
          DATA(t159) = VALUE abap_bool( ).
          DATA(t160) = VALUE abap_bool( ).
          DATA(t161) = VALUE abap_bool( ).
          DATA t162 TYPE abap_bool.
          DATA t163 TYPE abap_bool.
          DATA(t164) = CAST zcl_lnt_abstract_type( t1 ).
          t163 = xsdbool( t164 IS BOUND AND t164 IS INSTANCE OF zcl_lnt_object_reference_type ).
          t162 = t163.
          IF t163 = abap_false.
            DATA t165 TYPE abap_bool.
            DATA(t166) = CAST zcl_lnt_abstract_type( t1 ).
            t165 = xsdbool( t166 IS BOUND AND t166 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
            t162 = t165.
          ENDIF.
          t161 = t162.
          IF t162 = abap_false.
            DATA t167 TYPE abap_bool.
            DATA(t168) = CAST zcl_lnt_abstract_type( t1 ).
            t167 = xsdbool( t168 IS BOUND AND t168 IS INSTANCE OF zcl_lnt_void_type ).
            t161 = t167.
          ENDIF.
          t160 = t161.
          IF t161 = abap_false.
            DATA t169 TYPE abap_bool.
            DATA(t170) = CAST zcl_lnt_abstract_type( t1 ).
            t169 = xsdbool( t170 IS BOUND AND t170 IS INSTANCE OF zcl_lnt_data_type ).
            t160 = t169.
          ENDIF.
          t159 = t160.
          IF t160 = abap_false.
            DATA t171 TYPE abap_bool.
            DATA(t172) = CAST zcl_lnt_abstract_type( t1 ).
            t171 = xsdbool( t172 IS BOUND AND t172 IS INSTANCE OF zcl_lnt_any_type ).
            t159 = t171.
          ENDIF.
          t158 = t159.
          IF t159 = abap_false.
            DATA t173 TYPE abap_bool.
            DATA(t174) = CAST zcl_lnt_abstract_type( t1 ).
            t173 = xsdbool( t174 IS BOUND AND t174 IS INSTANCE OF zcl_lnt_unknown_type ).
            t158 = t173.
          ENDIF.
          IF t158 = abap_true.
            DATA(t175) = abap_true.
            result = t175.
            RETURN.
          ENDIF.
          DATA(t176) = abap_false.
          result = t176.
          RETURN.
        ELSE.
          DATA t177 TYPE abap_bool.
          DATA(t178) = CAST zcl_lnt_abstract_type( t2 ).
          t177 = xsdbool( t178 IS BOUND AND t178 IS INSTANCE OF zcl_lnt_data_reference ).
          IF t177 = abap_true.
            DATA(t179) = VALUE abap_bool( ).
            DATA(t180) = VALUE abap_bool( ).
            DATA(t181) = VALUE abap_bool( ).
            DATA t182 TYPE abap_bool.
            DATA t183 TYPE abap_bool.
            DATA(t184) = CAST zcl_lnt_abstract_type( t1 ).
            t183 = xsdbool( t184 IS BOUND AND t184 IS INSTANCE OF zcl_lnt_data_reference ).
            t182 = t183.
            IF t183 = abap_false.
              DATA t185 TYPE abap_bool.
              DATA(t186) = CAST zcl_lnt_abstract_type( t1 ).
              t185 = xsdbool( t186 IS BOUND AND t186 IS INSTANCE OF zcl_lnt_void_type ).
              t182 = t185.
            ENDIF.
            t181 = t182.
            IF t182 = abap_false.
              DATA t187 TYPE abap_bool.
              DATA(t188) = CAST zcl_lnt_abstract_type( t1 ).
              t187 = xsdbool( t188 IS BOUND AND t188 IS INSTANCE OF zcl_lnt_data_type ).
              t181 = t187.
            ENDIF.
            t180 = t181.
            IF t181 = abap_false.
              DATA t189 TYPE abap_bool.
              DATA(t190) = CAST zcl_lnt_abstract_type( t1 ).
              t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_any_type ).
              t180 = t189.
            ENDIF.
            t179 = t180.
            IF t180 = abap_false.
              DATA t191 TYPE abap_bool.
              DATA(t192) = CAST zcl_lnt_abstract_type( t1 ).
              t191 = xsdbool( t192 IS BOUND AND t192 IS INSTANCE OF zcl_lnt_unknown_type ).
              t179 = t191.
            ENDIF.
            IF t179 = abap_true.
              DATA(t193) = abap_true.
              result = t193.
              RETURN.
            ENDIF.
            DATA(t194) = abap_false.
            result = t194.
            RETURN.
          ELSE.
            DATA t195 TYPE abap_bool.
            DATA(t196) = CAST zcl_lnt_abstract_type( t2 ).
            t195 = xsdbool( t196 IS BOUND AND t196 IS INSTANCE OF zcl_lnt_structure_type ).
            IF t195 = abap_true.
              DATA t197 TYPE abap_bool.
              DATA t198 TYPE abap_bool.
              DATA(t199) = CAST zcl_lnt_abstract_type( t1 ).
              t198 = xsdbool( t199 IS BOUND AND t199 IS INSTANCE OF zcl_lnt_ty_table_type ).
              t197 = t198.
              IF t198 = abap_true.
                DATA t200 TYPE abap_bool.
                DATA t201 TYPE REF TO zcl_lnt_ty_table_type.
                DATA t202 TYPE REF TO zcl_lnt_ty_table_type.
                DATA(t203) = CAST zcl_lnt_abstract_type( t1 ).
                t202 ?= t203.
                t201 = t202.
                DATA t204 TYPE abap_bool.
                DATA t205 TYPE REF TO zcl_lnt_itable_options.
                DATA(t206) = CAST zcl_lnt_ty_table_type( t201 ).
                t205 = t206->options.
                t204 = t205->with_header.
                t200 = t204.
                t197 = t200.
              ENDIF.
              IF t197 = abap_true.
                DATA(t207) = VALUE abap_bool( ).
                DATA t208 TYPE REF TO zcl_lnt_abstract_type.
                CLEAR t208.
                DATA(t209) = abap_true.
                IF t209 = abap_true.
                  DATA t210 TYPE REF TO zcl_lnt_abstract_type.
                  DATA t211 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t212 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t213) = CAST zcl_lnt_abstract_type( t1 ).
                  t212 ?= t213.
                  t211 = t212.
                  DATA t214 TYPE REF TO zcl_lnt_abstract_type.
                  DATA(t215) = CAST zcl_lnt_ty_table_type( t211 ).
                  t214 = t215->row_type.
                  t210 = t214.
                  t208 = t210.
                ELSE.
                  DATA t216 TYPE REF TO zcl_lnt_abstract_type.
                  CLEAR t216.
                  t208 = t216.
                ENDIF.
                DATA t217 TYPE REF TO zcl_lnt_structure_type.
                DATA(t218) = CAST zcl_lnt_abstract_type( t2 ).
                t217 ?= t218.
                t207 = me->is_assignable( i_source_75cf = t208 i_target_5f8a = t217 ).
                result = t207.
                RETURN.
              ELSE.
                DATA(t219) = VALUE abap_bool( ).
                DATA(t220) = VALUE abap_bool( ).
                DATA t221 TYPE abap_bool.
                DATA t222 TYPE abap_bool.
                DATA(t223) = CAST zcl_lnt_abstract_type( t1 ).
                t222 = xsdbool( t223 IS BOUND AND t223 IS INSTANCE OF zcl_lnt_void_type ).
                t221 = t222.
                IF t222 = abap_false.
                  DATA t224 TYPE abap_bool.
                  DATA(t225) = CAST zcl_lnt_abstract_type( t1 ).
                  t224 = xsdbool( t225 IS BOUND AND t225 IS INSTANCE OF zcl_lnt_any_type ).
                  t221 = t224.
                ENDIF.
                t220 = t221.
                IF t221 = abap_false.
                  DATA t226 TYPE abap_bool.
                  DATA(t227) = CAST zcl_lnt_abstract_type( t1 ).
                  t226 = xsdbool( t227 IS BOUND AND t227 IS INSTANCE OF zcl_lnt_data_type ).
                  t220 = t226.
                ENDIF.
                t219 = t220.
                IF t220 = abap_false.
                  DATA t228 TYPE abap_bool.
                  DATA(t229) = CAST zcl_lnt_abstract_type( t1 ).
                  t228 = xsdbool( t229 IS BOUND AND t229 IS INSTANCE OF zcl_lnt_unknown_type ).
                  t219 = t228.
                ENDIF.
                IF t219 = abap_true.
                  DATA(t230) = abap_true.
                  result = t230.
                  RETURN.
                ELSE.
                  DATA t231 TYPE abap_bool.
                  DATA(t232) = CAST zcl_lnt_abstract_type( t1 ).
                  t231 = xsdbool( t232 IS BOUND AND t232 IS INSTANCE OF zcl_lnt_structure_type ).
                  IF t231 = abap_true.
                    DATA t233 TYPE abap_bool.
                    DATA t234 TYPE abap_bool.
                    DATA t235 TYPE REF TO zcl_lnt_structure_type.
                    DATA(t236) = CAST zcl_lnt_abstract_type( t2 ).
                    t235 ?= t236.
                    t234 = me->structure_contains_string( i_structure = t235 ).
                    t233 = t234.
                    DATA t237 TYPE abap_bool.
                    DATA t238 TYPE abap_bool.
                    DATA t239 TYPE REF TO zcl_lnt_structure_type.
                    DATA(t240) = CAST zcl_lnt_abstract_type( t1 ).
                    t239 ?= t240.
                    t238 = me->structure_contains_string( i_structure = t239 ).
                    t237 = t238.
                    DATA t241 TYPE abap_bool.
                    DATA(t242) = t233.
                    t241 = t242.
                    IF t242 = abap_true.
                      DATA t243 TYPE abap_bool.
                      DATA(t244) = t237.
                      t243 = xsdbool( t244 = abap_false ).
                      t241 = t243.
                    ENDIF.
                    IF t241 = abap_true.
                      DATA(t245) = abap_false.
                      result = t245.
                      RETURN.
                    ENDIF.
                    DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t247 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t248 TYPE REF TO zcl_lnt_structure_type.
                    DATA t249 TYPE REF TO zcl_lnt_structure_type.
                    DATA(t250) = CAST zcl_lnt_abstract_type( t2 ).
                    t249 ?= t250.
                    t248 = t249.
                    DATA t251 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t252) = CAST zcl_lnt_structure_type( t248 ).
                    t251 = t252->components.
                    t247 = t251.
                    t246 = t247.
                    DATA t253 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA t255 TYPE REF TO zcl_lnt_structure_type.
                    DATA t256 TYPE REF TO zcl_lnt_structure_type.
                    DATA(t257) = CAST zcl_lnt_abstract_type( t1 ).
                    t256 ?= t257.
                    t255 = t256.
                    DATA t258 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    DATA(t259) = CAST zcl_lnt_structure_type( t255 ).
                    t258 = t259->components.
                    t254 = t258.
                    t253 = t254.
                    DATA t260 TYPE abap_bool.
                    DATA t261 TYPE i.
                    DATA(t262) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
                    t261 = lines( t262->items ).
                    DATA t263 TYPE i.
                    DATA(t264) = CAST zlnt_runtime_arra_c22708faf2e3( t253 ).
                    t263 = lines( t264->items ).
                    t260 = xsdbool( t261 <> t263 ).
                    IF t260 = abap_true.
                      DATA t265 TYPE abap_bool.
                      DATA t266 TYPE abap_bool.
                      DATA(t267) = t233.
                      DATA(t268) = abap_true.
                      t266 = xsdbool( t267 = t268 ).
                      t265 = t266.
                      IF t266 = abap_false.
                        DATA t269 TYPE abap_bool.
                        DATA(t270) = t237.
                        DATA(t271) = abap_true.
                        t269 = xsdbool( t270 = t271 ).
                        t265 = t269.
                      ENDIF.
                      IF t265 = abap_true.
                        DATA(t272) = abap_false.
                        result = t272.
                        RETURN.
                      ENDIF.
                    ENDIF.
                    DATA t273 TYPE i.
                    DATA(t274) = 0.
                    t273 = t274.
                    DO.
                      DATA t275 TYPE abap_bool.
                      DATA(t276) = t273.
                      DATA t277 TYPE i.
                      DATA(t278) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
                      t277 = lines( t278->items ).
                      t275 = xsdbool( t276 < t277 ).
                      IF t275 = abap_false.
                        EXIT.
                      ENDIF.
                      DATA(t279) = VALUE abap_bool( ).
                      DATA t280 TYPE REF TO zcl_lnt_istructure_component.
                      DATA t281 TYPE REF TO zcl_lnt_istructure_component.
                      DATA(t282) = CAST zlnt_runtime_arra_c22708faf2e3( t253 ).
                      DATA(t283) = t273.
                      t283 = t283 + 1.
                      DATA t284 TYPE REF TO object.
                      CLEAR t284.
                      READ TABLE t282->items INDEX t283 INTO t284.
                      t281 ?= t284.
                      t280 = t281.
                      DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      CLEAR t286.
                      t285 = t286.
                      DATA(t287) = VALUE abap_bool( ).
                      DATA(t288) = CAST zcl_lnt_istructure_component( t280 ).
                      IF t288 IS INITIAL.
                        t287 = abap_true.
                      ENDIF.
                      t279 = t287.
                      IF t279 = abap_true.
                        DATA t289 TYPE i.
                        DATA(t290) = t273.
                        DATA(t291) = 1.
                        t289 = t290 + t291.
                        t273 = t289.
                        CONTINUE.
                      ENDIF.
                      DATA t292 TYPE abap_bool.
                      DATA t293 TYPE abap_bool.
                      DATA t294 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t295 TYPE REF TO zcl_lnt_istructure_component.
                      DATA(t296) = CAST zlnt_runtime_arra_c22708faf2e3( t253 ).
                      DATA(t297) = t273.
                      t297 = t297 + 1.
                      DATA t298 TYPE REF TO object.
                      CLEAR t298.
                      READ TABLE t296->items INDEX t297 INTO t298.
                      t295 ?= t298.
                      t294 = t295->type_cba0.
                      t293 = xsdbool( t294 IS BOUND AND t294 IS INSTANCE OF zcl_lnt_string_type ).
                      t292 = t293.
                      IF t293 = abap_true.
                        DATA t299 TYPE abap_bool.
                        DATA t300 TYPE abap_bool.
                        DATA t301 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t302 TYPE REF TO zcl_lnt_istructure_component.
                        DATA(t303) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
                        DATA(t304) = t273.
                        t304 = t304 + 1.
                        DATA t305 TYPE REF TO object.
                        CLEAR t305.
                        READ TABLE t303->items INDEX t304 INTO t305.
                        t302 ?= t305.
                        t301 = t302->type_cba0.
                        t300 = xsdbool( t301 IS BOUND AND t301 IS INSTANCE OF zcl_lnt_string_type ).
                        t299 = xsdbool( t300 = abap_false ).
                        t292 = t299.
                      ENDIF.
                      IF t292 = abap_true.
                        DATA(t306) = abap_false.
                        result = t306.
                        RETURN.
                      ELSE.
                        DATA t307 TYPE abap_bool.
                        DATA t308 TYPE abap_bool.
                        DATA t309 TYPE abap_bool.
                        DATA t310 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t311 TYPE REF TO zcl_lnt_istructure_component.
                        DATA(t312) = CAST zlnt_runtime_arra_c22708faf2e3( t253 ).
                        DATA(t313) = t273.
                        t313 = t313 + 1.
                        DATA t314 TYPE REF TO object.
                        CLEAR t314.
                        READ TABLE t312->items INDEX t313 INTO t314.
                        t311 ?= t314.
                        t310 = t311->type_cba0.
                        t309 = xsdbool( t310 IS BOUND AND t310 IS INSTANCE OF zcl_lnt_string_type ).
                        t308 = xsdbool( t309 = abap_false ).
                        t307 = t308.
                        IF t308 = abap_true.
                          DATA t315 TYPE abap_bool.
                          DATA t316 TYPE REF TO zcl_lnt_abstract_type.
                          DATA t317 TYPE REF TO zcl_lnt_istructure_component.
                          DATA(t318) = CAST zlnt_runtime_arra_c22708faf2e3( t246 ).
                          DATA(t319) = t273.
                          t319 = t319 + 1.
                          DATA t320 TYPE REF TO object.
                          CLEAR t320.
                          READ TABLE t318->items INDEX t319 INTO t320.
                          t317 ?= t320.
                          t316 = t317->type_cba0.
                          t315 = xsdbool( t316 IS BOUND AND t316 IS INSTANCE OF zcl_lnt_string_type ).
                          t307 = t315.
                        ENDIF.
                        IF t307 = abap_true.
                          DATA(t321) = abap_false.
                          result = t321.
                          RETURN.
                        ENDIF.
                      ENDIF.
                      DATA t322 TYPE i.
                      DATA(t323) = t273.
                      DATA(t324) = 1.
                      t322 = t323 + t324.
                      t273 = t322.
                    ENDDO.
                    DATA(t325) = abap_true.
                    result = t325.
                    RETURN.
                  ELSE.
                    DATA t326 TYPE abap_bool.
                    DATA t327 TYPE abap_bool.
                    DATA t328 TYPE REF TO zcl_lnt_structure_type.
                    DATA(t329) = CAST zcl_lnt_abstract_type( t2 ).
                    t328 ?= t329.
                    t327 = t328->contains_void( ).
                    DATA(t330) = abap_true.
                    t326 = xsdbool( t327 = t330 ).
                    IF t326 = abap_true.
                      DATA(t331) = abap_true.
                      result = t331.
                      RETURN.
                    ELSE.
                      DATA t332 TYPE abap_bool.
                      DATA t333 TYPE abap_bool.
                      DATA(t334) = CAST zcl_lnt_abstract_type( t1 ).
                      t333 = xsdbool( t334 IS BOUND AND t334 IS INSTANCE OF zcl_lnt_string_type ).
                      t332 = t333.
                      IF t333 = abap_true.
                        DATA t335 TYPE abap_bool.
                        DATA t336 TYPE REF TO zcl_lnt_structure_type.
                        DATA(t337) = CAST zcl_lnt_abstract_type( t2 ).
                        t336 ?= t337.
                        t335 = me->structure_contains_string( i_structure = t336 ).
                        t332 = t335.
                      ENDIF.
                      IF t332 = abap_true.
                        DATA(t338) = abap_false.
                        result = t338.
                        RETURN.
                      ELSE.
                        DATA t339 TYPE abap_bool.
                        DATA(t340) = CAST zcl_lnt_abstract_type( t1 ).
                        t339 = xsdbool( t340 IS BOUND AND t340 IS INSTANCE OF zcl_lnt_integer_type ).
                        IF t339 = abap_true.
                          DATA(t341) = abap_false.
                          result = t341.
                          RETURN.
                        ELSE.
                          DATA t342 TYPE abap_bool.
                          DATA t343 TYPE abap_bool.
                          DATA t344 TYPE REF TO zcl_lnt_structure_type.
                          DATA(t345) = CAST zcl_lnt_abstract_type( t2 ).
                          t344 ?= t345.
                          t343 = me->is_char_like( i_type_9913 = t344 ).
                          t342 = t343.
                          IF t343 = abap_true.
                            DATA(t346) = VALUE abap_bool( ).
                            DATA t347 TYPE REF TO zcl_lnt_abstract_type.
                            CLEAR t347.
                            DATA(t348) = abap_true.
                            IF t348 = abap_true.
                              DATA t349 TYPE REF TO zcl_lnt_abstract_type.
                              DATA(t350) = CAST zcl_lnt_abstract_type( t1 ).
                              t349 = t350.
                              t347 = t349.
                            ELSE.
                              DATA t351 TYPE REF TO zcl_lnt_abstract_type.
                              CLEAR t351.
                              t347 = t351.
                            ENDIF.
                            t346 = me->is_char_like( i_type_9913 = t347 ).
                            t342 = t346.
                          ENDIF.
                          IF t342 = abap_true.
                            DATA(t352) = abap_true.
                            result = t352.
                            RETURN.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
              DATA(t353) = abap_false.
              result = t353.
              RETURN.
            ELSE.
              DATA(t354) = VALUE abap_bool( ).
              DATA t355 TYPE abap_bool.
              DATA t356 TYPE abap_bool.
              DATA(t357) = CAST zcl_lnt_abstract_type( t2 ).
              t356 = xsdbool( t357 IS BOUND AND t357 IS INSTANCE OF zcl_lnt_integer_type ).
              t355 = t356.
              IF t356 = abap_false.
                DATA t358 TYPE abap_bool.
                DATA(t359) = CAST zcl_lnt_abstract_type( t2 ).
                t358 = xsdbool( t359 IS BOUND AND t359 IS INSTANCE OF zcl_lnt_character_type ).
                t355 = t358.
              ENDIF.
              t354 = t355.
              IF t355 = abap_false.
                DATA t360 TYPE abap_bool.
                DATA(t361) = CAST zcl_lnt_abstract_type( t2 ).
                t360 = xsdbool( t361 IS BOUND AND t361 IS INSTANCE OF zcl_lnt_string_type ).
                t354 = t360.
              ENDIF.
              IF t354 = abap_true.
                DATA t362 TYPE abap_bool.
                DATA t363 TYPE abap_bool.
                DATA(t364) = CAST zcl_lnt_abstract_type( t1 ).
                t363 = xsdbool( t364 IS BOUND AND t364 IS INSTANCE OF zcl_lnt_ty_table_type ).
                t362 = t363.
                IF t363 = abap_true.
                  DATA t365 TYPE abap_bool.
                  DATA t366 TYPE abap_bool.
                  DATA t367 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA t368 TYPE REF TO zcl_lnt_ty_table_type.
                  DATA(t369) = CAST zcl_lnt_abstract_type( t1 ).
                  t368 ?= t369.
                  t367 = t368.
                  DATA t370 TYPE abap_bool.
                  DATA t371 TYPE REF TO zcl_lnt_itable_options.
                  DATA(t372) = CAST zcl_lnt_ty_table_type( t367 ).
                  t371 = t372->options.
                  t370 = t371->with_header.
                  t366 = t370.
                  DATA(t373) = abap_false.
                  t365 = xsdbool( t366 = t373 ).
                  t362 = t365.
                ENDIF.
                IF t362 = abap_true.
                  DATA(t374) = abap_false.
                  result = t374.
                  RETURN.
                ELSE.
                  DATA(t375) = VALUE abap_bool( ).
                  DATA(t376) = VALUE abap_bool( ).
                  DATA t377 TYPE abap_bool.
                  DATA t378 TYPE abap_bool.
                  DATA(t379) = CAST zcl_lnt_abstract_type( t2 ).
                  t378 = xsdbool( t379 IS BOUND AND t379 IS INSTANCE OF zcl_lnt_string_type ).
                  t377 = t378.
                  IF t378 = abap_false.
                    DATA t380 TYPE abap_bool.
                    DATA(t381) = CAST zcl_lnt_abstract_type( t2 ).
                    t380 = xsdbool( t381 IS BOUND AND t381 IS INSTANCE OF zcl_lnt_character_type ).
                    t377 = t380.
                  ENDIF.
                  t376 = t377.
                  IF t377 = abap_true.
                    DATA t382 TYPE abap_bool.
                    DATA(t383) = CAST zcl_lnt_abstract_type( t1 ).
                    t382 = xsdbool( t383 IS BOUND AND t383 IS INSTANCE OF zcl_lnt_structure_type ).
                    t376 = t382.
                  ENDIF.
                  t375 = t376.
                  IF t376 = abap_true.
                    DATA t384 TYPE abap_bool.
                    DATA t385 TYPE REF TO zcl_lnt_structure_type.
                    DATA(t386) = CAST zcl_lnt_abstract_type( t1 ).
                    t385 ?= t386.
                    t384 = me->is_char_like( i_type_9913 = t385 ).
                    t375 = t384.
                  ENDIF.
                  IF t375 = abap_true.
                    DATA t387 TYPE abap_bool.
                    DATA t388 TYPE abap_bool.
                    DATA t389 TYPE REF TO zcl_lnt_structure_type.
                    DATA(t390) = CAST zcl_lnt_abstract_type( t1 ).
                    t389 ?= t390.
                    t388 = me->structure_contains_string( i_structure = t389 ).
                    DATA(t391) = abap_true.
                    t387 = xsdbool( t388 = t391 ).
                    IF t387 = abap_true.
                      DATA(t392) = abap_false.
                      result = t392.
                      RETURN.
                    ENDIF.
                    DATA(t393) = abap_true.
                    result = t393.
                    RETURN.
                  ELSE.
                    DATA t394 TYPE abap_bool.
                    DATA(t395) = CAST zcl_lnt_abstract_type( t1 ).
                    t394 = xsdbool( t395 IS BOUND AND t395 IS INSTANCE OF zcl_lnt_structure_type ).
                    IF t394 = abap_true.
                      DATA t396 TYPE abap_bool.
                      DATA t397 TYPE REF TO zcl_lnt_structure_type.
                      DATA(t398) = CAST zcl_lnt_abstract_type( t1 ).
                      t397 ?= t398.
                      t396 = me->is_char_like_strict( i_type_9913 = t397 ).
                      result = t396.
                      RETURN.
                    ELSE.
                      DATA(t399) = VALUE abap_bool( ).
                      DATA t400 TYPE abap_bool.
                      DATA t401 TYPE abap_bool.
                      DATA(t402) = CAST zcl_lnt_abstract_type( t1 ).
                      t401 = xsdbool( t402 IS BOUND AND t402 IS INSTANCE OF zcl_lnt_data_reference ).
                      t400 = t401.
                      IF t401 = abap_false.
                        DATA t403 TYPE abap_bool.
                        DATA(t404) = CAST zcl_lnt_abstract_type( t1 ).
                        t403 = xsdbool( t404 IS BOUND AND t404 IS INSTANCE OF zcl_lnt_object_reference_type ).
                        t400 = t403.
                      ENDIF.
                      t399 = t400.
                      IF t400 = abap_false.
                        DATA t405 TYPE abap_bool.
                        DATA(t406) = CAST zcl_lnt_abstract_type( t1 ).
                        t405 = xsdbool( t406 IS BOUND AND t406 IS INSTANCE OF zcl_lnt_gnrc_objct_rfrnc_typ ).
                        t399 = t405.
                      ENDIF.
                      IF t399 = abap_true.
                        DATA(t407) = abap_false.
                        result = t407.
                        RETURN.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
                DATA(t408) = abap_true.
                result = t408.
                RETURN.
              ELSE.
                DATA t409 TYPE abap_bool.
                DATA(t410) = CAST zcl_lnt_abstract_type( t2 ).
                t409 = xsdbool( t410 IS BOUND AND t410 IS INSTANCE OF zcl_lnt_simple_type ).
                IF t409 = abap_true.
                  DATA t411 TYPE abap_bool.
                  DATA t412 TYPE abap_bool.
                  DATA(t413) = CAST zcl_lnt_abstract_type( t1 ).
                  t412 = xsdbool( t413 IS BOUND AND t413 IS INSTANCE OF zcl_lnt_object_reference_type ).
                  t411 = t412.
                  IF t412 = abap_false.
                    DATA t414 TYPE abap_bool.
                    DATA(t415) = CAST zcl_lnt_abstract_type( t1 ).
                    t414 = xsdbool( t415 IS BOUND AND t415 IS INSTANCE OF zcl_lnt_ty_table_type ).
                    t411 = t414.
                  ENDIF.
                  IF t411 = abap_true.
                    DATA(t416) = abap_false.
                    result = t416.
                    RETURN.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t417) = abap_true.
    result = t417.

  ENDMETHOD.

  METHOD is_utc_long_assignable.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_source_75cf ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_target_5f8a ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/5_syntax/_type_utils.ts:744|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD is_generic_or_void.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_type_utils.ts:755|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD is_text_like.
    DATA(t1) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/5_syntax/_type_utils.ts:762|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d759_921e617ed2bc.
  ENDMETHOD.
ENDCLASS.
