* TS: src/abap/nodes/structure_node.ts:9:1 StructureNode
CLASS zcl_lnt_structure_node DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_node CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_8249fcb1.
    INTERFACES zif_lnt_union_1e9858bf.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_structure_node IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_structure( i_structure ).
    super->constructor( ).
    DATA(t2) = CAST zif_lnt_structure( t1 ).
    me->structure = t2.
  ENDMETHOD.

  METHOD gt_in_sr_ab_nd_st_nd_ts_str_nd.
    DATA(t1) = CAST zif_lnt_structure( me->structure ).
    result = t1.

  ENDMETHOD.

  METHOD find_parent.
    DATA(t1) = CAST zcl_lnt_statement_node( i_node ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/structure_node.ts:22|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD concat_tokens.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/nodes/structure_node.ts:38|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD find_direct_statement.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/structure_node.ts:46|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_direct_statements.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = CAST zcl_lnt_structure_node( me ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = CAST zcl_lnt_abstract_node( t6 ).
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t4->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA(t14) = CAST zif_lnt_union_8249fcb1( t10 ).
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_statement_node ).
      t12 = t13.
      IF t13 = abap_true.
        DATA(t15) = VALUE abap_bool( ).
        DATA t16 TYPE REF TO zif_lnt_statement.
        DATA t17 TYPE REF TO zcl_lnt_statement_node.
        DATA(t18) = CAST zif_lnt_union_8249fcb1( t10 ).
        DATA t19 TYPE REF TO object.
        t19 = t18.
        t17 ?= t19.
        t16 = t17->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t21 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t21.
        IF t16 IS BOUND.
          t21 = t16->zlnt_builtin_clas_3f891b097658( ).
          WHILE t21 IS BOUND.
            IF t21 = t20.
              t15 = abap_true.
              EXIT.
            ENDIF.
            t21 = t21->parent.
          ENDWHILE.
        ENDIF.
        t12 = t15.
      ENDIF.
      IF t12 = abap_true.
        DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t23 TYPE REF TO zcl_lnt_statement_node.
        DATA(t24) = CAST zif_lnt_union_8249fcb1( t10 ).
        DATA t25 TYPE REF TO object.
        t25 = t24.
        t23 ?= t25.
        APPEND t23 TO t22->items.
      ENDIF.
    ENDLOOP.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t26.

  ENDMETHOD.

  METHOD find_direct_structures.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = CAST zcl_lnt_structure_node( me ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = CAST zcl_lnt_abstract_node( t6 ).
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t4->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      DATA(t14) = CAST zif_lnt_union_8249fcb1( t10 ).
      t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_structure_node ).
      t12 = t13.
      IF t13 = abap_true.
        DATA(t15) = VALUE abap_bool( ).
        DATA t16 TYPE REF TO zif_lnt_structure.
        DATA t17 TYPE REF TO zcl_lnt_structure_node.
        DATA(t18) = CAST zif_lnt_union_8249fcb1( t10 ).
        DATA t19 TYPE REF TO object.
        t19 = t18.
        t17 ?= t19.
        t16 = t17->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t21 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t21.
        IF t16 IS BOUND.
          t21 = t16->zlnt_builtin_clas_3f891b097658( ).
          WHILE t21 IS BOUND.
            IF t21 = t20.
              t15 = abap_true.
              EXIT.
            ENDIF.
            t21 = t21->parent.
          ENDWHILE.
        ENDIF.
        t12 = t15.
      ENDIF.
      IF t12 = abap_true.
        DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t23 TYPE REF TO zcl_lnt_structure_node.
        DATA(t24) = CAST zif_lnt_union_8249fcb1( t10 ).
        DATA t25 TYPE REF TO object.
        t25 = t24.
        t23 ?= t25.
        APPEND t23 TO t22->items.
      ENDIF.
    ENDLOOP.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t26.

  ENDMETHOD.

  METHOD find_first_statement.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = CAST zcl_lnt_structure_node( me ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zcl_lnt_abstract_node( t4 ).
    t6 = t7->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t2->items INTO t9.
      t8 ?= t9.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO object.
      DATA(t12) = CAST zif_lnt_union_8249fcb1( t8 ).
      t11 = t12->get_db65( ).
      DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
      DATA t14 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t14.
      IF t11 IS BOUND.
        DATA t15 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
        t15 ?= t11.
        t14 = t15->zlnt_builtin_clas_3f891b097658( ).
        WHILE t14 IS BOUND.
          IF t14 = t13.
            t10 = abap_true.
            EXIT.
          ENDIF.
          t14 = t14->parent.
        ENDWHILE.
      ENDIF.
      IF t10 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t16.
        DATA(t17) = abap_true.
        IF t17 = abap_true.
          DATA t18 TYPE REF TO zcl_lnt_statement_node.
          DATA(t19) = CAST zif_lnt_union_8249fcb1( t8 ).
          t18 ?= t19.
          t16 = t18.
        ELSE.
          DATA t20 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t20.
          t16 = t20.
        ENDIF.
        result = t16.
        RETURN.
      ELSE.
        DATA t21 TYPE abap_bool.
        DATA(t22) = CAST zif_lnt_union_8249fcb1( t8 ).
        t21 = xsdbool( t22 IS BOUND AND t22 IS INSTANCE OF zcl_lnt_statement_node ).
        IF t21 = abap_true.
          CONTINUE.
        ELSE.
          DATA t23 TYPE REF TO zcl_lnt_statement_node.
          DATA t24 TYPE REF TO zcl_lnt_statement_node.
          DATA t25 TYPE REF TO zcl_lnt_structure_node.
          DATA(t26) = CAST zif_lnt_union_8249fcb1( t8 ).
          DATA t27 TYPE REF TO object.
          t27 = t26.
          t25 ?= t27.
          DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
          t24 = t25->find_first_statement( i_type_9913 = t28 ).
          t23 = t24.
          DATA t29 TYPE abap_bool.
          DATA(t30) = CAST zcl_lnt_statement_node( t23 ).
          t29 = xsdbool( t30 IS BOUND ).
          IF t29 = abap_true.
            DATA t31 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t31.
            DATA(t32) = abap_true.
            IF t32 = abap_true.
              DATA t33 TYPE REF TO zcl_lnt_statement_node.
              DATA(t34) = CAST zcl_lnt_statement_node( t23 ).
              t33 = t34.
              t31 = t33.
            ELSE.
              DATA t35 TYPE REF TO zcl_lnt_statement_node.
              CLEAR t35.
              t31 = t35.
            ENDIF.
            result = t31.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t36 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t36.
    result = t36.

  ENDMETHOD.

  METHOD find_first_expression.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = CAST zcl_lnt_structure_node( me ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t7) = CAST zcl_lnt_abstract_node( t4 ).
    t6 = t7->children.
    t3 = t6.
    t2 ?= t3.
    DATA t8 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    LOOP AT t2->items INTO t9.
      t8 ?= t9.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = CAST zif_lnt_union_8249fcb1( t8 ).
      DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
      t11 = t12->find_first_expression( i_type_9913 = t13 ).
      t10 = t11.
      DATA t14 TYPE abap_bool.
      DATA(t15) = CAST zcl_lnt_expression_node( t10 ).
      t14 = xsdbool( t15 IS BOUND ).
      IF t14 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t16.
        DATA(t17) = abap_true.
        IF t17 = abap_true.
          DATA t18 TYPE REF TO zcl_lnt_expression_node.
          DATA(t19) = CAST zcl_lnt_expression_node( t10 ).
          t18 = t19.
          t16 = t18.
        ELSE.
          DATA t20 TYPE REF TO zcl_lnt_expression_node.
          CLEAR t20.
          t16 = t20.
        ENDIF.
        result = t16.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t21 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t21.
    result = t21.

  ENDMETHOD.

  METHOD get_first_statement.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/nodes/structure_node.ts:101|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_first_token.
    DATA t1 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = CAST zcl_lnt_structure_node( me ).
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_node.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_node.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t10) = CAST zcl_lnt_abstract_node( t4 ).
      t9 = t10->children.
      DATA t11 TYPE REF TO object.
      CLEAR t11.
      READ TABLE t9->items INDEX 1 INTO t11.
      t8 ?= t11.
      t6 = t8.
    ELSE.
      DATA t12 TYPE REF TO zif_lnt_node.
      CLEAR t12.
      t6 = t12.
    ENDIF.
    t3 = t6.
    t2 ?= t3.
    t1 = t2.
    DATA(t13) = VALUE abap_bool( ).
    DATA t14 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA(t15) = CAST zif_lnt_union_8249fcb1( t1 ).
    t14 = t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    t16 = t17.
    DATA(t18) = VALUE abap_bool( ).
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = CAST zif_lnt_union_8249fcb1( t14 ).
    IF t20 IS INITIAL.
      t19 = abap_true.
    ENDIF.
    t18 = xsdbool( t19 = abap_false ).
    t13 = t18.
    IF t13 = abap_true.
      DATA t21 TYPE REF TO zcl_lnt_abstract_token.
      DATA t22 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA(t23) = CAST zif_lnt_union_8249fcb1( t1 ).
      t22 = t23.
      t21 = t22->get_first_token( ).
      result = t21.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t24.
    DATA t25 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA(t27) = abap_true.
    IF t27 = abap_true.
      DATA(t28) = |StructureNode, getFirstToken, unexpected type|.
      DATA(t29) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t29->has = abap_true.
      t29->value = t28.
      t26 = t29.
    ELSE.
      DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t30.
      t26 = t30.
    ENDIF.
    t25 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t26 ).
    t24 = NEW #( ).
    t24->payload = t25.
    RAISE EXCEPTION t24.
  ENDMETHOD.

  METHOD get_last_token.
    DATA t1 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t2.
    DATA t3 TYPE REF TO zif_lnt_node.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t5) = CAST zcl_lnt_structure_node( me ).
    t4 = t5.
    DATA t6 TYPE REF TO zif_lnt_node.
    CLEAR t6.
    DATA(t7) = abap_true.
    IF t7 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_node.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t10) = CAST zcl_lnt_abstract_node( t4 ).
      t9 = t10->children.
      DATA t11 TYPE i.
      DATA t12 TYPE i.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t14) = CAST zcl_lnt_abstract_node( t4 ).
      t13 = t14->children.
      t12 = lines( t13->items ).
      DATA(t15) = 1.
      t11 = t12 - t15.
      t11 = t11 + 1.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      READ TABLE t9->items INDEX t11 INTO t16.
      t8 ?= t16.
      t6 = t8.
    ELSE.
      DATA t17 TYPE REF TO zif_lnt_node.
      CLEAR t17.
      t6 = t17.
    ENDIF.
    t3 = t6.
    t2 ?= t3.
    t1 = t2.
    DATA(t18) = VALUE abap_bool( ).
    DATA t19 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA(t20) = CAST zif_lnt_union_8249fcb1( t1 ).
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    t21 = t22.
    DATA(t23) = VALUE abap_bool( ).
    DATA(t24) = VALUE abap_bool( ).
    DATA(t25) = CAST zif_lnt_union_8249fcb1( t19 ).
    IF t25 IS INITIAL.
      t24 = abap_true.
    ENDIF.
    t23 = xsdbool( t24 = abap_false ).
    t18 = t23.
    IF t18 = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t27 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA(t28) = CAST zif_lnt_union_8249fcb1( t1 ).
      t27 = t28.
      t26 = t27->get_last_token( ).
      result = t26.
      RETURN.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t29.
    DATA t30 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |StructureNode, getLastToken, unexpected type|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t31 ).
    t29 = NEW #( ).
    t29->payload = t30.
    RAISE EXCEPTION t29.
  ENDMETHOD.

  METHOD find_all_expressions.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/structure_node.ts:131|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_all_expressions_recursive.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/structure_node.ts:139|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD f_a_e_m_i_s_a_n_st_nd_ts_st_nd.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_type_9913 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/structure_node.ts:152|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_all_statements.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t7) = CAST zcl_lnt_structure_node( me ).
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = CAST zcl_lnt_abstract_node( t6 ).
    t8 = t9->children.
    t5 = t8.
    t4 ?= t5.
    DATA t10 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
    LOOP AT t4->items INTO t11.
      t10 ?= t11.
      DATA t12 TYPE abap_bool.
      DATA(t13) = CAST zif_lnt_union_8249fcb1( t10 ).
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_structure_node ).
      IF t12 = abap_true.
        DATA(t14) = VALUE i( ).
        DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t16 TYPE REF TO zcl_lnt_structure_node.
        DATA(t17) = CAST zif_lnt_union_8249fcb1( t10 ).
        DATA t18 TYPE REF TO object.
        t18 = t17.
        t16 ?= t18.
        DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        t15 = t16->find_all_statements( i_type_9913 = t19 ).
        DATA t20 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t20.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        LOOP AT t15->items INTO t21.
          t20 ?= t21.
          DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t23) = CAST zcl_lnt_statement_node( t20 ).
          APPEND t23 TO t22->items.
        ENDLOOP.
        DATA t24 TYPE i.
        DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        t24 = lines( t25->items ).
        t14 = t24.
      ELSE.
        DATA(t26) = VALUE abap_bool( ).
        DATA t27 TYPE REF TO zif_lnt_statement.
        DATA t28 TYPE REF TO zcl_lnt_statement_node.
        DATA(t29) = CAST zif_lnt_union_8249fcb1( t10 ).
        DATA t30 TYPE REF TO object.
        t30 = t29.
        t28 ?= t30.
        t27 = t28->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t32 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t32.
        IF t27 IS BOUND.
          t32 = t27->zlnt_builtin_clas_3f891b097658( ).
          WHILE t32 IS BOUND.
            IF t32 = t31.
              t26 = abap_true.
              EXIT.
            ENDIF.
            t32 = t32->parent.
          ENDWHILE.
        ENDIF.
        IF t26 = abap_true.
          DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA t34 TYPE REF TO zcl_lnt_statement_node.
          DATA(t35) = CAST zif_lnt_union_8249fcb1( t10 ).
          DATA t36 TYPE REF TO object.
          t36 = t35.
          t34 ?= t36.
          APPEND t34 TO t33->items.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t37.

  ENDMETHOD.

  METHOD find_all_statement_nodes.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/nodes/structure_node.ts:172|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD find_all_structures_recursive.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/structure_node.ts:184|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_all_structures_multi.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_type_9913 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/nodes/structure_node.ts:198|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD find_all_structures.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
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
      DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
      DATA(t12) = CAST zcl_lnt_structure_node( me ).
      APPEND t12 TO t11->items.
      DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
      t8 = t13.
      result = t8.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zcl_lnt_abstract_node.
    DATA(t17) = CAST zcl_lnt_structure_node( me ).
    t16 = t17.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t19) = CAST zcl_lnt_abstract_node( t16 ).
    t18 = t19->children.
    t15 = t18.
    t14 ?= t15.
    DATA t20 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t14->items INTO t21.
      t20 ?= t21.
      DATA t22 TYPE abap_bool.
      DATA(t23) = CAST zif_lnt_union_8249fcb1( t20 ).
      t22 = xsdbool( t23 IS BOUND AND t23 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t22 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t24) = VALUE abap_bool( ).
        DATA t25 TYPE REF TO zif_lnt_structure.
        DATA t26 TYPE REF TO zcl_lnt_structure_node.
        DATA(t27) = CAST zif_lnt_union_8249fcb1( t20 ).
        DATA t28 TYPE REF TO object.
        t28 = t27.
        t26 ?= t28.
        t25 = t26->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        DATA(t29) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t30 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t30.
        IF t25 IS BOUND.
          t30 = t25->zlnt_builtin_clas_3f891b097658( ).
          WHILE t30 IS BOUND.
            IF t30 = t29.
              t24 = abap_true.
              EXIT.
            ENDIF.
            t30 = t30->parent.
          ENDWHILE.
        ENDIF.
        IF t24 = abap_true.
          DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA t32 TYPE REF TO zcl_lnt_structure_node.
          DATA(t33) = CAST zif_lnt_union_8249fcb1( t20 ).
          DATA t34 TYPE REF TO object.
          t34 = t33.
          t32 ?= t34.
          APPEND t32 TO t31->items.
        ELSE.
          DATA(t35) = VALUE i( ).
          DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t37 TYPE REF TO zcl_lnt_structure_node.
          DATA(t38) = CAST zif_lnt_union_8249fcb1( t20 ).
          DATA t39 TYPE REF TO object.
          t39 = t38.
          t37 ?= t39.
          DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
          t36 = t37->find_all_structures( i_type_9913 = t40 ).
          DATA t41 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t41.
          DATA t42 TYPE REF TO object.
          CLEAR t42.
          LOOP AT t36->items INTO t42.
            t41 ?= t42.
            DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA(t44) = CAST zcl_lnt_structure_node( t41 ).
            APPEND t44 TO t43->items.
          ENDLOOP.
          DATA t45 TYPE i.
          DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          t45 = lines( t46->items ).
          t35 = t45.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t47.

  ENDMETHOD.

  METHOD find_direct_structure.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
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
        DATA(t8) = CAST zcl_lnt_structure_node( me ).
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
    DATA(t13) = CAST zcl_lnt_structure_node( me ).
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = CAST zcl_lnt_abstract_node( t12 ).
    t14 = t15->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    LOOP AT t10->items INTO t17.
      t16 ?= t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA t19 TYPE REF TO object.
      DATA(t20) = CAST zif_lnt_union_8249fcb1( t16 ).
      t19 = t20->get_db65( ).
      DATA(t21) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
      DATA t22 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t22.
      IF t19 IS BOUND.
        DATA t23 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
        t23 ?= t19.
        t22 = t23->zlnt_builtin_clas_3f891b097658( ).
        WHILE t22 IS BOUND.
          IF t22 = t21.
            t18 = abap_true.
            EXIT.
          ENDIF.
          t22 = t22->parent.
        ENDWHILE.
      ENDIF.
      IF t18 = abap_true.
        DATA t24 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t24.
        DATA(t25) = abap_true.
        IF t25 = abap_true.
          DATA t26 TYPE REF TO zcl_lnt_structure_node.
          DATA(t27) = CAST zif_lnt_union_8249fcb1( t16 ).
          t26 ?= t27.
          t24 = t26.
        ELSE.
          DATA t28 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t28.
          t24 = t28.
        ENDIF.
        result = t24.
        RETURN.
      ENDIF.
    ENDLOOP.
    DATA t29 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t29.
    result = t29.

  ENDMETHOD.

  METHOD find_first_structure.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_type_9913 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    DATA(t4) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
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
        DATA(t8) = CAST zcl_lnt_structure_node( me ).
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
    DATA(t13) = CAST zcl_lnt_structure_node( me ).
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t15) = CAST zcl_lnt_abstract_node( t12 ).
    t14 = t15->children.
    t11 = t14.
    t10 ?= t11.
    DATA t16 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    LOOP AT t10->items INTO t17.
      t16 ?= t17.
      DATA t18 TYPE abap_bool.
      DATA(t19) = CAST zif_lnt_union_8249fcb1( t16 ).
      t18 = xsdbool( t19 IS BOUND AND t19 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t18 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t20) = VALUE abap_bool( ).
        DATA t21 TYPE REF TO zif_lnt_structure.
        DATA t22 TYPE REF TO zcl_lnt_structure_node.
        DATA(t23) = CAST zif_lnt_union_8249fcb1( t16 ).
        DATA t24 TYPE REF TO object.
        t24 = t23.
        t22 ?= t24.
        t21 = t22->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
        DATA t26 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t26.
        IF t21 IS BOUND.
          t26 = t21->zlnt_builtin_clas_3f891b097658( ).
          WHILE t26 IS BOUND.
            IF t26 = t25.
              t20 = abap_true.
              EXIT.
            ENDIF.
            t26 = t26->parent.
          ENDWHILE.
        ENDIF.
        IF t20 = abap_true.
          DATA t27 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t27.
          DATA(t28) = abap_true.
          IF t28 = abap_true.
            DATA t29 TYPE REF TO zcl_lnt_structure_node.
            DATA(t30) = CAST zif_lnt_union_8249fcb1( t16 ).
            DATA t31 TYPE REF TO object.
            t31 = t30.
            t29 ?= t31.
            t27 = t29.
          ELSE.
            DATA t32 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t32.
            t27 = t32.
          ENDIF.
          result = t27.
          RETURN.
        ELSE.
          DATA t33 TYPE REF TO zcl_lnt_structure_node.
          DATA t34 TYPE REF TO zcl_lnt_structure_node.
          DATA t35 TYPE REF TO zcl_lnt_structure_node.
          DATA(t36) = CAST zif_lnt_union_8249fcb1( t16 ).
          DATA t37 TYPE REF TO object.
          t37 = t36.
          t35 ?= t37.
          DATA(t38) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
          t34 = t35->find_first_structure( i_type_9913 = t38 ).
          t33 = t34.
          DATA t39 TYPE abap_bool.
          DATA(t40) = CAST zcl_lnt_structure_node( t33 ).
          t39 = xsdbool( t40 IS BOUND ).
          IF t39 = abap_true.
            DATA t41 TYPE REF TO zcl_lnt_structure_node.
            CLEAR t41.
            DATA(t42) = abap_true.
            IF t42 = abap_true.
              DATA t43 TYPE REF TO zcl_lnt_structure_node.
              DATA(t44) = CAST zcl_lnt_structure_node( t33 ).
              t43 = t44.
              t41 = t43.
            ELSE.
              DATA t45 TYPE REF TO zcl_lnt_structure_node.
              CLEAR t45.
              t41 = t45.
            ENDIF.
            result = t41.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA t46 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t46.
    result = t46.

  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = CAST zif_lnt_structure( me->gt_in_sr_ab_nd_st_nd_ts_str_nd( ) ).
    result = t1.

  ENDMETHOD.

  METHOD find_all_expressions_multi.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_type_9913 ).
    DATA(t2) = CAST zlnt_runtime_opti_7f2541396f43( i_recursive ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/nodes/structure_node.ts:152|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d987_99d549b80c61.
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
ENDCLASS.
