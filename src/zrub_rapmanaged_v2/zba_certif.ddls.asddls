@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BASIC - Tabela Certificados'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zba_certif
  as select from ztb_rap_certif
{
  key cert_uuid             as CertUuid,
      matnr                 as Matnr,
      version               as Version,
      cert_status           as CertStatus,
      cert_ce               as CertCe,
      cert_gs               as CertGs,
      cert_fcc              as CertFcc,
      cert_iso              as CertIso,
      cert_tuev             as CertTuev,
      local_last_changed_at as LocalLastChangedAt
}
