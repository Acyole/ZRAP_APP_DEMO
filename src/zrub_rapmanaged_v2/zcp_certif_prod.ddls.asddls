@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COMPOSITE - Certificado com Produto'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity zcp_certif_prod
  as select from zba_certif
  // A seguir temos uma composição.
  // Quer dizer que ZI_CERTIF_PRODUCT é a raiz (Pai) de ZI_CERTIF_ST_PRODUCT.
  // Como um cabeçalho (pai) e seus itens (filhos).
  composition [1..*] of ZCP_CERTIF_PROD_ST as _Status
  association [1..1] to zba_product as  _Prod 
                                    on  $projection.Matnr = _Prod.Matnr
                                    and _Prod.Language = $session.system_language
{
  key CertUuid,
      Matnr,
      _Prod.Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      'sap-icon://technical-object' as Icon,  
      
      _Status,
      _Prod
}
