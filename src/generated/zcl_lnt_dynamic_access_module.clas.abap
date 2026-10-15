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
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t6.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t6 = zcl_lnt_version_module=>release_b8cd.
    DATA(t7) = |v757|.
    t5 = t6->get( p0 = t7 ).
    t4 = t5.
    CLEAR t3.
    IF t4 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
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
    CLEAR t10.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t13.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t14.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t14 = zcl_lnt_st_combi_module=>tok( i_t = t15 ).
    CLEAR t13.
    IF t14 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t16.
      DATA t17 TYPE REF TO object.
      CLEAR t17.
      CLEAR t16.
      t17 = t14.
      TRY.
          t13 ?= t17.
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
    t12 = t13.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t19.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t20.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t20 = zcl_lnt_dynamic_access_module=>dyn_ident.
    CLEAR t19.
    IF t20 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t21.
      DATA t22 TYPE REF TO object.
      CLEAR t22.
      CLEAR t21.
      t22 = t20.
      TRY.
          t19 ?= t22.
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
    t18 = t19.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    CREATE OBJECT t24.
    t23 = t24.
    DATA(t25) = t23.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t26.
    DATA t27 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t27.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t27 = zcl_lnt_dynamic_access_module=>dyn_inside.
    CLEAR t26.
    IF t27 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t28.
      DATA t29 TYPE REF TO object.
      CLEAR t29.
      CLEAR t28.
      t29 = t27.
      TRY.
          t26 ?= t29.
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
    t25->load( ).
    APPEND t26 TO t25->items.
    t25->save( ).
    DATA(t30) = t1.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    DATA t32 TYPE REF TO object.
    CLEAR t32.
    DATA(t33) = VALUE i( ).
    DO.
      t30->load( ).
      IF t33 >= lines( t30->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t30->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      DATA(t36) = t23.
      DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t37.
      DATA(t38) = t31.
      CLEAR t37.
      IF t38 IS BOUND.
        DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t39.
        DATA t40 TYPE REF TO object.
        CLEAR t40.
        CLEAR t39.
        t40 = t38.
        TRY.
            t37 ?= t40.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS NOT BOUND.
          TRY.
              t39 ?= t38.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t39 IS BOUND.
            t37 = t39->source( ).
          ENDIF.
          IF t37 IS NOT BOUND.
            CREATE OBJECT t37.
            t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t37->oval = t38.
          ENDIF.
        ENDIF.
      ENDIF.
      t36->load( ).
      APPEND t37 TO t36->items.
      t36->save( ).
    ENDDO.
    DATA(t41) = t23.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t43.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t43 = zcl_lnt_dynamic_access_module=>dyn_close.
    CLEAR t42.
    IF t43 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t44.
      DATA t45 TYPE REF TO object.
      CLEAR t45.
      CLEAR t44.
      t45 = t43.
      TRY.
          t42 ?= t45.
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
    t41->load( ).
    APPEND t42 TO t41->items.
    t41->save( ).
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t46.
    DATA(t47) = t12.
    DATA(t48) = t18.
    DATA(t49) = t23.
    t46 = zcl_lnt_st_combi_module=>seq( i_first = t47 i_second = t48 i_rest = t49 ).
    t11 = t46.
    CLEAR t10.
    IF t11 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t50.
      DATA t51 TYPE REF TO object.
      CLEAR t51.
      CLEAR t50.
      t51 = t11.
      TRY.
          t10 ?= t51.
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
    CLEAR t52.
    t2 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t3 i_first = t10 i_opts = t52 ).
    result = t2.

  ENDMETHOD.

  METHOD dyn_attr.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t2.
    DATA t3 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_map__201f3699a39e.
    CLEAR t5.
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    t5 = zcl_lnt_version_module=>release_b8cd.
    DATA(t6) = |v757|.
    t4 = t5->get( p0 = t6 ).
    t3 = t4.
    CLEAR t2.
    IF t3 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t7.
      DATA t8 TYPE REF TO object.
      CLEAR t8.
      CLEAR t7.
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
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t13.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d25_a168ca012db7bd.
    t13 = zcl_lnt_st_combi_module=>tok( i_t = t14 ).
    CLEAR t12.
    IF t13 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t15.
      DATA t16 TYPE REF TO object.
      CLEAR t16.
      CLEAR t15.
      t16 = t13.
      TRY.
          t12 ?= t16.
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
    t11 = t12.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t17.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t18.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t19.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t19 = zcl_lnt_dynamic_access_module=>dyn_ident.
    CLEAR t18.
    IF t19 IS BOUND.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t20.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      CLEAR t20.
      t21 = t19.
      TRY.
          t18 ?= t21.
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
    t17 = t18.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t23.
    CREATE OBJECT t23.
    t22 = t23.
    DATA(t24) = t22.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t26 = zcl_lnt_dynamic_access_module=>dyn_inside.
    CLEAR t25.
    IF t26 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t27.
      DATA t28 TYPE REF TO object.
      CLEAR t28.
      CLEAR t27.
      t28 = t26.
      TRY.
          t25 ?= t28.
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
    t24->load( ).
    APPEND t25 TO t24->items.
    t24->save( ).
    DATA(t29) = t22.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t31.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    t31 = zcl_lnt_dynamic_access_module=>dyn_close.
    CLEAR t30.
    IF t31 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      CLEAR t32.
      t33 = t31.
      TRY.
          t30 ?= t33.
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
    t29->load( ).
    APPEND t30 TO t29->items.
    t29->save( ).
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t34.
    DATA(t35) = t11.
    DATA(t36) = t17.
    DATA(t37) = t22.
    t34 = zcl_lnt_st_combi_module=>seq( i_first = t35 i_second = t36 i_rest = t37 ).
    t10 = t34.
    CLEAR t9.
    IF t10 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t38.
      DATA t39 TYPE REF TO object.
      CLEAR t39.
      CLEAR t38.
      t39 = t10.
      TRY.
          t9 ?= t39.
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
    CLEAR t40.
    t1 = zcl_lnt_st_combi_module=>ver( i_version_or_release = t2 i_first = t9 i_opts = t40 ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_init_f10ed84afca7.
    IF zlnt_builtin_init_58df737b37ab = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_58df737b37ab = abap_true.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t1.
    DATA(t2) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t1 = zcl_lnt_st_combi_module=>tok( i_t = t2 ).
    zcl_lnt_dynamic_access_module=>dyn_ident = t1.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t6.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d29_f2ed5131cb71b6.
    t6 = zcl_lnt_st_combi_module=>tok( i_t = t7 ).
    CLEAR t5.
    IF t6 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t6.
      TRY.
          t5 ?= t9.
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
    t4 = t5.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t11.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t12.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t12 = zcl_lnt_st_combi_module=>tok( i_t = t13 ).
    CLEAR t11.
    IF t12 IS BOUND.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t14.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      CLEAR t14.
      t15 = t12.
      TRY.
          t11 ?= t15.
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
    t10 = t11.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t17.
    CREATE OBJECT t17.
    t16 = t17.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t18.
    DATA(t19) = t4.
    DATA(t20) = t10.
    DATA(t21) = t16.
    t18 = zcl_lnt_st_combi_module=>alt_prio( i_first = t19 i_second = t20 i_rest = t21 ).
    t3 = t18.
    zcl_lnt_dynamic_access_module=>dyn_close = t3.
    IF zcl_lnt_dynamic_access_module=>zlnt_builtin_init_58df737b37ab = abap_false.
      zcl_lnt_dynamic_access_module=>zlnt_builtin_init_f10ed84afca7( ).
    ENDIF.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t22.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t23.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    DATA(t25) = NEW zcl_lnt_st_field_chain( ).
    CLEAR t24.
    IF t25 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      CLEAR t26.
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
    ENDIF.
    t23 = t24.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    CLEAR t29.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    t28 = t29.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t31.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t32.
    CREATE OBJECT t32.
    t31 = t32.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t33.
    DATA(t34) = t23.
    DATA(t35) = t28.
    DATA(t36) = t31.
    t33 = zcl_lnt_st_combi_module=>alt_prio( i_first = t34 i_second = t35 i_rest = t36 ).
    t22 = t33.
    zcl_lnt_dynamic_access_module=>dyn_inside = t22.
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
