* TS: generator ABI generator.result.6918c9d4d991754e
CLASS zcl_lnt_generator_0f216880 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA done TYPE abap_bool.
    DATA value TYPE REF TO zif_lnt_method_definition.
    METHODS constructor IMPORTING i_done TYPE abap_bool i_value TYPE REF TO zif_lnt_method_definition OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_generator_0f216880 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_done.
    DATA(t2) = i_value.
    DATA(t3) = t1.
    me->done = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `done`.
    DATA(t4) = t2.
    me->value = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `value`.
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
    result = zlnt_runtime_desc_c8762dfcc211=>zlnt_member_d2_33f63f78ed485d.
  ENDMETHOD.
ENDCLASS.
