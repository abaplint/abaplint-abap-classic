* TS: src/rules/_irule.ts.module module
CLASS zcl_lnt_irule_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA rule_tag_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-DATA zlnt_builtin_init_b4b858c11bcd TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_65c8e36e282f.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_irule_module IMPLEMENTATION.
  METHOD zlnt_builtin_init_65c8e36e282f.
    IF zlnt_builtin_init_b4b858c11bcd = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_b4b858c11bcd = abap_true.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    zcl_lnt_irule_module=>rule_tag_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t2 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Experimental| p1 = |Experimental| ).
    DATA t6 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t6 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |DeprecationCandidate| p1 = |DeprecationCandidate| ).
    DATA t10 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t10 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Upport| p1 = |Upport| ).
    DATA t14 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t14 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Downport| p1 = |Downport| ).
    DATA t18 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t18 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Whitespace| p1 = |Whitespace| ).
    DATA t22 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t22 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Naming| p1 = |Naming| ).
    DATA t26 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t26 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Quickfix| p1 = |Quickfix| ).
    DATA t30 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t30 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Performance| p1 = |Performance| ).
    DATA t34 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t34 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Syntax| p1 = |Syntax| ).
    DATA t38 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t38 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Security| p1 = |Security| ).
    DATA t42 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t42 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |Styleguide| p1 = |Styleguide| ).
    DATA t46 TYPE REF TO zlnt_runtime_map__a1006b231250.
    IF zcl_lnt_irule_module=>zlnt_builtin_init_b4b858c11bcd = abap_false.
      zcl_lnt_irule_module=>zlnt_builtin_init_65c8e36e282f( ).
    ENDIF.
    t46 = zcl_lnt_irule_module=>rule_tag_namespace->set( p0 = |SingleFile| p1 = |SingleFile| ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1975_79bd221093ad.
  ENDMETHOD.
ENDCLASS.
