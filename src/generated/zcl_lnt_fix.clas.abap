* TS: src/issue.ts:10:1 Fix
CLASS zcl_lnt_fix DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA description TYPE string.
    DATA edit TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS constructor IMPORTING i_description TYPE string i_edit TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fix IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_description.
    DATA(t2) = CAST zlnt_runtime_map__4fdf767b61ba( i_edit ).
    DATA(t3) = t1.
    me->description = t3.
    DATA(t4) = CAST zlnt_runtime_map__4fdf767b61ba( t2 ).
    me->edit = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1714_65e7a3ea6de3.
  ENDMETHOD.
ENDCLASS.
