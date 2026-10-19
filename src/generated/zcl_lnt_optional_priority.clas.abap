* TS: src/abap/2_statements/combi.ts:302:1 OptionalPriority
CLASS zcl_lnt_optional_priority DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA optional TYPE REF TO zif_lnt_statement_runnable.
    METHODS constructor IMPORTING i_optional TYPE REF TO zif_lnt_statement_runnable.
    METHODS list_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS to_str RETURNING VALUE(result) TYPE string.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run_one IMPORTING i_x TYPE REF TO zcl_lnt_st_result RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_optional_priority IMPLEMENTATION.
  METHOD constructor.
    me->optional = i_optional.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `optional`.
  ENDMETHOD.

  METHOD list_keywords.
    result = me->optional->list_keywords( ).

  ENDMETHOD.

  METHOD get_using.
    result = me->optional->get_using( ).

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zcl_lnt_st_result.
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
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t10 = me->optional->run_one( i_x = t5 ).
      t10->load( ).
      IF xsdbool( lines( t10->items ) > 1 ) = abap_true.
        DATA(t18) = VALUE i( ).
        DATA t20 TYPE REF TO zcl_lnt_st_result.
        CLEAR t20.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        DATA(t22) = VALUE i( ).
        DO.
          t10->load( ).
          IF t22 >= lines( t10->items ).
            EXIT.
          ENDIF.
          CLEAR t21.
          READ TABLE t10->items INDEX t22 + 1 INTO t21.
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
        t18 = lines( t2->items ).
      ELSE.
        t10->load( ).
        IF xsdbool( lines( t10->items ) = 0 ) = abap_true.
          t2->load( ).
          APPEND t5 TO t2->items.
          t2->save( ).
        ELSE.
          DATA(t36) = VALUE int8( ).
          DATA t38 TYPE REF TO zcl_lnt_st_result.
          CLEAR t38.
          DATA t39 TYPE REF TO zcl_lnt_st_result.
          CLEAR t39.
          DATA t41 TYPE REF TO object.
          CLEAR t41.
          t10->load( ).
          CLEAR t41.
          READ TABLE t10->items INDEX 1 INTO t41.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t42.
          CLEAR t39.
          IF t41 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t42 ?= t41.
            DATA t43 TYPE REF TO object.
            t43 = t42->as_ref( ).
            t39 ?= t43.
          ELSE.
            t39 ?= t41.
          ENDIF.
          t38 = t39.
          DATA t44 TYPE f.
          DATA t45 TYPE int8.
          DATA t46 TYPE int8.
          DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t48 = t38->tokens.
          t48->load( ).
          t46 = lines( t48->items ).
          DATA t50 TYPE int8.
          t50 = t38->token_index.
          t45 = t46 - t50.
          t44 = t45.
          t36 = t44.
          DATA t53 TYPE int8.
          DATA t55 TYPE REF TO zcl_lnt_st_result.
          t55 = t5.
          DATA t57 TYPE f.
          DATA t58 TYPE int8.
          DATA t59 TYPE int8.
          DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t61 = t55->tokens.
          t61->load( ).
          t59 = lines( t61->items ).
          DATA t63 TYPE int8.
          t63 = t55->token_index.
          t58 = t59 - t63.
          t57 = t58.
          t53 = t57.
          IF xsdbool( t36 < t53 ) = abap_true.
            DATA(t66) = VALUE i( ).
            DATA t68 TYPE REF TO zcl_lnt_st_result.
            CLEAR t68.
            DATA t69 TYPE REF TO object.
            CLEAR t69.
            DATA(t70) = VALUE i( ).
            DO.
              t10->load( ).
              IF t70 >= lines( t10->items ).
                EXIT.
              ENDIF.
              CLEAR t69.
              READ TABLE t10->items INDEX t70 + 1 INTO t69.
              t70 = t70 + 1.
              DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t71.
              CLEAR t68.
              IF t69 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t71 ?= t69.
                DATA t72 TYPE REF TO object.
                t72 = t71->as_ref( ).
                t68 ?= t72.
              ELSE.
                t68 ?= t69.
              ENDIF.
              t2->load( ).
              APPEND t68 TO t2->items.
              t2->save( ).
            ENDDO.
            t2->load( ).
            t66 = lines( t2->items ).
          ELSE.
            t2->load( ).
            APPEND t5 TO t2->items.
            t2->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.Optional(|.
    DATA t4 TYPE string.
    t4 = me->optional->railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD to_str.
    DATA t2 TYPE string.
    DATA(t3) = |opt(|.
    DATA t4 TYPE string.
    t4 = me->optional->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t2->load( ).
    APPEND || TO t2->items.
    t2->save( ).
    result = t2.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_st_result.
    t4 = t1.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->optional->run_one( i_x = t4 ).
    t6->load( ).
    IF xsdbool( lines( t6->items ) > 1 ) = abap_true.
      DATA(t14) = VALUE i( ).
      DATA t16 TYPE REF TO zcl_lnt_st_result.
      DATA t17 TYPE REF TO object.
      DATA(t18) = VALUE i( ).
      DO.
        t6->load( ).
        IF t18 >= lines( t6->items ).
          EXIT.
        ENDIF.
        CLEAR t17.
        READ TABLE t6->items INDEX t18 + 1 INTO t17.
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
        t2->load( ).
        APPEND t16 TO t2->items.
        t2->save( ).
      ENDDO.
      t2->load( ).
      t14 = lines( t2->items ).
    ELSE.
      t6->load( ).
      IF xsdbool( lines( t6->items ) = 0 ) = abap_true.
        t2->load( ).
        APPEND t4 TO t2->items.
        t2->save( ).
      ELSE.
        DATA(t32) = VALUE int8( ).
        DATA t34 TYPE REF TO zcl_lnt_st_result.
        DATA t35 TYPE REF TO zcl_lnt_st_result.
        DATA t37 TYPE REF TO object.
        t6->load( ).
        READ TABLE t6->items INDEX 1 INTO t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t38 ?= t37.
          DATA t39 TYPE REF TO object.
          t39 = t38->as_ref( ).
          t35 ?= t39.
        ELSE.
          t35 ?= t37.
        ENDIF.
        t34 = t35.
        DATA t40 TYPE f.
        DATA t41 TYPE int8.
        DATA t42 TYPE int8.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t44 = t34->tokens.
        t44->load( ).
        t42 = lines( t44->items ).
        DATA t46 TYPE int8.
        t46 = t34->token_index.
        t41 = t42 - t46.
        t40 = t41.
        t32 = t40.
        DATA t49 TYPE int8.
        DATA t51 TYPE REF TO zcl_lnt_st_result.
        t51 = t4.
        DATA t53 TYPE f.
        DATA t54 TYPE int8.
        DATA t55 TYPE int8.
        DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t57 = t51->tokens.
        t57->load( ).
        t55 = lines( t57->items ).
        DATA t59 TYPE int8.
        t59 = t51->token_index.
        t54 = t55 - t59.
        t53 = t54.
        t49 = t53.
        IF xsdbool( t32 < t49 ) = abap_true.
          DATA(t62) = VALUE i( ).
          DATA t64 TYPE REF TO zcl_lnt_st_result.
          DATA t65 TYPE REF TO object.
          DATA(t66) = VALUE i( ).
          DO.
            t6->load( ).
            IF t66 >= lines( t6->items ).
              EXIT.
            ENDIF.
            CLEAR t65.
            READ TABLE t6->items INDEX t66 + 1 INTO t65.
            t66 = t66 + 1.
            DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t67.
            CLEAR t64.
            IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t67 ?= t65.
              DATA t68 TYPE REF TO object.
              t68 = t67->as_ref( ).
              t64 ?= t68.
            ELSE.
              t64 ?= t65.
            ENDIF.
            t2->load( ).
            APPEND t64 TO t2->items.
            t2->save( ).
          ENDDO.
          t2->load( ).
          t62 = lines( t2->items ).
        ELSE.
          t2->load( ).
          APPEND t4 TO t2->items.
          t2->save( ).
        ENDIF.
      ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d67_240fd7d3d1958c.
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run.
    result = me->run( i_r_f634 = i_r_f634 ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~railroad.
    result = me->railroad( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~to_str.
    result = me->to_str( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~list_keywords.
    result = me->list_keywords( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~first.
    result = me->first( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run_one.
    result = me->run_one( i_x = i_x ).
  ENDMETHOD.

  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
