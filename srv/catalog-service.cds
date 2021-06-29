using { bom as external } from './external/bom.csn';

service CatalogService {

    @readonly
    entity BillOfMaterial as projection on external.A_BillOfMaterial {
        key BillOfMaterialHeaderUUID, 
             BillOfMaterialVariantUsage, 
             BillOfMaterial,
             BillOfMaterialVariant, 
             Material
    };

}
