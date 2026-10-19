* TS: src/abap/4_file_information/visibility.ts.module module
CLASS zcl_lnt_visibility_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA visibility_namespace TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    CLASS-DATA zlnt_builtin_init_dc5a80768619 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_61fa093deb98.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_visibility_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_61fa093deb98.
    IF zlnt_builtin_init_dc5a80768619 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_dc5a80768619 = abap_true.
    IF zcl_lnt_visibility_module=>zlnt_builtin_init_dc5a80768619 = abap_false.
      zcl_lnt_visibility_module=>zlnt_builtin_init_61fa093deb98( ).
    ENDIF.
    zcl_lnt_visibility_module=>visibility_namespace = NEW zlnt_runtime_map__abd6fd794ffb( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t3 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_visibility_module=>zlnt_builtin_init_dc5a80768619 = abap_false.
      zcl_lnt_visibility_module=>zlnt_builtin_init_61fa093deb98( ).
    ENDIF.
    t3 = zcl_lnt_visibility_module=>visibility_namespace.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t5.
    t5->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t5->sval = |Private|.
    t2 = t3->set( p0 = |1| p1 = t5 ).
    DATA t7 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t8 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_visibility_module=>zlnt_builtin_init_dc5a80768619 = abap_false.
      zcl_lnt_visibility_module=>zlnt_builtin_init_61fa093deb98( ).
    ENDIF.
    t8 = zcl_lnt_visibility_module=>visibility_namespace.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t10.
    t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t10->sval = |Protected|.
    t7 = t8->set( p0 = |2| p1 = t10 ).
    DATA t12 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t13 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_visibility_module=>zlnt_builtin_init_dc5a80768619 = abap_false.
      zcl_lnt_visibility_module=>zlnt_builtin_init_61fa093deb98( ).
    ENDIF.
    t13 = zcl_lnt_visibility_module=>visibility_namespace.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |Public|.
    t12 = t13->set( p0 = |3| p1 = t15 ).
    DATA t17 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t18 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_visibility_module=>zlnt_builtin_init_dc5a80768619 = abap_false.
      zcl_lnt_visibility_module=>zlnt_builtin_init_61fa093deb98( ).
    ENDIF.
    t18 = zcl_lnt_visibility_module=>visibility_namespace.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t20.
    t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t20->nval = 1.
    t17 = t18->set( p0 = |Private| p1 = t20 ).
    DATA t22 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t23 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_visibility_module=>zlnt_builtin_init_dc5a80768619 = abap_false.
      zcl_lnt_visibility_module=>zlnt_builtin_init_61fa093deb98( ).
    ENDIF.
    t23 = zcl_lnt_visibility_module=>visibility_namespace.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t25->nval = 2.
    t22 = t23->set( p0 = |Protected| p1 = t25 ).
    DATA t27 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA t28 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    IF zcl_lnt_visibility_module=>zlnt_builtin_init_dc5a80768619 = abap_false.
      zcl_lnt_visibility_module=>zlnt_builtin_init_61fa093deb98( ).
    ENDIF.
    t28 = zcl_lnt_visibility_module=>visibility_namespace.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_number.
    t30->nval = 3.
    t27 = t28->set( p0 = |Public| p1 = t30 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1962_3ec8ee501045.
  ENDMETHOD.
ENDCLASS.
