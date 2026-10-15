* TS: src/abap/nodes/structure_node.ts:9:1 StructureNode
CLASS zcl_lnt_structure_node DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_node CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_8249fcb1.
    INTERFACES zif_lnt_union_1e9858bf.
    INTERFACES zif_lnt_union_734b3529.
    DATA structure TYPE REF TO zif_lnt_structure.
    METHODS constructor IMPORTING i_structure TYPE REF TO zif_lnt_structure.
    METHODS gt_in_sr_ab_nd_st_nd_ts_str_nd RETURNING VALUE(result) TYPE REF TO zif_lnt_structure.
    METHODS find_parent IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_structure_node.
    METHODS concat_tokens RETURNING VALUE(result) TYPE string.
    METHODS find_direct_statement IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_statement_node.
    METHODS find_direct_statements IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_structures IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_first_statement IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_statement_node.
    METHODS find_first_expression IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_expression_node.
    METHODS get_first_statement RETURNING VALUE(result) TYPE REF TO zcl_lnt_statement_node.
    METHODS get_first_token REDEFINITION.
    METHODS get_last_token REDEFINITION.
    METHODS find_all_expressions IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_expressions_recursive IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS f_a_e_m_i_s_a_n_st_nd_ts_st_nd IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_statements IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_statement_nodes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_structures_recursive IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_structures_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_all_structures IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_direct_structure IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_structure_node.
    METHODS find_first_structure IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zcl_lnt_structure_node.
    METHODS get_db65 REDEFINITION.
    METHODS find_all_expressions_multi IMPORTING i_type_9913 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_recursive TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_structure_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_structure.
    super->constructor( ).
    DATA(t2) = t1.
    me->structure = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `structure`.
  ENDMETHOD.

  METHOD gt_in_sr_ab_nd_st_nd_ts_str_nd.
    DATA(t1) = me->structure.
    result = t1.

  ENDMETHOD.

  METHOD find_parent.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t4.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DATA(t7) = t4.
    t6 = t7->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        CLEAR t12.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA(t14) = t8.
      DATA t15 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t15.
      DATA(t16) = t1.
      t15 ?= t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t17.
      IF t14 IS BOUND.
        DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t19.
        DATA t20 TYPE REF TO object.
        CLEAR t20.
        CLEAR t19.
        t20 = t14.
        TRY.
            t17 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS NOT BOUND.
          TRY.
              t19 ?= t14.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t19 IS BOUND.
            t17 = t19->source( ).
          ENDIF.
          IF t17 IS NOT BOUND.
            CREATE OBJECT t17.
            t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t17->oval = t14.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t18.
      IF t15 IS BOUND.
        DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t21.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        CLEAR t21.
        t22 = t15.
        TRY.
            t18 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS NOT BOUND.
          TRY.
              t21 ?= t15.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t21 IS BOUND.
            t18 = t21->source( ).
          ENDIF.
          IF t18 IS NOT BOUND.
            CREATE OBJECT t18.
            t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t18->oval = t15.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t17 IS BOUND.
        t13 = t17->strict_equals( t18 ).
      ELSE.
        t13 = xsdbool( t18 IS NOT BOUND ).
      ENDIF.
      IF t13 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t23.
        DATA(t24) = abap_true.
        IF t24 = abap_true.
          DATA(t25) = me.
          t23 = t25.
        ELSE.
          DATA t26 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t26.
          t23 = t26.
        ENDIF.
        result = t23.
        RETURN.
      ELSE.
        DATA(t27) = VALUE abap_bool( ).
        DATA(t28) = t8.
        t27 = xsdbool( t28 IS BOUND AND t28 IS INSTANCE OF zcl_lnt_statement_node ).
        IF t27 = abap_true.
          CONTINUE.
        ELSE.
          DATA t29 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t29.
          DATA t30 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t30.
          DATA t31 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t31.
          DATA(t32) = t8.
          DATA t33 TYPE REF TO object.
          CLEAR t33.
          t33 = t32.
          t31 ?= t33.
          DATA(t34) = t1.
          t30 = t31->find_parent( i_node = t34 ).
          t29 = t30.
          DATA(t35) = VALUE abap_bool( ).
          DATA(t36) = t29.
          t35 = xsdbool( t36 IS BOUND ).
          IF t35 = abap_true.
            DATA t37 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t37.
            DATA(t38) = abap_true.
            IF t38 = abap_true.
              DATA t39 TYPE REF TO zcl_lnt_structure_node.
              CLEAR t39.
              DATA(t40) = t29.
              t39 = t40.
              t37 = t39.
            ELSE.
              DATA t41 TYPE REF TO zcl_lnt_structure_node.
              CLEAR t41.
              t37 = t41.
            ENDIF.
            result = t37.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t42 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t42.
    result = t42.

  ENDMETHOD.

  METHOD concat_tokens.
    DATA t1 TYPE string.
    DATA(t2) = ||.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = me.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE string.
      DATA(t15) = t1.
      DATA t16 TYPE string.
      DATA(t17) = t9.
      t16 = t17->concat_tokens( ).
      DATA(t18) = strlen( t15 ).
      t14 = |{ t15 }{ t16 }|.
      t1 = t14.
    ENDDO.
    DATA(t19) = t1.
    result = t19.

  ENDMETHOD.

  METHOD find_direct_statement.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t4.
    t6 = t7->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE abap_bool.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t8.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_statement_node ).
      t13 = t14.
      IF t14 = abap_true.
        DATA(t16) = VALUE abap_bool( ).
        DATA t17 TYPE REF TO zif_lnt_statement.
        DATA t18 TYPE REF TO zcl_lnt_statement_node.
        DATA(t19) = t8.
        DATA t20 TYPE REF TO object.
        t20 = t19.
        t18 ?= t20.
        t17 = t18->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        DATA(t21) = t1.
        DATA t22 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t22.
        IF t17 IS BOUND.
          t22 = t17->zlnt_builtin_clas_3f891b097658( ).
          WHILE t22 IS BOUND.
            IF t22 = t21.
              t16 = abap_true.
              EXIT.
            ENDIF.
            t22 = t22->parent.
          ENDWHILE.
        ENDIF.
        t13 = t16.
      ENDIF.
      IF t13 = abap_true.
        DATA t23 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t23.
        DATA(t24) = abap_true.
        IF t24 = abap_true.
          DATA t25 TYPE REF TO zcl_lnt_statement_node.
          DATA(t26) = t8.
          DATA t27 TYPE REF TO object.
          t27 = t26.
          t25 ?= t27.
          t23 = t25.
        ELSE.
          DATA t28 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t28.
          t23 = t28.
        ENDIF.
        result = t23.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t29 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t29.
    result = t29.

  ENDMETHOD.

  METHOD find_direct_statements.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t10.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_statement_node ).
      t15 = t16.
      IF t16 = abap_true.
        DATA(t18) = VALUE abap_bool( ).
        DATA t19 TYPE REF TO zif_lnt_statement.
        DATA t20 TYPE REF TO zcl_lnt_statement_node.
        DATA(t21) = t10.
        DATA t22 TYPE REF TO object.
        t22 = t21.
        t20 ?= t22.
        t19 = t20->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        DATA(t23) = t1.
        DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t24.
        IF t19 IS BOUND.
          t24 = t19->zlnt_builtin_clas_3f891b097658( ).
          WHILE t24 IS BOUND.
            IF t24 = t23.
              t18 = abap_true.
              EXIT.
            ENDIF.
            t24 = t24->parent.
          ENDWHILE.
        ENDIF.
        t15 = t18.
      ENDIF.
      IF t15 = abap_true.
        DATA(t25) = t2.
        DATA t26 TYPE REF TO zcl_lnt_statement_node.
        DATA(t27) = t10.
        DATA t28 TYPE REF TO object.
        t28 = t27.
        t26 ?= t28.
        t25->load( ).
        APPEND t26 TO t25->items.
        t25->save( ).
      ENDIF.
    ENDDO.
    DATA(t29) = t2.
    result = t29.

  ENDMETHOD.

  METHOD find_direct_structures.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t10.
      t16 = xsdbool( t17 IS BOUND AND t17 IS INSTANCE OF zcl_lnt_structure_node ).
      t15 = t16.
      IF t16 = abap_true.
        DATA(t18) = VALUE abap_bool( ).
        DATA t19 TYPE REF TO zif_lnt_structure.
        DATA t20 TYPE REF TO zcl_lnt_structure_node.
        DATA(t21) = t10.
        DATA t22 TYPE REF TO object.
        t22 = t21.
        t20 ?= t22.
        t19 = t20->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        DATA(t23) = t1.
        DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t24.
        IF t19 IS BOUND.
          t24 = t19->zlnt_builtin_clas_3f891b097658( ).
          WHILE t24 IS BOUND.
            IF t24 = t23.
              t18 = abap_true.
              EXIT.
            ENDIF.
            t24 = t24->parent.
          ENDWHILE.
        ENDIF.
        t15 = t18.
      ENDIF.
      IF t15 = abap_true.
        DATA(t25) = t2.
        DATA t26 TYPE REF TO zcl_lnt_structure_node.
        DATA(t27) = t10.
        DATA t28 TYPE REF TO object.
        t28 = t27.
        t26 ?= t28.
        t25->load( ).
        APPEND t26 TO t25->items.
        t25->save( ).
      ENDIF.
    ENDDO.
    DATA(t29) = t2.
    result = t29.

  ENDMETHOD.

  METHOD find_first_statement.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t4.
    t6 = t7->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO object.
      DATA(t15) = t8.
      t14 = t15->get_db65( ).
      DATA(t16) = t1.
      DATA t17 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t17.
      IF t14 IS BOUND.
        DATA t18 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
        t18 ?= t14.
        t17 = t18->zlnt_builtin_clas_3f891b097658( ).
        WHILE t17 IS BOUND.
          IF t17 = t16.
            t13 = abap_true.
            EXIT.
          ENDIF.
          t17 = t17->parent.
        ENDWHILE.
      ENDIF.
      IF t13 = abap_true.
        DATA t19 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t19.
        DATA(t20) = abap_true.
        IF t20 = abap_true.
          DATA t21 TYPE REF TO zcl_lnt_statement_node.
          DATA(t22) = t8.
          t21 ?= t22.
          t19 = t21.
        ELSE.
          DATA t23 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t23.
          t19 = t23.
        ENDIF.
        result = t19.
        RETURN.
      ELSE.
        DATA t24 TYPE abap_bool.
        DATA(t25) = t8.
        t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_statement_node ).
        IF t24 = abap_true.
          CONTINUE.
        ELSE.
          DATA t26 TYPE REF TO zcl_lnt_statement_node.
          DATA t27 TYPE REF TO zcl_lnt_statement_node.
          DATA t28 TYPE REF TO zcl_lnt_structure_node.
          DATA(t29) = t8.
          DATA t30 TYPE REF TO object.
          t30 = t29.
          t28 ?= t30.
          DATA(t31) = t1.
          t27 = t28->find_first_statement( i_type_9913 = t31 ).
          t26 = t27.
          DATA t32 TYPE abap_bool.
          DATA(t33) = t26.
          t32 = xsdbool( t33 IS BOUND ).
          IF t32 = abap_true.
            DATA t34 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t34.
            DATA(t35) = abap_true.
            IF t35 = abap_true.
              DATA t36 TYPE REF TO zcl_lnt_statement_node.
              DATA(t37) = t26.
              t36 = t37.
              t34 = t36.
            ELSE.
              DATA t38 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t38.
              t34 = t38.
            ENDIF.
            result = t34.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t39 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t39.
    result = t39.

  ENDMETHOD.

  METHOD find_first_expression.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = t4.
    t6 = t7->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t2->load( ).
      IF t10 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t2->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t8.
      DATA(t16) = t1.
      t14 = t15->find_first_expression( i_type_9913 = t16 ).
      t13 = t14.
      DATA t17 TYPE abap_bool.
      DATA(t18) = t13.
      t17 = xsdbool( t18 IS BOUND ).
      IF t17 = abap_true.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t19.
        DATA(t20) = abap_true.
        IF t20 = abap_true.
          DATA t21 TYPE REF TO zcl_lnt_expression_node.
          DATA(t22) = t13.
          t21 = t22.
          t19 = t21.
        ELSE.
          DATA t23 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t23.
          t19 = t23.
        ENDIF.
        result = t19.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t24 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t24.
    result = t24.

  ENDMETHOD.

  METHOD get_first_statement.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t4) = me.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t3.
    t5 = t6->children.
    t2 = t5.
    t1 ?= t2.
    DATA t7 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    DATA(t9) = VALUE i( ).
    DO.
      t1->load( ).
      IF t9 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t1->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t7.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t12 = abap_true.
        DATA t14 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t14.
        DATA(t15) = abap_true.
        IF t15 = abap_true.
          DATA t16 TYPE REF TO zcl_lnt_statement_node.
          DATA(t17) = t7.
          DATA t18 TYPE REF TO object.
          t18 = t17.
          t16 ?= t18.
          t14 = t16.
        ELSE.
          DATA t19 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t19.
          t14 = t19.
        ENDIF.
        result = t14.
        RETURN.
      ENDIF.
      DATA t20 TYPE REF TO zcl_lnt_statement_node.
      DATA t21 TYPE REF TO zcl_lnt_structure_node.
      DATA(t22) = t7.
      DATA t23 TYPE REF TO object.
      t23 = t22.
      t21 ?= t23.
      t20 = t21->get_first_statement( ).
      result = t20.
      RETURN.
    ENDDO.
    DATA t24 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t24.
    result = t24.

  ENDMETHOD.

  METHOD get_first_token.
    DATA t1 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t4.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_node.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_node.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      DATA(t10) = t4.
      t9 = t10->children.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      t9->load( ).
      CLEAR t11.
      READ TABLE t9->items INDEX 1 INTO t11.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t8.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t11.
        DATA t13 TYPE REF TO object.
        CLEAR t13.
        t13 = t12->as_ref( ).
        t8 ?= t13.
      ELSE.
        t8 ?= t11.
      ENDIF.
      t6 = t8.
    ELSE.
      DATA t14 TYPE REF TO zif_lnt_node.
      CLEAR t14.
      t6 = t14.
    ENDIF.
    t3 = t6.
    t2 ?= t3.
    t1 = t2.
    DATA(t15) = VALUE abap_bool( ).
    DATA t16 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t16.
    DATA(t17) = t1.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    t18 = t19.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t16.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t20 = xsdbool( t21 = abap_false ).
    t15 = t20.
    IF t15 = abap_true.
      DATA t23 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t23.
      DATA t24 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t24.
      DATA(t25) = t1.
      t24 = t25.
      t23 = t24->get_first_token( ).
      result = t23.
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t26.
    DATA t27 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t28.
    DATA(t29) = abap_true.
    IF t29 = abap_true.
      DATA(t30) = |StructureNode, getFirstToken, unexpected type|.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t30.
      t28 = t31.
    ELSE.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      t28 = t32.
    ENDIF.
    t27 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t28 ).
    t26 = NEW #( ).
    t26->payload = t27.
    CLEAR t26->source_value.
    IF t27 IS BOUND.
      DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t33.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      CLEAR t33.
      t34 = t27.
      TRY.
          t26->source_value ?= t34.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26->source_value IS NOT BOUND.
        TRY.
            t33 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t33 IS BOUND.
          t26->source_value = t33->source( ).
        ENDIF.
        IF t26->source_value IS NOT BOUND.
          CREATE OBJECT t26->source_value.
          t26->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->source_value->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t26.
  ENDMETHOD.

  METHOD get_last_token.
    DATA t1 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    CLEAR t4.
    DATA(t5) = me.
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_node.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_node.
      CLEAR t8.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      DATA(t10) = t4.
      t9 = t10->children.
      DATA(t11) = VALUE i( ).
      DATA(t12) = VALUE i( ).
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t13.
      DATA(t14) = t4.
      t13 = t14->children.
      t13->load( ).
      t12 = lines( t13->items ).
      DATA(t15) = 1.
      t11 = t12 - t15.
      t11 = t11 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      t9->load( ).
      CLEAR t16.
      READ TABLE t9->items INDEX t11 INTO t16.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      CLEAR t8.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t17 ?= t16.
        DATA t18 TYPE REF TO object.
        CLEAR t18.
        t18 = t17->as_ref( ).
        t8 ?= t18.
      ELSE.
        t8 ?= t16.
      ENDIF.
      t6 = t8.
    ELSE.
      DATA t19 TYPE REF TO zif_lnt_node.
      CLEAR t19.
      t6 = t19.
    ENDIF.
    t3 = t6.
    t2 ?= t3.
    t1 = t2.
    DATA(t20) = VALUE abap_bool( ).
    DATA t21 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t21.
    DATA(t22) = t1.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = t21.
    IF t27 IS INITIAL.
      t26 = abap_true.
    ENDIF.
    t25 = xsdbool( t26 = abap_false ).
    t20 = t25.
    IF t20 = abap_true.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t28.
      DATA t29 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t29.
      DATA(t30) = t1.
      t29 = t30.
      t28 = t29->get_last_token( ).
      result = t28.
      RETURN.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t31.
    DATA t32 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t32.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    DATA(t34) = abap_true.
    IF t34 = abap_true.
      DATA(t35) = |StructureNode, getLastToken, unexpected type|.
      DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t36->has = abap_true.
      t36->value = t35.
      t33 = t36.
    ELSE.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t37.
      t33 = t37.
    ENDIF.
    t32 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t33 ).
    t31 = NEW #( ).
    t31->payload = t32.
    CLEAR t31->source_value.
    IF t32 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      CLEAR t38.
      t39 = t32.
      TRY.
          t31->source_value ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31->source_value IS NOT BOUND.
        TRY.
            t38 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t31->source_value = t38->source( ).
        ENDIF.
        IF t31->source_value IS NOT BOUND.
          CREATE OBJECT t31->source_value.
          t31->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->source_value->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t31.
  ENDMETHOD.

  METHOD find_all_expressions.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA(t15) = VALUE i( ).
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = t10.
      DATA(t18) = t1.
      t16 = t17->find_all_expressions( i_type_9913 = t18 ).
      DATA t19 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t19.
      DATA t20 TYPE REF TO object.
      CLEAR t20.
      DATA(t21) = VALUE i( ).
      DO.
        t16->load( ).
        IF t21 >= lines( t16->items ).
          EXIT.
        ENDIF.
        CLEAR t20.
        READ TABLE t16->items INDEX t21 + 1 INTO t20.
        t21 = t21 + 1.
        DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t22.
        CLEAR t19.
        IF t20 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t22 ?= t20.
          DATA t23 TYPE REF TO object.
          t23 = t22->as_ref( ).
          t19 ?= t23.
        ELSE.
          t19 ?= t20.
        ENDIF.
        DATA(t24) = t2.
        DATA(t25) = t19.
        t24->load( ).
        APPEND t25 TO t24->items.
        t24->save( ).
      ENDDO.
      DATA t26 TYPE i.
      DATA(t27) = t2.
      t27->load( ).
      t26 = lines( t27->items ).
      t15 = t26.
    ENDDO.
    DATA(t28) = t2.
    result = t28.

  ENDMETHOD.

  METHOD find_all_expressions_recursive.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t10.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t15 = abap_true.
        DATA(t17) = VALUE i( ).
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t19 TYPE REF TO zcl_lnt_statement_node.
        DATA(t20) = t10.
        DATA t21 TYPE REF TO object.
        t21 = t20.
        t19 ?= t21.
        DATA(t22) = t1.
        t18 = t19->find_all_expressions_recursive( i_type_9913 = t22 ).
        DATA t23 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        DATA(t25) = VALUE i( ).
        DO.
          t18->load( ).
          IF t25 >= lines( t18->items ).
            EXIT.
          ENDIF.
          CLEAR t24.
          READ TABLE t18->items INDEX t25 + 1 INTO t24.
          t25 = t25 + 1.
          DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t26.
          CLEAR t23.
          IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t26 ?= t24.
            DATA t27 TYPE REF TO object.
            t27 = t26->as_ref( ).
            t23 ?= t27.
          ELSE.
            t23 ?= t24.
          ENDIF.
          DATA(t28) = t2.
          DATA(t29) = t23.
          t28->load( ).
          APPEND t29 TO t28->items.
          t28->save( ).
        ENDDO.
        DATA t30 TYPE i.
        DATA(t31) = t2.
        t31->load( ).
        t30 = lines( t31->items ).
        t17 = t30.
      ELSE.
        DATA(t32) = VALUE i( ).
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zcl_lnt_structure_node.
        DATA(t35) = t10.
        DATA t36 TYPE REF TO object.
        t36 = t35.
        t34 ?= t36.
        DATA(t37) = t1.
        t33 = t34->find_all_expressions_recursive( i_type_9913 = t37 ).
        DATA t38 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t38.
        DATA t39 TYPE REF TO object.
        CLEAR t39.
        DATA(t40) = VALUE i( ).
        DO.
          t33->load( ).
          IF t40 >= lines( t33->items ).
            EXIT.
          ENDIF.
          CLEAR t39.
          READ TABLE t33->items INDEX t40 + 1 INTO t39.
          t40 = t40 + 1.
          DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t41.
          CLEAR t38.
          IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t41 ?= t39.
            DATA t42 TYPE REF TO object.
            t42 = t41->as_ref( ).
            t38 ?= t42.
          ELSE.
            t38 ?= t39.
          ENDIF.
          DATA(t43) = t2.
          DATA(t44) = t38.
          t43->load( ).
          APPEND t44 TO t43->items.
          t43->save( ).
        ENDDO.
        DATA t45 TYPE i.
        DATA(t46) = t2.
        t46->load( ).
        t45 = lines( t46->items ).
        t32 = t45.
      ENDIF.
    ENDDO.
    DATA(t47) = t2.
    result = t47.

  ENDMETHOD.

  METHOD f_a_e_m_i_s_a_n_st_nd_ts_st_nd.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA(t15) = VALUE i( ).
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = t10.
      DATA(t18) = t1.
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      t16 = t17->find_all_expressions_multi( i_type_9913 = t18 i_recursive = t19 ).
      DATA t20 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      DATA(t22) = VALUE i( ).
      DO.
        t16->load( ).
        IF t22 >= lines( t16->items ).
          EXIT.
        ENDIF.
        CLEAR t21.
        READ TABLE t16->items INDEX t22 + 1 INTO t21.
        t22 = t22 + 1.
        DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t23.
        CLEAR t20.
        IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t23 ?= t21.
          DATA t24 TYPE REF TO object.
          t24 = t23->as_ref( ).
          t20 ?= t24.
        ELSE.
          t20 ?= t21.
        ENDIF.
        DATA(t25) = t2.
        DATA(t26) = t20.
        t25->load( ).
        APPEND t26 TO t25->items.
        t25->save( ).
      ENDDO.
      DATA t27 TYPE i.
      DATA(t28) = t2.
      t28->load( ).
      t27 = lines( t28->items ).
      t15 = t27.
    ENDDO.
    DATA(t29) = t2.
    result = t29.

  ENDMETHOD.

  METHOD find_all_statements.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t10.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_structure_node ).
      IF t15 = abap_true.
        DATA(t17) = VALUE i( ).
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t19 TYPE REF TO zcl_lnt_structure_node.
        DATA(t20) = t10.
        DATA t21 TYPE REF TO object.
        t21 = t20.
        t19 ?= t21.
        DATA(t22) = t1.
        t18 = t19->find_all_statements( i_type_9913 = t22 ).
        DATA t23 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t23.
        DATA t24 TYPE REF TO object.
        CLEAR t24.
        DATA(t25) = VALUE i( ).
        DO.
          t18->load( ).
          IF t25 >= lines( t18->items ).
            EXIT.
          ENDIF.
          CLEAR t24.
          READ TABLE t18->items INDEX t25 + 1 INTO t24.
          t25 = t25 + 1.
          DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t26.
          CLEAR t23.
          IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t26 ?= t24.
            DATA t27 TYPE REF TO object.
            t27 = t26->as_ref( ).
            t23 ?= t27.
          ELSE.
            t23 ?= t24.
          ENDIF.
          DATA(t28) = t2.
          DATA(t29) = t23.
          t28->load( ).
          APPEND t29 TO t28->items.
          t28->save( ).
        ENDDO.
        DATA t30 TYPE i.
        DATA(t31) = t2.
        t31->load( ).
        t30 = lines( t31->items ).
        t17 = t30.
      ELSE.
        DATA(t32) = VALUE abap_bool( ).
        DATA t33 TYPE REF TO zif_lnt_statement.
        DATA t34 TYPE REF TO zcl_lnt_statement_node.
        DATA(t35) = t10.
        DATA t36 TYPE REF TO object.
        t36 = t35.
        t34 ?= t36.
        t33 = t34->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        DATA(t37) = t1.
        DATA t38 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t38.
        IF t33 IS BOUND.
          t38 = t33->zlnt_builtin_clas_3f891b097658( ).
          WHILE t38 IS BOUND.
            IF t38 = t37.
              t32 = abap_true.
              EXIT.
            ENDIF.
            t38 = t38->parent.
          ENDWHILE.
        ENDIF.
        IF t32 = abap_true.
          DATA(t39) = t2.
          DATA t40 TYPE REF TO zcl_lnt_statement_node.
          DATA(t41) = t10.
          DATA t42 TYPE REF TO object.
          t42 = t41.
          t40 ?= t42.
          t39->load( ).
          APPEND t40 TO t39->items.
          t39->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t43) = t2.
    result = t43.

  ENDMETHOD.

  METHOD find_all_statement_nodes.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    t1 = t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t6) = me.
    t5 = t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = t5.
    t7 = t8->children.
    t4 = t7.
    t3 ?= t4.
    DATA t9 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t9.
    DATA t10 TYPE REF TO object.
    CLEAR t10.
    DATA(t11) = VALUE i( ).
    DO.
      t3->load( ).
      IF t11 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t10.
      READ TABLE t3->items INDEX t11 + 1 INTO t10.
      t11 = t11 + 1.
      DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t12.
      CLEAR t9.
      IF t10 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t12 ?= t10.
        DATA t13 TYPE REF TO object.
        t13 = t12->as_ref( ).
        t9 ?= t13.
      ELSE.
        t9 ?= t10.
      ENDIF.
      DATA t14 TYPE abap_bool.
      DATA(t15) = t9.
      t14 = xsdbool( t15 IS BOUND AND t15 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t14 = abap_true.
        DATA(t16) = t1.
        DATA t17 TYPE REF TO zcl_lnt_statement_node.
        DATA(t18) = t9.
        DATA t19 TYPE REF TO object.
        t19 = t18.
        t17 ?= t19.
        t16->load( ).
        APPEND t17 TO t16->items.
        t16->save( ).
      ELSE.
        DATA(t20) = VALUE i( ).
        DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t22 TYPE REF TO zcl_lnt_structure_node.
        DATA(t23) = t9.
        DATA t24 TYPE REF TO object.
        t24 = t23.
        t22 ?= t24.
        t21 = t22->find_all_statement_nodes( ).
        DATA t25 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t25.
        DATA t26 TYPE REF TO object.
        CLEAR t26.
        DATA(t27) = VALUE i( ).
        DO.
          t21->load( ).
          IF t27 >= lines( t21->items ).
            EXIT.
          ENDIF.
          CLEAR t26.
          READ TABLE t21->items INDEX t27 + 1 INTO t26.
          t27 = t27 + 1.
          DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t28.
          CLEAR t25.
          IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t28 ?= t26.
            DATA t29 TYPE REF TO object.
            t29 = t28->as_ref( ).
            t25 ?= t29.
          ELSE.
            t25 ?= t26.
          ENDIF.
          DATA(t30) = t1.
          DATA(t31) = t25.
          t30->load( ).
          APPEND t31 TO t30->items.
          t30->save( ).
        ENDDO.
        DATA t32 TYPE i.
        DATA(t33) = t1.
        t33->load( ).
        t32 = lines( t33->items ).
        t20 = t32.
      ENDIF.
    ENDDO.
    DATA(t34) = t1.
    result = t34.

  ENDMETHOD.

  METHOD find_all_structures_recursive.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = me.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t6.
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    DATA(t12) = VALUE i( ).
    DO.
      t4->load( ).
      IF t12 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t4->items INDEX t12 + 1 INTO t11.
      t12 = t12 + 1.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      CLEAR t10.
      IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t13 ?= t11.
        DATA t14 TYPE REF TO object.
        t14 = t13->as_ref( ).
        t10 ?= t14.
      ELSE.
        t10 ?= t11.
      ENDIF.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t10.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t15 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t17) = VALUE abap_bool( ).
        DATA t18 TYPE REF TO zif_lnt_structure.
        DATA t19 TYPE REF TO zcl_lnt_structure_node.
        DATA(t20) = t10.
        DATA t21 TYPE REF TO object.
        t21 = t20.
        t19 ?= t21.
        t18 = t19->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        DATA(t22) = t1.
        DATA t23 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t23.
        IF t18 IS BOUND.
          t23 = t18->zlnt_builtin_clas_3f891b097658( ).
          WHILE t23 IS BOUND.
            IF t23 = t22.
              t17 = abap_true.
              EXIT.
            ENDIF.
            t23 = t23->parent.
          ENDWHILE.
        ENDIF.
        IF t17 = abap_true.
          DATA(t24) = t2.
          DATA t25 TYPE REF TO zcl_lnt_structure_node.
          DATA(t26) = t10.
          DATA t27 TYPE REF TO object.
          t27 = t26.
          t25 ?= t27.
          t24->load( ).
          APPEND t25 TO t24->items.
          t24->save( ).
        ENDIF.
      ENDIF.
      DATA(t28) = VALUE i( ).
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zcl_lnt_structure_node.
      DATA(t31) = t10.
      DATA t32 TYPE REF TO object.
      t32 = t31.
      t30 ?= t32.
      DATA(t33) = t1.
      t29 = t30->find_all_structures_recursive( i_type_9913 = t33 ).
      DATA t34 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      DATA(t36) = VALUE i( ).
      DO.
        t29->load( ).
        IF t36 >= lines( t29->items ).
          EXIT.
        ENDIF.
        CLEAR t35.
        READ TABLE t29->items INDEX t36 + 1 INTO t35.
        t36 = t36 + 1.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t34.
        IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t35.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t34 ?= t38.
        ELSE.
          t34 ?= t35.
        ENDIF.
        DATA(t39) = t2.
        DATA(t40) = t34.
        t39->load( ).
        APPEND t40 TO t39->items.
        t39->save( ).
      ENDDO.
      DATA t41 TYPE i.
      DATA(t42) = t2.
      t42->load( ).
      t41 = lines( t42->items ).
      t28 = t41.
    ENDDO.
    DATA(t43) = t2.
    result = t43.

  ENDMETHOD.

  METHOD find_all_structures_multi.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    DATA(t7) = VALUE i( ).
    DO.
      t4->load( ).
      IF t7 >= lines( t4->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t4->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        t5 = t8->as_classvalue( ).
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
      DATA(t11) = t5.
      DATA t12 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t12.
      IF t10 IS BOUND.
        t12 = t10->zlnt_builtin_clas_3f891b097658( ).
        WHILE t12 IS BOUND.
          IF t12 = t11.
            t9 = abap_true.
            EXIT.
          ENDIF.
          t12 = t12->parent.
        ENDWHILE.
      ENDIF.
      IF t9 = abap_true.
        DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t15.
        t14 = t15.
        DATA(t16) = t14.
        DATA(t17) = me.
        t16->load( ).
        APPEND t17 TO t16->items.
        t16->save( ).
        DATA(t18) = t14.
        t13 = t18.
        result = t13.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t22) = me.
    t21 = t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = t21.
    t23 = t24->children.
    t20 = t23.
    t19 ?= t20.
    DATA t25 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t25.
    DATA t26 TYPE REF TO object.
    CLEAR t26.
    DATA(t27) = VALUE i( ).
    DO.
      t19->load( ).
      IF t27 >= lines( t19->items ).
        EXIT.
      ENDIF.
      CLEAR t26.
      READ TABLE t19->items INDEX t27 + 1 INTO t26.
      t27 = t27 + 1.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t28.
      CLEAR t25.
      IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t28 ?= t26.
        DATA t29 TYPE REF TO object.
        t29 = t28->as_ref( ).
        t25 ?= t29.
      ELSE.
        t25 ?= t26.
      ENDIF.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t25.
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t30 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t32 TYPE abap_bool.
      DATA(t33) = abap_false.
      t32 = t33.
      DATA(t34) = t1.
      DATA t35 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      DATA(t37) = VALUE i( ).
      DO.
        t34->load( ).
        IF t37 >= lines( t34->items ).
          EXIT.
        ENDIF.
        CLEAR t36.
        READ TABLE t34->items INDEX t37 + 1 INTO t36.
        t37 = t37 + 1.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t35.
        IF t36 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t36.
          t35 = t38->as_classvalue( ).
        ELSE.
          t35 ?= t36.
        ENDIF.
        DATA(t39) = VALUE abap_bool( ).
        DATA(t40) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
        DATA(t41) = t35.
        DATA t42 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t42.
        IF t40 IS BOUND.
          t42 = t40->zlnt_builtin_clas_3f891b097658( ).
          WHILE t42 IS BOUND.
            IF t42 = t41.
              t39 = abap_true.
              EXIT.
            ENDIF.
            t42 = t42->parent.
          ENDWHILE.
        ENDIF.
        IF t39 = abap_true.
          DATA(t43) = t2.
          DATA t44 TYPE REF TO zcl_lnt_structure_node.
          DATA(t45) = t25.
          DATA t46 TYPE REF TO object.
          t46 = t45.
          t44 ?= t46.
          t43->load( ).
          APPEND t44 TO t43->items.
          t43->save( ).
          DATA(t47) = abap_true.
          t32 = t47.
        ENDIF.
      ENDDO.
      DATA t48 TYPE abap_bool.
      DATA(t49) = t32.
      DATA(t50) = abap_false.
      t48 = xsdbool( t49 = t50 ).
      IF t48 = abap_true.
        DATA(t51) = VALUE i( ).
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t53 TYPE REF TO zcl_lnt_structure_node.
        DATA(t54) = t25.
        DATA t55 TYPE REF TO object.
        t55 = t54.
        t53 ?= t55.
        DATA(t56) = t1.
        t52 = t53->find_all_structures_multi( i_type_9913 = t56 ).
        DATA t57 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t57.
        DATA t58 TYPE REF TO object.
        CLEAR t58.
        DATA(t59) = VALUE i( ).
        DO.
          t52->load( ).
          IF t59 >= lines( t52->items ).
            EXIT.
          ENDIF.
          CLEAR t58.
          READ TABLE t52->items INDEX t59 + 1 INTO t58.
          t59 = t59 + 1.
          DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t60.
          CLEAR t57.
          IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t60 ?= t58.
            DATA t61 TYPE REF TO object.
            t61 = t60->as_ref( ).
            t57 ?= t61.
          ELSE.
            t57 ?= t58.
          ENDIF.
          DATA(t62) = t2.
          DATA(t63) = t57.
          t62->load( ).
          APPEND t63 TO t62->items.
          t62->save( ).
        ENDDO.
        DATA t64 TYPE i.
        DATA(t65) = t2.
        t65->load( ).
        t64 = lines( t65->items ).
        t51 = t64.
      ENDIF.
    ENDDO.
    DATA(t66) = t2.
    result = t66.

  ENDMETHOD.

  METHOD find_all_structures.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    DATA(t6) = t1.
    DATA t7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t7.
    IF t5 IS BOUND.
      t7 = t5->zlnt_builtin_clas_3f891b097658( ).
      WHILE t7 IS BOUND.
        IF t7 = t6.
          t4 = abap_true.
          EXIT.
        ENDIF.
        t7 = t7->parent.
      ENDWHILE.
    ENDIF.
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      t9 = t10.
      DATA(t11) = t9.
      DATA(t12) = me.
      t11->load( ).
      APPEND t12 TO t11->items.
      t11->save( ).
      DATA(t13) = t9.
      t8 = t13.
      result = t8.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t17) = me.
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = t16.
    t18 = t19->children.
    t15 = t18.
    t14 ?= t15.
    DATA t20 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    DATA(t22) = VALUE i( ).
    DO.
      t14->load( ).
      IF t22 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t14->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        DATA t24 TYPE REF TO object.
        t24 = t23->as_ref( ).
        t20 ?= t24.
      ELSE.
        t20 ?= t21.
      ENDIF.
      DATA t25 TYPE abap_bool.
      DATA(t26) = t20.
      t25 = xsdbool( t26 IS BOUND AND t26 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t25 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t27) = VALUE abap_bool( ).
        DATA t28 TYPE REF TO zif_lnt_structure.
        DATA t29 TYPE REF TO zcl_lnt_structure_node.
        DATA(t30) = t20.
        DATA t31 TYPE REF TO object.
        t31 = t30.
        t29 ?= t31.
        t28 = t29->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        DATA(t32) = t1.
        DATA t33 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t33.
        IF t28 IS BOUND.
          t33 = t28->zlnt_builtin_clas_3f891b097658( ).
          WHILE t33 IS BOUND.
            IF t33 = t32.
              t27 = abap_true.
              EXIT.
            ENDIF.
            t33 = t33->parent.
          ENDWHILE.
        ENDIF.
        IF t27 = abap_true.
          DATA(t34) = t2.
          DATA t35 TYPE REF TO zcl_lnt_structure_node.
          DATA(t36) = t20.
          DATA t37 TYPE REF TO object.
          t37 = t36.
          t35 ?= t37.
          t34->load( ).
          APPEND t35 TO t34->items.
          t34->save( ).
        ELSE.
          DATA(t38) = VALUE i( ).
          DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t40 TYPE REF TO zcl_lnt_structure_node.
          DATA(t41) = t20.
          DATA t42 TYPE REF TO object.
          t42 = t41.
          t40 ?= t42.
          DATA(t43) = t1.
          t39 = t40->find_all_structures( i_type_9913 = t43 ).
          DATA t44 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t44.
          DATA t45 TYPE REF TO object.
          CLEAR t45.
          DATA(t46) = VALUE i( ).
          DO.
            t39->load( ).
            IF t46 >= lines( t39->items ).
              EXIT.
            ENDIF.
            CLEAR t45.
            READ TABLE t39->items INDEX t46 + 1 INTO t45.
            t46 = t46 + 1.
            DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t47.
            CLEAR t44.
            IF t45 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t47 ?= t45.
              DATA t48 TYPE REF TO object.
              t48 = t47->as_ref( ).
              t44 ?= t48.
            ELSE.
              t44 ?= t45.
            ENDIF.
            DATA(t49) = t2.
            DATA(t50) = t44.
            t49->load( ).
            APPEND t50 TO t49->items.
            t49->save( ).
          ENDDO.
          DATA t51 TYPE i.
          DATA(t52) = t2.
          t52->load( ).
          t51 = lines( t52->items ).
          t38 = t51.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t53) = t2.
    result = t53.

  ENDMETHOD.

  METHOD find_direct_structure.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t5.
    IF t3 IS BOUND.
      t5 = t3->zlnt_builtin_clas_3f891b097658( ).
      WHILE t5 IS BOUND.
        IF t5 = t4.
          t2 = abap_true.
          EXIT.
        ENDIF.
        t5 = t5->parent.
      ENDWHILE.
    ENDIF.
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = me.
        t6 = t8.
      ELSE.
        DATA t9 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t9.
        t6 = t9.
      ENDIF.
      result = t6.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t13) = me.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t12.
    t14 = t15->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t10->load( ).
      IF t18 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t10->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO object.
      DATA(t23) = t16.
      t22 = t23->get_db65( ).
      DATA(t24) = t1.
      DATA t25 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t25.
      IF t22 IS BOUND.
        DATA t26 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
        t26 ?= t22.
        t25 = t26->zlnt_builtin_clas_3f891b097658( ).
        WHILE t25 IS BOUND.
          IF t25 = t24.
            t21 = abap_true.
            EXIT.
          ENDIF.
          t25 = t25->parent.
        ENDWHILE.
      ENDIF.
      IF t21 = abap_true.
        DATA t27 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t27.
        DATA(t28) = abap_true.
        IF t28 = abap_true.
          DATA t29 TYPE REF TO zcl_lnt_structure_node.
          DATA(t30) = t16.
          t29 ?= t30.
          t27 = t29.
        ELSE.
          DATA t31 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t31.
          t27 = t31.
        ENDIF.
        result = t27.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t32 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t32.
    result = t32.

  ENDMETHOD.

  METHOD find_first_structure.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    CLEAR t5.
    IF t3 IS BOUND.
      t5 = t3->zlnt_builtin_clas_3f891b097658( ).
      WHILE t5 IS BOUND.
        IF t5 = t4.
          t2 = abap_true.
          EXIT.
        ENDIF.
        t5 = t5->parent.
      ENDWHILE.
    ENDIF.
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA(t8) = me.
        t6 = t8.
      ELSE.
        DATA t9 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t9.
        t6 = t9.
      ENDIF.
      result = t6.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t13) = me.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = t12.
    t14 = t15->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    DATA(t18) = VALUE i( ).
    DO.
      t10->load( ).
      IF t18 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t10->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE abap_bool.
      DATA(t22) = t16.
      t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t21 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t23) = VALUE abap_bool( ).
        DATA t24 TYPE REF TO zif_lnt_structure.
        DATA t25 TYPE REF TO zcl_lnt_structure_node.
        DATA(t26) = t16.
        DATA t27 TYPE REF TO object.
        t27 = t26.
        t25 ?= t27.
        t24 = t25->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        DATA(t28) = t1.
        DATA t29 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t29.
        IF t24 IS BOUND.
          t29 = t24->zlnt_builtin_clas_3f891b097658( ).
          WHILE t29 IS BOUND.
            IF t29 = t28.
              t23 = abap_true.
              EXIT.
            ENDIF.
            t29 = t29->parent.
          ENDWHILE.
        ENDIF.
        IF t23 = abap_true.
          DATA t30 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t30.
          DATA(t31) = abap_true.
          IF t31 = abap_true.
            DATA t32 TYPE REF TO zcl_lnt_structure_node.
            DATA(t33) = t16.
            DATA t34 TYPE REF TO object.
            t34 = t33.
            t32 ?= t34.
            t30 = t32.
          ELSE.
            DATA t35 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t35.
            t30 = t35.
          ENDIF.
          result = t30.
          RETURN.
        ELSE.
          DATA t36 TYPE REF TO zcl_lnt_structure_node.
          DATA t37 TYPE REF TO zcl_lnt_structure_node.
          DATA t38 TYPE REF TO zcl_lnt_structure_node.
          DATA(t39) = t16.
          DATA t40 TYPE REF TO object.
          t40 = t39.
          t38 ?= t40.
          DATA(t41) = t1.
          t37 = t38->find_first_structure( i_type_9913 = t41 ).
          t36 = t37.
          DATA t42 TYPE abap_bool.
          DATA(t43) = t36.
          t42 = xsdbool( t43 IS BOUND ).
          IF t42 = abap_true.
            DATA t44 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t44.
            DATA(t45) = abap_true.
            IF t45 = abap_true.
              DATA t46 TYPE REF TO zcl_lnt_structure_node.
              DATA(t47) = t36.
              t46 = t47.
              t44 = t46.
            ELSE.
              DATA t48 TYPE REF TO zcl_lnt_structure_node.
              CLEAR t48.
              t44 = t48.
            ENDIF.
            result = t44.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t49 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t49.
    result = t49.

  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD find_all_expressions_multi.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_recursive.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = t1.
    t3 = me->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t4 ).
    result = t3.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1009_5c49db3a1727.
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~find_all_expressions.
    result = me->find_all_expressions( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~find_all_expressions_multi.
    result = me->find_all_expressions_multi( i_type_9913 = i_type_9913 i_recursive = i_recursive ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~find_all_expressions_recursive.
    result = me->find_all_expressions_recursive( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~find_first_expression.
    result = me->find_first_expression( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_first_child.
    result = me->get_first_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_last_child.
    result = me->get_last_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_8249fcb1~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_1e9858bf~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~add_child.
    me->add_child( i_n_0c97 = i_n_0c97 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~concat_tokens.
    result = me->concat_tokens( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_all_expressions.
    result = me->find_all_expressions( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_all_expressions_multi.
    result = me->find_all_expressions_multi( i_type_9913 = i_type_9913 i_recursive = i_recursive ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_all_expressions_recursive.
    result = me->find_all_expressions_recursive( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~find_first_expression.
    result = me->find_first_expression( i_type_9913 = i_type_9913 ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_db65.
    result = me->get_db65( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_children.
    result = me->get_children( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_first_child.
    result = me->get_first_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_first_token.
    result = me->get_first_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_last_child.
    result = me->get_last_child( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~get_last_token.
    result = me->get_last_token( ).
  ENDMETHOD.

  METHOD zif_lnt_union_734b3529~set_children.
    me->set_children( i_children_9020 = i_children_9020 ).
  ENDMETHOD.
ENDCLASS.
