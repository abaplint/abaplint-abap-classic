* TS: src/abap/2_statements/combi.ts:948:1 AlternativePriority
CLASS zcl_lnt_alternative_priority DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_alternative_priority IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_list.
    t1->load( ).
    IF xsdbool( lines( t1->items ) < 2 ) = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = |Alternative, length error|.
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
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t10 = t5->run( i_r_f634 = t1 ).
      t10->load( ).
      IF xsdbool( lines( t10->items ) > 0 ) = abap_true.
        t10->load( ).
        IF xsdbool( lines( t10->items ) = 1 ) = abap_true.
          DATA t23 TYPE REF TO zcl_lnt_st_result.
          CLEAR t23.
          DATA t25 TYPE REF TO object.
          CLEAR t25.
          t10->load( ).
          CLEAR t25.
          READ TABLE t10->items INDEX 1 INTO t25.
          DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t26.
          CLEAR t23.
          IF t25 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t26 ?= t25.
            DATA t27 TYPE REF TO object.
            t27 = t26->as_ref( ).
            t23 ?= t27.
          ELSE.
            t23 ?= t25.
          ENDIF.
          t2->load( ).
          APPEND t23 TO t2->items.
          t2->save( ).
        ELSE.
          DATA(t28) = VALUE i( ).
          DATA t30 TYPE REF TO zcl_lnt_st_result.
          CLEAR t30.
          DATA t31 TYPE REF TO object.
          CLEAR t31.
          DATA(t32) = VALUE i( ).
          DO.
            t10->load( ).
            IF t32 >= lines( t10->items ).
              EXIT.
            ENDIF.
            CLEAR t31.
            READ TABLE t10->items INDEX t32 + 1 INTO t31.
            t32 = t32 + 1.
            DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t33.
            CLEAR t30.
            IF t31 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t33 ?= t31.
              DATA t34 TYPE REF TO object.
              t34 = t33->as_ref( ).
              t30 ?= t34.
            ELSE.
              t30 ?= t31.
            ENDIF.
            t2->load( ).
            APPEND t30 TO t2->items.
            t2->save( ).
          ENDDO.
          t2->load( ).
          t28 = lines( t2->items ).
        ENDIF.
        EXIT.
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
    DATA(t17) = |Railroad.Choice(0, |.
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
    DATA(t19) = |alt(|.
    DATA(t21) = strlen( t19 ).
    t18 = |{ t19 }{ t1 }|.
    DATA(t23) = strlen( t18 ).
    result = |{ t18 }{ |)| }|.

  ENDMETHOD.

  METHOD first.
    DATA(t3) = me->list.
    t3->load( ).
    IF xsdbool( lines( t3->items ) <> 2 ) = abap_true.
      DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t6.
      t6->load( ).
      APPEND || TO t6->items.
      t6->save( ).
      result = t6.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = me->list.
    DATA t15 TYPE REF TO object.
    t14->load( ).
    READ TABLE t14->items INDEX 1 INTO t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t16 ?= t15.
      DATA t17 TYPE REF TO object.
      t17 = t16->as_ref( ).
      t13 ?= t17.
    ELSE.
      t13 ?= t15.
    ENDIF.
    t11 = t13->first( ).
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = me->list.
    DATA t22 TYPE REF TO object.
    t21->load( ).
    READ TABLE t21->items INDEX 2 INTO t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t23 ?= t22.
      DATA t24 TYPE REF TO object.
      t24 = t23->as_ref( ).
      t20 ?= t24.
    ELSE.
      t20 ?= t22.
    ENDIF.
    t18 = t20->first( ).
    DATA t25 TYPE abap_bool.
    DATA t26 TYPE abap_bool.
    t11->load( ).
    t26 = xsdbool( lines( t11->items ) = 1 ).
    t25 = t26.
    IF t26 = abap_true.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t31 = t11->get( p0 = 0 ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t37->has = abap_true.
      t37->value = ||.
      t34 = t37.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      IF t31 IS BOUND.
        t39 = t31->has.
      ENDIF.
      IF t34 IS BOUND.
        t40 = t34->has.
      ENDIF.
      IF t39 = t40.
        IF t39 = abap_false.
          t30 = abap_true.
        ELSEIF t31->value = t34->value.
          t30 = abap_true.
        ENDIF.
      ENDIF.
      t25 = t30.
    ENDIF.
    IF t25 = abap_true.
      result = t11.
      RETURN.
    ENDIF.
    DATA t42 TYPE abap_bool.
    DATA t43 TYPE abap_bool.
    t18->load( ).
    t43 = xsdbool( lines( t18->items ) = 1 ).
    t42 = t43.
    IF t43 = abap_true.
      DATA(t47) = VALUE abap_bool( ).
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t48 = t18->get( p0 = 0 ).
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t54->has = abap_true.
      t54->value = ||.
      t51 = t54.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      IF t48 IS BOUND.
        t56 = t48->has.
      ENDIF.
      IF t51 IS BOUND.
        t57 = t51->has.
      ENDIF.
      IF t56 = t57.
        IF t56 = abap_false.
          t47 = abap_true.
        ELSEIF t48->value = t51->value.
          t47 = abap_true.
        ENDIF.
      ENDIF.
      t42 = t47.
    ENDIF.
    IF t42 = abap_true.
      result = t18.
      RETURN.
    ENDIF.
    DATA(t59) = VALUE abap_bool( ).
    DATA t60 TYPE abap_bool.
    DATA t61 TYPE abap_bool.
    t11->load( ).
    t61 = xsdbool( lines( t11->items ) = 1 ).
    t60 = t61.
    IF t61 = abap_true.
      t18->load( ).
      t60 = xsdbool( lines( t18->items ) = 1 ).
    ENDIF.
    t59 = t60.
    IF t60 = abap_true.
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t70 = t11->get( p0 = 0 ).
      DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t73 = t18->get( p0 = 0 ).
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      IF t70 IS BOUND.
        t76 = t70->has.
      ENDIF.
      IF t73 IS BOUND.
        t77 = t73->has.
      ENDIF.
      IF t76 = t77.
        IF t76 = abap_false.
          t69 = abap_true.
        ELSEIF t70->value = t73->value.
          t69 = abap_true.
        ENDIF.
      ENDIF.
      t59 = t69.
    ENDIF.
    IF t59 = abap_true.
      result = t11.
      RETURN.
    ENDIF.
    DATA(t79) = VALUE i( ).
    DATA(t81) = VALUE string( ).
    t18->dense( ).
    DATA(t82) = VALUE i( ).
    DO.
      t18->load( ).
      IF t82 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t81.
      READ TABLE t18->items INDEX t82 + 1 INTO t81.
      IF t18->has( t82 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t82 = t82 + 1.
      t11->load( ).
      APPEND t81 TO t11->items.
      t11->save( ).
    ENDDO.
    t11->load( ).
    t79 = lines( t11->items ).
    result = t11.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t4->load( ).
    APPEND t1 TO t4->items.
    t4->save( ).
    result = me->run( i_r_f634 = t4 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d80_ff684b1f203a96.
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
