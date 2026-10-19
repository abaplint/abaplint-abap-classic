* TS: src/abap/2_statements/combi.ts:586:1 Sequence
CLASS zcl_lnt_st_sequence DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_sequence IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_list.
    t1->load( ).
    IF xsdbool( lines( t1->items ) < 2 ) = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = |Sequence, length error|.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t11 ).
      t6 = NEW #( ).
      t6->payload = t7.
      CLEAR t6->source_value.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t14 TYPE REF TO object.
      t14 = t7.
      TRY.
          t6->source_value ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6->source_value IS NOT BOUND.
        TRY.
            t13 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t6->source_value = t13->source( ).
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
    CREATE OBJECT t1.
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
      t1->load( ).
      t9 = lines( t1->items ).
    ENDDO.
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
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
      t2 = t2->concat( p0 = t5->get_using( ) ).
    ENDDO.
    result = t2.

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
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t12.
      t12->load( ).
      APPEND t5 TO t12->items.
      t12->save( ).
      t10 = t12.
      DATA t17 TYPE abap_bool.
      t17 = abap_true.
      DATA(t19) = me->list.
      DATA t20 TYPE REF TO zif_lnt_statement_runnable.
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
        t10 = t20->run( i_r_f634 = t10 ).
        t10->load( ).
        IF xsdbool( lines( t10->items ) = 0 ) = abap_true.
          t17 = abap_false.
          EXIT.
        ENDIF.
      ENDDO.
      IF xsdbool( t17 = abap_true ) = abap_true.
        t10->load( ).
        IF xsdbool( lines( t10->items ) > 1000 ) = abap_true.
          t2 = t2->concat( p0 = t10 ).
        ELSE.
          t10->load( ).
          IF xsdbool( lines( t10->items ) = 1 ) = abap_true.
            DATA t48 TYPE REF TO zcl_lnt_st_result.
            CLEAR t48.
            DATA t50 TYPE REF TO object.
            CLEAR t50.
            t10->load( ).
            CLEAR t50.
            READ TABLE t10->items INDEX 1 INTO t50.
            DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t51.
            CLEAR t48.
            IF t50 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t51 ?= t50.
              DATA t52 TYPE REF TO object.
              t52 = t51->as_ref( ).
              t48 ?= t52.
            ELSE.
              t48 ?= t50.
            ENDIF.
            t2->load( ).
            APPEND t48 TO t2->items.
            t2->save( ).
          ELSE.
            DATA(t53) = VALUE i( ).
            DATA t55 TYPE REF TO zcl_lnt_st_result.
            CLEAR t55.
            DATA t56 TYPE REF TO object.
            CLEAR t56.
            DATA(t57) = VALUE i( ).
            DO.
              t10->load( ).
              IF t57 >= lines( t10->items ).
                EXIT.
              ENDIF.
              CLEAR t56.
              READ TABLE t10->items INDEX t57 + 1 INTO t56.
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
            t2->load( ).
            t53 = lines( t2->items ).
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
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
    DATA t16 TYPE string.
    DATA(t17) = |Railroad.Sequence(|.
    DATA t18 TYPE string.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t18 = t3->join( p0 = t20 ).
    DATA(t21) = strlen( t17 ).
    t16 = |{ t17 }{ t18 }|.
    DATA(t23) = strlen( t16 ).
    result = |{ t16 }{ |)| }|.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    t1 = ||.
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
      DATA t10 TYPE string.
      DATA(t11) = t1.
      DATA t12 TYPE string.
      t12 = t4->to_str( ).
      DATA(t14) = strlen( t11 ).
      t10 = |{ t11 }{ t12 }|.
      DATA(t16) = strlen( t10 ).
      t1 = |{ t10 }{ |,| }|.
    ENDDO.
    DATA t18 TYPE string.
    DATA(t19) = |seq(|.
    DATA(t21) = strlen( t19 ).
    t18 = |{ t19 }{ t1 }|.
    DATA(t23) = strlen( t18 ).
    result = |{ t18 }{ |)| }|.

  ENDMETHOD.

  METHOD first.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t3) = me->list.
    DATA t4 TYPE REF TO object.
    t3->load( ).
    READ TABLE t3->items INDEX 1 INTO t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t5 ?= t4.
      DATA t6 TYPE REF TO object.
      t6 = t5->as_ref( ).
      t2 ?= t6.
    ELSE.
      t2 ?= t4.
    ENDIF.
    result = t2->first( ).

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t8->load( ).
    APPEND t1 TO t8->items.
    t8->save( ).
    t6 = t8.
    DATA t13 TYPE abap_bool.
    t13 = abap_true.
    DATA(t15) = me->list.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    DATA t17 TYPE REF TO object.
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
      t6 = t16->run( i_r_f634 = t6 ).
      t6->load( ).
      IF xsdbool( lines( t6->items ) = 0 ) = abap_true.
        t13 = abap_false.
        EXIT.
      ENDIF.
    ENDDO.
    IF xsdbool( t13 = abap_true ) = abap_true.
      t6->load( ).
      IF xsdbool( lines( t6->items ) > 1000 ) = abap_true.
        t2 = t2->concat( p0 = t6 ).
      ELSE.
        t6->load( ).
        IF xsdbool( lines( t6->items ) = 1 ) = abap_true.
          DATA t44 TYPE REF TO zcl_lnt_st_result.
          DATA t46 TYPE REF TO object.
          t6->load( ).
          READ TABLE t6->items INDEX 1 INTO t46.
          DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t47 ?= t46.
            DATA t48 TYPE REF TO object.
            t48 = t47->as_ref( ).
            t44 ?= t48.
          ELSE.
            t44 ?= t46.
          ENDIF.
          t2->load( ).
          APPEND t44 TO t2->items.
          t2->save( ).
        ELSE.
          DATA(t49) = VALUE i( ).
          DATA t51 TYPE REF TO zcl_lnt_st_result.
          DATA t52 TYPE REF TO object.
          DATA(t53) = VALUE i( ).
          DO.
            t6->load( ).
            IF t53 >= lines( t6->items ).
              EXIT.
            ENDIF.
            CLEAR t52.
            READ TABLE t6->items INDEX t53 + 1 INTO t52.
            t53 = t53 + 1.
            DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t54.
            CLEAR t51.
            IF t52 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t54 ?= t52.
              DATA t55 TYPE REF TO object.
              t55 = t54->as_ref( ).
              t51 ?= t55.
            ELSE.
              t51 ?= t52.
            ENDIF.
            t2->load( ).
            APPEND t51 TO t2->items.
            t2->save( ).
          ENDDO.
          t2->load( ).
          t49 = lines( t2->items ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d73_29e7910c338672.
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
