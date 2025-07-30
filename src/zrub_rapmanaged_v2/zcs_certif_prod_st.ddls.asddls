@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CONSUMPTION - Status de Certificados'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZCS_CERTIF_PROD_ST
  as projection on ZCP_CERTIF_PROD_ST
{
  key StateUuid,
      CertUuid,
      Matnr,
      Description,
      Version,
      Status,
      StatusOld,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,
      /* Associations */
      _Certif: redirected to parent zcs_certif_prod,
      _Prod
}
