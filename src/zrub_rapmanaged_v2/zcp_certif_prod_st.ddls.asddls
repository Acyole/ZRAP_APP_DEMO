@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'COMPOSITE - Certificado com Status e Pr'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCP_CERTIF_PROD_ST
  as select from zba_st_certif 
  // Essa association "parent" é necessária para manter a navegação entre pai (cabeçalho) e filhos (itens).
  association to parent zcp_certif_prod as  _Certif 
                                        on  $projection.CertUuid = _Certif.CertUuid
  association [1..1] to zba_product as  _Prod 
                                    on  $projection.Matnr = _Prod.Matnr
                                    and _Prod.Language = $session.system_language
{
  key StateUuid,
      CertUuid,
      Matnr,
      _Prod.Description,
      Version,
      Status,
      StatusOld,
      @Semantics.user.lastChangedBy: true
      LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      
      _Certif,
      _Prod
}
