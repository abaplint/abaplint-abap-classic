* TS: src/cds/cds_lexer.ts:40:1 Result
CLASS zcl_lnt_cd_result DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA result_9728 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS add_51c1 IMPORTING i_text TYPE string i_row TYPE f i_col TYPE f i_mode TYPE f RETURNING VALUE(result) TYPE string.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cd_result IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->result_9728 = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `result`.
  ENDMETHOD.

  METHOD add_51c1.
    DATA(t1) = i_text.
    DATA(t2) = i_row.
    DATA(t3) = i_col.
    DATA(t4) = i_mode.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE i.
    DATA(t7) = t1.
    DATA(t8) = strlen( t7 ).
    t6 = t8.
    DATA(t9) = 0.
    t5 = xsdbool( t6 > t9 ).
    IF t5 = abap_true.
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t4.
      DATA(t13) = CONV f( 3 ).
      t11 = xsdbool( t12 = t13 ).
      t10 = t11.
      IF t11 = abap_true.
        DATA(t14) = VALUE abap_bool( ).
        DATA(t15) = VALUE abap_bool( ).
        DATA(t16) = t1.
        DATA(t17) = |--|.
        DATA(t18) = strlen( t16 ).
        DATA t19 TYPE i.
        DATA(t20) = VALUE i( ).
        DATA(t21) = VALUE string( ).
        t19 = strlen( t17 ).
        IF t19 = 0.
          t15 = abap_true.
        ELSEIF t19 <= t18.
          t20 = 0.
          t21 = t16+t20(t19).
          IF t21 = t17.
            t15 = abap_true.
          ENDIF.
        ENDIF.
        t14 = t15.
        IF t15 = abap_false.
          DATA(t22) = VALUE abap_bool( ).
          DATA(t23) = t1.
          DATA(t24) = |//|.
          DATA(t25) = strlen( t23 ).
          DATA t26 TYPE i.
          DATA(t27) = VALUE i( ).
          DATA(t28) = VALUE string( ).
          t26 = strlen( t24 ).
          IF t26 = 0.
            t22 = abap_true.
          ELSEIF t26 <= t25.
            t27 = 0.
            t28 = t23+t27(t26).
            IF t28 = t24.
              t22 = abap_true.
            ENDIF.
          ENDIF.
          t14 = t22.
        ENDIF.
        t10 = t14.
      ENDIF.
      IF t10 = abap_true.
        DATA(t29) = me->result_9728.
        DATA t30 TYPE REF TO zcl_lnt_lx_comment.
        DATA t31 TYPE REF TO zcl_lnt_position.
        DATA(t32) = t2.
        DATA t33 TYPE f.
        DATA(t34) = t3.
        DATA t35 TYPE f.
        DATA t36 TYPE i.
        DATA(t37) = t1.
        DATA(t38) = strlen( t37 ).
        t36 = t38.
        t35 = t36.
        t33 = t34 - t35.
        DATA(t39) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t39->has = abap_true.
        t39->value = t33.
        t31 = NEW zcl_lnt_position( i_row = t32 i_col = t39 ).
        DATA(t40) = t1.
        t30 = NEW zcl_lnt_lx_comment( i_start = t31 i_str = t40 ).
        t29->load( ).
        APPEND t30 TO t29->items.
        t29->save( ).
      ELSE.
        DATA(t41) = me->result_9728.
        DATA t42 TYPE REF TO zcl_lnt_lx_identifier.
        DATA t43 TYPE REF TO zcl_lnt_position.
        DATA(t44) = t2.
        DATA(t45) = t3.
        DATA(t46) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t46->has = abap_true.
        t46->value = t45.
        t43 = NEW zcl_lnt_position( i_row = t44 i_col = t46 ).
        DATA(t47) = t1.
        t42 = NEW zcl_lnt_lx_identifier( i_start = t43 i_str = t47 ).
        t41->load( ).
        APPEND t42 TO t41->items.
        t41->save( ).
      ENDIF.
    ENDIF.
    DATA(t48) = ||.
    result = t48.

  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = me->result_9728.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1071_189ac6ea6f88.
  ENDMETHOD.
ENDCLASS.
