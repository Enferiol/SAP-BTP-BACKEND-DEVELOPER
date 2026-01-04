@AbapCatalog.sqlViewName: 'ZV_BRANDS_0086'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view z_b_brands_0086
  as select from zrent_brands0086
{

  key marca as Marca,
      url   as Imagen

}
