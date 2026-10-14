* TS: src/objects/program.ts:7:22 shape.7686ffa7f326da77c03e958a94da33ca3521e24d4aceb8f70f6931e0f6498b6c
CLASS zcl_lnt_shape_e86506f0 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA is_include TYPE abap_bool.
    DATA is_module_pool TYPE abap_bool.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA dynpros TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA selection_texts TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    METHODS constructor IMPORTING i_is_include TYPE abap_bool i_is_module_pool TYPE abap_bool i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_dynpros TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_selection_texts
    TYPE REF TO zlnt_runtime_map__8bf596bf435b OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_e86506f0 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_is_include.
    DATA(t2) = i_is_module_pool.
    DATA(t3) = i_description.
    DATA(t4) = i_dynpros.
    DATA(t5) = i_selection_texts.
    DATA(t6) = t1.
    me->is_include = t6.
    DATA(t7) = t2.
    me->is_module_pool = t7.
    DATA(t8) = t3.
    me->description = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t4.
    t9 = t10.
    me->dynpros = t9.
    DATA t11 TYPE REF TO zlnt_runtime_map__8bf596bf435b.
    DATA(t12) = t5.
    t11 = t12.
    me->selection_texts = t11.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1801_a9a5818aa0e5.
  ENDMETHOD.
ENDCLASS.
