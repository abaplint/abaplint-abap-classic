* TS: src/abap/2_statements/expressions/_dynamic_access.ts.module module
CLASS zcl_lnt_dynamic_access_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA dyn_ident TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA dyn_close TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA dyn_inside TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS dyn_comp IMPORTING i_inside TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS dyn_attr RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_58df737b37ab TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_f10ed84afca7.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_dynamic_access_module IMPLEMENTATION.
  METHOD dyn_comp.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA(t1) = i_inside.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t4 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t4 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t9 TYPE REF TO object.
      t9 = t4.
      TRY.
          t3 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t8 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t3 = t8->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t14 = zcl_lnt_st_combi_module=>tok( i_t = t15 ).
    IF t14 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t13 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t16 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t13 = t16->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t20 = zcl_lnt_dynamic_access_module=>dyn_ident.
    IF t20 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t19 ?= t20.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t21 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t19 = t21->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t23.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t27 = zcl_lnt_dynamic_access_module=>dyn_inside.
    IF t27 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t26 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS NOT BOUND.
        TRY.
            t28 ?= t27.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t26 = t28->source( ).
        ENDIF.
        IF t26 IS NOT BOUND.
          CREATE OBJECT t26.
          t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t26->oval = t27.
        ENDIF.
      ENDIF.
    ENDIF.
    t23->load( ).
    APPEND t26 TO t23->items.
    t23->save( ).
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t1->load( ).
      IF t33 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t1->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      CLEAR t37.
      IF t31 IS BOUND.
        DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t39.
        CLEAR t39.
        TRY.
            t37 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS NOT BOUND.
          TRY.
              t39 ?= t31.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t39 IS BOUND.
            t37 = t39->source( ).
          ENDIF.
          IF t37 IS NOT BOUND.
            CREATE OBJECT t37.
            t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t37->oval = t31.
          ENDIF.
        ENDIF.
      ENDIF.
      t23->load( ).
      APPEND t37 TO t23->items.
      t23->save( ).
    ENDDO.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t43 = zcl_lnt_dynamic_access_module=>dyn_close.
    IF t43 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t42 ?= t43.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t44 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t42 = t44->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t23->load( ).
    APPEND t42 TO t23->items.
    t23->save( ).
    t11 = zcl_lnt_st_combi_module=>seq( i_first = t13 i_second = t19 i_rest = t23 ).
    IF t11 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t10 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t50 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t10 = t50->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t52 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t10 i_opts = t52 ).

  ENDMETHOD.

  METHOD dyn_attr.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t3 TYPE REF TO zcl_lnt_abap_release.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t3 = zcl_lnt_version_module=>release_b8cd->get( p0 = |v757| ).
    IF t3 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t3.
      TRY.
          t2 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t2 IS NOT BOUND.
        TRY.
            t7 ?= t3.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t2 = t7->source( ).
        ENDIF.
        IF t2 IS NOT BOUND.
          CREATE OBJECT t2.
          t2->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t2->oval = t3.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d25_a168ca012db7bd.
    t13 = zcl_lnt_st_combi_module=>tok( i_t = t14 ).
    IF t13 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t12 ?= t13.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t12 IS NOT BOUND.
        TRY.
            t15 ?= t13.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t12 = t15->source( ).
        ENDIF.
        IF t12 IS NOT BOUND.
          CREATE OBJECT t12.
          t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t12->oval = t13.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t19 = zcl_lnt_dynamic_access_module=>dyn_ident.
    IF t19 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t18 ?= t19.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t20 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t18 = t20->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t22.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t26 = zcl_lnt_dynamic_access_module=>dyn_inside.
    IF t26 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t25 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t25 IS NOT BOUND.
        TRY.
            t27 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t25 = t27->source( ).
        ENDIF.
        IF t25 IS NOT BOUND.
          CREATE OBJECT t25.
          t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t25->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    t22->load( ).
    APPEND t25 TO t22->items.
    t22->save( ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t31 = zcl_lnt_dynamic_access_module=>dyn_close.
    IF t31 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t30 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t32 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t30 = t32->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    t22->load( ).
    APPEND t30 TO t22->items.
    t22->save( ).
    t10 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t18 i_rest = t22 ).
    IF t10 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t9 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t38 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t9 = t38->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zcl_lnt_iver_options.
    result = zcl_lnt_st_combi_module=>ver( i_version_or_release = t2 i_first = t9 i_opts = t40 ).

  ENDMETHOD.

  METHOD zlnt_builtin_init_f10ed84afca7.
    IF zlnt_builtin_init_58df737b37ab = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_58df737b37ab = abap_true.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA(t2) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    zcl_lnt_dynamic_access_module=>dyn_ident = zcl_lnt_st_combi_module=>tok( i_t = t2 ).
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t6 = zcl_lnt_st_combi_module=>tok( i_t = t7 ).
    IF t6 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t5 ?= t6.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t5 IS NOT BOUND.
        TRY.
            t8 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t5 = t8->source( ).
        ENDIF.
        IF t5 IS NOT BOUND.
          CREATE OBJECT t5.
          t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t5->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t12 = zcl_lnt_st_combi_module=>tok( i_t = t13 ).
    IF t12 IS BOUND.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t11 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t14 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t11 = t14->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    zcl_lnt_dynamic_access_module=>dyn_close = zcl_lnt_st_combi_module=>alt_prio( i_first = t5 i_second = t11 i_rest = t17 ).
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = NEW zcl_lnt_st_field_chain( ).
    DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t27 TYPE REF TO object.
    t27 = t25.
    TRY.
        t24 ?= t27.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t24 IS NOT BOUND.
      TRY.
          t26 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t26 IS BOUND.
        t24 = t26->source( ).
      ENDIF.
      IF t24 IS NOT BOUND.
        CREATE OBJECT t24.
        t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t24->oval = t25.
      ENDIF.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    zcl_lnt_dynamic_access_module=>dyn_inside = zcl_lnt_st_combi_module=>alt_prio( i_first = t24 i_second = t29 i_rest = t32 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1922_a066414eb433.
  ENDMETHOD.
ENDCLASS.
