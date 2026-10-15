* TS: src/abap/5_syntax/expressions/type_table_key.ts:6:1 TypeTableKey
CLASS zcl_lnt_sy_type_table_key DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_type_9913 TYPE REF TO zcl_lnt_abstract_type RETURNING VALUE(result) TYPE REF TO zcl_lnt_unknown_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
        DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t14 = t15->find_all_expressions( i_type_9913 = t16 ).
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t17.
        DATA t18 TYPE REF TO object.
        CLEAR t18.
        DATA(t19) = VALUE i( ).
        DO.
          t14->load( ).
          IF t19 >= lines( t14->items ).
            EXIT.
          ENDIF.
          CLEAR t18.
          READ TABLE t14->items INDEX t19 + 1 INTO t18.
          t19 = t19 + 1.
          DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t20.
          CLEAR t17.
          IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t20 ?= t18.
            DATA t21 TYPE REF TO object.
            t21 = t20->as_ref( ).
            t17 ?= t21.
          ELSE.
            t17 ?= t18.
          ENDIF.
          DATA t22 TYPE string.
          DATA t23 TYPE string.
          DATA t24 TYPE string.
          DATA(t25) = t17.
          t24 = t25->concat_tokens( ).
          DATA t26 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CLEAR t26.
          DATA(t27) = |^!|.
          DATA(t28) = ||.
          CREATE OBJECT t26 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t27 flags = t28.
          DATA(t29) = ||.
          DATA(t30) = strlen( t24 ).
          t23 = t26->replace( p0 = t24 p1 = t29 ).
          t22 = t23.
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = VALUE abap_bool( ).
          DATA(t33) = VALUE abap_bool( ).
          DATA(t34) = VALUE abap_bool( ).
          DATA(t35) = VALUE i( ).
          DATA(t36) = t22.
          DATA(t37) = |-|.
          DATA(t38) = strlen( t36 ).
          IF t37 IS INITIAL.
            t35 = 0.
          ELSE.
            FIND t37 IN t36 MATCH OFFSET t35.
            IF sy-subrc <> 0.
              t35 = -1.
            ENDIF.
          ENDIF.
          DATA(t39) = 0.
          t34 = xsdbool( t35 >= t39 ).
          DATA(t40) = abap_false.
          t33 = xsdbool( t34 = t40 ).
          t32 = t33.
          IF t33 = abap_true.
            DATA(t41) = VALUE abap_bool( ).
            DATA t42 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t42.
            DATA t43 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t43.
            DATA t44 TYPE REF TO zcl_lnt_structure_type.
            DATA t45 TYPE REF TO zcl_lnt_structure_type.
            DATA(t46) = t5.
            t45 ?= t46.
            t44 = t45.
            DATA t47 TYPE string.
            DATA(t48) = t22.
            t47 = t48.
            DATA t49 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t49.
            DATA t50 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            DATA(t51) = t44.
            t50 = t51->indexed.
            DATA t52 TYPE string.
            DATA(t53) = t47.
            DATA(t54) = strlen( t53 ).
            t52 = t53.
            IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t52 TO UPPER CASE.
            ELSE.
              t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
            ENDIF.
            t49 = t50->get( p0 = t52 ).
            t43 = t49.
            t42 = t43.
            DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t56.
            t55 = t56.
            DATA(t57) = VALUE abap_bool( ).
            DATA(t58) = t42.
            IF t58 IS INITIAL.
              t57 = abap_true.
            ENDIF.
            t41 = t57.
            t32 = t41.
          ENDIF.
          t31 = t32.
          IF t32 = abap_true.
            DATA(t59) = VALUE abap_bool( ).
            DATA t60 TYPE string.
            DATA(t61) = t22.
            DATA(t62) = strlen( t61 ).
            t60 = t61.
            IF t60 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t60 TO UPPER CASE.
            ELSE.
              t60 = zlnt_runtime_uppe_91169605024d=>full( t60 ).
            ENDIF.
            DATA(t63) = |TABLE_LINE|.
            t59 = xsdbool( t60 <> t63 ).
            t31 = t59.
          ENDIF.
          IF t31 = abap_true.
            DATA t64 TYPE REF TO zcl_lnt_unknown_type.
            CLEAR t64.
            DATA(t65) = abap_true.
            IF t65 = abap_true.
              DATA t66 TYPE REF TO zcl_lnt_unknown_type.
              DATA t67 TYPE string.
              DATA t68 TYPE string.
              DATA(t69) = |Field |.
              DATA(t70) = t22.
              DATA(t71) = strlen( t69 ).
              t68 = |{ t69 }{ t70 }|.
              DATA(t72) = | not part of structure|.
              DATA(t73) = strlen( t68 ).
              t67 = |{ t68 }{ t72 }|.
              DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t74.
              t66 = NEW zcl_lnt_unknown_type( i_error = t67 i_qualified_name = t74 ).
              t64 = t66.
            ELSE.
              DATA t75 TYPE REF TO zcl_lnt_unknown_type.
              CLEAR t75.
              t64 = t75.
            ENDIF.
            result = t64.
            RETURN.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDIF.
    DATA t76 TYPE REF TO zcl_lnt_unknown_type.
    CLEAR t76.
    result = t76.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d847_01e76afd58ac.
  ENDMETHOD.
ENDCLASS.
