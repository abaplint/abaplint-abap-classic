* TS: src/abap/4_file_information/abap_file_information.ts:4:1 ABAPFileInformation
CLASS zcl_lnt_abap_file_information DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_abap_file_information.
    DATA parsed TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    METHODS constructor IMPORTING i_parsed TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    METHODS list_class_implementations RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_interface_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS gt_intrfc_dfntn_by_nm IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    METHODS list_class_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_class_definition_by_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_info_class_definition.
    METHODS gt_clss_implmnttn_by_nm IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    METHODS list_form_definitions RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_file_information IMPLEMENTATION.
  METHOD constructor.
    me->parsed = i_parsed.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `parsed`.
  ENDMETHOD.

  METHOD list_class_implementations.
    result = me->parsed->implementations.

  ENDMETHOD.

  METHOD list_interface_definitions.
    result = me->parsed->interfaces.

  ENDMETHOD.

  METHOD gt_intrfc_dfntn_by_nm.
    DATA(t1) = i_name.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t5) = strlen( t1 ).
    t3 = t1.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->parsed->interfaces.
    DATA t8 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t6->load( ).
      IF t10 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t6->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA t20 TYPE string.
      t20 = t8->identifier->token->str.
      DATA(t28) = VALUE string( ).
      DATA(t29) = t20.
      DATA(t30) = 0.
      DATA(t31) = 1.
      DATA(t32) = strlen( t29 ).
      IF t30 < 0.
        t30 = t30 + t32.
        IF t30 < 0.
          t30 = 0.
        ENDIF.
      ENDIF.
      IF t30 > t32 OR t31 <= 0.
      ELSE.
        IF t31 > t32 - t30.
          t31 = t32 - t30.
        ENDIF.
        t28 = t29+t30(t31).
      ENDIF.
      IF xsdbool( t28 = |!| ) = abap_true.
        DATA t35 TYPE string.
        t35 = t20.
        DATA(t37) = VALUE string( ).
        DATA(t39) = 1.
        DATA t40 TYPE i.
        t40 = strlen( t35 ).
        DATA(t43) = strlen( t35 ).
        IF t39 < 0.
          t39 = t39 + t43.
          IF t39 < 0.
            t39 = 0.
          ENDIF.
        ENDIF.
        IF t39 > t43 OR t40 <= 0.
        ELSE.
          IF t40 > t43 - t39.
            t40 = t43 - t39.
          ENDIF.
          t37 = t35+t39(t40).
        ENDIF.
        t20 = t37.
      ENDIF.
      t15 = t20.
      DATA(t45) = strlen( t15 ).
      t14 = t15.
      IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t14 TO UPPER CASE.
      ELSE.
        t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
      ENDIF.
      IF xsdbool( t14 = t2 ) = abap_true.
        result = t8.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD list_class_definitions.
    result = me->parsed->classes.

  ENDMETHOD.

  METHOD get_class_definition_by_name.
    DATA(t1) = i_name.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t5) = strlen( t1 ).
    t3 = t1.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->parsed->classes.
    DATA t8 TYPE REF TO zcl_lnt_info_class_definition.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t6->load( ).
      IF t10 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t6->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA t20 TYPE string.
      t20 = t8->identifier->token->str.
      DATA(t28) = VALUE string( ).
      DATA(t29) = t20.
      DATA(t30) = 0.
      DATA(t31) = 1.
      DATA(t32) = strlen( t29 ).
      IF t30 < 0.
        t30 = t30 + t32.
        IF t30 < 0.
          t30 = 0.
        ENDIF.
      ENDIF.
      IF t30 > t32 OR t31 <= 0.
      ELSE.
        IF t31 > t32 - t30.
          t31 = t32 - t30.
        ENDIF.
        t28 = t29+t30(t31).
      ENDIF.
      IF xsdbool( t28 = |!| ) = abap_true.
        DATA t35 TYPE string.
        t35 = t20.
        DATA(t37) = VALUE string( ).
        DATA(t39) = 1.
        DATA t40 TYPE i.
        t40 = strlen( t35 ).
        DATA(t43) = strlen( t35 ).
        IF t39 < 0.
          t39 = t39 + t43.
          IF t39 < 0.
            t39 = 0.
          ENDIF.
        ENDIF.
        IF t39 > t43 OR t40 <= 0.
        ELSE.
          IF t40 > t43 - t39.
            t40 = t43 - t39.
          ENDIF.
          t37 = t35+t39(t40).
        ENDIF.
        t20 = t37.
      ENDIF.
      t15 = t20.
      DATA(t45) = strlen( t15 ).
      t14 = t15.
      IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t14 TO UPPER CASE.
      ELSE.
        t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
      ENDIF.
      IF xsdbool( t14 = t2 ) = abap_true.
        result = t8.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD gt_clss_implmnttn_by_nm.
    DATA(t1) = i_name.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA(t5) = strlen( t1 ).
    t3 = t1.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->parsed->implementations.
    DATA t8 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
    DATA t9 TYPE REF TO object.
    DATA(t10) = VALUE i( ).
    DO.
      t6->load( ).
      IF t10 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t6->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA(t14) = VALUE string( ).
      DATA(t15) = VALUE string( ).
      DATA t20 TYPE string.
      t20 = t8->identifier->token->str.
      DATA(t28) = VALUE string( ).
      DATA(t29) = t20.
      DATA(t30) = 0.
      DATA(t31) = 1.
      DATA(t32) = strlen( t29 ).
      IF t30 < 0.
        t30 = t30 + t32.
        IF t30 < 0.
          t30 = 0.
        ENDIF.
      ENDIF.
      IF t30 > t32 OR t31 <= 0.
      ELSE.
        IF t31 > t32 - t30.
          t31 = t32 - t30.
        ENDIF.
        t28 = t29+t30(t31).
      ENDIF.
      IF xsdbool( t28 = |!| ) = abap_true.
        DATA t35 TYPE string.
        t35 = t20.
        DATA(t37) = VALUE string( ).
        DATA(t39) = 1.
        DATA t40 TYPE i.
        t40 = strlen( t35 ).
        DATA(t43) = strlen( t35 ).
        IF t39 < 0.
          t39 = t39 + t43.
          IF t39 < 0.
            t39 = 0.
          ENDIF.
        ENDIF.
        IF t39 > t43 OR t40 <= 0.
        ELSE.
          IF t40 > t43 - t39.
            t40 = t43 - t39.
          ENDIF.
          t37 = t35+t39(t40).
        ENDIF.
        t20 = t37.
      ENDIF.
      t15 = t20.
      DATA(t45) = strlen( t15 ).
      t14 = t15.
      IF t14 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t14 TO UPPER CASE.
      ELSE.
        t14 = zlnt_runtime_uppe_91169605024d=>full( t14 ).
      ENDIF.
      IF xsdbool( t14 = t2 ) = abap_true.
        result = t8.
        RETURN.
      ENDIF.
    ENDDO.
    CLEAR result.

  ENDMETHOD.

  METHOD list_form_definitions.
    result = me->parsed->forms.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d766_a8d695dd1092.
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_interface_definitions.
    result = me->list_interface_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~gt_intrfc_dfntn_by_nm.
    result = me->gt_intrfc_dfntn_by_nm( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_class_definitions.
    result = me->list_class_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~get_class_definition_by_name.
    result = me->get_class_definition_by_name( i_name = i_name ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_form_definitions.
    result = me->list_form_definitions( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~list_class_implementations.
    result = me->list_class_implementations( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file_information~gt_clss_implmnttn_by_nm.
    result = me->gt_clss_implmnttn_by_nm( i_name = i_name ).
  ENDMETHOD.
ENDCLASS.
