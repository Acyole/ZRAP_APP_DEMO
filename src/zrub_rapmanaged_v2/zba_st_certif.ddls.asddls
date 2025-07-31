@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BASIC - Tabela Status de Certificados'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zba_st_certif
  as select from ztb_rap_status
{
  key state_uuid            as StateUuid,
  key cert_uuid             as CertUuid,
      matnr                 as Matnr,
      version               as Version,
      status                as Status,
      status_old            as StatusOld,
      last_changed_by       as LastChangedBy,
      last_changed_at       as LastChangedAt,
      local_last_changed_at as LocalLastChangedAt
}
