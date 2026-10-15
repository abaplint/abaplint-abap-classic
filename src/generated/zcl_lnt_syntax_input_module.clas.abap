* TS: src/abap/5_syntax/_syntax_input.ts.module module
CLASS zcl_lnt_syntax_input_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CONSTANTS check_syntax_key TYPE string VALUE `check_syntax`.
    CLASS-METHODS syntax_issue IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input i_token TYPE REF TO zcl_lnt_abstract_token i_message_26cb TYPE string i_fix TYPE REF TO zlnt_runtime_map__4fdf767b61ba RETURNING VALUE(result) TYPE REF
    TO zcl_lnt_issue.
    CLASS-DATA zlnt_builtin_init_c7868871a36e TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_4ca00818a657.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_syntax_input_module IMPLEMENTATION.
  METHOD syntax_issue.
    DATA(t1) = i_input_967e.
    DATA(t2) = i_token.
    DATA(t3) = i_message_26cb.
    DATA(t4) = i_fix.
    DATA t5 TYPE REF TO zcl_lnt_issue.
    CLEAR t5.
    DATA t6 TYPE string.
    DATA(t7) = t1.
    t6 = t7->filename.
    DATA(t8) = t2.
    DATA(t9) = t3.
    DATA(t10) = CONV string( zcl_lnt_syntax_input_module=>check_syntax_key ).
    DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA(t13) = |Error|.
      DATA(t14) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t14->has = abap_true.
      t14->value = t13.
      t11 = t14.
    ELSE.
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t15.
      t11 = t15.
    ENDIF.
    DATA(t16) = t4.
    t5 = zcl_lnt_issue=>at_token_filename( i_filename = t6 i_token = t8 i_message_26cb = t9 i_key = t10 i_severity = t11 i_fix = t16 ).
    result = t5.

  ENDMETHOD.

  METHOD zlnt_builtin_init_4ca00818a657.
    IF zlnt_builtin_init_c7868871a36e = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_c7868871a36e = abap_true.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1926_65319251627b.
  ENDMETHOD.
ENDCLASS.
