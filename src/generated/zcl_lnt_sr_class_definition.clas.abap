* TS: src/abap/3_structures/structures/class_definition.ts:9:1 ClassDefinition
CLASS zcl_lnt_sr_class_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_class_definition IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d603_a7e0e89c6b35 ).
    t5 = zcl_lnt_sr_combi_module=>sta( i_s = t6 ).
    t4 = zcl_lnt_sr_combi_module=>opt( i_o = t5 ).
    t3 = t4.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t8.
    t7 = t8.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t10 TYPE REF TO zif_lnt_structure_runnable.
    DATA t11 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t12) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d655_927738d95d40 ).
    t11 = zcl_lnt_sr_combi_module=>sta( i_s = t12 ).
    t10 = zcl_lnt_sr_combi_module=>star( i_s = t11 ).
    APPEND t10 TO t9->items.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t14 TYPE REF TO zif_lnt_structure_runnable.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5 ).
    t15 = zcl_lnt_sr_combi_module=>sub( i_s = t16 ).
    t14 = zcl_lnt_sr_combi_module=>opt( i_o = t15 ).
    APPEND t14 TO t13->items.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA t19 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t20) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4 ).
    t19 = zcl_lnt_sr_combi_module=>sub( i_s = t20 ).
    t18 = zcl_lnt_sr_combi_module=>opt( i_o = t19 ).
    APPEND t18 TO t17->items.
    DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t22 TYPE REF TO zif_lnt_structure_runnable.
    DATA t23 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t24) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e ).
    t23 = zcl_lnt_sr_combi_module=>sub( i_s = t24 ).
    t22 = zcl_lnt_sr_combi_module=>opt( i_o = t23 ).
    APPEND t22 TO t21->items.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    DATA t26 TYPE REF TO zif_lnt_structure_runnable.
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d603_a7e0e89c6b35 ).
    t27 = zcl_lnt_sr_combi_module=>sta( i_s = t28 ).
    t26 = zcl_lnt_sr_combi_module=>opt( i_o = t27 ).
    APPEND t26 TO t25->items.
    DATA t29 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t30) = CAST zif_lnt_structure_runnable( t3 ).
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
    t29 = zcl_lnt_sr_combi_module=>seq( i_first = t30 i_rest = t31 ).
    t2 = t29.
    t1 = t2.
    DATA t32 TYPE REF TO zif_lnt_structure_runnable.
    DATA t33 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d394_f6e1a10c8513 ).
    t33 = zcl_lnt_sr_combi_module=>sta( i_s = t34 ).
    DATA(t35) = CAST zif_lnt_structure_runnable( t1 ).
    DATA t36 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d451_3d24988c9cf2 ).
    t36 = zcl_lnt_sr_combi_module=>sta( i_s = t37 ).
    t32 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t33 i_body = t35 i_end = t36 ).
    result = t32.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d684_dd4b0670faf6.
  ENDMETHOD.
  METHOD zif_lnt_structure~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_structure~get_matcher.
    result = me->get_matcher(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
