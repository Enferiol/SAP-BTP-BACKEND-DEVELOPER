@AbapCatalog.sqlViewName: 'ZV_RENTING_0886'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view Z_I_RENTING_0086 
as select from Z_B_CARS_0086 as Cars
association [1] to z_b_rem_days_0086 as _RemDays on Cars.Matricula = _RemDays.Matricula
association [0..*] to z_b_brands_0086 as _Brands on Cars.Marca = _Brands.Marca
association [0..*] to z_b_det_custromer_0086 as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula {

key Matricula,
Marca,  
Modelo,
Color,
Motor,
Potencia,
Unidad,
Combustible,
Consumo,
FechaFabricacion,
Puertas,
Precio,
Moneda,
Alquilado,
Desde,
Hasta,
case

when _RemDays.Dias <= 0 then 0
when _RemDays.Dias between 1 and 30 then 1
when _RemDays.Dias between 31 and 100 then 2
when _RemDays.Dias > 100 then 3
else 0
end as TiempoRenta,

_Brands.Imagen,
_DetCustomer


    
}
