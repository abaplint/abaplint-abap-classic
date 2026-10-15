* TS: src/abap/2_statements/combi.ts:395:1 Star
CLASS zcl_lnt_st_star DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA sta TYPE REF TO zif_lnt_statement_runnable.
    METHODS constructor IMPORTING i_sta TYPE REF TO zif_lnt_statement_runnable.
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
CLASS zcl_lnt_st_star IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_sta.
    DATA(t2) = t1.
    me->sta = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sta`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->sta.
    t1 = t2->list_keywords( ).
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->sta.
    t1 = t2->get_using( ).
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA(t3) = t1.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t4.
    TRY.
        DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t5.
        DATA(t6) = t1.
        t5 = t6.
        DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t7.
        DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t8.
        CREATE OBJECT t8.
        t7 = t8.
        DO.
          DATA(t9) = abap_true.
          IF t9 = abap_false.
            EXIT.
          ENDIF.
          DATA(t10) = t5.
          t7 = t10.
          DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t11.
          DATA(t12) = me->sta.
          DATA(t13) = t7.
          t11 = t12->run( i_r_f634 = t13 ).
          t5 = t11.
          DATA(t14) = VALUE abap_bool( ).
          DATA(t15) = VALUE i( ).
          DATA(t16) = t5.
          t16->load( ).
          t15 = lines( t16->items ).
          DATA(t17) = 0.
          t14 = xsdbool( t15 = t17 ).
          IF t14 = abap_true.
            EXIT.
          ENDIF.
          DATA(t18) = VALUE abap_bool( ).
          DATA(t19) = VALUE i( ).
          DATA(t20) = t5.
          t20->load( ).
          t19 = lines( t20->items ).
          DATA(t21) = 1000.
          t18 = xsdbool( t19 > t21 ).
          IF t18 = abap_true.
            DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t22.
            DATA(t23) = t2.
            DATA(t24) = t5.
            t22 = t23->concat( p0 = t24 ).
            t2 = t22.
          ELSE.
            DATA(t25) = VALUE abap_bool( ).
            DATA(t26) = VALUE i( ).
            DATA(t27) = t5.
            t27->load( ).
            t26 = lines( t27->items ).
            DATA(t28) = 1.
            t25 = xsdbool( t26 = t28 ).
            IF t25 = abap_true.
              DATA(t29) = t2.
              DATA t30 TYPE REF TO zcl_lnt_st_result.
              CLEAR t30.
              DATA(t31) = t5.
              DATA t32 TYPE REF TO object.
              CLEAR t32.
              t31->load( ).
              CLEAR t32.
              READ TABLE t31->items INDEX 1 INTO t32.
              DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t33.
              CLEAR t30.
              IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t33 ?= t32.
                DATA t34 TYPE REF TO object.
                CLEAR t34.
                t34 = t33->as_ref( ).
                t30 ?= t34.
              ELSE.
                t30 ?= t32.
              ENDIF.
              t29->load( ).
              APPEND t30 TO t29->items.
              t29->save( ).
            ELSE.
              DATA(t35) = VALUE i( ).
              DATA(t36) = t5.
              DATA t37 TYPE REF TO zcl_lnt_st_result.
              CLEAR t37.
              DATA t38 TYPE REF TO object.
              CLEAR t38.
              DATA(t39) = VALUE i( ).
              DO.
                t36->load( ).
                IF t39 >= lines( t36->items ).
                  EXIT.
                ENDIF.
                CLEAR t38.
                READ TABLE t36->items INDEX t39 + 1 INTO t38.
                t39 = t39 + 1.
                DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t40.
                CLEAR t37.
                IF t38 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t40 ?= t38.
                  DATA t41 TYPE REF TO object.
                  CLEAR t41.
                  t41 = t40->as_ref( ).
                  t37 ?= t41.
                ELSE.
                  t37 ?= t38.
                ENDIF.
                DATA(t42) = t2.
                DATA(t43) = t37.
                t42->load( ).
                APPEND t43 TO t42->items.
                t42->save( ).
              ENDDO.
              DATA(t44) = VALUE i( ).
              DATA(t45) = t2.
              t45->load( ).
              t44 = lines( t45->items ).
              t35 = t44.
            ENDIF.
          ENDIF.
        ENDDO.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t4.
        DATA(t46) = t4->payload.
        DATA(t47) = VALUE abap_bool( ).
        DATA(t48) = t46.
        t47 = xsdbool( t48 IS BOUND AND t48 IS INSTANCE OF zcx_lnt_fail_star_error ).
        IF t47 = abap_true.
          DATA(t49) = t2.
          result = t49.
          RETURN.
        ENDIF.
        DATA t50 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t50.
        DATA(t51) = t46.
        t50 = NEW #( ).
        t50->payload = t51.
        CLEAR t50->source_value.
        IF t51 IS BOUND.
          DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t52.
          DATA t53 TYPE REF TO object.
          CLEAR t53.
          CLEAR t52.
          t53 = t51.
          TRY.
              t50->source_value ?= t53.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t50->source_value IS NOT BOUND.
            TRY.
                t52 ?= t51.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t52 IS BOUND.
              t50->source_value = t52->source( ).
            ENDIF.
            IF t50->source_value IS NOT BOUND.
              CREATE OBJECT t50->source_value.
              t50->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t50->source_value->oval = t51.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t50.
    ENDTRY.
    DATA(t54) = t2.
    result = t54.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.ZeroOrMore(|.
    DATA t4 TYPE string.
    DATA(t5) = me->sta.
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
    DATA(t3) = |star(|.
    DATA t4 TYPE string.
    DATA(t5) = me->sta.
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
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = t4.
    DATA(t7) = t1.
    t6->load( ).
    APPEND t7 TO t6->items.
    t6->save( ).
    DATA(t8) = t4.
    t3 = t8.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d69_562b368758b545.
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
