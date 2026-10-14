* TS: src/objects/oauth2_profile.ts:4:1 Oauth2Profile
CLASS zcl_lnt_oauth2_profile DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS list_scopes RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_oauth2_profile IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |OA2P|.
    result = t1.

  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/oauth2_profile.ts:10|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/oauth2_profile.ts:17|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD list_scopes.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/oauth2_profile.ts:22|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1216_279542c6df3e.
  ENDMETHOD.
ENDCLASS.
