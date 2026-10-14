* TS: src/objects/data_definition.ts:10:1 ParsedDataDefinition
CLASS zcl_lnt_parsed_data_definition DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA sql_view_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA definition_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA fields_464c TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA sources TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA associations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA relations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA tree TYPE REF TO zcl_lnt_expression_node.
    METHODS constructor IMPORTING i_sql_view_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_definition_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_fields_62af TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_sources TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_associations TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_relations TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_tree TYPE
    REF TO zcl_lnt_expression_node OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parsed_data_definition IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_sql_view_name.
    DATA(t2) = i_definition_name.
    DATA(t3) = i_description.
    DATA(t4) = i_fields_62af.
    DATA(t5) = i_sources.
    DATA(t6) = i_associations.
    DATA(t7) = i_relations.
    DATA(t8) = i_tree.
    DATA(t9) = t1.
    me->sql_view_name = t9.
    DATA(t10) = t2.
    me->definition_name = t10.
    DATA(t11) = t3.
    me->description = t11.
    DATA(t12) = t4.
    me->fields_464c = t12.
    DATA(t13) = t5.
    me->sources = t13.
    DATA(t14) = t6.
    me->associations = t14.
    DATA(t15) = t7.
    me->relations = t15.
    DATA(t16) = t8.
    me->tree = t16.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1782_0ce5ba7cdd91.
  ENDMETHOD.
ENDCLASS.
