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
    DATA(t1) = i_optional.
    DATA(t2) = t1.
    me->optional = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `optional`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->optional.
    t1 = t2->list_keywords( ).
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->optional.
    t1 = t2->get_using( ).
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zcl_lnt_st_result.
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
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t12) = me->optional.
      DATA(t13) = t5.
      t11 = t12->run_one( i_x = t13 ).
      t10 = t11.
      DATA t14 TYPE abap_bool.
      DATA t15 TYPE i.
      DATA(t16) = t10.
      t16->load( ).
      t15 = lines( t16->items ).
      DATA(t17) = 1.
      t14 = xsdbool( t15 > t17 ).
      IF t14 = abap_true.
        DATA(t18) = VALUE i( ).
        DATA(t19) = t10.
        DATA t20 TYPE REF TO zcl_lnt_st_result.
        CLEAR t20.
        DATA t21 TYPE REF TO object.
        CLEAR t21.
        DATA(t22) = VALUE i( ).
        DO.
          t19->load( ).
          IF t22 >= lines( t19->items ).
            EXIT.
          ENDIF.
          CLEAR t21.
          READ TABLE t19->items INDEX t22 + 1 INTO t21.
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
        t18 = t27.
      ELSE.
        DATA t29 TYPE abap_bool.
        DATA t30 TYPE i.
        DATA(t31) = t10.
        t31->load( ).
        t30 = lines( t31->items ).
        DATA(t32) = 0.
        t29 = xsdbool( t30 = t32 ).
        IF t29 = abap_true.
          DATA(t33) = t2.
          DATA(t34) = t5.
          t33->load( ).
          APPEND t34 TO t33->items.
          t33->save( ).
        ELSE.
          DATA(t35) = VALUE abap_bool( ).
          DATA(t36) = VALUE int8( ).
          DATA(t37) = VALUE f( ).
          DATA t38 TYPE REF TO zcl_lnt_st_result.
          CLEAR t38.
          DATA t39 TYPE REF TO zcl_lnt_st_result.
          CLEAR t39.
          DATA(t40) = t10.
          DATA t41 TYPE REF TO object.
          CLEAR t41.
          t40->load( ).
          CLEAR t41.
          READ TABLE t40->items INDEX 1 INTO t41.
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
          DATA t47 TYPE i.
          DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t49) = t38.
          t48 = t49->tokens.
          t48->load( ).
          t47 = lines( t48->items ).
          t46 = t47.
          DATA t50 TYPE int8.
          DATA t51 TYPE i.
          DATA(t52) = t38.
          t51 = t52->token_index.
          t50 = t51.
          t45 = t46 - t50.
          t44 = t45.
          t37 = t44.
          t36 = t37.
          DATA t53 TYPE int8.
          DATA t54 TYPE f.
          DATA t55 TYPE REF TO zcl_lnt_st_result.
          DATA(t56) = t5.
          t55 = t56.
          DATA t57 TYPE f.
          DATA t58 TYPE int8.
          DATA t59 TYPE int8.
          DATA t60 TYPE i.
          DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t62) = t55.
          t61 = t62->tokens.
          t61->load( ).
          t60 = lines( t61->items ).
          t59 = t60.
          DATA t63 TYPE int8.
          DATA t64 TYPE i.
          DATA(t65) = t55.
          t64 = t65->token_index.
          t63 = t64.
          t58 = t59 - t63.
          t57 = t58.
          t54 = t57.
          t53 = t54.
          t35 = xsdbool( t36 < t53 ).
          IF t35 = abap_true.
            DATA(t66) = VALUE i( ).
            DATA(t67) = t10.
            DATA t68 TYPE REF TO zcl_lnt_st_result.
            CLEAR t68.
            DATA t69 TYPE REF TO object.
            CLEAR t69.
            DATA(t70) = VALUE i( ).
            DO.
              t67->load( ).
              IF t70 >= lines( t67->items ).
                EXIT.
              ENDIF.
              CLEAR t69.
              READ TABLE t67->items INDEX t70 + 1 INTO t69.
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
              DATA(t73) = t2.
              DATA(t74) = t68.
              t73->load( ).
              APPEND t74 TO t73->items.
              t73->save( ).
            ENDDO.
            DATA t75 TYPE i.
            DATA(t76) = t2.
            t76->load( ).
            t75 = lines( t76->items ).
            t66 = t75.
          ELSE.
            DATA(t77) = t2.
            DATA(t78) = t5.
            t77->load( ).
            APPEND t78 TO t77->items.
            t77->save( ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t79) = t2.
    result = t79.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.Optional(|.
    DATA t4 TYPE string.
    DATA(t5) = me->optional.
    t4 = t5->railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |opt(|.
    DATA t4 TYPE string.
    DATA(t5) = me->optional.
    t4 = t5->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = ||.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = t2.
    t1 = t6.
    result = t1.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_st_result.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t8) = me->optional.
    DATA(t9) = t4.
    t7 = t8->run_one( i_x = t9 ).
    t6 = t7.
    DATA t10 TYPE abap_bool.
    DATA t11 TYPE i.
    DATA(t12) = t6.
    t12->load( ).
    t11 = lines( t12->items ).
    DATA(t13) = 1.
    t10 = xsdbool( t11 > t13 ).
    IF t10 = abap_true.
      DATA(t14) = VALUE i( ).
      DATA(t15) = t6.
      DATA t16 TYPE REF TO zcl_lnt_st_result.
      CLEAR t16.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      DATA(t18) = VALUE i( ).
      DO.
        t15->load( ).
        IF t18 >= lines( t15->items ).
          EXIT.
        ENDIF.
        CLEAR t17.
        READ TABLE t15->items INDEX t18 + 1 INTO t17.
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
        DATA(t21) = t2.
        DATA(t22) = t16.
        t21->load( ).
        APPEND t22 TO t21->items.
        t21->save( ).
      ENDDO.
      DATA t23 TYPE i.
      DATA(t24) = t2.
      t24->load( ).
      t23 = lines( t24->items ).
      t14 = t23.
    ELSE.
      DATA t25 TYPE abap_bool.
      DATA t26 TYPE i.
      DATA(t27) = t6.
      t27->load( ).
      t26 = lines( t27->items ).
      DATA(t28) = 0.
      t25 = xsdbool( t26 = t28 ).
      IF t25 = abap_true.
        DATA(t29) = t2.
        DATA(t30) = t4.
        t29->load( ).
        APPEND t30 TO t29->items.
        t29->save( ).
      ELSE.
        DATA(t31) = VALUE abap_bool( ).
        DATA(t32) = VALUE int8( ).
        DATA(t33) = VALUE f( ).
        DATA t34 TYPE REF TO zcl_lnt_st_result.
        CLEAR t34.
        DATA t35 TYPE REF TO zcl_lnt_st_result.
        CLEAR t35.
        DATA(t36) = t6.
        DATA t37 TYPE REF TO object.
        CLEAR t37.
        t36->load( ).
        CLEAR t37.
        READ TABLE t36->items INDEX 1 INTO t37.
        DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t38.
        CLEAR t35.
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
        DATA t43 TYPE i.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t45) = t34.
        t44 = t45->tokens.
        t44->load( ).
        t43 = lines( t44->items ).
        t42 = t43.
        DATA t46 TYPE int8.
        DATA t47 TYPE i.
        DATA(t48) = t34.
        t47 = t48->token_index.
        t46 = t47.
        t41 = t42 - t46.
        t40 = t41.
        t33 = t40.
        t32 = t33.
        DATA t49 TYPE int8.
        DATA t50 TYPE f.
        DATA t51 TYPE REF TO zcl_lnt_st_result.
        DATA(t52) = t4.
        t51 = t52.
        DATA t53 TYPE f.
        DATA t54 TYPE int8.
        DATA t55 TYPE int8.
        DATA t56 TYPE i.
        DATA t57 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t58) = t51.
        t57 = t58->tokens.
        t57->load( ).
        t56 = lines( t57->items ).
        t55 = t56.
        DATA t59 TYPE int8.
        DATA t60 TYPE i.
        DATA(t61) = t51.
        t60 = t61->token_index.
        t59 = t60.
        t54 = t55 - t59.
        t53 = t54.
        t50 = t53.
        t49 = t50.
        t31 = xsdbool( t32 < t49 ).
        IF t31 = abap_true.
          DATA(t62) = VALUE i( ).
          DATA(t63) = t6.
          DATA t64 TYPE REF TO zcl_lnt_st_result.
          CLEAR t64.
          DATA t65 TYPE REF TO object.
          CLEAR t65.
          DATA(t66) = VALUE i( ).
          DO.
            t63->load( ).
            IF t66 >= lines( t63->items ).
              EXIT.
            ENDIF.
            CLEAR t65.
            READ TABLE t63->items INDEX t66 + 1 INTO t65.
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
            DATA(t69) = t2.
            DATA(t70) = t64.
            t69->load( ).
            APPEND t70 TO t69->items.
            t69->save( ).
          ENDDO.
          DATA t71 TYPE i.
          DATA(t72) = t2.
          t72->load( ).
          t71 = lines( t72->items ).
          t62 = t71.
        ELSE.
          DATA(t73) = t2.
          DATA(t74) = t4.
          t73->load( ).
          APPEND t74 TO t73->items.
          t73->save( ).
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t75) = t2.
    result = t75.

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
