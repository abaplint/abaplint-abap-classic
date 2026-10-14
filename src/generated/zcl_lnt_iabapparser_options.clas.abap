* TS: src/abap/abap_parser.ts:21:1 IABAPParserOptions
CLASS zcl_lnt_iabapparser_options DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_union_0eeefcfe.
    DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    DATA language_version TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA global_macros TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_release_7928 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_language_version_0e1d TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL
    i_reg_f149 TYPE REF TO zif_lnt_registry OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iabapparser_options IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_abap_release( i_release_7928 ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_language_version_0e1d ).
    DATA(t3) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_global_macros_5535 ).
    DATA(t4) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t5) = CAST zcl_lnt_abap_release( t1 ).
    me->release_3664 = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->language_version = t6.
    DATA(t7) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    me->global_macros = t7.
    DATA(t8) = CAST zif_lnt_registry( t4 ).
    me->reg = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d978_d81202f950dd.
  ENDMETHOD.
  METHOD zif_lnt_union_0eeefcfe~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
