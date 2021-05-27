@AbapCatalog.sqlViewName: 'ZV_IFLOT_PARVEN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Functional location partners typed as vendor'
define view ZV_IFLOT_VENDOR as select from ZDV_IFLOT_PARTNER 
{ key func_loc, key loc_acc, key OBJECT_NO, key PARTN_ROLE, 
comp_code,
cast(ZDV_IFLOT_PARTNER.vendor as lifnr preserving type ) as vendor    
}
