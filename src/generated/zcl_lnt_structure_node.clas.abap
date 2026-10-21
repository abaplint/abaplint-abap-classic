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
    me->structure = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `structure`.
  ENDMETHOD.

  METHOD gt_in_sr_ab_nd_st_nd_ts_str_nd.
    result = me->structure.

  ENDMETHOD.

  METHOD find_parent.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    t2 ?= t4->children.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t9 TYPE REF TO object.
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
      DATA t15 TYPE REF TO zif_lnt_union_8249fcb1.
      CLEAR t15.
      t15 ?= t1.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t17.
      IF t8 IS BOUND.
        DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t19.
        CLEAR t19.
        TRY.
            t17 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t17 IS NOT BOUND.
          TRY.
              t19 ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t19 IS BOUND.
            t17 = t19->source( ).
          ENDIF.
          IF t17 IS NOT BOUND.
            CREATE OBJECT t17.
            t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t17->oval = t8.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t18.
      IF t15 IS BOUND.
        DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t21.
        CLEAR t21.
        TRY.
            t18 ?= t15.
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
        result = me.
        RETURN.
      ENDIF.
      IF xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      DATA t31 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t31.
      t31 ?= t8.
      t29 = t31->find_parent( i_node = t1 ).
      IF xsdbool( t29 IS BOUND ) = abap_true.
        result = t29.
        RETURN.
      ENDIF.


    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD concat_tokens.
    DATA t1 TYPE string.
    t1 = ||.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    t3 ?= t5->children.
    DATA t9 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t10 TYPE REF TO object.
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
      DATA(t15) = t1.
      DATA t16 TYPE string.
      t16 = t9->concat_tokens( ).
      DATA(t18) = strlen( t15 ).
      t1 = |{ t15 }{ t16 }|.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD find_direct_statement.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    t2 ?= t4->children.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t9 TYPE REF TO object.
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
      t14 = xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_statement_node ).
      t13 = t14.
      IF t14 = abap_true.
        DATA(t16) = VALUE abap_bool( ).
        DATA t17 TYPE REF TO zif_lnt_statement.
        DATA t18 TYPE REF TO zcl_lnt_statement_node.
        t18 ?= t8.
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
        DATA t25 TYPE REF TO zcl_lnt_statement_node.
        t25 ?= t8.
        result = t25.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_direct_statements.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t4 ?= t6->children.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t11 TYPE REF TO object.
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
      t16 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_statement_node ).
      t15 = t16.
      IF t16 = abap_true.
        DATA(t18) = VALUE abap_bool( ).
        DATA t19 TYPE REF TO zif_lnt_statement.
        DATA t20 TYPE REF TO zcl_lnt_statement_node.
        t20 ?= t10.
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
        DATA t26 TYPE REF TO zcl_lnt_statement_node.
        t26 ?= t10.
        t2->load( ).
        APPEND t26 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_direct_structures.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t4 ?= t6->children.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t11 TYPE REF TO object.
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
      t16 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_structure_node ).
      t15 = t16.
      IF t16 = abap_true.
        DATA(t18) = VALUE abap_bool( ).
        DATA t19 TYPE REF TO zif_lnt_structure.
        DATA t20 TYPE REF TO zcl_lnt_structure_node.
        t20 ?= t10.
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
        DATA t26 TYPE REF TO zcl_lnt_structure_node.
        t26 ?= t10.
        t2->load( ).
        APPEND t26 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_first_statement.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    t2 ?= t4->children.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t9 TYPE REF TO object.
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
      t14 = t8->get_db65( ).
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
        DATA t21 TYPE REF TO zcl_lnt_statement_node.
        t21 ?= t8.
        result = t21.
        RETURN.
      ENDIF.
      IF xsdbool( t8 IS BOUND AND t8 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t26 TYPE REF TO zcl_lnt_statement_node.
      DATA t28 TYPE REF TO zcl_lnt_structure_node.
      t28 ?= t8.
      t26 = t28->find_first_statement( i_type_9913 = t1 ).
      IF xsdbool( t26 IS BOUND ) = abap_true.
        result = t26.
        RETURN.
      ENDIF.


    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_first_expression.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    t2 ?= t4->children.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t9 TYPE REF TO object.
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
      t13 = t8->find_first_expression( i_type_9913 = t1 ).
      IF xsdbool( t13 IS BOUND ) = abap_true.
        result = t13.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_first_statement.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_abstract_node.
    t3 = me.
    t1 ?= t3->children.
    DATA t7 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t8 TYPE REF TO object.
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
      IF xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_statement_node.
        t16 ?= t7.
        result = t16.
        RETURN.
      ENDIF.
      DATA t21 TYPE REF TO zcl_lnt_structure_node.
      t21 ?= t7.
      result = t21->get_first_statement( ).
      RETURN.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_first_token.
    DATA t1 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t2 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    DATA t8 TYPE REF TO zif_lnt_node.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t4->children.
    DATA t11 TYPE REF TO object.
    t9->load( ).
    READ TABLE t9->items INDEX 1 INTO t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t11 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t12 ?= t11.
      DATA t13 TYPE REF TO object.
      t13 = t12->as_ref( ).
      t8 ?= t13.
    ELSE.
      t8 ?= t11.
    ENDIF.
    t2 ?= t8.
    t1 = t2.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t1 IS INITIAL ) = abap_false ) = abap_true.
      result = t1->get_first_token( ).
      RETURN.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t27 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t31->has = abap_true.
    t31->value = |StructureNode, getFirstToken, unexpected type|.
    t27 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t31 ).
    t26 = NEW #( ).
    t26->payload = t27.
    CLEAR t26->source_value.
    DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t34 TYPE REF TO object.
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
    RAISE EXCEPTION t26.
  ENDMETHOD.

  METHOD get_last_token.
    DATA t1 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t2 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    t4 = me.
    DATA t8 TYPE REF TO zif_lnt_node.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = t4->children.
    DATA(t11) = VALUE i( ).
    DATA(t12) = VALUE i( ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t13 = t4->children.
    t13->load( ).
    t12 = lines( t13->items ).
    DATA(t15) = 1.
    t11 = t12 - t15.
    t11 = t11 + 1.
    DATA t16 TYPE REF TO object.
    t9->load( ).
    READ TABLE t9->items INDEX t11 INTO t16.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t17 ?= t16.
      DATA t18 TYPE REF TO object.
      t18 = t17->as_ref( ).
      t8 ?= t18.
    ELSE.
      t8 ?= t16.
    ENDIF.
    t2 ?= t8.
    t1 = t2.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t1 IS INITIAL ) = abap_false ) = abap_true.
      result = t1->get_last_token( ).
      RETURN.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t32 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t36->has = abap_true.
    t36->value = |StructureNode, getLastToken, unexpected type|.
    t32 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t36 ).
    t31 = NEW #( ).
    t31->payload = t32.
    CLEAR t31->source_value.
    DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t39 TYPE REF TO object.
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
    RAISE EXCEPTION t31.
  ENDMETHOD.

  METHOD find_all_expressions.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t4 ?= t6->children.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t11 TYPE REF TO object.
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
      t16 = t10->find_all_expressions( i_type_9913 = t1 ).
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
        t2->load( ).
        APPEND t19 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t15 = lines( t2->items ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_all_expressions_recursive.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t4 ?= t6->children.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t11 TYPE REF TO object.
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
      IF xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        DATA(t17) = VALUE i( ).
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t19 TYPE REF TO zcl_lnt_statement_node.
        t19 ?= t10.
        t18 = t19->find_all_expressions_recursive( i_type_9913 = t1 ).
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
          t2->load( ).
          APPEND t23 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t17 = lines( t2->items ).
      ELSE.
        DATA(t32) = VALUE i( ).
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t34 TYPE REF TO zcl_lnt_structure_node.
        t34 ?= t10.
        t33 = t34->find_all_expressions_recursive( i_type_9913 = t1 ).
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
          t2->load( ).
          APPEND t38 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t32 = lines( t2->items ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD f_a_e_m_i_s_a_n_st_nd_ts_st_nd.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t4 ?= t6->children.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t11 TYPE REF TO object.
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
      DATA t19 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t19.
      t16 = t10->find_all_expressions_multi( i_type_9913 = t1 i_recursive = t19 ).
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
        t2->load( ).
        APPEND t20 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t15 = lines( t2->items ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_all_statements.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t4 ?= t6->children.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t11 TYPE REF TO object.
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
      IF xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_structure_node ) = abap_true.
        DATA(t17) = VALUE i( ).
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t19 TYPE REF TO zcl_lnt_structure_node.
        t19 ?= t10.
        t18 = t19->find_all_statements( i_type_9913 = t1 ).
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
          t2->load( ).
          APPEND t23 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t17 = lines( t2->items ).
      ELSE.
        DATA(t32) = VALUE abap_bool( ).
        DATA t33 TYPE REF TO zif_lnt_statement.
        DATA t34 TYPE REF TO zcl_lnt_statement_node.
        t34 ?= t10.
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
          DATA t40 TYPE REF TO zcl_lnt_statement_node.
          t40 ?= t10.
          t2->load( ).
          APPEND t40 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_all_statement_nodes.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zcl_lnt_abstract_node.
    t5 = me.
    t3 ?= t5->children.
    DATA t9 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t10 TYPE REF TO object.
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
      IF xsdbool( t9 IS BOUND AND t9 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        DATA t17 TYPE REF TO zcl_lnt_statement_node.
        t17 ?= t9.
        t1->load( ).
        APPEND t17 TO t1->items.
        t1->save( ).
      ELSE.
        DATA(t20) = VALUE i( ).
        DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t22 TYPE REF TO zcl_lnt_structure_node.
        t22 ?= t9.
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
          t1->load( ).
          APPEND t25 TO t1->items.
          t1->save( ).
        ENDDO.
        t1->load( ).
        t20 = lines( t1->items ).
      ENDIF.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD find_all_structures_recursive.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    t6 = me.
    t4 ?= t6->children.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t11 TYPE REF TO object.
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
      IF xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t17) = VALUE abap_bool( ).
      DATA t18 TYPE REF TO zif_lnt_structure.
      DATA t19 TYPE REF TO zcl_lnt_structure_node.
      t19 ?= t10.
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
        DATA t25 TYPE REF TO zcl_lnt_structure_node.
        t25 ?= t10.
        t2->load( ).
        APPEND t25 TO t2->items.
        t2->save( ).
      ENDIF.

      DATA(t28) = VALUE i( ).
      DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t30 TYPE REF TO zcl_lnt_structure_node.
      t30 ?= t10.
      t29 = t30->find_all_structures_recursive( i_type_9913 = t1 ).
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
        t2->load( ).
        APPEND t34 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t28 = lines( t2->items ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_all_structures_multi.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
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
        DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t14.
        t14->load( ).
        APPEND me TO t14->items.
        t14->save( ).
        result = t14.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zcl_lnt_abstract_node.
    t21 = me.
    t19 ?= t21->children.
    DATA t25 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t26 TYPE REF TO object.
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
      IF xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t32 TYPE abap_bool.
      t32 = abap_false.
      DATA t35 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t35.
      DATA t36 TYPE REF TO object.
      CLEAR t36.
      DATA(t37) = VALUE i( ).
      DO.
        t1->load( ).
        IF t37 >= lines( t1->items ).
          EXIT.
        ENDIF.
        CLEAR t36.
        READ TABLE t1->items INDEX t37 + 1 INTO t36.
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
          DATA t44 TYPE REF TO zcl_lnt_structure_node.
          t44 ?= t25.
          t2->load( ).
          APPEND t44 TO t2->items.
          t2->save( ).
          t32 = abap_true.
        ENDIF.
      ENDDO.
      IF xsdbool( t32 = abap_false ) = abap_true.
        DATA(t51) = VALUE i( ).
        DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t53 TYPE REF TO zcl_lnt_structure_node.
        t53 ?= t25.
        t52 = t53->find_all_structures_multi( i_type_9913 = t1 ).
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
          t2->load( ).
          APPEND t57 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t51 = lines( t2->items ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_all_structures.
    DATA(t1) = i_type_9913.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    DATA(t6) = t1.
    DATA t7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t9.
      t9->load( ).
      APPEND me TO t9->items.
      t9->save( ).
      result = t9.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zcl_lnt_abstract_node.
    t16 = me.
    t14 ?= t16->children.
    DATA t20 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t21 TYPE REF TO object.
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
      IF xsdbool( t20 IS BOUND AND t20 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t27) = VALUE abap_bool( ).
      DATA t28 TYPE REF TO zif_lnt_structure.
      DATA t29 TYPE REF TO zcl_lnt_structure_node.
      t29 ?= t20.
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
        DATA t35 TYPE REF TO zcl_lnt_structure_node.
        t35 ?= t20.
        t2->load( ).
        APPEND t35 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t38) = VALUE i( ).
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t40 TYPE REF TO zcl_lnt_structure_node.
        t40 ?= t20.
        t39 = t40->find_all_structures( i_type_9913 = t1 ).
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
          t2->load( ).
          APPEND t44 TO t2->items.
          t2->save( ).
        ENDDO.
        t2->load( ).
        t38 = lines( t2->items ).
      ENDIF.

    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_direct_structure.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
      result = me.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    t12 = me.
    t10 ?= t12->children.
    DATA t16 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t17 TYPE REF TO object.
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
      t22 = t16->get_db65( ).
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
        DATA t29 TYPE REF TO zcl_lnt_structure_node.
        t29 ?= t16.
        result = t29.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD find_first_structure.
    DATA(t1) = i_type_9913.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
      result = me.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zcl_lnt_abstract_node.
    t12 = me.
    t10 ?= t12->children.
    DATA t16 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t17 TYPE REF TO object.
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
      IF xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_statement_node ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t23) = VALUE abap_bool( ).
      DATA t24 TYPE REF TO zif_lnt_structure.
      DATA t25 TYPE REF TO zcl_lnt_structure_node.
      t25 ?= t16.
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
        DATA t32 TYPE REF TO zcl_lnt_structure_node.
        t32 ?= t16.
        result = t32.
        RETURN.
      ENDIF.
      DATA t36 TYPE REF TO zcl_lnt_structure_node.
      DATA t38 TYPE REF TO zcl_lnt_structure_node.
      t38 ?= t16.
      t36 = t38->find_first_structure( i_type_9913 = t1 ).
      IF xsdbool( t36 IS BOUND ) = abap_true.
        result = t36.
        RETURN.
      ENDIF.


    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD get_db65.
    result = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).

  ENDMETHOD.

  METHOD find_all_expressions_multi.
    DATA(t2) = i_recursive.
    DATA(t4) = i_type_9913.
    result = me->f_a_e_m_i_s_a_n_st_nd_ts_st_nd( i_type_9913 = t4 ).

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
