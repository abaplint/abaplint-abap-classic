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
    me->sta = i_sta.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sta`.
  ENDMETHOD.

  METHOD list_keywords.
    result = me->sta->list_keywords( ).

  ENDMETHOD.

  METHOD get_using.
    result = me->sta->get_using( ).

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = t1.
    DATA t4 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    TRY.
        DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t5 = t1.
        DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t7.
        DO.
          t7 = t5.
          t5 = me->sta->run( i_r_f634 = t7 ).
          t5->load( ).
          IF xsdbool( lines( t5->items ) = 0 ) = abap_true.
            EXIT.
          ENDIF.
          t5->load( ).
          IF xsdbool( lines( t5->items ) > 1000 ) = abap_true.
            t2 = t2->concat( p0 = t5 ).
          ELSE.
            t5->load( ).
            IF xsdbool( lines( t5->items ) = 1 ) = abap_true.
              DATA t30 TYPE REF TO zcl_lnt_st_result.
              CLEAR t30.
              DATA t32 TYPE REF TO object.
              CLEAR t32.
              t5->load( ).
              CLEAR t32.
              READ TABLE t5->items INDEX 1 INTO t32.
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
              t2->load( ).
              APPEND t30 TO t2->items.
              t2->save( ).
            ELSE.
              DATA(t35) = VALUE i( ).
              DATA t37 TYPE REF TO zcl_lnt_st_result.
              CLEAR t37.
              DATA t38 TYPE REF TO object.
              CLEAR t38.
              DATA(t39) = VALUE i( ).
              DO.
                t5->load( ).
                IF t39 >= lines( t5->items ).
                  EXIT.
                ENDIF.
                CLEAR t38.
                READ TABLE t5->items INDEX t39 + 1 INTO t38.
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
                t2->load( ).
                APPEND t37 TO t2->items.
                t2->save( ).
              ENDDO.
              t2->load( ).
              t35 = lines( t2->items ).
            ENDIF.
          ENDIF.
        ENDDO.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t4.
        DATA(t46) = t4->payload.
        IF xsdbool( t46 IS BOUND AND t46 IS INSTANCE OF zcx_lnt_fail_star_error ) = abap_true.
          result = t2.
          RETURN.
        ENDIF.
        DATA t50 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        t50 = NEW #( ).
        t50->payload = t46.
        CLEAR t50->source_value.
        IF t46 IS BOUND.
          DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
          DATA t53 TYPE REF TO object.
          t53 = t46.
          TRY.
              t50->source_value ?= t53.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t50->source_value IS NOT BOUND.
            TRY.
                t52 ?= t46.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t52 IS BOUND.
              t50->source_value = t52->source( ).
            ENDIF.
            IF t50->source_value IS NOT BOUND.
              CREATE OBJECT t50->source_value.
              t50->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              t50->source_value->oval = t46.
            ENDIF.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t50.
    ENDTRY.
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.ZeroOrMore(|.
    DATA t4 TYPE string.
    t4 = me->sta->railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD to_str.
    DATA t2 TYPE string.
    DATA(t3) = |star(|.
    DATA t4 TYPE string.
    t4 = me->sta->to_str( ).
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
