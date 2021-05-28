@AbapCatalog.sqlViewName: 'ZV_IFLOT_PAR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Function Loc partners'
define view ZDV_IFLOT_PARTNER as select from 
iflot inner join iloa on iloa.iloan = iflot.iloan
inner join ihpa on ihpa.objnr = iflot.objnr 
{key iflot.tplnr as func_loc,
key iloa.iloan as loc_acc,
key ihpa.objnr as OBJECT_NO,
key ihpa.parvw as PARTN_ROLE,
ihpa.parnr as partner_no,
iloa.bukrs as comp_code,
cast(CONCAT(ihpa.parnr, '') as lifnr ) as vendor
}
