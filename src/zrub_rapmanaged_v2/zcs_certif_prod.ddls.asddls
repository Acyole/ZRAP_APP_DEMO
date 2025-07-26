@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CONSUMPTION - Certificados de Produtos'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zcs_certif_prod
  provider contract transactional_interface
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
      
      /* Associations */
      _Prod,
      _Status: redirected to composition child ZCS_CERTIF_PROD_ST
}
