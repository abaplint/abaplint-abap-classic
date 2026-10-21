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
    DATA(t2) = i_type_9913.
    IF xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
      DATA t5 TYPE REF TO zcl_lnt_abstract_type.
      DATA t8 TYPE REF TO zcl_lnt_ty_table_type.
      t8 ?= t2.
      t5 = t8->row_type.
      IF xsdbool( t5 IS BOUND AND t5 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
        DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t14 = i_node->find_all_expressions( i_type_9913 = t16 ).
        DATA t17 TYPE REF TO zcl_lnt_expression_node.
        DATA t18 TYPE REF TO object.
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
          DATA t24 TYPE string.
          t24 = t17->concat_tokens( ).
          DATA t26 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
          CREATE OBJECT t26 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^!| flags = ||.
          DATA(t30) = strlen( t24 ).
          t22 = t26->replace( p0 = t24 p1 = || ).
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = VALUE abap_bool( ).
          DATA(t33) = VALUE abap_bool( ).
          DATA(t35) = VALUE i( ).
          DATA(t37) = |-|.
          DATA(t38) = strlen( t22 ).
          IF t37 IS INITIAL.
            t35 = 0.
          ELSE.
            FIND t37 IN t22 MATCH OFFSET t35.
            IF sy-subrc <> 0.
              t35 = -1.
            ENDIF.
          ENDIF.
          t33 = xsdbool( xsdbool( t35 >= 0 ) = abap_false ).
          t32 = t33.
          IF t33 = abap_true.
            DATA t45 TYPE REF TO zcl_lnt_structure_type.
            t45 ?= t5.
            DATA t47 TYPE string.
            t47 = t22.
            DATA t49 TYPE REF TO zcl_lnt_abstract_type.
            CLEAR t49.
            DATA t50 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            t50 = t45->indexed.
            DATA t52 TYPE string.
            DATA(t54) = strlen( t47 ).
            t52 = t47.
            IF t52 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t52 TO UPPER CASE.
            ELSE.
              t52 = zlnt_runtime_uppe_91169605024d=>full( t52 ).
            ENDIF.
            t49 = t50->get( p0 = t52 ).
            DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t55.
            t32 = xsdbool( t49 IS INITIAL ).
          ENDIF.
          t31 = t32.
          IF t32 = abap_true.
            DATA t60 TYPE string.
            DATA(t62) = strlen( t22 ).
            t60 = t22.
            IF t60 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t60 TO UPPER CASE.
            ELSE.
              t60 = zlnt_runtime_uppe_91169605024d=>full( t60 ).
            ENDIF.
            t31 = xsdbool( t60 <> |TABLE_LINE| ).
          ENDIF.
          IF t31 = abap_true.
            DATA t67 TYPE string.
            DATA t68 TYPE string.
            DATA(t69) = |Field |.
            DATA(t71) = strlen( t69 ).
            t68 = |{ t69 }{ t22 }|.
            DATA(t73) = strlen( t68 ).
            t67 = |{ t68 }{ | not part of structure| }|.
            DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t74.
            result = NEW zcl_lnt_unknown_type( i_error = t67 i_qualified_name = t74 ).
            RETURN.
          ENDIF.
        ENDDO.
      ENDIF.
    ENDIF.
    CLEAR result.

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
