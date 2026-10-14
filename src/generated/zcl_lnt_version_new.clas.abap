* TS: src/version.ts:231:1 VersionNew
CLASS zcl_lnt_version_new DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA release_3664 TYPE string.
    DATA language TYPE string.
    METHODS constructor IMPORTING i_release_7928 TYPE string i_language TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_version_new IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_release_7928.
    DATA(t2) = i_language.
    DATA(t3) = t1.
    me->release_3664 = t3.
    DATA(t4) = t2.
    me->language = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1708_1373e9845b5c.
  ENDMETHOD.
ENDCLASS.
