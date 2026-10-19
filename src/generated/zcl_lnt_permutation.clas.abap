* TS: src/abap/2_statements/combi.ts:755:1 Permutation
CLASS zcl_lnt_permutation DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_permutation IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_list.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE i( ).
    t1->load( ).
    t3 = lines( t1->items ).
    DATA(t5) = 2.
    t2 = xsdbool( t3 < t5 ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t10) = VALUE string( ).
      DATA(t11) = |Permutation, length error, got |.
      DATA(t12) = VALUE string( ).
      DATA(t13) = VALUE i( ).
      t1->load( ).
      t13 = lines( t1->items ).
      t12 = |{ t13 }|.
      DATA(t15) = strlen( t11 ).
      t10 = |{ t11 }{ t12 }|.
      DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t16->has = abap_true.
      t16->value = t10.
      t8 = t16.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t8 ).
      t6 = NEW #( ).
      t6->payload = t7.
      CLEAR t6->source_value.
      DATA t18 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t19 TYPE REF TO object.
      t19 = t7.
      TRY.
          t6->source_value ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6->source_value IS NOT BOUND.
        TRY.
            t18 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t18 IS BOUND.
          t6->source_value = t18->source( ).
        ENDIF.
        IF t6->source_value IS NOT BOUND.
          CREATE OBJECT t6->source_value.
          t6->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->source_value->oval = t7.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t6.
    ENDIF.
    me->list = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `list`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t1 = t2.
    DATA(t3) = me->list.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t5 TYPE REF TO object.
    DATA(t6) = VALUE i( ).
    DO.
      t3->load( ).
      IF t6 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t3->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        DATA t8 TYPE REF TO object.
        t8 = t7->as_ref( ).
        t4 ?= t8.
      ELSE.
        t4 ?= t5.
      ENDIF.
      DATA(t9) = VALUE i( ).
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t10 = t4->list_keywords( ).
      DATA(t12) = VALUE string( ).
      t10->dense( ).
      DATA(t13) = VALUE i( ).
      DO.
        t10->load( ).
        IF t13 >= lines( t10->items ).
          EXIT.
        ENDIF.
        CLEAR t12.
        READ TABLE t10->items INDEX t13 + 1 INTO t12.
        IF t10->has( t13 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t13 = t13 + 1.
        t1->load( ).
        APPEND t12 TO t1->items.
        t1->save( ).
      ENDDO.
      DATA t16 TYPE i.
      t1->load( ).
      t16 = lines( t1->items ).
      t9 = t16.
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = me->list.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO object.
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
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t14 = t5->get_using( ).
      t12 = t2->concat( p0 = t14 ).
      t2 = t12.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t5 = me->list->slice0( ).
    t4 = t5.
    DATA t7 TYPE i.
    t7 = 0.
    DO.
      DATA t9 TYPE abap_bool.
      DATA t11 TYPE i.
      DATA(t12) = me->list.
      t12->load( ).
      t11 = lines( t12->items ).
      t9 = xsdbool( t7 < t11 ).
      IF t9 = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t15.
      DATA(t16) = me->list.
      DATA(t17) = t7.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      t16->load( ).
      CLEAR t18.
      READ TABLE t16->items INDEX t17 INTO t18.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t15.
      IF t18 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t18.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t15 ?= t20.
      ELSE.
        t15 ?= t18.
      ENDIF.
      t14 = t15->run( i_r_f634 = t1 ).
      t13 = t14.
      DATA t22 TYPE abap_bool.
      DATA t23 TYPE i.
      t13->load( ).
      t23 = lines( t13->items ).
      DATA(t25) = 0.
      t22 = xsdbool( t23 <> t25 ).
      IF t22 = abap_true.
        DATA(t26) = VALUE i( ).
        DATA t28 TYPE REF TO zcl_lnt_st_result.
        CLEAR t28.
        DATA t29 TYPE REF TO object.
        CLEAR t29.
        DATA(t30) = VALUE i( ).
        DO.
          t13->load( ).
          IF t30 >= lines( t13->items ).
            EXIT.
          ENDIF.
          CLEAR t29.
          READ TABLE t13->items INDEX t30 + 1 INTO t29.
          t30 = t30 + 1.
          DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t31.
          CLEAR t28.
          IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t31 ?= t29.
            DATA t32 TYPE REF TO object.
            t32 = t31->as_ref( ).
            t28 ?= t32.
          ELSE.
            t28 ?= t29.
          ENDIF.
          t2->load( ).
          APPEND t28 TO t2->items.
          t2->save( ).
        ENDDO.
        DATA t35 TYPE i.
        t2->load( ).
        t35 = lines( t2->items ).
        t26 = t35.
        DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t37 = t4.
        DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t42) = 1.
        t39 = t37->splice2( p0 = t7 p1 = t42 ).
        DATA t43 TYPE abap_bool.
        DATA t44 TYPE i.
        t37->load( ).
        t44 = lines( t37->items ).
        DATA(t46) = 1.
        t43 = xsdbool( t44 = t46 ).
        IF t43 = abap_true.
          DATA(t47) = VALUE i( ).
          DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t48.
          DATA t49 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t49.
          DATA t51 TYPE REF TO object.
          CLEAR t51.
          t37->load( ).
          CLEAR t51.
          READ TABLE t37->items INDEX 1 INTO t51.
          DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t52.
          CLEAR t49.
          IF t51 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t52 ?= t51.
            DATA t53 TYPE REF TO object.
            t53 = t52->as_ref( ).
            t49 ?= t53.
          ELSE.
            t49 ?= t51.
          ENDIF.
          t48 = t49->run( i_r_f634 = t13 ).
          DATA t55 TYPE REF TO zcl_lnt_st_result.
          CLEAR t55.
          DATA t56 TYPE REF TO object.
          CLEAR t56.
          DATA(t57) = VALUE i( ).
          DO.
            t48->load( ).
            IF t57 >= lines( t48->items ).
              EXIT.
            ENDIF.
            CLEAR t56.
            READ TABLE t48->items INDEX t57 + 1 INTO t56.
            t57 = t57 + 1.
            DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t58.
            CLEAR t55.
            IF t56 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t58 ?= t56.
              DATA t59 TYPE REF TO object.
              t59 = t58->as_ref( ).
              t55 ?= t59.
            ELSE.
              t55 ?= t56.
            ENDIF.
            t2->load( ).
            APPEND t55 TO t2->items.
            t2->save( ).
          ENDDO.
          DATA t62 TYPE i.
          t2->load( ).
          t62 = lines( t2->items ).
          t47 = t62.
        ELSE.
          DATA(t64) = VALUE i( ).
          DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t66 TYPE REF TO zcl_lnt_permutation.
          t66 = NEW zcl_lnt_permutation( i_list = t37 ).
          t65 = t66->run( i_r_f634 = t13 ).
          DATA t69 TYPE REF TO zcl_lnt_st_result.
          CLEAR t69.
          DATA t70 TYPE REF TO object.
          CLEAR t70.
          DATA(t71) = VALUE i( ).
          DO.
            t65->load( ).
            IF t71 >= lines( t65->items ).
              EXIT.
            ENDIF.
            CLEAR t70.
            READ TABLE t65->items INDEX t71 + 1 INTO t70.
            t71 = t71 + 1.
            DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t72.
            CLEAR t69.
            IF t70 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t72 ?= t70.
              DATA t73 TYPE REF TO object.
              t73 = t72->as_ref( ).
              t69 ?= t73.
            ELSE.
              t69 ?= t70.
            ENDIF.
            t2->load( ).
            APPEND t69 TO t2->items.
            t2->save( ).
          ENDDO.
          DATA t76 TYPE i.
          t2->load( ).
          t76 = lines( t2->items ).
          t64 = t76.
        ENDIF.
      ENDIF.
      DATA t78 TYPE i.
      DATA(t80) = 1.
      t78 = t7 + t80.
      t7 = t78.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = me->list.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t5->load( ).
      IF t8 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t5->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t12 TYPE string.
      t12 = t6->railroad( ).
      t3->load( ).
      APPEND t12 TO t3->items.
      t3->save( ).
    ENDDO.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA(t17) = |Railroad.MultipleChoice(0, 'any',|.
    DATA t18 TYPE string.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t18 = t3->join( p0 = t20 ).
    DATA(t21) = strlen( t17 ).
    t16 = |{ t17 }{ t18 }|.
    DATA(t22) = |)|.
    DATA(t23) = strlen( t16 ).
    t15 = |{ t16 }{ t22 }|.
    result = t15.

  ENDMETHOD.

  METHOD to_str.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = me->list.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t5->load( ).
      IF t8 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t5->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA t12 TYPE string.
      t12 = t6->to_str( ).
      t3->load( ).
      APPEND t12 TO t3->items.
      t3->save( ).
    ENDDO.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA(t17) = |per(|.
    DATA t18 TYPE string.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t18 = t3->join( p0 = t20 ).
    DATA(t21) = strlen( t17 ).
    t16 = |{ t17 }{ t18 }|.
    DATA(t22) = |)|.
    DATA(t23) = strlen( t16 ).
    t15 = |{ t16 }{ t22 }|.
    result = t15.

  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t5) = ||.
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    result = t2.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    t4->load( ).
    APPEND t1 TO t4->items.
    t4->save( ).
    t3 = t4.
    t2 = me->run( i_r_f634 = t3 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d76_5437907f301eb2.
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
