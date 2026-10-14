* TS: src/abap/5_syntax/expressions/type_table_key.ts:6:1 TypeTableKey
CLASS zcl_lnt_sy_type_table_key DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_unknown_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_type_table_key IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA(t2) = i_type_9913.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t2.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_ty_table_type ).
    IF t3 = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_abstract_type.
      DATA t6 TYPE REF TO zcl_lnt_abstract_type.
      DATA t7 TYPE REF TO zcl_lnt_ty_table_type.
      DATA t8 TYPE REF TO zcl_lnt_ty_table_type.
      DATA(t9) = t2.
      t8 ?= t9.
      t7 = t8.
      DATA t10 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t11) = t7.
      t10 = t11->row_type.
      t6 = t10.
      t5 = t6.
      DATA t12 TYPE abap_bool.
      DATA(t13) = t5.
      t12 = xsdbool( t13 IS BOUND AND t13 IS INSTANCE OF zcl_lnt_structure_type ).
      IF t12 = abap_true.
        DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t15) = t1.
        DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d118_725eea1243df.
        t14 = t15->find_all_expressions( i_type_9913 = t16 ).
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t17.
        DATA t18 TYPE REF TO object.
        CLEAR t18.
        LOOP AT t14->items INTO t18.
          t17 ?= t18.
          DATA t19 TYPE string.
          DATA t20 TYPE string.
          DATA t21 TYPE string.
          DATA(t22) = t17.
          t21 = t22->concat_tokens( ).
          DATA t23 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t23.
          DATA(t24) = |^!|.
          DATA(t25) = ||.
          CREATE OBJECT t23 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t24 flags = t25.
          DATA(t26) = ||.
          DATA(t27) = strlen( t21 ).
          t20 = t23->replace( p0 = t21 p1 = t26 ).
          t19 = t20.
          DATA(t28) = VALUE abap_bool( ).
          DATA(t29) = VALUE abap_bool( ).
          DATA(t30) = VALUE abap_bool( ).
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = VALUE i( ).
          DATA(t33) = t19.
          DATA(t34) = |-|.
          DATA(t35) = strlen( t33 ).
          IF t34 IS INITIAL.
            t32 = 0.
          ELSE.
            FIND t34 IN t33 MATCH OFFSET t32.
            IF sy-subrc <> 0.
              t32 = -1.
            ENDIF.
          ENDIF.
          DATA(t36) = 0.
          t31 = xsdbool( t32 >= t36 ).
          DATA(t37) = abap_false.
          t30 = xsdbool( t31 = t37 ).
          t29 = t30.
          IF t30 = abap_true.
            DATA(t38) = VALUE abap_bool( ).
            DATA t39 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t39.
            DATA t40 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t40.
            DATA t41 TYPE REF TO zcl_lnt_structure_type.
            DATA t42 TYPE REF TO zcl_lnt_structure_type.
            DATA(t43) = t5.
            t42 ?= t43.
            t41 = t42.
            DATA t44 TYPE string.
            DATA(t45) = t19.
            t44 = t45.
            DATA t46 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t46.
            DATA t47 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            DATA(t48) = t41.
            t47 = t48->indexed.
            DATA t49 TYPE string.
            DATA(t50) = t44.
            DATA(t51) = strlen( t50 ).
            t49 = t50.
            IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t49 TO UPPER CASE.
            ELSE.
              t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
            ENDIF.
            t46 = t47->get( p0 = t49 ).
            t40 = t46.
            t39 = t40.
            DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t53.
            t52 = t53.
            DATA(t54) = VALUE abap_bool( ).
            DATA(t55) = t39.
            IF t55 IS INITIAL.
              t54 = abap_true.
            ENDIF.
            t38 = t54.
            t29 = t38.
          ENDIF.
          t28 = t29.
          IF t29 = abap_true.
            DATA(t56) = VALUE abap_bool( ).
            DATA t57 TYPE string.
            DATA(t58) = t19.
            DATA(t59) = strlen( t58 ).
            t57 = t58.
            IF t57 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t57 TO UPPER CASE.
            ELSE.
              t57 = zlnt_runtime_uppe_91169605024d=>full( t57 ).
            ENDIF.
            DATA(t60) = |TABLE_LINE|.
            t56 = xsdbool( t57 <> t60 ).
            t28 = t56.
          ENDIF.
          IF t28 = abap_true.
            DATA t61 TYPE REF TO zcl_lnt_unknown_type.
            CLEAR t61.
            DATA(t62) = abap_true.
            IF t62 = abap_true.
              DATA t63 TYPE REF TO zcl_lnt_unknown_type.
              DATA t64 TYPE string.
              DATA t65 TYPE string.
              DATA(t66) = |Field |.
              DATA(t67) = t19.
              DATA(t68) = strlen( t66 ).
              t65 = |{ t66 }{ t67 }|.
              DATA(t69) = | not part of structure|.
              DATA(t70) = strlen( t65 ).
              t64 = |{ t65 }{ t69 }|.
              DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t71.
              t63 = NEW zcl_lnt_unknown_type( i_error = t64 i_qualified_name = t71 ).
              t61 = t63.
            ELSE.
              DATA t72 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t72.
              t61 = t72.
            ENDIF.
            result = t61.
            RETURN.
          ENDIF.
        ENDLOOP.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zcl_lnt_unknown_type.
    CLEAR t73.
    result = t73.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d825_9e2524302ad1.
  ENDMETHOD.
ENDCLASS.
