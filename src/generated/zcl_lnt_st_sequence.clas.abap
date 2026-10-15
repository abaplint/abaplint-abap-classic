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
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE i( ).
    DATA(t4) = t1.
    t4->load( ).
    t3 = lines( t4->items ).
    DATA(t5) = 2.
    t2 = xsdbool( t3 < t5 ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t6.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = |Sequence, length error|.
        DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t11->has = abap_true.
        t11->value = t10.
        t8 = t11.
      ELSE.
        DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t12.
        t8 = t12.
      ENDIF.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t8 ).
      t6 = NEW #( ).
      t6->payload = t7.
      CLEAR t6->source_value.
      IF t7 IS BOUND.
        DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t13.
        DATA t14 TYPE REF TO object.
        CLEAR t14.
        CLEAR t13.
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
      ENDIF.
      RAISE EXCEPTION t6.
    ENDIF.
    DATA(t15) = t1.
    me->list = t15.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `list`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t1 = t2.
    DATA(t3) = me->list.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
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
      DATA(t11) = t4.
      t10 = t11->list_keywords( ).
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
        DATA(t14) = t1.
        DATA(t15) = t12.
        t14->load( ).
        APPEND t15 TO t14->items.
        t14->save( ).
      ENDDO.
      DATA t16 TYPE i.
      DATA(t17) = t1.
      t17->load( ).
      t16 = lines( t17->items ).
      t9 = t16.
    ENDDO.
    DATA(t18) = t1.
    result = t18.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = me->list.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
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
      DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t11) = t2.
      t10 = t11.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t13) = t10.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t15) = t5.
      t14 = t15->get_using( ).
      t12 = t13->concat( p0 = t14 ).
      t2 = t12.
    ENDDO.
    DATA(t16) = t2.
    t1 = t16.
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
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = t5.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      t11 = t16.
      t10 = t11.
      DATA t17 TYPE abap_bool.
      DATA(t18) = abap_true.
      t17 = t18.
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
        DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t26) = t20.
        DATA(t27) = t10.
        t25 = t26->run( i_r_f634 = t27 ).
        t10 = t25.
        DATA t28 TYPE abap_bool.
        DATA t29 TYPE i.
        DATA(t30) = t10.
        t30->load( ).
        t29 = lines( t30->items ).
        DATA(t31) = 0.
        t28 = xsdbool( t29 = t31 ).
        IF t28 = abap_true.
          DATA(t32) = abap_false.
          t17 = t32.
          EXIT.
        ENDIF.
      ENDDO.
      DATA t33 TYPE abap_bool.
      DATA(t34) = t17.
      DATA(t35) = abap_true.
      t33 = xsdbool( t34 = t35 ).
      IF t33 = abap_true.
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE i.
        DATA(t38) = t10.
        t38->load( ).
        t37 = lines( t38->items ).
        DATA(t39) = 1000.
        t36 = xsdbool( t37 > t39 ).
        IF t36 = abap_true.
          DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t41) = t2.
          DATA(t42) = t10.
          t40 = t41->concat( p0 = t42 ).
          t2 = t40.
        ELSE.
          DATA t43 TYPE abap_bool.
          DATA t44 TYPE i.
          DATA(t45) = t10.
          t45->load( ).
          t44 = lines( t45->items ).
          DATA(t46) = 1.
          t43 = xsdbool( t44 = t46 ).
          IF t43 = abap_true.
            DATA(t47) = t2.
            DATA t48 TYPE REF TO zcl_lnt_st_result.
            CLEAR t48.
            DATA(t49) = t10.
            DATA t50 TYPE REF TO object.
            CLEAR t50.
            t49->load( ).
            CLEAR t50.
            READ TABLE t49->items INDEX 1 INTO t50.
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
            t47->load( ).
            APPEND t48 TO t47->items.
            t47->save( ).
          ELSE.
            DATA(t53) = VALUE i( ).
            DATA(t54) = t10.
            DATA t55 TYPE REF TO zcl_lnt_st_result.
            CLEAR t55.
            DATA t56 TYPE REF TO object.
            CLEAR t56.
            DATA(t57) = VALUE i( ).
            DO.
              t54->load( ).
              IF t57 >= lines( t54->items ).
                EXIT.
              ENDIF.
              CLEAR t56.
              READ TABLE t54->items INDEX t57 + 1 INTO t56.
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
              DATA(t60) = t2.
              DATA(t61) = t55.
              t60->load( ).
              APPEND t61 TO t60->items.
              t60->save( ).
            ENDDO.
            DATA t62 TYPE i.
            DATA(t63) = t2.
            t63->load( ).
            t62 = lines( t63->items ).
            t53 = t62.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA(t64) = t2.
    result = t64.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = me->list.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
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
      DATA(t11) = t3.
      DATA t12 TYPE string.
      DATA(t13) = t6.
      t12 = t13->railroad( ).
      t11->load( ).
      APPEND t12 TO t11->items.
      t11->save( ).
    ENDDO.
    DATA(t14) = t3.
    t2 = t14.
    t1 = t2.
    DATA t15 TYPE string.
    DATA t16 TYPE string.
    DATA(t17) = |Railroad.Sequence(|.
    DATA t18 TYPE string.
    DATA(t19) = t1.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    t18 = t19->join( p0 = t20 ).
    DATA(t21) = strlen( t17 ).
    t16 = |{ t17 }{ t18 }|.
    DATA(t22) = |)|.
    DATA(t23) = strlen( t16 ).
    t15 = |{ t16 }{ t22 }|.
    result = t15.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA(t2) = ||.
    t1 = t2.
    DATA(t3) = me->list.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t4.
    DATA t5 TYPE REF TO object.
    CLEAR t5.
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
      DATA t9 TYPE string.
      DATA t10 TYPE string.
      DATA(t11) = t1.
      DATA t12 TYPE string.
      DATA(t13) = t4.
      t12 = t13->to_str( ).
      DATA(t14) = strlen( t11 ).
      t10 = |{ t11 }{ t12 }|.
      DATA(t15) = |,|.
      DATA(t16) = strlen( t10 ).
      t9 = |{ t10 }{ t15 }|.
      t1 = t9.
    ENDDO.
    DATA t17 TYPE string.
    DATA t18 TYPE string.
    DATA(t19) = |seq(|.
    DATA(t20) = t1.
    DATA(t21) = strlen( t19 ).
    t18 = |{ t19 }{ t20 }|.
    DATA(t22) = |)|.
    DATA(t23) = strlen( t18 ).
    t17 = |{ t18 }{ t22 }|.
    result = t17.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t1.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA(t3) = me->list.
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    t3->load( ).
    CLEAR t4.
    READ TABLE t3->items INDEX 1 INTO t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    CLEAR t2.
    IF t4 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t5 ?= t4.
      DATA t6 TYPE REF TO object.
      t6 = t5->as_ref( ).
      t2 ?= t6.
    ELSE.
      t2 ?= t4.
    ENDIF.
    t1 = t2->first( ).
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
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA(t10) = t8.
    DATA(t11) = t4.
    t10->load( ).
    APPEND t11 TO t10->items.
    t10->save( ).
    DATA(t12) = t8.
    t7 = t12.
    t6 = t7.
    DATA t13 TYPE abap_bool.
    DATA(t14) = abap_true.
    t13 = t14.
    DATA(t15) = me->list.
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
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
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t22) = t16.
      DATA(t23) = t6.
      t21 = t22->run( i_r_f634 = t23 ).
      t6 = t21.
      DATA t24 TYPE abap_bool.
      DATA t25 TYPE i.
      DATA(t26) = t6.
      t26->load( ).
      t25 = lines( t26->items ).
      DATA(t27) = 0.
      t24 = xsdbool( t25 = t27 ).
      IF t24 = abap_true.
        DATA(t28) = abap_false.
        t13 = t28.
        EXIT.
      ENDIF.
    ENDDO.
    DATA t29 TYPE abap_bool.
    DATA(t30) = t13.
    DATA(t31) = abap_true.
    t29 = xsdbool( t30 = t31 ).
    IF t29 = abap_true.
      DATA t32 TYPE abap_bool.
      DATA t33 TYPE i.
      DATA(t34) = t6.
      t34->load( ).
      t33 = lines( t34->items ).
      DATA(t35) = 1000.
      t32 = xsdbool( t33 > t35 ).
      IF t32 = abap_true.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t37) = t2.
        DATA(t38) = t6.
        t36 = t37->concat( p0 = t38 ).
        t2 = t36.
      ELSE.
        DATA t39 TYPE abap_bool.
        DATA t40 TYPE i.
        DATA(t41) = t6.
        t41->load( ).
        t40 = lines( t41->items ).
        DATA(t42) = 1.
        t39 = xsdbool( t40 = t42 ).
        IF t39 = abap_true.
          DATA(t43) = t2.
          DATA t44 TYPE REF TO zcl_lnt_st_result.
          CLEAR t44.
          DATA(t45) = t6.
          DATA t46 TYPE REF TO object.
          CLEAR t46.
          t45->load( ).
          CLEAR t46.
          READ TABLE t45->items INDEX 1 INTO t46.
          DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t47.
          CLEAR t44.
          IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t47 ?= t46.
            DATA t48 TYPE REF TO object.
            t48 = t47->as_ref( ).
            t44 ?= t48.
          ELSE.
            t44 ?= t46.
          ENDIF.
          t43->load( ).
          APPEND t44 TO t43->items.
          t43->save( ).
        ELSE.
          DATA(t49) = VALUE i( ).
          DATA(t50) = t6.
          DATA t51 TYPE REF TO zcl_lnt_st_result.
          CLEAR t51.
          DATA t52 TYPE REF TO object.
          CLEAR t52.
          DATA(t53) = VALUE i( ).
          DO.
            t50->load( ).
            IF t53 >= lines( t50->items ).
              EXIT.
            ENDIF.
            CLEAR t52.
            READ TABLE t50->items INDEX t53 + 1 INTO t52.
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
            DATA(t56) = t2.
            DATA(t57) = t51.
            t56->load( ).
            APPEND t57 TO t56->items.
            t56->save( ).
          ENDDO.
          DATA t58 TYPE i.
          DATA(t59) = t2.
          t59->load( ).
          t58 = lines( t59->items ).
          t49 = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t60) = t2.
    result = t60.

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
