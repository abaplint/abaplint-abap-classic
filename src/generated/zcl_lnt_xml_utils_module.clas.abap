* TS: src/xml_utils.ts.module module
CLASS zcl_lnt_xml_utils_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS xml_to_array IMPORTING i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS unescape IMPORTING i_str TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE string.
    CLASS-DATA zlnt_builtin_init_e23a8274c2ff TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_92a4db672ef8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_xml_utils_module IMPLEMENTATION.
  METHOD xml_to_array.
    DATA(t1) = i_data_dc02.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA(t4) = t1.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = t1.
      t10 = abap_false.
      IF t11 IS BOUND.
        IF t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
          t10 = abap_true.
        ELSEIF t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t11->oval IS BOUND.
          DATA t12 TYPE REF TO zlnt_runtime_arra_6c31174d6e02.
          CLEAR t12.
          TRY.
              t12 ?= t11->oval.
              t10 = abap_true.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
      ENDIF.
      IF t10 = abap_true.
        DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t13.
        DATA(t14) = t1.
        CLEAR t13.
        IF t14 IS BOUND.
          IF t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                t13 ?= t14->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: incompatible native array reference`.
            ENDTRY.
          ELSEIF t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
            CREATE OBJECT t13.
            t13->source = t14.
          ELSE.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_array.go: arrayView: source is neither array graph nor reference`.
          ENDIF.
          t13->load( ).
          DATA t15 TYPE REF TO object.
          CLEAR t15.
          DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t16.
          LOOP AT t13->items INTO t15.
            DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t17.
            CLEAR t16.
            IF t15 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t17 ?= t15.
              t16 = t17.
            ELSE.
              IF t15 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
                DATA t18 TYPE REF TO zlnt_runtime_clas_a39833db3295.
                CLEAR t18.
                t18 ?= t15.
                CLEAR t16.
                IF t18 IS BOUND.
                  CREATE OBJECT t16.
                  t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
                  t16->cval = t18.
                ENDIF.
              ELSE.
                CLEAR t16.
                IF t15 IS BOUND.
                  DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
                  CLEAR t19.
                  DATA t20 TYPE REF TO object.
                  CLEAR t20.
                  CLEAR t19.
                  t20 = t15.
                  TRY.
                      t16 ?= t20.
                    CATCH cx_sy_move_cast_error.
                  ENDTRY.
                  IF t16 IS NOT BOUND.
                    TRY.
                        t19 ?= t15.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t19 IS BOUND.
                      t16 = t19->source( ).
                    ENDIF.
                    IF t16 IS NOT BOUND.
                      CREATE OBJECT t16.
                      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                      t16->oval = t15.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDLOOP.
        ENDIF.
        result = t13.
        RETURN.
      ELSE.
        DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t22.
        DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t23.
        CREATE OBJECT t23.
        t22 = t23.
        DATA(t24) = t22.
        DATA(t25) = t1.
        t24->load( ).
        APPEND t25 TO t24->items.
        t24->save( ).
        DATA(t26) = t22.
        t21 = t26.
        result = t21.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD unescape.
    DATA(t1) = i_str.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = t1.
    IF t4 IS BOUND.
      t3 = t4->type_of( ).
      IF t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t4->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
        t3 = `function`.
      ENDIF.
    ELSE.
      t3 = `undefined`.
    ENDIF.
    DATA(t5) = |string|.
    t2 = xsdbool( t3 <> t5 ).
    IF t2 = abap_true.
      DATA(t6) = ||.
      result = t6.
      RETURN.
    ENDIF.
    DATA t7 TYPE string.
    DATA t8 TYPE string.
    DATA t9 TYPE string.
    DATA(t10) = t1.
    t9 = t10->as_string( ).
    DATA t11 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t11.
    DATA(t12) = |&amp;|.
    DATA(t13) = |g|.
    CREATE OBJECT t11 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t12 flags = t13 checked = abap_true.
    DATA(t14) = |&|.
    DATA(t15) = strlen( t9 ).
    t8 = t11->replace( p0 = t9 p1 = t14 ).
    t7 = t8.
    DATA t16 TYPE string.
    DATA(t17) = t7.
    DATA t18 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t18.
    DATA(t19) = |&gt;|.
    DATA(t20) = |g|.
    CREATE OBJECT t18 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t19 flags = t20 checked = abap_true.
    DATA(t21) = |>|.
    DATA(t22) = strlen( t17 ).
    t16 = t18->replace( p0 = t17 p1 = t21 ).
    t7 = t16.
    DATA t23 TYPE string.
    DATA(t24) = t7.
    DATA t25 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t25.
    DATA(t26) = |&lt;|.
    DATA(t27) = |g|.
    CREATE OBJECT t25 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t26 flags = t27 checked = abap_true.
    DATA(t28) = |<|.
    DATA(t29) = strlen( t24 ).
    t23 = t25->replace( p0 = t24 p1 = t28 ).
    t7 = t23.
    DATA t30 TYPE string.
    DATA(t31) = t7.
    DATA t32 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t32.
    DATA(t33) = |&quot;|.
    DATA(t34) = |g|.
    CREATE OBJECT t32 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t33 flags = t34 checked = abap_true.
    DATA(t35) = |"|.
    DATA(t36) = strlen( t31 ).
    t30 = t32->replace( p0 = t31 p1 = t35 ).
    t7 = t30.
    DATA t37 TYPE string.
    DATA(t38) = t7.
    DATA t39 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t39.
    DATA(t40) = |&apos;|.
    DATA(t41) = |g|.
    CREATE OBJECT t39 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = t40 flags = t41 checked = abap_true.
    DATA(t42) = |'|.
    DATA(t43) = strlen( t38 ).
    t37 = t39->replace( p0 = t38 p1 = t42 ).
    t7 = t37.
    DATA(t44) = t7.
    result = t44.

  ENDMETHOD.

  METHOD zlnt_builtin_init_92a4db672ef8.
    IF zlnt_builtin_init_e23a8274c2ff = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_e23a8274c2ff = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1936_cf2a5e999be6.
  ENDMETHOD.
ENDCLASS.
