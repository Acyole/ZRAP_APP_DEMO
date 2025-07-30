@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CONSUMPTION - Certificados de Produtos'
@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
define root view entity zcs_certif_prod
  as projection on zcp_certif_prod
{
  key CertUuid,
      Matnr,
      Description,
      Version,
      CertStatus,
      CertCe,
      CertGs,
      CertFcc,
      CertIso,
      CertTuev,
      LocalLastChangedAt,
      Icon,

      /* Associations */
      _Prod,
      _Status : redirected to composition child ZCS_CERTIF_PROD_ST
}
