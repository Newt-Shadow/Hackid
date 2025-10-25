.class final Lcom/google/android/gms/measurement/internal/u;
.super Lcom/google/android/gms/measurement/internal/ad;
.source "SourceFile"


# static fields
.field private static final f:[Ljava/lang/String;

.field static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;


# instance fields
.field private final d:Lcom/google/android/gms/measurement/internal/t;

.field private final e:Lcom/google/android/gms/measurement/internal/qc;


# direct methods
.method static constructor <clinit>()V
    .locals 95

    const-string v0, "last_bundled_timestamp"

    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const-string v2, "last_bundled_day"

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const-string v4, "last_sampled_complex_event_id"

    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const-string v6, "last_sampling_rate"

    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    const-string v10, "current_session_count"

    const-string v11, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->f:[Ljava/lang/String;

    const-string v0, "last_upload_timestamp"

    const-string v1, "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"

    const-string v2, "associated_row_id"

    const-string v3, "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->g:[Ljava/lang/String;

    const-string v0, "origin"

    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->h:[Ljava/lang/String;

    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    const-string v3, "app_store"

    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    const-string v5, "gmp_version"

    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    const-string v7, "dev_cert_hash"

    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    const-string v9, "measurement_enabled"

    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    const-string v11, "last_bundle_start_timestamp"

    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const-string v13, "day"

    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const-string v15, "daily_public_events_count"

    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const-string v17, "daily_events_count"

    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const-string v19, "daily_conversions_count"

    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const-string v21, "remote_config"

    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const-string v23, "config_fetched_time"

    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const-string v25, "failed_config_fetch_time"

    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const-string v27, "app_version_int"

    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const-string v29, "firebase_instance_id"

    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const-string v31, "daily_error_events_count"

    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const-string v33, "daily_realtime_events_count"

    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const-string v35, "health_monitor_sample"

    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const-string v37, "android_id"

    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const-string v39, "adid_reporting_enabled"

    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    const-string v41, "ssaid_reporting_enabled"

    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    const-string v43, "admob_app_id"

    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    const-string v45, "linked_admob_app_id"

    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    const-string v47, "dynamite_version"

    const-string v48, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    const-string v49, "safelisted_events"

    const-string v50, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    const-string v51, "ga_app_id"

    const-string v52, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    const-string v53, "config_last_modified_time"

    const-string v54, "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;"

    const-string v55, "e_tag"

    const-string v56, "ALTER TABLE apps ADD COLUMN e_tag TEXT;"

    const-string v57, "session_stitching_token"

    const-string v58, "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;"

    const-string v59, "sgtm_upload_enabled"

    const-string v60, "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;"

    const-string v61, "target_os_version"

    const-string v62, "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;"

    const-string v63, "session_stitching_token_hash"

    const-string v64, "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;"

    const-string v65, "ad_services_version"

    const-string v66, "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;"

    const-string v67, "unmatched_first_open_without_ad_id"

    const-string v68, "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;"

    const-string v69, "npa_metadata_value"

    const-string v70, "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;"

    const-string v71, "attribution_eligibility_status"

    const-string v72, "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;"

    const-string v73, "sgtm_preview_key"

    const-string v74, "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;"

    const-string v75, "dma_consent_state"

    const-string v76, "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;"

    const-string v77, "daily_realtime_dcu_count"

    const-string v78, "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;"

    const-string v79, "bundle_delivery_index"

    const-string v80, "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;"

    const-string v81, "serialized_npa_metadata"

    const-string v82, "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;"

    const-string v83, "unmatched_pfo"

    const-string v84, "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;"

    const-string v85, "unmatched_uwa"

    const-string v86, "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;"

    const-string v87, "ad_campaign_info"

    const-string v88, "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;"

    const-string v89, "daily_registered_triggers_count"

    const-string v90, "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;"

    const-string v91, "client_upload_eligibility"

    const-string v92, "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;"

    const-string v93, "gmp_version_for_remote_config"

    const-string v94, "ALTER TABLE apps ADD COLUMN gmp_version_for_remote_config INTEGER;"

    filled-new-array/range {v1 .. v94}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->i:[Ljava/lang/String;

    const-string v0, "realtime"

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->j:[Ljava/lang/String;

    const-string v0, "retry_count"

    const-string v1, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    const-string v2, "has_realtime"

    const-string v3, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->k:[Ljava/lang/String;

    const-string v0, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    const-string v1, "session_scoped"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->l:[Ljava/lang/String;

    const-string v0, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->m:[Ljava/lang/String;

    const-string v0, "previous_install_count"

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->n:[Ljava/lang/String;

    const-string v1, "consent_source"

    const-string v2, "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;"

    const-string v3, "dma_consent_settings"

    const-string v4, "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;"

    const-string v5, "storage_consent_at_bundling"

    const-string v6, "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->o:[Ljava/lang/String;

    const-string v0, "idempotent"

    const-string v1, "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/measurement/internal/u;->p:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ad;-><init>(Lcom/google/android/gms/measurement/internal/pd;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/google/android/gms/measurement/internal/qc;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Lcom/google/android/gms/measurement/internal/qc;-><init>(Lcom/google/android/gms/common/util/d;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u;->e:Lcom/google/android/gms/measurement/internal/qc;

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 20
    .line 21
    .line 22
    new-instance p1, Lcom/google/android/gms/measurement/internal/t;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "google_app_measurement.db"

    .line 31
    .line 32
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/t;-><init>(Lcom/google/android/gms/measurement/internal/u;Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u;->d:Lcom/google/android/gms/measurement/internal/t;

    .line 36
    .line 37
    return-void
.end method

.method private final M(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 26
    .line 27
    .line 28
    const-string p1, ""

    .line 29
    .line 30
    return-object p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p2

    .line 34
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const-string v1, "Database error"

    .line 45
    .line 46
    invoke-virtual {p3, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 53
    .line 54
    .line 55
    :cond_1
    throw p1
.end method

.method private final N(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6

    .line 1
    const-string p1, "app_id"

    .line 2
    .line 3
    const-string p2, "consent_settings"

    .line 4
    .line 5
    const-string v0, " = ?"

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p5;->q()Lcom/google/android/gms/measurement/internal/n5;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    const-string v0, "Value of the primary key is not set."

    .line 28
    .line 29
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const/16 v4, 0xa

    .line 40
    .line 41
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    filled-new-array {v2}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v1, p2, p3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v2, v0

    .line 63
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    cmp-long v0, v2, v4

    .line 66
    .line 67
    if-nez v0, :cond_1

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    const/4 v2, 0x5

    .line 71
    invoke-virtual {v1, p2, v0, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    const-wide/16 v2, -0x1

    .line 76
    .line 77
    cmp-long p3, v0, v2

    .line 78
    .line 79
    if-nez p3, :cond_1

    .line 80
    .line 81
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 82
    .line 83
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    const-string v0, "Failed to insert/update table (got -1). key"

    .line 92
    .line 93
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {p3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    :cond_1
    return-void

    .line 105
    :catch_0
    move-exception p3

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    const-string v1, "Error storing into table. key"

    .line 125
    .line 126
    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private final O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;
    .locals 29

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p2 .. p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static/range {p3 .. p3}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 13
    .line 14
    .line 15
    const-string v2, "lifetime_count"

    .line 16
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    const-string v3, "current_bundle_count"

    .line 20
    .line 21
    const-string v4, "last_fire_timestamp"

    .line 22
    .line 23
    const-string v5, "last_bundled_timestamp"

    .line 24
    .line 25
    const-string v6, "last_bundled_day"

    .line 26
    .line 27
    const-string v7, "last_sampled_complex_event_id"

    .line 28
    .line 29
    const-string v8, "last_sampling_rate"

    .line 30
    .line 31
    const-string v9, "last_exempt_from_sampling"

    .line 32
    .line 33
    const-string v10, "current_session_count"

    .line 34
    .line 35
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/4 v11, 0x0

    .line 52
    new-array v4, v11, [Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v5, v0

    .line 59
    check-cast v5, [Ljava/lang/String;

    .line 60
    .line 61
    const-string v6, "app_id=? and name=?"

    .line 62
    .line 63
    filled-new-array/range {p2 .. p3}, [Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const/4 v8, 0x0

    .line 68
    const/4 v9, 0x0

    .line 69
    const/4 v10, 0x0

    .line 70
    move-object/from16 v4, p1

    .line 71
    .line 72
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 73
    .line 74
    .line 75
    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_0
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v15

    .line 88
    const/4 v0, 0x1

    .line 89
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v17

    .line 93
    const/4 v4, 0x2

    .line 94
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 95
    .line 96
    .line 97
    move-result-wide v21

    .line 98
    const/4 v4, 0x3

    .line 99
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    const-wide/16 v6, 0x0

    .line 104
    .line 105
    if-eqz v5, :cond_1

    .line 106
    .line 107
    move-wide/from16 v23, v6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    move-wide/from16 v23, v4

    .line 115
    .line 116
    :goto_0
    const/4 v4, 0x4

    .line 117
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_2

    .line 122
    .line 123
    move-object/from16 v25, v2

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    move-object/from16 v25, v4

    .line 135
    .line 136
    :goto_1
    const/4 v4, 0x5

    .line 137
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_3

    .line 142
    .line 143
    move-object/from16 v26, v2

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_3
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 147
    .line 148
    .line 149
    move-result-wide v4

    .line 150
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    move-object/from16 v26, v4

    .line 155
    .line 156
    :goto_2
    const/4 v4, 0x6

    .line 157
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_4

    .line 162
    .line 163
    move-object/from16 v27, v2

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 167
    .line 168
    .line 169
    move-result-wide v4

    .line 170
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    move-object/from16 v27, v4

    .line 175
    .line 176
    :goto_3
    const/4 v4, 0x7

    .line 177
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-nez v5, :cond_6

    .line 182
    .line 183
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 184
    .line 185
    .line 186
    move-result-wide v4

    .line 187
    const-wide/16 v8, 0x1

    .line 188
    .line 189
    cmp-long v4, v4, v8

    .line 190
    .line 191
    if-nez v4, :cond_5

    .line 192
    .line 193
    move v11, v0

    .line 194
    :cond_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    move-object/from16 v28, v0

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_6
    move-object/from16 v28, v2

    .line 202
    .line 203
    :goto_4
    const/16 v0, 0x8

    .line 204
    .line 205
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-eqz v4, :cond_7

    .line 210
    .line 211
    move-wide/from16 v19, v6

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_7
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 215
    .line 216
    .line 217
    move-result-wide v4

    .line 218
    move-wide/from16 v19, v4

    .line 219
    .line 220
    :goto_5
    new-instance v0, Lcom/google/android/gms/measurement/internal/c0;

    .line 221
    .line 222
    move-object v12, v0

    .line 223
    move-object/from16 v13, p2

    .line 224
    .line 225
    move-object/from16 v14, p3

    .line 226
    .line 227
    invoke-direct/range {v12 .. v28}, Lcom/google/android/gms/measurement/internal/c0;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    if-eqz v4, :cond_8

    .line 235
    .line 236
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 237
    .line 238
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    const-string v5, "Got multiple records for event aggregates, expected one. appId"

    .line 247
    .line 248
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 253
    .line 254
    .line 255
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 256
    .line 257
    .line 258
    return-object v0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    goto :goto_6

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    goto :goto_8

    .line 263
    :catch_1
    move-exception v0

    .line 264
    move-object v3, v2

    .line 265
    :goto_6
    :try_start_2
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 266
    .line 267
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    const-string v6, "Error querying events. appId"

    .line 276
    .line 277
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v7

    .line 281
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    move-object/from16 v8, p3

    .line 286
    .line 287
    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v5, v6, v7, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 292
    .line 293
    .line 294
    :goto_7
    if-eqz v3, :cond_9

    .line 295
    .line 296
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 297
    .line 298
    .line 299
    :cond_9
    return-object v2

    .line 300
    :catchall_1
    move-exception v0

    .line 301
    move-object v2, v3

    .line 302
    :goto_8
    if-eqz v2, :cond_a

    .line 303
    .line 304
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 305
    .line 306
    .line 307
    :cond_a
    throw v0
.end method

.method private final P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/c0;)V
    .locals 6

    .line 1
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroid/content/ContentValues;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/c0;->a:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "app_id"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "name"

    .line 23
    .line 24
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/c0;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/c0;->c:J

    .line 30
    .line 31
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, "lifetime_count"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    .line 39
    .line 40
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/c0;->d:J

    .line 41
    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "current_bundle_count"

    .line 47
    .line 48
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    .line 50
    .line 51
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/c0;->f:J

    .line 52
    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const-string v3, "last_fire_timestamp"

    .line 58
    .line 59
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/c0;->g:J

    .line 63
    .line 64
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    const-string v3, "last_bundled_timestamp"

    .line 69
    .line 70
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    .line 72
    .line 73
    const-string v2, "last_bundled_day"

    .line 74
    .line 75
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/c0;->h:Ljava/lang/Long;

    .line 76
    .line 77
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "last_sampled_complex_event_id"

    .line 81
    .line 82
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/c0;->i:Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    .line 86
    .line 87
    const-string v2, "last_sampling_rate"

    .line 88
    .line 89
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/c0;->j:Ljava/lang/Long;

    .line 90
    .line 91
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    .line 93
    .line 94
    iget-wide v2, p2, Lcom/google/android/gms/measurement/internal/c0;->e:J

    .line 95
    .line 96
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v3, "current_session_count"

    .line 101
    .line 102
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/c0;->k:Ljava/lang/Boolean;

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    if-eqz v2, :cond_0

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    const-wide/16 v4, 0x1

    .line 117
    .line 118
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    goto :goto_0

    .line 123
    :cond_0
    move-object v2, v3

    .line 124
    :goto_0
    const-string v4, "last_exempt_from_sampling"

    .line 125
    .line 126
    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    .line 128
    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const/4 v4, 0x5

    .line 134
    invoke-virtual {v2, p1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v2

    .line 138
    const-wide/16 v4, -0x1

    .line 139
    .line 140
    cmp-long p1, v2, v4

    .line 141
    .line 142
    if-nez p1, :cond_1

    .line 143
    .line 144
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string v0, "Failed to insert/update event aggregates (got -1). appId"

    .line 155
    .line 156
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .line 162
    .line 163
    :cond_1
    return-void

    .line 164
    :catch_0
    move-exception p1

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/c0;->a:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    const-string v1, "Error storing event aggregates. appId"

    .line 182
    .line 183
    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-void
.end method

.method private final Q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "app_id=?"

    .line 15
    .line 16
    filled-new-array {p2}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v1, "Error deleting snapshot. appId"

    .line 40
    .line 41
    invoke-virtual {v0, v1, p2, p1}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private final R(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/sd;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p6

    .line 3
    .line 4
    move/from16 v2, p8

    .line 5
    .line 6
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "Upload uri is null or empty. Destination is unknown. Dropping batch. "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v4

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/d7;->J()Lcom/google/android/gms/internal/measurement/a7;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    move-object/from16 v5, p4

    .line 34
    .line 35
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/google/android/gms/internal/measurement/a7;

    .line 40
    .line 41
    invoke-static/range {p7 .. p7}, Li6/d0;->a(I)Li6/d0;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    sget-object v6, Li6/d0;->c:Li6/d0;

    .line 46
    .line 47
    if-eq v5, v6, :cond_2

    .line 48
    .line 49
    sget-object v6, Li6/d0;->f:Li6/d0;

    .line 50
    .line 51
    if-eq v5, v6, :cond_2

    .line 52
    .line 53
    if-lez v2, :cond_2

    .line 54
    .line 55
    new-instance v6, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/a7;->t()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_1

    .line 73
    .line 74
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    check-cast v8, Lcom/google/android/gms/internal/measurement/f7;

    .line 79
    .line 80
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/hb;->p()Lcom/google/android/gms/internal/measurement/fb;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    check-cast v8, Lcom/google/android/gms/internal/measurement/e7;

    .line 85
    .line 86
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/measurement/e7;->C0(I)Lcom/google/android/gms/internal/measurement/e7;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    check-cast v8, Lcom/google/android/gms/internal/measurement/f7;

    .line 94
    .line 95
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/a7;->z()Lcom/google/android/gms/internal/measurement/a7;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/a7;->y(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/a7;

    .line 103
    .line 104
    .line 105
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 108
    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    const-string v7, "\r\n"

    .line 113
    .line 114
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    array-length v7, v0

    .line 119
    const/4 v8, 0x0

    .line 120
    move v9, v8

    .line 121
    :goto_1
    if-ge v9, v7, :cond_5

    .line 122
    .line 123
    aget-object v10, v0, v9

    .line 124
    .line 125
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_3

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const-string v11, "="

    .line 133
    .line 134
    const/4 v12, 0x2

    .line 135
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    array-length v13, v11

    .line 140
    if-eq v13, v12, :cond_4

    .line 141
    .line 142
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const-string v7, "Invalid upload header: "

    .line 153
    .line 154
    invoke-virtual {v0, v7, v10}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_4
    aget-object v10, v11, v8

    .line 159
    .line 160
    const/4 v12, 0x1

    .line 161
    aget-object v11, v11, v12

    .line 162
    .line 163
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    add-int/lit8 v9, v9, 0x1

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_5
    :goto_2
    new-instance v0, Lcom/google/android/gms/measurement/internal/rd;

    .line 170
    .line 171
    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/rd;-><init>()V

    .line 172
    .line 173
    .line 174
    move-wide/from16 v7, p2

    .line 175
    .line 176
    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/rd;->b(J)Lcom/google/android/gms/measurement/internal/rd;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    check-cast v3, Lcom/google/android/gms/internal/measurement/d7;

    .line 184
    .line 185
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/rd;->c(Lcom/google/android/gms/internal/measurement/d7;)Lcom/google/android/gms/measurement/internal/rd;

    .line 186
    .line 187
    .line 188
    move-object/from16 v3, p5

    .line 189
    .line 190
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/rd;->d(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/rd;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/rd;->e(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/rd;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/rd;->f(Li6/d0;)Lcom/google/android/gms/measurement/internal/rd;

    .line 197
    .line 198
    .line 199
    move-wide/from16 v5, p9

    .line 200
    .line 201
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/rd;->g(J)Lcom/google/android/gms/measurement/internal/rd;

    .line 202
    .line 203
    .line 204
    move-wide/from16 v5, p11

    .line 205
    .line 206
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/rd;->h(J)Lcom/google/android/gms/measurement/internal/rd;

    .line 207
    .line 208
    .line 209
    move-wide/from16 v5, p13

    .line 210
    .line 211
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/rd;->i(J)Lcom/google/android/gms/measurement/internal/rd;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/rd;->j(I)Lcom/google/android/gms/measurement/internal/rd;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/rd;->a()Lcom/google/android/gms/measurement/internal/sd;

    .line 218
    .line 219
    .line 220
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    return-object v0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    const-string v3, "Failed to queued MeasurementBatch from upload_queue. appId"

    .line 234
    .line 235
    move-object v5, p1

    .line 236
    invoke-virtual {v2, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    return-object v4
.end method

.method private final S()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    sget-object v4, Li6/d0;->c:Li6/d0;

    .line 14
    .line 15
    invoke-virtual {v4}, Li6/d0;->zza()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 28
    .line 29
    .line 30
    sget-object v2, Lcom/google/android/gms/measurement/internal/c5;->T:Lcom/google/android/gms/measurement/internal/b5;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/Long;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    filled-new-array {v5, v1, v2}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v5, "(upload_type = %d AND ABS(creation_timestamp - %d) > %d)"

    .line 52
    .line 53
    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v4}, Li6/d0;->zza()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->q()J

    .line 69
    .line 70
    .line 71
    move-result-wide v5

    .line 72
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    filled-new-array {v4, v1, v0}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v1, "(upload_type != %d AND ABS(creation_timestamp - %d) > %d)"

    .line 81
    .line 82
    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x5

    .line 105
    .line 106
    add-int/2addr v1, v3

    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .line 111
    .line 112
    const-string v1, "("

    .line 113
    .line 114
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, " OR "

    .line 121
    .line 122
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, ")"

    .line 129
    .line 130
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0
.end method

.method private static final T(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const-string v0, ", "

    .line 11
    .line 12
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, " AND (upload_type IN (%s))"

    .line 21
    .line 22
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method static synthetic c0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->h:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->i:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->j:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->l:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->m:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->n:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->o:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l0()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/u;->p:[Ljava/lang/String;

    return-object v0
.end method

.method static final o0(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string p1, "value"

    .line 2
    .line 3
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    instance-of v0, p2, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p2, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    check-cast p2, Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    check-cast p2, Ljava/lang/Double;

    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string p1, "Invalid value type"

    .line 42
    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method private final p0(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 22
    .line 23
    .line 24
    return-wide p1

    .line 25
    :cond_0
    :try_start_1
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    .line 26
    .line 27
    const-string v0, "Database returned empty set"

    .line 28
    .line 29
    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p2

    .line 36
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "Database error"

    .line 47
    .line 48
    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    :goto_0
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 55
    .line 56
    .line 57
    :cond_1
    throw p1
.end method

.method private final q0(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide p3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 22
    .line 23
    .line 24
    return-wide p3

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p2

    .line 28
    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 29
    .line 30
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const-string p4, "Database error"

    .line 39
    .line 40
    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :goto_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 47
    .line 48
    .line 49
    :cond_1
    throw p1
.end method


# virtual methods
.method public final A()J
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const-string v3, "select max(timestamp) from raw_events"

    .line 5
    .line 6
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/u;->q0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public final A0(Lcom/google/android/gms/measurement/internal/wd;)Z
    .locals 9

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/wd;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/wd;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/u;->B0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/wd;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/yd;->r0(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v4, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 32
    .line 33
    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sget-object v6, Lcom/google/android/gms/measurement/internal/c5;->W:Lcom/google/android/gms/measurement/internal/b5;

    .line 44
    .line 45
    const/16 v7, 0x19

    .line 46
    .line 47
    const/16 v8, 0x64

    .line 48
    .line 49
    invoke-virtual {v2, v0, v6, v7, v8}, Lcom/google/android/gms/measurement/internal/m;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;II)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    int-to-long v6, v2

    .line 54
    cmp-long v2, v4, v6

    .line 55
    .line 56
    if-gez v2, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    return v3

    .line 60
    :cond_1
    const-string v2, "_npa"

    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_2

    .line 67
    .line 68
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/wd;->b:Ljava/lang/String;

    .line 69
    .line 70
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v4, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    .line 75
    .line 76
    invoke-direct {p0, v4, v2}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 83
    .line 84
    .line 85
    const-wide/16 v6, 0x19

    .line 86
    .line 87
    cmp-long v2, v4, v6

    .line 88
    .line 89
    if-ltz v2, :cond_2

    .line 90
    .line 91
    return v3

    .line 92
    :cond_2
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    .line 93
    .line 94
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v3, "app_id"

    .line 98
    .line 99
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/wd;->b:Ljava/lang/String;

    .line 103
    .line 104
    const-string v4, "origin"

    .line 105
    .line 106
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v3, "name"

    .line 110
    .line 111
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/wd;->d:J

    .line 115
    .line 116
    const-string v1, "set_timestamp"

    .line 117
    .line 118
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/wd;->e:Ljava/lang/Object;

    .line 126
    .line 127
    const-string v3, "value"

    .line 128
    .line 129
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/u;->o0(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v3, "user_attributes"

    .line 137
    .line 138
    const/4 v4, 0x0

    .line 139
    const/4 v5, 0x5

    .line 140
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    const-wide/16 v3, -0x1

    .line 145
    .line 146
    cmp-long v1, v1, v3

    .line 147
    .line 148
    if-nez v1, :cond_3

    .line 149
    .line 150
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const-string v2, "Failed to insert/update user property (got -1). appId"

    .line 161
    .line 162
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/wd;->a:Ljava/lang/String;

    .line 182
    .line 183
    const-string v2, "Error storing user property. appId"

    .line 184
    .line 185
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 193
    return p1
.end method

.method public final B()Z
    .locals 4

    .line 1
    const-string v0, "select count(1) > 0 from raw_events"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final B0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/wd;
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static/range {p2 .. p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "user_attributes"

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    new-array v5, v0, [Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "set_timestamp"

    .line 25
    .line 26
    const/4 v11, 0x0

    .line 27
    aput-object v0, v5, v11

    .line 28
    .line 29
    const-string v0, "value"

    .line 30
    .line 31
    const/4 v12, 0x1

    .line 32
    aput-object v0, v5, v12

    .line 33
    .line 34
    const-string v0, "origin"

    .line 35
    .line 36
    const/4 v13, 0x2

    .line 37
    aput-object v0, v5, v13

    .line 38
    .line 39
    const-string v6, "app_id=? and name=?"

    .line 40
    .line 41
    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 49
    .line 50
    .line 51
    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    invoke-virtual {p0, v3, v12}, Lcom/google/android/gms/measurement/internal/u;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    if-nez v10, :cond_1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    new-instance v0, Lcom/google/android/gms/measurement/internal/wd;

    .line 75
    .line 76
    move-object v4, v0

    .line 77
    move-object v5, p1

    .line 78
    move-object/from16 v7, p2

    .line 79
    .line 80
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/wd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    const-string v5, "Got multiple records for user property, expected one. appId"

    .line 100
    .line 101
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 109
    .line 110
    .line 111
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto :goto_2

    .line 116
    :catch_1
    move-exception v0

    .line 117
    move-object v3, v2

    .line 118
    :goto_0
    :try_start_2
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 119
    .line 120
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    const-string v6, "Error querying user property. appId"

    .line 129
    .line 130
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    move-object/from16 v8, p2

    .line 139
    .line 140
    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v5, v6, v7, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    .line 146
    .line 147
    :goto_1
    if-eqz v3, :cond_3

    .line 148
    .line 149
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 150
    .line 151
    .line 152
    :cond_3
    return-object v2

    .line 153
    :catchall_1
    move-exception v0

    .line 154
    move-object v2, v3

    .line 155
    :goto_2
    if-eqz v2, :cond_4

    .line 156
    .line 157
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 158
    .line 159
    .line 160
    :cond_4
    throw v0
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "select count(1) from raw_events where app_id = ? and name = ?"

    .line 6
    .line 7
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    cmp-long p1, p1, v0

    .line 14
    .line 15
    if-lez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method public final C0(Ljava/lang/String;)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v10, "1000"

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "user_attributes"

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    new-array v4, v4, [Ljava/lang/String;

    .line 28
    .line 29
    const-string v5, "name"

    .line 30
    .line 31
    const/4 v12, 0x0

    .line 32
    aput-object v5, v4, v12

    .line 33
    .line 34
    const-string v5, "origin"

    .line 35
    .line 36
    const/4 v13, 0x1

    .line 37
    aput-object v5, v4, v13

    .line 38
    .line 39
    const-string v5, "set_timestamp"

    .line 40
    .line 41
    const/4 v14, 0x2

    .line 42
    aput-object v5, v4, v14

    .line 43
    .line 44
    const-string v5, "value"

    .line 45
    .line 46
    const/4 v15, 0x3

    .line 47
    aput-object v5, v4, v15

    .line 48
    .line 49
    const-string v5, "app_id=?"

    .line 50
    .line 51
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v9, "rowid"

    .line 56
    .line 57
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 58
    .line 59
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 60
    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    const/16 v16, 0x0

    .line 64
    .line 65
    move-object/from16 v17, v8

    .line 66
    .line 67
    move-object/from16 v8, v16

    .line 68
    .line 69
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    :cond_0
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-nez v2, :cond_1

    .line 88
    .line 89
    const-string v2, ""

    .line 90
    .line 91
    :cond_1
    move-object v5, v2

    .line 92
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    invoke-virtual {v1, v11, v15}, Lcom/google/android/gms/measurement/internal/u;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    if-nez v9, :cond_2

    .line 101
    .line 102
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const-string v3, "Read invalid user property value, ignoring it. appId"

    .line 111
    .line 112
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    new-instance v2, Lcom/google/android/gms/measurement/internal/wd;

    .line 121
    .line 122
    move-object v3, v2

    .line 123
    move-object/from16 v4, p1

    .line 124
    .line 125
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/wd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 132
    .line 133
    .line 134
    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-nez v2, :cond_0

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    goto :goto_2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    :try_start_1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    const-string v3, "Error querying user properties. appId"

    .line 152
    .line 153
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_3
    :goto_1
    if-eqz v11, :cond_4

    .line 165
    .line 166
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 167
    .line 168
    .line 169
    :cond_4
    return-object v0

    .line 170
    :goto_2
    if-eqz v11, :cond_5

    .line 171
    .line 172
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 173
    .line 174
    .line 175
    :cond_5
    throw v0
.end method

.method public final D()Z
    .locals 4

    .line 1
    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final D0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v11, "1001"

    .line 20
    .line 21
    const-string v3, "*"

    .line 22
    .line 23
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v13, 0x3

    .line 26
    invoke-direct {v4, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    move-object/from16 v15, p1

    .line 30
    .line 31
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v6, "app_id=?"

    .line 37
    .line 38
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 45
    if-nez v6, :cond_0

    .line 46
    .line 47
    move-object/from16 v14, p2

    .line 48
    .line 49
    :try_start_1
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    const-string v6, " and origin=?"

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move-object/from16 v14, p2

    .line 59
    .line 60
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/4 v10, 0x1

    .line 65
    if-nez v6, :cond_1

    .line 66
    .line 67
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    add-int/2addr v6, v10

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    const-string v3, " and name glob ?"

    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    new-array v3, v3, [Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    move-object v7, v3

    .line 110
    check-cast v7, [Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-string v4, "user_attributes"

    .line 117
    .line 118
    const/4 v6, 0x4

    .line 119
    new-array v6, v6, [Ljava/lang/String;

    .line 120
    .line 121
    const-string v8, "name"

    .line 122
    .line 123
    const/4 v9, 0x0

    .line 124
    aput-object v8, v6, v9

    .line 125
    .line 126
    const-string v8, "set_timestamp"

    .line 127
    .line 128
    aput-object v8, v6, v10

    .line 129
    .line 130
    const-string v8, "value"

    .line 131
    .line 132
    const/4 v12, 0x2

    .line 133
    aput-object v8, v6, v12

    .line 134
    .line 135
    const-string v8, "origin"

    .line 136
    .line 137
    aput-object v8, v6, v13

    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    const-string v17, "rowid"

    .line 144
    .line 145
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 148
    .line 149
    .line 150
    const/16 v18, 0x0

    .line 151
    .line 152
    const/16 v19, 0x0

    .line 153
    .line 154
    move-object/from16 v21, v5

    .line 155
    .line 156
    move-object v5, v6

    .line 157
    move-object v6, v8

    .line 158
    move-object/from16 v8, v18

    .line 159
    .line 160
    move v13, v9

    .line 161
    move-object/from16 v9, v19

    .line 162
    .line 163
    move v12, v10

    .line 164
    move-object/from16 v10, v17

    .line 165
    .line 166
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 167
    .line 168
    .line 169
    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 170
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-nez v4, :cond_2

    .line 175
    .line 176
    goto/16 :goto_5

    .line 177
    .line 178
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 183
    .line 184
    .line 185
    const/16 v5, 0x3e8

    .line 186
    .line 187
    if-lt v4, v5, :cond_3

    .line 188
    .line 189
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v4, "Read more than the max allowed user properties, ignoring excess"

    .line 198
    .line 199
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 200
    .line 201
    .line 202
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_5

    .line 210
    .line 211
    :cond_3
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v17

    .line 215
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 216
    .line 217
    .line 218
    move-result-wide v18

    .line 219
    const/4 v4, 0x2

    .line 220
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/measurement/internal/u;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v20

    .line 224
    const/4 v5, 0x3

    .line 225
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    if-nez v20, :cond_4

    .line 230
    .line 231
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    const-string v8, "(2)Read invalid user property value, ignoring it"

    .line 240
    .line 241
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    invoke-virtual {v7, v8, v9, v6, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_4
    new-instance v7, Lcom/google/android/gms/measurement/internal/wd;

    .line 250
    .line 251
    move-object v14, v7

    .line 252
    move-object/from16 v15, p1

    .line 253
    .line 254
    move-object/from16 v16, v6

    .line 255
    .line 256
    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/measurement/internal/wd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 263
    .line 264
    .line 265
    move-result v7
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    if-nez v7, :cond_5

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_5
    move-object/from16 v15, p1

    .line 270
    .line 271
    move-object v14, v6

    .line 272
    goto :goto_1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    move-object v12, v3

    .line 275
    move-object v14, v6

    .line 276
    goto :goto_4

    .line 277
    :catchall_0
    move-exception v0

    .line 278
    move-object v12, v3

    .line 279
    goto :goto_6

    .line 280
    :catch_1
    move-exception v0

    .line 281
    move-object v12, v3

    .line 282
    goto :goto_4

    .line 283
    :catch_2
    move-exception v0

    .line 284
    goto :goto_3

    .line 285
    :catchall_1
    move-exception v0

    .line 286
    const/4 v12, 0x0

    .line 287
    goto :goto_6

    .line 288
    :catch_3
    move-exception v0

    .line 289
    move-object/from16 v14, p2

    .line 290
    .line 291
    :goto_3
    const/4 v12, 0x0

    .line 292
    :goto_4
    :try_start_4
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 293
    .line 294
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    const-string v3, "(2)Error querying user properties"

    .line 303
    .line 304
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-virtual {v2, v3, v4, v14, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 315
    move-object v3, v12

    .line 316
    :goto_5
    if-eqz v3, :cond_6

    .line 317
    .line 318
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 319
    .line 320
    .line 321
    :cond_6
    return-object v2

    .line 322
    :catchall_2
    move-exception v0

    .line 323
    :goto_6
    if-eqz v12, :cond_7

    .line 324
    .line 325
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 326
    .line 327
    .line 328
    :cond_7
    throw v0
.end method

.method public final E(Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    filled-new-array {p1}, [Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/u;->q0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public final E0(Lcom/google/android/gms/measurement/internal/i;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/i;->a:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/i;->c:Lcom/google/android/gms/measurement/internal/ud;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ud;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/u;->B0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/wd;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    .line 30
    .line 31
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 38
    .line 39
    .line 40
    const-wide/16 v3, 0x3e8

    .line 41
    .line 42
    cmp-long v1, v1, v3

    .line 43
    .line 44
    if-gez v1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x0

    .line 48
    return p1

    .line 49
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "app_id"

    .line 55
    .line 56
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/i;->b:Ljava/lang/String;

    .line 60
    .line 61
    const-string v3, "origin"

    .line 62
    .line 63
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/i;->c:Lcom/google/android/gms/measurement/internal/ud;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/ud;->b:Ljava/lang/String;

    .line 69
    .line 70
    const-string v3, "name"

    .line 71
    .line 72
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/i;->c:Lcom/google/android/gms/measurement/internal/ud;

    .line 76
    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ud;->g()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "value"

    .line 86
    .line 87
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/u;->o0(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/i;->e:Z

    .line 91
    .line 92
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    const-string v3, "active"

    .line 97
    .line 98
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/i;->f:Ljava/lang/String;

    .line 102
    .line 103
    const-string v3, "trigger_event_name"

    .line 104
    .line 105
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/i;->h:J

    .line 109
    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    const-string v3, "trigger_timeout"

    .line 115
    .line 116
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 120
    .line 121
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/i;->g:Lcom/google/android/gms/measurement/internal/g0;

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4, v3}, Lcom/google/android/gms/measurement/internal/yd;->T(Landroid/os/Parcelable;)[B

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const-string v4, "timed_out_event"

    .line 132
    .line 133
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 134
    .line 135
    .line 136
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/i;->d:J

    .line 137
    .line 138
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const-string v4, "creation_timestamp"

    .line 143
    .line 144
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/i;->i:Lcom/google/android/gms/measurement/internal/g0;

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/yd;->T(Landroid/os/Parcelable;)[B

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    const-string v4, "triggered_event"

    .line 158
    .line 159
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 160
    .line 161
    .line 162
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/i;->c:Lcom/google/android/gms/measurement/internal/ud;

    .line 163
    .line 164
    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/ud;->c:J

    .line 165
    .line 166
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    const-string v4, "triggered_timestamp"

    .line 171
    .line 172
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    .line 174
    .line 175
    iget-wide v3, p1, Lcom/google/android/gms/measurement/internal/i;->j:J

    .line 176
    .line 177
    const-string v5, "time_to_live"

    .line 178
    .line 179
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/i;->k:Lcom/google/android/gms/measurement/internal/g0;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3, p1}, Lcom/google/android/gms/measurement/internal/yd;->T(Landroid/os/Parcelable;)[B

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const-string v3, "expired_event"

    .line 197
    .line 198
    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 199
    .line 200
    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const-string v3, "conditional_properties"

    .line 206
    .line 207
    const/4 v4, 0x0

    .line 208
    const/4 v5, 0x5

    .line 209
    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 210
    .line 211
    .line 212
    move-result-wide v3

    .line 213
    const-wide/16 v5, -0x1

    .line 214
    .line 215
    cmp-long p1, v3, v5

    .line 216
    .line 217
    if-nez p1, :cond_2

    .line 218
    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    const-string v1, "Failed to insert/update conditional user property (got -1)"

    .line 228
    .line 229
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .line 235
    .line 236
    goto :goto_1

    .line 237
    :catch_0
    move-exception p1

    .line 238
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v2, "Error storing conditional user property"

    .line 253
    .line 254
    invoke-virtual {v1, v2, v0, p1}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 258
    return p1
.end method

.method public final F(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/t6;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    invoke-static {p5}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 17
    .line 18
    invoke-virtual {p5}, Lcom/google/android/gms/internal/measurement/v9;->e()[B

    .line 19
    .line 20
    .line 21
    move-result-object p5

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    array-length v3, p5

    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "Saving complex main event, appId, data size"

    .line 44
    .line 45
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroid/content/ContentValues;

    .line 49
    .line 50
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "app_id"

    .line 54
    .line 55
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v2, "event_id"

    .line 59
    .line 60
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    .line 62
    .line 63
    const-string p2, "children_to_process"

    .line 64
    .line 65
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    .line 71
    .line 72
    const-string p2, "main_event"

    .line 73
    .line 74
    invoke-virtual {v1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 75
    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    const-string p4, "main_event_params"

    .line 83
    .line 84
    const/4 p5, 0x0

    .line 85
    const/4 v2, 0x5

    .line 86
    invoke-virtual {p3, p4, p5, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 87
    .line 88
    .line 89
    move-result-wide p3

    .line 90
    const-wide/16 v1, -0x1

    .line 91
    .line 92
    cmp-long p3, p3, v1

    .line 93
    .line 94
    if-nez p3, :cond_0

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    const-string p4, "Failed to insert complex main event (got -1). appId"

    .line 105
    .line 106
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p5

    .line 110
    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    return p2

    .line 114
    :cond_0
    const/4 p1, 0x1

    .line 115
    return p1

    .line 116
    :catch_0
    move-exception p3

    .line 117
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 118
    .line 119
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 120
    .line 121
    .line 122
    move-result-object p4

    .line 123
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const-string p5, "Error storing complex main event. appId"

    .line 132
    .line 133
    invoke-virtual {p4, p5, p1, p3}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return p2
.end method

.method public final F0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/i;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-static/range {p2 .. p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    const-string v11, "conditional_properties"

    .line 22
    .line 23
    const/16 v0, 0xb

    .line 24
    .line 25
    new-array v12, v0, [Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "origin"

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v0, v12, v2

    .line 31
    .line 32
    const-string v0, "value"

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    aput-object v0, v12, v3

    .line 36
    .line 37
    const-string v0, "active"

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    aput-object v0, v12, v4

    .line 41
    .line 42
    const-string v0, "trigger_event_name"

    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    aput-object v0, v12, v5

    .line 46
    .line 47
    const-string v0, "trigger_timeout"

    .line 48
    .line 49
    const/4 v6, 0x4

    .line 50
    aput-object v0, v12, v6

    .line 51
    .line 52
    const-string v0, "timed_out_event"

    .line 53
    .line 54
    const/4 v7, 0x5

    .line 55
    aput-object v0, v12, v7

    .line 56
    .line 57
    const-string v0, "creation_timestamp"

    .line 58
    .line 59
    const/4 v15, 0x6

    .line 60
    aput-object v0, v12, v15

    .line 61
    .line 62
    const-string v0, "triggered_event"

    .line 63
    .line 64
    const/4 v14, 0x7

    .line 65
    aput-object v0, v12, v14

    .line 66
    .line 67
    const-string v0, "triggered_timestamp"

    .line 68
    .line 69
    const/16 v13, 0x8

    .line 70
    .line 71
    aput-object v0, v12, v13

    .line 72
    .line 73
    const-string v0, "time_to_live"

    .line 74
    .line 75
    const/16 v9, 0x9

    .line 76
    .line 77
    aput-object v0, v12, v9

    .line 78
    .line 79
    const-string v0, "expired_event"

    .line 80
    .line 81
    const/16 v9, 0xa

    .line 82
    .line 83
    aput-object v0, v12, v9

    .line 84
    .line 85
    const-string v0, "app_id=? and name=?"

    .line 86
    .line 87
    filled-new-array/range {p1 .. p2}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v16

    .line 91
    const/16 v17, 0x0

    .line 92
    .line 93
    const/16 v18, 0x0

    .line 94
    .line 95
    const/16 v19, 0x0

    .line 96
    .line 97
    move v9, v13

    .line 98
    move-object v13, v0

    .line 99
    move v0, v14

    .line 100
    move-object/from16 v14, v16

    .line 101
    .line 102
    move v9, v15

    .line 103
    move-object/from16 v15, v17

    .line 104
    .line 105
    move-object/from16 v16, v18

    .line 106
    .line 107
    move-object/from16 v17, v19

    .line 108
    .line 109
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 110
    .line 111
    .line 112
    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    if-nez v11, :cond_0

    .line 118
    .line 119
    goto/16 :goto_2

    .line 120
    .line 121
    :cond_0
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    if-nez v11, :cond_1

    .line 126
    .line 127
    const-string v11, ""

    .line 128
    .line 129
    :cond_1
    move-object/from16 v22, v11

    .line 130
    .line 131
    invoke-virtual {v1, v10, v3}, Lcom/google/android/gms/measurement/internal/u;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_2

    .line 140
    .line 141
    move/from16 v26, v3

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    move/from16 v26, v2

    .line 145
    .line 146
    :goto_0
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v27

    .line 150
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 151
    .line 152
    .line 153
    move-result-wide v29

    .line 154
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 155
    .line 156
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getBlob(I)[B

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    sget-object v5, Lcom/google/android/gms/measurement/internal/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 165
    .line 166
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/td;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    move-object/from16 v28, v3

    .line 171
    .line 172
    check-cast v28, Lcom/google/android/gms/measurement/internal/g0;

    .line 173
    .line 174
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 175
    .line 176
    .line 177
    move-result-wide v24

    .line 178
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getBlob(I)[B

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v3, v0, v5}, Lcom/google/android/gms/measurement/internal/td;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    move-object/from16 v31, v0

    .line 191
    .line 192
    check-cast v31, Lcom/google/android/gms/measurement/internal/g0;

    .line 193
    .line 194
    const/16 v0, 0x8

    .line 195
    .line 196
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 197
    .line 198
    .line 199
    move-result-wide v6

    .line 200
    const/16 v0, 0x9

    .line 201
    .line 202
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 203
    .line 204
    .line 205
    move-result-wide v32

    .line 206
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const/16 v2, 0xa

    .line 211
    .line 212
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/measurement/internal/td;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    move-object/from16 v34, v0

    .line 221
    .line 222
    check-cast v34, Lcom/google/android/gms/measurement/internal/g0;

    .line 223
    .line 224
    new-instance v23, Lcom/google/android/gms/measurement/internal/ud;

    .line 225
    .line 226
    move-object/from16 v2, v23

    .line 227
    .line 228
    move-object/from16 v3, p2

    .line 229
    .line 230
    move-wide v4, v6

    .line 231
    move-object v6, v11

    .line 232
    move-object/from16 v7, v22

    .line 233
    .line 234
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/ud;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance v0, Lcom/google/android/gms/measurement/internal/i;

    .line 238
    .line 239
    move-object/from16 v20, v0

    .line 240
    .line 241
    move-object/from16 v21, p1

    .line 242
    .line 243
    invoke-direct/range {v20 .. v34}, Lcom/google/android/gms/measurement/internal/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ud;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/g0;JLcom/google/android/gms/measurement/internal/g0;JLcom/google/android/gms/measurement/internal/g0;)V

    .line 244
    .line 245
    .line 246
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    if-eqz v2, :cond_3

    .line 251
    .line 252
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 253
    .line 254
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const-string v4, "Got multiple records for conditional property, expected one"

    .line 263
    .line 264
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    .line 278
    .line 279
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 280
    .line 281
    .line 282
    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    goto :goto_1

    .line 285
    :catchall_0
    move-exception v0

    .line 286
    const/4 v9, 0x0

    .line 287
    goto :goto_3

    .line 288
    :catch_1
    move-exception v0

    .line 289
    const/4 v10, 0x0

    .line 290
    :goto_1
    :try_start_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 291
    .line 292
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    const-string v4, "Error querying conditional property"

    .line 301
    .line 302
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v2, v8}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 315
    .line 316
    .line 317
    :goto_2
    if-eqz v10, :cond_4

    .line 318
    .line 319
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 320
    .line 321
    .line 322
    :cond_4
    const/4 v2, 0x0

    .line 323
    return-object v2

    .line 324
    :catchall_1
    move-exception v0

    .line 325
    move-object v9, v10

    .line 326
    :goto_3
    if-eqz v9, :cond_5

    .line 327
    .line 328
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 329
    .line 330
    .line 331
    :cond_5
    throw v0
.end method

.method public final G(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "select parameters from default_event_params where app_id=?"

    .line 13
    .line 14
    filled-new-array {p1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v2, "Default event parameters not found"

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 45
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    .line 46
    .line 47
    .line 48
    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t6;->M()Lcom/google/android/gms/internal/measurement/s6;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/google/android/gms/internal/measurement/s6;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/google/android/gms/internal/measurement/t6;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    :try_start_3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/t6;->C()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/td;->q(Ljava/util/List;)Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object p1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :catch_0
    move-exception v2

    .line 83
    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v4, "Failed to retrieve default event parameters. appId"

    .line 94
    .line 95
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_1
    move-exception p1

    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    goto :goto_2

    .line 107
    :catch_2
    move-exception p1

    .line 108
    move-object v1, v0

    .line 109
    :goto_0
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const-string v3, "Error selecting default event parameters"

    .line 120
    .line 121
    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 122
    .line 123
    .line 124
    :goto_1
    if-eqz v1, :cond_1

    .line 125
    .line 126
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 127
    .line 128
    .line 129
    :cond_1
    return-object v0

    .line 130
    :catchall_1
    move-exception p1

    .line 131
    move-object v0, v1

    .line 132
    :goto_2
    if-eqz v0, :cond_2

    .line 133
    .line 134
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 135
    .line 136
    .line 137
    :cond_2
    throw p1
.end method

.method public final G0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "conditional_properties"

    .line 18
    .line 19
    const-string v2, "app_id=? and name=?"

    .line 20
    .line 21
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const-string v1, "Error deleting conditional property"

    .line 54
    .line 55
    invoke-virtual {v2, v1, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    return p1
.end method

.method final H(Ljava/lang/String;J)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "select count(*) from raw_events where app_id=? and timestamp >= ? and name not like \'!_%\' escape \'!\' limit 1;"

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    new-array v3, v2, [Ljava/lang/String;

    .line 6
    .line 7
    aput-object p1, v3, v0

    .line 8
    .line 9
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x1

    .line 14
    aput-object v4, v3, v5

    .line 15
    .line 16
    const-wide/16 v6, 0x0

    .line 17
    .line 18
    invoke-direct {p0, v1, v3, v6, v7}, Lcom/google/android/gms/measurement/internal/u;->q0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    cmp-long v1, v3, v6

    .line 23
    .line 24
    if-lez v1, :cond_0

    .line 25
    .line 26
    return v0

    .line 27
    :cond_0
    const-string v1, "select count(*) from raw_events where app_id=? and timestamp >= ? and name like \'!_%\' escape \'!\' limit 1;"

    .line 28
    .line 29
    new-array v2, v2, [Ljava/lang/String;

    .line 30
    .line 31
    aput-object p1, v2, v0

    .line 32
    .line 33
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    aput-object p1, v2, v5

    .line 38
    .line 39
    invoke-direct {p0, v1, v2, v6, v7}, Lcom/google/android/gms/measurement/internal/u;->q0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    cmp-long p1, p1, v6

    .line 44
    .line 45
    if-lez p1, :cond_1

    .line 46
    .line 47
    return v5

    .line 48
    :cond_1
    return v0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    const-string p3, "Error checking backfill conditions"

    .line 61
    .line 62
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return v0
.end method

.method public final H0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, "app_id=?"

    .line 22
    .line 23
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const-string p2, " and origin=?"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_1

    .line 45
    .line 46
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string p3, "*"

    .line 51
    .line 52
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    const-string p2, " and name glob ?"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    new-array p2, p2, [Ljava/lang/String;

    .line 69
    .line 70
    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, [Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/u;->I0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method

.method public final I(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    invoke-static/range {p4 .. p4}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/measurement/internal/s;

    .line 17
    .line 18
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-direct {v0, v1, v12, v2, v3}, Lcom/google/android/gms/measurement/internal/s;-><init>(Lcom/google/android/gms/measurement/internal/u;Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/s;

    .line 27
    .line 28
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/measurement/internal/s;-><init>(Lcom/google/android/gms/measurement/internal/u;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    move-object v13, v0

    .line 32
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s;->a()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_13

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v14

    .line 46
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_12

    .line 51
    .line 52
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    move-object v15, v0

    .line 57
    check-cast v15, Lcom/google/android/gms/measurement/internal/r;

    .line 58
    .line 59
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v11, 0x1

    .line 64
    const/4 v9, 0x0

    .line 65
    if-nez v0, :cond_6

    .line 66
    .line 67
    iget-wide v2, v15, Lcom/google/android/gms/measurement/internal/r;->b:J

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    .line 72
    .line 73
    move-result-object v16

    .line 74
    const-string v17, "raw_events_metadata"

    .line 75
    .line 76
    new-array v0, v11, [Ljava/lang/String;

    .line 77
    .line 78
    const-string v5, "metadata"

    .line 79
    .line 80
    aput-object v5, v0, v9

    .line 81
    .line 82
    const-string v19, "app_id = ? and metadata_fingerprint = ?"

    .line 83
    .line 84
    const/4 v5, 0x2

    .line 85
    new-array v5, v5, [Ljava/lang/String;

    .line 86
    .line 87
    aput-object v12, v5, v9

    .line 88
    .line 89
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    aput-object v2, v5, v11

    .line 94
    .line 95
    const/16 v21, 0x0

    .line 96
    .line 97
    const/16 v22, 0x0

    .line 98
    .line 99
    const-string v23, "rowid"

    .line 100
    .line 101
    const-string v24, "2"

    .line 102
    .line 103
    move-object/from16 v18, v0

    .line 104
    .line 105
    move-object/from16 v20, v5

    .line 106
    .line 107
    invoke-virtual/range {v16 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 108
    .line 109
    .line 110
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    .line 117
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v3, "Raw event metadata record is missing. appId"

    .line 128
    .line 129
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .line 135
    .line 136
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_7

    .line 140
    .line 141
    :cond_1
    :try_start_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 142
    .line 143
    .line 144
    move-result-object v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f7;->h0()Lcom/google/android/gms/internal/measurement/e7;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    check-cast v0, Lcom/google/android/gms/internal/measurement/e7;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    move-object v3, v0

    .line 160
    check-cast v3, Lcom/google/android/gms/internal/measurement/f7;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    .line 162
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_2

    .line 167
    .line 168
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v4, "Get multiple raw event metadata records, expected one. appId"

    .line 179
    .line 180
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    .line 189
    .line 190
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 191
    .line 192
    .line 193
    goto :goto_6

    .line 194
    :catch_0
    move-exception v0

    .line 195
    goto :goto_4

    .line 196
    :catch_1
    move-exception v0

    .line 197
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 198
    .line 199
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    const-string v5, "Data loss. Failed to merge raw event metadata. appId"

    .line 208
    .line 209
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v3, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    move-object v4, v2

    .line 219
    goto :goto_8

    .line 220
    :catch_2
    move-exception v0

    .line 221
    move-object v3, v4

    .line 222
    :goto_4
    move-object v4, v2

    .line 223
    goto :goto_5

    .line 224
    :catchall_1
    move-exception v0

    .line 225
    goto :goto_8

    .line 226
    :catch_3
    move-exception v0

    .line 227
    move-object v3, v4

    .line 228
    :goto_5
    :try_start_6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 229
    .line 230
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    const-string v5, "Data loss. Error selecting raw event. appId"

    .line 239
    .line 240
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    invoke-virtual {v2, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 245
    .line 246
    .line 247
    if-eqz v4, :cond_3

    .line 248
    .line 249
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 250
    .line 251
    .line 252
    :cond_3
    :goto_6
    move-object v4, v3

    .line 253
    :goto_7
    if-eqz v4, :cond_6

    .line 254
    .line 255
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/f7;->n2()Ljava/util/List;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_6

    .line 268
    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    check-cast v2, Lcom/google/android/gms/internal/measurement/w7;

    .line 274
    .line 275
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/w7;->E()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    move-object/from16 v10, p3

    .line 280
    .line 281
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_4

    .line 286
    .line 287
    goto/16 :goto_2

    .line 288
    .line 289
    :goto_8
    if-eqz v4, :cond_5

    .line 290
    .line 291
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 292
    .line 293
    .line 294
    :cond_5
    throw v0

    .line 295
    :cond_6
    move-object/from16 v10, p3

    .line 296
    .line 297
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    iget-object v3, v15, Lcom/google/android/gms/measurement/internal/r;->d:Lcom/google/android/gms/internal/measurement/t6;

    .line 304
    .line 305
    new-instance v4, Landroid/os/Bundle;

    .line 306
    .line 307
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/t6;->C()Ljava/util/List;

    .line 311
    .line 312
    .line 313
    move-result-object v5

    .line 314
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    if-eqz v6, :cond_c

    .line 323
    .line 324
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    check-cast v6, Lcom/google/android/gms/internal/measurement/x6;

    .line 329
    .line 330
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->K()Z

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    if-eqz v7, :cond_7

    .line 335
    .line 336
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->L()D

    .line 341
    .line 342
    .line 343
    move-result-wide v9

    .line 344
    invoke-virtual {v4, v7, v9, v10}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 345
    .line 346
    .line 347
    :goto_a
    move-object/from16 v10, p3

    .line 348
    .line 349
    const/4 v9, 0x0

    .line 350
    goto :goto_9

    .line 351
    :cond_7
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->I()Z

    .line 352
    .line 353
    .line 354
    move-result v7

    .line 355
    if-eqz v7, :cond_8

    .line 356
    .line 357
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v7

    .line 361
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->J()F

    .line 362
    .line 363
    .line 364
    move-result v6

    .line 365
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 366
    .line 367
    .line 368
    goto :goto_a

    .line 369
    :cond_8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->G()Z

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    if-eqz v7, :cond_9

    .line 374
    .line 375
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->H()J

    .line 380
    .line 381
    .line 382
    move-result-wide v8

    .line 383
    invoke-virtual {v4, v7, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 384
    .line 385
    .line 386
    goto :goto_a

    .line 387
    :cond_9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->E()Z

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    if-eqz v7, :cond_a

    .line 392
    .line 393
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->F()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    invoke-virtual {v4, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    goto :goto_a

    .line 405
    :cond_a
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->M()Ljava/util/List;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 410
    .line 411
    .line 412
    move-result v7

    .line 413
    if-nez v7, :cond_b

    .line 414
    .line 415
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/x6;->M()Ljava/util/List;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/td;->Y(Ljava/util/List;)[Landroid/os/Bundle;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 428
    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_b
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 432
    .line 433
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    const-string v8, "Unexpected parameter type for parameter"

    .line 442
    .line 443
    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    goto :goto_a

    .line 447
    :cond_c
    const-string v2, "_o"

    .line 448
    .line 449
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v5

    .line 453
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    new-instance v2, Lcom/google/android/gms/measurement/internal/q5;

    .line 457
    .line 458
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/t6;->F()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v17

    .line 462
    if-nez v5, :cond_d

    .line 463
    .line 464
    const-string v5, ""

    .line 465
    .line 466
    :cond_d
    move-object/from16 v18, v5

    .line 467
    .line 468
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/t6;->H()J

    .line 469
    .line 470
    .line 471
    move-result-wide v20

    .line 472
    move-object/from16 v16, v2

    .line 473
    .line 474
    move-object/from16 v19, v4

    .line 475
    .line 476
    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/measurement/internal/q5;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 477
    .line 478
    .line 479
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 480
    .line 481
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/q5;->d:Landroid/os/Bundle;

    .line 482
    .line 483
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/q5;->a:Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    const-string v6, "_cmp"

    .line 490
    .line 491
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    if-nez v4, :cond_e

    .line 496
    .line 497
    move-object/from16 v4, p4

    .line 498
    .line 499
    move-object v7, v4

    .line 500
    goto :goto_c

    .line 501
    :cond_e
    new-instance v4, Landroid/os/Bundle;

    .line 502
    .line 503
    move-object/from16 v7, p4

    .line 504
    .line 505
    invoke-direct {v4, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual/range {p4 .. p4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 513
    .line 514
    .line 515
    move-result-object v6

    .line 516
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 517
    .line 518
    .line 519
    move-result v8

    .line 520
    if-eqz v8, :cond_10

    .line 521
    .line 522
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v8

    .line 526
    check-cast v8, Ljava/lang/String;

    .line 527
    .line 528
    const-string v11, "gad_"

    .line 529
    .line 530
    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 531
    .line 532
    .line 533
    move-result v11

    .line 534
    if-eqz v11, :cond_f

    .line 535
    .line 536
    invoke-virtual {v4, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    :cond_f
    const/4 v11, 0x1

    .line 540
    goto :goto_b

    .line 541
    :cond_10
    :goto_c
    invoke-virtual {v5, v10, v4}, Lcom/google/android/gms/measurement/internal/yd;->w(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 542
    .line 543
    .line 544
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 545
    .line 546
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/q5;->b:Ljava/lang/String;

    .line 547
    .line 548
    new-instance v11, Lcom/google/android/gms/measurement/internal/b0;

    .line 549
    .line 550
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/t6;->F()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v6

    .line 554
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/t6;->H()J

    .line 555
    .line 556
    .line 557
    move-result-wide v17

    .line 558
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/t6;->J()J

    .line 559
    .line 560
    .line 561
    move-result-wide v19

    .line 562
    move-object v2, v11

    .line 563
    move-object v3, v4

    .line 564
    move-object v4, v5

    .line 565
    move-object/from16 v5, p1

    .line 566
    .line 567
    move-wide/from16 v7, v17

    .line 568
    .line 569
    move-object/from16 v17, v9

    .line 570
    .line 571
    move-object/from16 v18, v10

    .line 572
    .line 573
    const/16 v21, 0x0

    .line 574
    .line 575
    move-wide/from16 v9, v19

    .line 576
    .line 577
    move-object/from16 p2, v11

    .line 578
    .line 579
    const/4 v12, 0x1

    .line 580
    move-object/from16 v11, v18

    .line 581
    .line 582
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/measurement/internal/b0;-><init>(Lcom/google/android/gms/measurement/internal/w6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 583
    .line 584
    .line 585
    iget-wide v2, v15, Lcom/google/android/gms/measurement/internal/r;->a:J

    .line 586
    .line 587
    iget-wide v4, v15, Lcom/google/android/gms/measurement/internal/r;->b:J

    .line 588
    .line 589
    iget-boolean v6, v15, Lcom/google/android/gms/measurement/internal/r;->c:Z

    .line 590
    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 592
    .line 593
    .line 594
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 595
    .line 596
    .line 597
    invoke-static/range {p2 .. p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-object/from16 v7, p2

    .line 601
    .line 602
    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/b0;->a:Ljava/lang/String;

    .line 603
    .line 604
    invoke-static {v8}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/td;->J(Lcom/google/android/gms/measurement/internal/b0;)Lcom/google/android/gms/internal/measurement/t6;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/v9;->e()[B

    .line 616
    .line 617
    .line 618
    move-result-object v0

    .line 619
    new-instance v9, Landroid/content/ContentValues;

    .line 620
    .line 621
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 622
    .line 623
    .line 624
    const-string v10, "app_id"

    .line 625
    .line 626
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    iget-object v10, v7, Lcom/google/android/gms/measurement/internal/b0;->b:Ljava/lang/String;

    .line 630
    .line 631
    const-string v11, "name"

    .line 632
    .line 633
    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    iget-wide v10, v7, Lcom/google/android/gms/measurement/internal/b0;->d:J

    .line 637
    .line 638
    const-string v15, "timestamp"

    .line 639
    .line 640
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 641
    .line 642
    .line 643
    move-result-object v10

    .line 644
    invoke-virtual {v9, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 645
    .line 646
    .line 647
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 648
    .line 649
    .line 650
    move-result-object v4

    .line 651
    const-string v5, "metadata_fingerprint"

    .line 652
    .line 653
    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 654
    .line 655
    .line 656
    const-string v4, "data"

    .line 657
    .line 658
    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 659
    .line 660
    .line 661
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    const-string v4, "realtime"

    .line 666
    .line 667
    invoke-virtual {v9, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 668
    .line 669
    .line 670
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    const-string v4, "raw_events"

    .line 675
    .line 676
    const-string v5, "rowid = ?"

    .line 677
    .line 678
    new-array v6, v12, [Ljava/lang/String;

    .line 679
    .line 680
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v2

    .line 684
    aput-object v2, v6, v21

    .line 685
    .line 686
    invoke-virtual {v0, v4, v9, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    int-to-long v2, v0

    .line 691
    const-wide/16 v4, 0x1

    .line 692
    .line 693
    cmp-long v0, v2, v4

    .line 694
    .line 695
    if-eqz v0, :cond_11

    .line 696
    .line 697
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    const-string v4, "Failed to update raw event. appId, updatedRows"

    .line 706
    .line 707
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v5

    .line 711
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 712
    .line 713
    .line 714
    move-result-object v2

    .line 715
    invoke-virtual {v0, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 716
    .line 717
    .line 718
    goto :goto_d

    .line 719
    :catch_4
    move-exception v0

    .line 720
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 721
    .line 722
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/b0;->a:Ljava/lang/String;

    .line 731
    .line 732
    const-string v4, "Error updating raw event. appId"

    .line 733
    .line 734
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v3

    .line 738
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 739
    .line 740
    .line 741
    :cond_11
    :goto_d
    move-object/from16 v12, p1

    .line 742
    .line 743
    goto/16 :goto_2

    .line 744
    .line 745
    :cond_12
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/s;->a()Ljava/util/List;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    move-object/from16 v12, p1

    .line 750
    .line 751
    goto/16 :goto_1

    .line 752
    .line 753
    :cond_13
    return-void
.end method

.method public final I0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 39

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v10, "1001"

    .line 15
    .line 16
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "conditional_properties"

    .line 21
    .line 22
    const/16 v4, 0xd

    .line 23
    .line 24
    new-array v4, v4, [Ljava/lang/String;

    .line 25
    .line 26
    const-string v5, "app_id"

    .line 27
    .line 28
    const/4 v12, 0x0

    .line 29
    aput-object v5, v4, v12

    .line 30
    .line 31
    const-string v5, "origin"

    .line 32
    .line 33
    const/4 v13, 0x1

    .line 34
    aput-object v5, v4, v13

    .line 35
    .line 36
    const-string v5, "name"

    .line 37
    .line 38
    const/4 v14, 0x2

    .line 39
    aput-object v5, v4, v14

    .line 40
    .line 41
    const-string v5, "value"

    .line 42
    .line 43
    const/4 v15, 0x3

    .line 44
    aput-object v5, v4, v15

    .line 45
    .line 46
    const-string v5, "active"

    .line 47
    .line 48
    const/4 v9, 0x4

    .line 49
    aput-object v5, v4, v9

    .line 50
    .line 51
    const-string v5, "trigger_event_name"

    .line 52
    .line 53
    const/4 v8, 0x5

    .line 54
    aput-object v5, v4, v8

    .line 55
    .line 56
    const-string v5, "trigger_timeout"

    .line 57
    .line 58
    const/4 v7, 0x6

    .line 59
    aput-object v5, v4, v7

    .line 60
    .line 61
    const-string v5, "timed_out_event"

    .line 62
    .line 63
    const/4 v6, 0x7

    .line 64
    aput-object v5, v4, v6

    .line 65
    .line 66
    const-string v5, "creation_timestamp"

    .line 67
    .line 68
    const/16 v11, 0x8

    .line 69
    .line 70
    aput-object v5, v4, v11

    .line 71
    .line 72
    const-string v5, "triggered_event"

    .line 73
    .line 74
    const/16 v11, 0x9

    .line 75
    .line 76
    aput-object v5, v4, v11

    .line 77
    .line 78
    const-string v5, "triggered_timestamp"

    .line 79
    .line 80
    const/16 v11, 0xa

    .line 81
    .line 82
    aput-object v5, v4, v11

    .line 83
    .line 84
    const-string v5, "time_to_live"

    .line 85
    .line 86
    const/16 v11, 0xb

    .line 87
    .line 88
    aput-object v5, v4, v11

    .line 89
    .line 90
    const-string v5, "expired_event"

    .line 91
    .line 92
    const/16 v11, 0xc

    .line 93
    .line 94
    aput-object v5, v4, v11

    .line 95
    .line 96
    const-string v20, "rowid"

    .line 97
    .line 98
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 99
    .line 100
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 101
    .line 102
    .line 103
    const/16 v21, 0x0

    .line 104
    .line 105
    const/16 v22, 0x0

    .line 106
    .line 107
    move-object/from16 v23, v5

    .line 108
    .line 109
    move-object/from16 v5, p1

    .line 110
    .line 111
    move v11, v6

    .line 112
    move-object/from16 v6, p2

    .line 113
    .line 114
    move v11, v7

    .line 115
    move-object/from16 v7, v21

    .line 116
    .line 117
    move v11, v8

    .line 118
    move-object/from16 v8, v22

    .line 119
    .line 120
    move v11, v9

    .line 121
    move-object/from16 v9, v20

    .line 122
    .line 123
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 124
    .line 125
    .line 126
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_3

    .line 132
    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 138
    .line 139
    .line 140
    const/16 v4, 0x3e8

    .line 141
    .line 142
    if-lt v3, v4, :cond_1

    .line 143
    .line 144
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    const-string v5, "Read more than the max allowed conditional properties, ignoring extra"

    .line 153
    .line 154
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 155
    .line 156
    .line 157
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :cond_1
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v25

    .line 170
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v26

    .line 174
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-virtual {v1, v2, v15}, Lcom/google/android/gms/measurement/internal/u;->x(Landroid/database/Cursor;I)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_2

    .line 187
    .line 188
    move/from16 v30, v13

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_2
    move/from16 v30, v12

    .line 192
    .line 193
    :goto_0
    const/4 v9, 0x5

    .line 194
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v31

    .line 198
    const/4 v10, 0x6

    .line 199
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v33

    .line 203
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    const/4 v8, 0x7

    .line 210
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    sget-object v8, Lcom/google/android/gms/measurement/internal/g0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 215
    .line 216
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/measurement/internal/td;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    move-object/from16 v32, v5

    .line 221
    .line 222
    check-cast v32, Lcom/google/android/gms/measurement/internal/g0;

    .line 223
    .line 224
    const/16 v5, 0x8

    .line 225
    .line 226
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 227
    .line 228
    .line 229
    move-result-wide v28

    .line 230
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    const/16 v9, 0x9

    .line 235
    .line 236
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v6, v5, v8}, Lcom/google/android/gms/measurement/internal/td;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    move-object/from16 v35, v5

    .line 245
    .line 246
    check-cast v35, Lcom/google/android/gms/measurement/internal/g0;

    .line 247
    .line 248
    const/16 v5, 0xa

    .line 249
    .line 250
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 251
    .line 252
    .line 253
    move-result-wide v17

    .line 254
    const/16 v6, 0xb

    .line 255
    .line 256
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 257
    .line 258
    .line 259
    move-result-wide v36

    .line 260
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    const/16 v9, 0xc

    .line 265
    .line 266
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v3, v5, v8}, Lcom/google/android/gms/measurement/internal/td;->N([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    move-object/from16 v38, v3

    .line 275
    .line 276
    check-cast v38, Lcom/google/android/gms/measurement/internal/g0;

    .line 277
    .line 278
    new-instance v27, Lcom/google/android/gms/measurement/internal/ud;

    .line 279
    .line 280
    move-object/from16 v3, v27

    .line 281
    .line 282
    move/from16 v16, v6

    .line 283
    .line 284
    const/16 v19, 0xa

    .line 285
    .line 286
    const/16 v20, 0x8

    .line 287
    .line 288
    move-wide/from16 v5, v17

    .line 289
    .line 290
    const/16 v17, 0x7

    .line 291
    .line 292
    move-object/from16 v8, v26

    .line 293
    .line 294
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/ud;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    new-instance v3, Lcom/google/android/gms/measurement/internal/i;

    .line 298
    .line 299
    move-object/from16 v24, v3

    .line 300
    .line 301
    invoke-direct/range {v24 .. v38}, Lcom/google/android/gms/measurement/internal/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ud;JZLjava/lang/String;Lcom/google/android/gms/measurement/internal/g0;JLcom/google/android/gms/measurement/internal/g0;JLcom/google/android/gms/measurement/internal/g0;)V

    .line 302
    .line 303
    .line 304
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 308
    .line 309
    .line 310
    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    if-nez v3, :cond_0

    .line 312
    .line 313
    goto :goto_2

    .line 314
    :catchall_0
    move-exception v0

    .line 315
    move-object v11, v2

    .line 316
    goto :goto_3

    .line 317
    :catch_0
    move-exception v0

    .line 318
    move-object v11, v2

    .line 319
    goto :goto_1

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    const/4 v11, 0x0

    .line 322
    goto :goto_3

    .line 323
    :catch_1
    move-exception v0

    .line 324
    const/4 v11, 0x0

    .line 325
    :goto_1
    :try_start_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 326
    .line 327
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    const-string v3, "Error querying conditional user property value"

    .line 336
    .line 337
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 344
    move-object v2, v11

    .line 345
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 346
    .line 347
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 348
    .line 349
    .line 350
    :cond_4
    return-object v0

    .line 351
    :catchall_2
    move-exception v0

    .line 352
    :goto_3
    if-eqz v11, :cond_5

    .line 353
    .line 354
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 355
    .line 356
    .line 357
    :cond_5
    throw v0
.end method

.method public final J(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;
    .locals 4

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "select consent_state, consent_source from consent_settings where app_id=? limit 1;"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 22
    .line 23
    .line 24
    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v2, "No data found"

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/d8;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/d8;

    .line 58
    .line 59
    .line 60
    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    move-object v0, p1

    .line 66
    goto :goto_2

    .line 67
    :catch_1
    move-exception p1

    .line 68
    move-object v0, p1

    .line 69
    move-object p1, v1

    .line 70
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "Error querying database."

    .line 81
    .line 82
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    .line 84
    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 88
    .line 89
    .line 90
    :cond_1
    if-nez v1, :cond_2

    .line 91
    .line 92
    sget-object p1, Lcom/google/android/gms/measurement/internal/d8;->c:Lcom/google/android/gms/measurement/internal/d8;

    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_2
    return-object v1

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    move-object v1, p1

    .line 98
    :goto_2
    if-eqz v1, :cond_3

    .line 99
    .line 100
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    .line 102
    .line 103
    :cond_3
    throw v0
.end method

.method public final J0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/v5;
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const-string v5, "apps"

    .line 19
    .line 20
    const/16 v0, 0x2d

    .line 21
    .line 22
    new-array v6, v0, [Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "app_instance_id"

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    aput-object v0, v6, v12

    .line 28
    .line 29
    const-string v0, "gmp_app_id"

    .line 30
    .line 31
    const/4 v13, 0x1

    .line 32
    aput-object v0, v6, v13

    .line 33
    .line 34
    const-string v0, "resettable_device_id_hash"

    .line 35
    .line 36
    const/4 v14, 0x2

    .line 37
    aput-object v0, v6, v14

    .line 38
    .line 39
    const-string v0, "last_bundle_index"

    .line 40
    .line 41
    const/4 v15, 0x3

    .line 42
    aput-object v0, v6, v15

    .line 43
    .line 44
    const-string v0, "last_bundle_start_timestamp"

    .line 45
    .line 46
    const/4 v11, 0x4

    .line 47
    aput-object v0, v6, v11

    .line 48
    .line 49
    const-string v0, "last_bundle_end_timestamp"

    .line 50
    .line 51
    const/4 v10, 0x5

    .line 52
    aput-object v0, v6, v10

    .line 53
    .line 54
    const-string v0, "app_version"

    .line 55
    .line 56
    const/4 v9, 0x6

    .line 57
    aput-object v0, v6, v9

    .line 58
    .line 59
    const-string v0, "app_store"

    .line 60
    .line 61
    const/4 v8, 0x7

    .line 62
    aput-object v0, v6, v8

    .line 63
    .line 64
    const-string v0, "gmp_version"

    .line 65
    .line 66
    const/16 v7, 0x8

    .line 67
    .line 68
    aput-object v0, v6, v7

    .line 69
    .line 70
    const-string v0, "dev_cert_hash"

    .line 71
    .line 72
    const/16 v16, 0x9

    .line 73
    .line 74
    aput-object v0, v6, v16

    .line 75
    .line 76
    const-string v0, "measurement_enabled"

    .line 77
    .line 78
    const/16 v3, 0xa

    .line 79
    .line 80
    aput-object v0, v6, v3

    .line 81
    .line 82
    const-string v0, "day"

    .line 83
    .line 84
    const/16 v17, 0xb

    .line 85
    .line 86
    aput-object v0, v6, v17

    .line 87
    .line 88
    const-string v0, "daily_public_events_count"

    .line 89
    .line 90
    const/16 v17, 0xc

    .line 91
    .line 92
    aput-object v0, v6, v17

    .line 93
    .line 94
    const-string v0, "daily_events_count"

    .line 95
    .line 96
    const/16 v17, 0xd

    .line 97
    .line 98
    aput-object v0, v6, v17

    .line 99
    .line 100
    const-string v0, "daily_conversions_count"

    .line 101
    .line 102
    const/16 v17, 0xe

    .line 103
    .line 104
    aput-object v0, v6, v17

    .line 105
    .line 106
    const-string v0, "config_fetched_time"

    .line 107
    .line 108
    const/16 v17, 0xf

    .line 109
    .line 110
    aput-object v0, v6, v17

    .line 111
    .line 112
    const-string v0, "failed_config_fetch_time"

    .line 113
    .line 114
    const/16 v17, 0x10

    .line 115
    .line 116
    aput-object v0, v6, v17

    .line 117
    .line 118
    const-string v0, "app_version_int"

    .line 119
    .line 120
    const/16 v3, 0x11

    .line 121
    .line 122
    aput-object v0, v6, v3

    .line 123
    .line 124
    const-string v0, "firebase_instance_id"

    .line 125
    .line 126
    const/16 v18, 0x12

    .line 127
    .line 128
    aput-object v0, v6, v18

    .line 129
    .line 130
    const-string v0, "daily_error_events_count"

    .line 131
    .line 132
    const/16 v18, 0x13

    .line 133
    .line 134
    aput-object v0, v6, v18

    .line 135
    .line 136
    const-string v0, "daily_realtime_events_count"

    .line 137
    .line 138
    const/16 v18, 0x14

    .line 139
    .line 140
    aput-object v0, v6, v18

    .line 141
    .line 142
    const-string v0, "health_monitor_sample"

    .line 143
    .line 144
    const/16 v18, 0x15

    .line 145
    .line 146
    aput-object v0, v6, v18

    .line 147
    .line 148
    const-string v0, "android_id"

    .line 149
    .line 150
    const/16 v18, 0x16

    .line 151
    .line 152
    aput-object v0, v6, v18

    .line 153
    .line 154
    const-string v0, "adid_reporting_enabled"

    .line 155
    .line 156
    const/16 v3, 0x17

    .line 157
    .line 158
    aput-object v0, v6, v3

    .line 159
    .line 160
    const-string v0, "admob_app_id"

    .line 161
    .line 162
    const/16 v19, 0x18

    .line 163
    .line 164
    aput-object v0, v6, v19

    .line 165
    .line 166
    const-string v0, "dynamite_version"

    .line 167
    .line 168
    const/16 v3, 0x19

    .line 169
    .line 170
    aput-object v0, v6, v3

    .line 171
    .line 172
    const-string v0, "safelisted_events"

    .line 173
    .line 174
    const/16 v3, 0x1a

    .line 175
    .line 176
    aput-object v0, v6, v3

    .line 177
    .line 178
    const-string v0, "ga_app_id"

    .line 179
    .line 180
    const/16 v20, 0x1b

    .line 181
    .line 182
    aput-object v0, v6, v20

    .line 183
    .line 184
    const-string v0, "session_stitching_token"

    .line 185
    .line 186
    const/16 v20, 0x1c

    .line 187
    .line 188
    aput-object v0, v6, v20

    .line 189
    .line 190
    const-string v0, "sgtm_upload_enabled"

    .line 191
    .line 192
    const/16 v3, 0x1d

    .line 193
    .line 194
    aput-object v0, v6, v3

    .line 195
    .line 196
    const-string v0, "target_os_version"

    .line 197
    .line 198
    const/16 v21, 0x1e

    .line 199
    .line 200
    aput-object v0, v6, v21

    .line 201
    .line 202
    const-string v0, "session_stitching_token_hash"

    .line 203
    .line 204
    const/16 v21, 0x1f

    .line 205
    .line 206
    aput-object v0, v6, v21

    .line 207
    .line 208
    const-string v0, "ad_services_version"

    .line 209
    .line 210
    const/16 v21, 0x20

    .line 211
    .line 212
    aput-object v0, v6, v21

    .line 213
    .line 214
    const-string v0, "unmatched_first_open_without_ad_id"

    .line 215
    .line 216
    const/16 v3, 0x21

    .line 217
    .line 218
    aput-object v0, v6, v3

    .line 219
    .line 220
    const-string v0, "npa_metadata_value"

    .line 221
    .line 222
    const/16 v3, 0x22

    .line 223
    .line 224
    aput-object v0, v6, v3

    .line 225
    .line 226
    const-string v0, "attribution_eligibility_status"

    .line 227
    .line 228
    const/16 v22, 0x23

    .line 229
    .line 230
    aput-object v0, v6, v22

    .line 231
    .line 232
    const-string v0, "sgtm_preview_key"

    .line 233
    .line 234
    const/16 v22, 0x24

    .line 235
    .line 236
    aput-object v0, v6, v22

    .line 237
    .line 238
    const-string v0, "dma_consent_state"

    .line 239
    .line 240
    const/16 v22, 0x25

    .line 241
    .line 242
    aput-object v0, v6, v22

    .line 243
    .line 244
    const-string v0, "daily_realtime_dcu_count"

    .line 245
    .line 246
    const/16 v22, 0x26

    .line 247
    .line 248
    aput-object v0, v6, v22

    .line 249
    .line 250
    const-string v0, "bundle_delivery_index"

    .line 251
    .line 252
    const/16 v22, 0x27

    .line 253
    .line 254
    aput-object v0, v6, v22

    .line 255
    .line 256
    const-string v0, "serialized_npa_metadata"

    .line 257
    .line 258
    const/16 v3, 0x28

    .line 259
    .line 260
    aput-object v0, v6, v3

    .line 261
    .line 262
    const-string v0, "unmatched_pfo"

    .line 263
    .line 264
    const/16 v3, 0x29

    .line 265
    .line 266
    aput-object v0, v6, v3

    .line 267
    .line 268
    const-string v0, "unmatched_uwa"

    .line 269
    .line 270
    const/16 v3, 0x2a

    .line 271
    .line 272
    aput-object v0, v6, v3

    .line 273
    .line 274
    const-string v0, "ad_campaign_info"

    .line 275
    .line 276
    const/16 v23, 0x2b

    .line 277
    .line 278
    aput-object v0, v6, v23

    .line 279
    .line 280
    const-string v0, "client_upload_eligibility"

    .line 281
    .line 282
    const/16 v3, 0x2c

    .line 283
    .line 284
    aput-object v0, v6, v3

    .line 285
    .line 286
    const-string v0, "app_id=?"

    .line 287
    .line 288
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v24

    .line 292
    const/16 v25, 0x0

    .line 293
    .line 294
    const/16 v26, 0x0

    .line 295
    .line 296
    const/16 v27, 0x0

    .line 297
    .line 298
    move v3, v7

    .line 299
    move-object v7, v0

    .line 300
    move v0, v8

    .line 301
    move-object/from16 v8, v24

    .line 302
    .line 303
    move v3, v9

    .line 304
    move-object/from16 v9, v25

    .line 305
    .line 306
    move v0, v10

    .line 307
    move-object/from16 v10, v26

    .line 308
    .line 309
    move v3, v11

    .line 310
    move-object/from16 v11, v27

    .line 311
    .line 312
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 313
    .line 314
    .line 315
    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    if-nez v5, :cond_0

    .line 321
    .line 322
    goto/16 :goto_b

    .line 323
    .line 324
    :cond_0
    new-instance v5, Lcom/google/android/gms/measurement/internal/v5;

    .line 325
    .line 326
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 327
    .line 328
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/pd;->g0()Lcom/google/android/gms/measurement/internal/w6;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    invoke-direct {v5, v7, v2}, Lcom/google/android/gms/measurement/internal/v5;-><init>(Lcom/google/android/gms/measurement/internal/w6;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/pd;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    sget-object v8, Li6/s;->c:Li6/s;

    .line 340
    .line 341
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 342
    .line 343
    .line 344
    move-result v7

    .line 345
    if-eqz v7, :cond_1

    .line 346
    .line 347
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/v5;->q0(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :cond_1
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/v5;->s0(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/pd;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;

    .line 362
    .line 363
    .line 364
    move-result-object v7

    .line 365
    sget-object v9, Li6/s;->b:Li6/s;

    .line 366
    .line 367
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-eqz v7, :cond_2

    .line 372
    .line 373
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/v5;->w0(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_2
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 381
    .line 382
    .line 383
    move-result-wide v9

    .line 384
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->f(J)V

    .line 385
    .line 386
    .line 387
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 388
    .line 389
    .line 390
    move-result-wide v9

    .line 391
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->A0(J)V

    .line 392
    .line 393
    .line 394
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 395
    .line 396
    .line 397
    move-result-wide v9

    .line 398
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->C0(J)V

    .line 399
    .line 400
    .line 401
    const/4 v0, 0x6

    .line 402
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->E0(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const/4 v0, 0x7

    .line 410
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->I0(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const/16 v0, 0x8

    .line 418
    .line 419
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 420
    .line 421
    .line 422
    move-result-wide v9

    .line 423
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->K0(J)V

    .line 424
    .line 425
    .line 426
    const/16 v0, 0x9

    .line 427
    .line 428
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 429
    .line 430
    .line 431
    move-result-wide v9

    .line 432
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->a(J)V

    .line 433
    .line 434
    .line 435
    const/16 v0, 0xa

    .line 436
    .line 437
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    if-nez v3, :cond_4

    .line 442
    .line 443
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_3

    .line 448
    .line 449
    goto :goto_0

    .line 450
    :cond_3
    move v0, v12

    .line 451
    goto :goto_1

    .line 452
    :cond_4
    :goto_0
    move v0, v13

    .line 453
    :goto_1
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->e(Z)V

    .line 454
    .line 455
    .line 456
    const/16 v0, 0xb

    .line 457
    .line 458
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 459
    .line 460
    .line 461
    move-result-wide v9

    .line 462
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->o(J)V

    .line 463
    .line 464
    .line 465
    const/16 v0, 0xc

    .line 466
    .line 467
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 468
    .line 469
    .line 470
    move-result-wide v9

    .line 471
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->q(J)V

    .line 472
    .line 473
    .line 474
    const/16 v0, 0xd

    .line 475
    .line 476
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 477
    .line 478
    .line 479
    move-result-wide v9

    .line 480
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->s(J)V

    .line 481
    .line 482
    .line 483
    const/16 v0, 0xe

    .line 484
    .line 485
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 486
    .line 487
    .line 488
    move-result-wide v9

    .line 489
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->u(J)V

    .line 490
    .line 491
    .line 492
    const/16 v0, 0xf

    .line 493
    .line 494
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 495
    .line 496
    .line 497
    move-result-wide v9

    .line 498
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->i(J)V

    .line 499
    .line 500
    .line 501
    const/16 v0, 0x10

    .line 502
    .line 503
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 504
    .line 505
    .line 506
    move-result-wide v9

    .line 507
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->k(J)V

    .line 508
    .line 509
    .line 510
    const/16 v0, 0x11

    .line 511
    .line 512
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-eqz v3, :cond_5

    .line 517
    .line 518
    const-wide/32 v9, -0x80000000

    .line 519
    .line 520
    .line 521
    goto :goto_2

    .line 522
    :cond_5
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    int-to-long v9, v0

    .line 527
    :goto_2
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->G0(J)V

    .line 528
    .line 529
    .line 530
    const/16 v0, 0x12

    .line 531
    .line 532
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->y0(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    const/16 v0, 0x13

    .line 540
    .line 541
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 542
    .line 543
    .line 544
    move-result-wide v9

    .line 545
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->y(J)V

    .line 546
    .line 547
    .line 548
    const/16 v0, 0x14

    .line 549
    .line 550
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 551
    .line 552
    .line 553
    move-result-wide v9

    .line 554
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->w(J)V

    .line 555
    .line 556
    .line 557
    const/16 v0, 0x15

    .line 558
    .line 559
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->O(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    const/16 v0, 0x17

    .line 567
    .line 568
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-nez v3, :cond_7

    .line 573
    .line 574
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_6

    .line 579
    .line 580
    goto :goto_3

    .line 581
    :cond_6
    move v0, v12

    .line 582
    goto :goto_4

    .line 583
    :cond_7
    :goto_3
    move v0, v13

    .line 584
    :goto_4
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->Q(Z)V

    .line 585
    .line 586
    .line 587
    const/16 v0, 0x19

    .line 588
    .line 589
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 590
    .line 591
    .line 592
    move-result v3

    .line 593
    if-eqz v3, :cond_8

    .line 594
    .line 595
    const-wide/16 v9, 0x0

    .line 596
    .line 597
    goto :goto_5

    .line 598
    :cond_8
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 599
    .line 600
    .line 601
    move-result-wide v9

    .line 602
    :goto_5
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/v5;->c(J)V

    .line 603
    .line 604
    .line 605
    const/16 v0, 0x1a

    .line 606
    .line 607
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    if-nez v3, :cond_9

    .line 612
    .line 613
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    const-string v3, ","

    .line 618
    .line 619
    const/4 v7, -0x1

    .line 620
    invoke-virtual {v0, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 625
    .line 626
    .line 627
    move-result-object v0

    .line 628
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->U(Ljava/util/List;)V

    .line 629
    .line 630
    .line 631
    :cond_9
    invoke-virtual {v6, v2}, Lcom/google/android/gms/measurement/internal/pd;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    if-eqz v0, :cond_a

    .line 640
    .line 641
    const/16 v0, 0x1c

    .line 642
    .line 643
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->u0(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    :cond_a
    const/16 v0, 0x1d

    .line 651
    .line 652
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    if-nez v3, :cond_b

    .line 657
    .line 658
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 659
    .line 660
    .line 661
    move-result v0

    .line 662
    if-eqz v0, :cond_b

    .line 663
    .line 664
    move v0, v13

    .line 665
    goto :goto_6

    .line 666
    :cond_b
    move v0, v12

    .line 667
    :goto_6
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->W(Z)V

    .line 668
    .line 669
    .line 670
    const/16 v0, 0x27

    .line 671
    .line 672
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 673
    .line 674
    .line 675
    move-result-wide v6

    .line 676
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/v5;->F(J)V

    .line 677
    .line 678
    .line 679
    const/16 v0, 0x24

    .line 680
    .line 681
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/v5;->m0(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    const/16 v0, 0x1e

    .line 689
    .line 690
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 691
    .line 692
    .line 693
    move-result-wide v6

    .line 694
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/v5;->Y(J)V

    .line 695
    .line 696
    .line 697
    const/16 v0, 0x1f

    .line 698
    .line 699
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 700
    .line 701
    .line 702
    move-result-wide v6

    .line 703
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/v5;->a0(J)V

    .line 704
    .line 705
    .line 706
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    .line 707
    .line 708
    .line 709
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 710
    .line 711
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    sget-object v6, Lcom/google/android/gms/measurement/internal/c5;->Q0:Lcom/google/android/gms/measurement/internal/b5;

    .line 716
    .line 717
    invoke-virtual {v3, v2, v6}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 718
    .line 719
    .line 720
    move-result v3

    .line 721
    if-eqz v3, :cond_c

    .line 722
    .line 723
    const/16 v3, 0x20

    .line 724
    .line 725
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 726
    .line 727
    .line 728
    move-result v3

    .line 729
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->c0(I)V

    .line 730
    .line 731
    .line 732
    const/16 v3, 0x23

    .line 733
    .line 734
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 735
    .line 736
    .line 737
    move-result-wide v6

    .line 738
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/v5;->k0(J)V

    .line 739
    .line 740
    .line 741
    :cond_c
    const/16 v3, 0x21

    .line 742
    .line 743
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 744
    .line 745
    .line 746
    move-result v6

    .line 747
    if-nez v6, :cond_d

    .line 748
    .line 749
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 750
    .line 751
    .line 752
    move-result v3

    .line 753
    if-eqz v3, :cond_d

    .line 754
    .line 755
    move v3, v13

    .line 756
    goto :goto_7

    .line 757
    :cond_d
    move v3, v12

    .line 758
    :goto_7
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->e0(Z)V

    .line 759
    .line 760
    .line 761
    const/16 v3, 0x22

    .line 762
    .line 763
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 764
    .line 765
    .line 766
    move-result v6

    .line 767
    if-eqz v6, :cond_e

    .line 768
    .line 769
    const/4 v3, 0x0

    .line 770
    goto :goto_8

    .line 771
    :cond_e
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 772
    .line 773
    .line 774
    move-result v3

    .line 775
    if-eqz v3, :cond_f

    .line 776
    .line 777
    move v12, v13

    .line 778
    :cond_f
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    :goto_8
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->S(Ljava/lang/Boolean;)V

    .line 783
    .line 784
    .line 785
    const/16 v3, 0x25

    .line 786
    .line 787
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 788
    .line 789
    .line 790
    move-result v3

    .line 791
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->C(I)V

    .line 792
    .line 793
    .line 794
    const/16 v3, 0x26

    .line 795
    .line 796
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 797
    .line 798
    .line 799
    move-result v3

    .line 800
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->E(I)V

    .line 801
    .line 802
    .line 803
    const/16 v3, 0x28

    .line 804
    .line 805
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 806
    .line 807
    .line 808
    move-result v6

    .line 809
    if-eqz v6, :cond_10

    .line 810
    .line 811
    const-string v3, ""

    .line 812
    .line 813
    goto :goto_9

    .line 814
    :cond_10
    const/16 v3, 0x28

    .line 815
    .line 816
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v3

    .line 820
    invoke-static {v3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    check-cast v3, Ljava/lang/String;

    .line 825
    .line 826
    :goto_9
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->H(Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    const/16 v3, 0x29

    .line 830
    .line 831
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 832
    .line 833
    .line 834
    move-result v6

    .line 835
    if-nez v6, :cond_11

    .line 836
    .line 837
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 838
    .line 839
    .line 840
    move-result-wide v6

    .line 841
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 842
    .line 843
    .line 844
    move-result-object v3

    .line 845
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->g0(Ljava/lang/Long;)V

    .line 846
    .line 847
    .line 848
    :cond_11
    const/16 v3, 0x2a

    .line 849
    .line 850
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 851
    .line 852
    .line 853
    move-result v6

    .line 854
    if-nez v6, :cond_12

    .line 855
    .line 856
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 857
    .line 858
    .line 859
    move-result-wide v6

    .line 860
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 861
    .line 862
    .line 863
    move-result-object v3

    .line 864
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->i0(Ljava/lang/Long;)V

    .line 865
    .line 866
    .line 867
    :cond_12
    const/16 v3, 0x2b

    .line 868
    .line 869
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    .line 870
    .line 871
    .line 872
    move-result-object v3

    .line 873
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->J([B)V

    .line 874
    .line 875
    .line 876
    const/16 v3, 0x2c

    .line 877
    .line 878
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    .line 879
    .line 880
    .line 881
    move-result v6

    .line 882
    if-nez v6, :cond_13

    .line 883
    .line 884
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    invoke-virtual {v5, v3}, Lcom/google/android/gms/measurement/internal/v5;->L(I)V

    .line 889
    .line 890
    .line 891
    :cond_13
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/v5;->n0()V

    .line 892
    .line 893
    .line 894
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 895
    .line 896
    .line 897
    move-result v3

    .line 898
    if-eqz v3, :cond_14

    .line 899
    .line 900
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    const-string v3, "Got multiple records for app, expected one. appId"

    .line 909
    .line 910
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v6

    .line 914
    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 915
    .line 916
    .line 917
    :cond_14
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 918
    .line 919
    .line 920
    return-object v5

    .line 921
    :catch_0
    move-exception v0

    .line 922
    goto :goto_a

    .line 923
    :catchall_0
    move-exception v0

    .line 924
    const/4 v3, 0x0

    .line 925
    goto :goto_c

    .line 926
    :catch_1
    move-exception v0

    .line 927
    const/4 v4, 0x0

    .line 928
    :goto_a
    :try_start_2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 929
    .line 930
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 931
    .line 932
    .line 933
    move-result-object v3

    .line 934
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 935
    .line 936
    .line 937
    move-result-object v3

    .line 938
    const-string v5, "Error querying app. appId"

    .line 939
    .line 940
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 945
    .line 946
    .line 947
    :goto_b
    if-eqz v4, :cond_15

    .line 948
    .line 949
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 950
    .line 951
    .line 952
    :cond_15
    const/4 v2, 0x0

    .line 953
    return-object v2

    .line 954
    :catchall_1
    move-exception v0

    .line 955
    move-object v3, v4

    .line 956
    :goto_c
    if-eqz v3, :cond_16

    .line 957
    .line 958
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 959
    .line 960
    .line 961
    :cond_16
    throw v0
.end method

.method public final K(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/rc;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    sget-object v3, Lcom/google/android/gms/measurement/internal/c5;->w0:Lcom/google/android/gms/measurement/internal/b5;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/Long;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    sub-long v5, v1, v5

    .line 37
    .line 38
    iget-wide v7, p2, Lcom/google/android/gms/measurement/internal/rc;->b:J

    .line 39
    .line 40
    cmp-long v5, v7, v5

    .line 41
    .line 42
    if-ltz v5, :cond_0

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/b5;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v5

    .line 54
    add-long/2addr v5, v1

    .line 55
    cmp-long v3, v7, v5

    .line 56
    .line 57
    if-lez v3, :cond_1

    .line 58
    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    const-string v6, "Storing trigger URI outside of the max retention time span. appId, now, timestamp"

    .line 80
    .line 81
    invoke-virtual {v3, v6, v5, v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "Saving trigger URI"

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v1, Landroid/content/ContentValues;

    .line 98
    .line 99
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v2, "app_id"

    .line 103
    .line 104
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/rc;->a:Ljava/lang/String;

    .line 108
    .line 109
    const-string v3, "trigger_uri"

    .line 110
    .line 111
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget p2, p2, Lcom/google/android/gms/measurement/internal/rc;->c:I

    .line 115
    .line 116
    const-string v2, "source"

    .line 117
    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    .line 124
    .line 125
    const-string p2, "timestamp_millis"

    .line 126
    .line 127
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    .line 133
    .line 134
    const/4 p2, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v3, "trigger_uris"

    .line 140
    .line 141
    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v1

    .line 145
    const-wide/16 v3, -0x1

    .line 146
    .line 147
    cmp-long v1, v1, v3

    .line 148
    .line 149
    if-nez v1, :cond_2

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string v1, "Failed to insert trigger URI (got -1). appId"

    .line 160
    .line 161
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    return p2

    .line 169
    :cond_2
    const/4 p1, 0x1

    .line 170
    return p1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v2, "Error storing trigger URI. appId"

    .line 187
    .line 188
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    return p2
.end method

.method public final K0(Lcom/google/android/gms/measurement/internal/v5;ZZ)V
    .locals 8

    const-string p3, "apps"

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->o0()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/ContentValues;

    .line 6
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_instance_id"

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/pd;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;

    move-result-object p2

    .line 11
    sget-object v4, Li6/s;->c:Li6/s;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->p0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->r0()Ljava/lang/String;

    move-result-object p2

    const-string v2, "gmp_app_id"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 14
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/pd;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;

    move-result-object v2

    .line 15
    sget-object v4, Li6/s;->b:Li6/s;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->v0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "resettable_device_id_hash"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->g()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "last_bundle_index"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->z0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "last_bundle_start_timestamp"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->B0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "last_bundle_end_timestamp"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->D0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "app_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->H0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "app_store"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->J0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "gmp_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->L0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "dev_cert_hash"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->d()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "measurement_enabled"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->n()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "day"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->p()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_public_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->r()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->t()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_conversions_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->h()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "config_fetched_time"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "failed_config_fetch_time"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->F0()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "app_version_int"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->x0()Ljava/lang/String;

    move-result-object v2

    const-string v4, "firebase_instance_id"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->x()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_error_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->v()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "daily_realtime_events_count"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->z()Ljava/lang/String;

    move-result-object v2

    const-string v4, "health_monitor_sample"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android_id"

    const-wide/16 v4, 0x0

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->P()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "adid_reporting_enabled"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "dynamite_version"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 39
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/pd;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;

    move-result-object p2

    sget-object v2, Li6/s;->c:Li6/s;

    .line 40
    invoke-virtual {p2, v2}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->t0()Ljava/lang/String;

    move-result-object p2

    const-string v2, "session_stitching_token"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->V()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v2, "sgtm_upload_enabled"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->X()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "target_os_version"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->Z()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "session_stitching_token_hash"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/measurement/nf;->a()Z

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    .line 47
    sget-object v6, Lcom/google/android/gms/measurement/internal/c5;->Q0:Lcom/google/android/gms/measurement/internal/b5;

    .line 48
    invoke-virtual {v2, v0, v6}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->b0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "ad_services_version"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->j0()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "attribution_eligibility_status"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->d0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "unmatched_first_open_without_ad_id"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->R()Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "npa_metadata_value"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->G()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "bundle_delivery_index"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->l0()Ljava/lang/String;

    move-result-object v2

    const-string v6, "sgtm_preview_key"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->B()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "dma_consent_state"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->D()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "daily_realtime_dcu_count"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->I()Ljava/lang/String;

    move-result-object v2

    const-string v6, "serialized_npa_metadata"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->M()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "client_upload_eligibility"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->T()Ljava/util/List;

    move-result-object v2

    const-string v6, "safelisted_events"

    if-eqz v2, :cond_6

    .line 60
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v2

    const-string v7, "Safelisted events should not be an empty list. appId"

    invoke-virtual {v2, v7, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string v7, ","

    .line 63
    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_6
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/oe;->a()Z

    .line 66
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    sget-object v7, Lcom/google/android/gms/measurement/internal/c5;->L0:Lcom/google/android/gms/measurement/internal/b5;

    .line 67
    invoke-virtual {v2, v3, v7}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 68
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 69
    invoke-virtual {v1, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->f0()Ljava/lang/Long;

    move-result-object v2

    const-string v6, "unmatched_pfo"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->h0()Ljava/lang/Long;

    move-result-object v2

    const-string v6, "unmatched_uwa"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/v5;->K()[B

    move-result-object p1

    const-string v2, "ad_campaign_info"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "app_id = ?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-virtual {p1, p3, v1, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v6, v2

    cmp-long v2, v6, v4

    if-nez v2, :cond_8

    const/4 v2, 0x5

    .line 75
    invoke-virtual {p1, p3, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_8

    .line 76
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object p1

    const-string p2, "Failed to insert/update app (got -1). appId"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 78
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-void

    :catch_0
    move-exception p1

    .line 79
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 80
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object p2

    .line 81
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object p2

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Error storing app. appId"

    invoke-virtual {p2, v0, p3, p1}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final L(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d8;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/content/ContentValues;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "app_id"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d8;->l()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v2, "consent_state"

    .line 28
    .line 29
    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d8;->b()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "consent_source"

    .line 41
    .line 42
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 43
    .line 44
    .line 45
    const-string p1, "consent_settings"

    .line 46
    .line 47
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/u;->N(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final L0(JLjava/lang/String;ZZZZZZZ)Lcom/google/android/gms/measurement/internal/q;
    .locals 13

    .line 1
    const-wide/16 v4, 0x1

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    const/4 v9, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-wide v1, p1

    .line 8
    move-object/from16 v3, p3

    .line 9
    .line 10
    move/from16 v8, p6

    .line 11
    .line 12
    move/from16 v10, p8

    .line 13
    .line 14
    move/from16 v11, p9

    .line 15
    .line 16
    move/from16 v12, p10

    .line 17
    .line 18
    invoke-virtual/range {v0 .. v12}, Lcom/google/android/gms/measurement/internal/u;->M0(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/q;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public final M0(JLjava/lang/String;JZZZZZZZ)Lcom/google/android/gms/measurement/internal/q;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "daily_registered_triggers_count"

    .line 4
    .line 5
    const-string v2, "daily_realtime_dcu_count"

    .line 6
    .line 7
    const-string v3, "daily_realtime_events_count"

    .line 8
    .line 9
    const-string v4, "daily_error_events_count"

    .line 10
    .line 11
    const-string v5, "daily_conversions_count"

    .line 12
    .line 13
    const-string v6, "daily_public_events_count"

    .line 14
    .line 15
    const-string v7, "daily_events_count"

    .line 16
    .line 17
    const-string v8, "day"

    .line 18
    .line 19
    invoke-static/range {p3 .. p3}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 26
    .line 27
    .line 28
    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    new-instance v10, Lcom/google/android/gms/measurement/internal/q;

    .line 33
    .line 34
    invoke-direct {v10}, Lcom/google/android/gms/measurement/internal/q;-><init>()V

    .line 35
    .line 36
    .line 37
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    .line 39
    .line 40
    move-result-object v15

    .line 41
    const-string v13, "apps"

    .line 42
    .line 43
    const/16 v12, 0x8

    .line 44
    .line 45
    new-array v14, v12, [Ljava/lang/String;

    .line 46
    .line 47
    const/4 v12, 0x0

    .line 48
    aput-object v8, v14, v12

    .line 49
    .line 50
    const/4 v11, 0x1

    .line 51
    aput-object v7, v14, v11

    .line 52
    .line 53
    const/4 v11, 0x2

    .line 54
    aput-object v6, v14, v11

    .line 55
    .line 56
    const/4 v11, 0x3

    .line 57
    aput-object v5, v14, v11

    .line 58
    .line 59
    const/4 v11, 0x4

    .line 60
    aput-object v4, v14, v11

    .line 61
    .line 62
    const/4 v11, 0x5

    .line 63
    aput-object v3, v14, v11

    .line 64
    .line 65
    const/4 v11, 0x6

    .line 66
    aput-object v2, v14, v11

    .line 67
    .line 68
    const/4 v11, 0x7

    .line 69
    aput-object v0, v14, v11

    .line 70
    .line 71
    const-string v16, "app_id=?"

    .line 72
    .line 73
    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v17

    .line 77
    const/16 v18, 0x0

    .line 78
    .line 79
    const/16 v19, 0x0

    .line 80
    .line 81
    const/16 v20, 0x0

    .line 82
    .line 83
    move v11, v12

    .line 84
    move-object v12, v15

    .line 85
    move-object/from16 v21, v15

    .line 86
    .line 87
    move-object/from16 v15, v16

    .line 88
    .line 89
    move-object/from16 v16, v17

    .line 90
    .line 91
    move-object/from16 v17, v18

    .line 92
    .line 93
    move-object/from16 v18, v19

    .line 94
    .line 95
    move-object/from16 v19, v20

    .line 96
    .line 97
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 98
    .line 99
    .line 100
    move-result-object v12
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-nez v13, :cond_0

    .line 106
    .line 107
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v2, "Not updating daily counts, app is not known. appId"

    .line 118
    .line 119
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :cond_0
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 129
    .line 130
    .line 131
    move-result-wide v13

    .line 132
    cmp-long v11, v13, p1

    .line 133
    .line 134
    if-nez v11, :cond_1

    .line 135
    .line 136
    const/4 v11, 0x1

    .line 137
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 138
    .line 139
    .line 140
    move-result-wide v13

    .line 141
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->b:J

    .line 142
    .line 143
    const/4 v11, 0x2

    .line 144
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 145
    .line 146
    .line 147
    move-result-wide v13

    .line 148
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->a:J

    .line 149
    .line 150
    const/4 v11, 0x3

    .line 151
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 152
    .line 153
    .line 154
    move-result-wide v13

    .line 155
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->c:J

    .line 156
    .line 157
    const/4 v11, 0x4

    .line 158
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 159
    .line 160
    .line 161
    move-result-wide v13

    .line 162
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->d:J

    .line 163
    .line 164
    const/4 v11, 0x5

    .line 165
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 166
    .line 167
    .line 168
    move-result-wide v13

    .line 169
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->e:J

    .line 170
    .line 171
    const/4 v11, 0x6

    .line 172
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 173
    .line 174
    .line 175
    move-result-wide v13

    .line 176
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->f:J

    .line 177
    .line 178
    const/4 v11, 0x7

    .line 179
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 180
    .line 181
    .line 182
    move-result-wide v13

    .line 183
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->g:J

    .line 184
    .line 185
    :cond_1
    if-eqz p6, :cond_2

    .line 186
    .line 187
    iget-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->b:J

    .line 188
    .line 189
    add-long v13, v13, p4

    .line 190
    .line 191
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->b:J

    .line 192
    .line 193
    :cond_2
    if-eqz p7, :cond_3

    .line 194
    .line 195
    iget-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->a:J

    .line 196
    .line 197
    add-long v13, v13, p4

    .line 198
    .line 199
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->a:J

    .line 200
    .line 201
    :cond_3
    if-eqz p8, :cond_4

    .line 202
    .line 203
    iget-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->c:J

    .line 204
    .line 205
    add-long v13, v13, p4

    .line 206
    .line 207
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->c:J

    .line 208
    .line 209
    :cond_4
    if-eqz p9, :cond_5

    .line 210
    .line 211
    iget-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->d:J

    .line 212
    .line 213
    add-long v13, v13, p4

    .line 214
    .line 215
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->d:J

    .line 216
    .line 217
    :cond_5
    if-eqz p10, :cond_6

    .line 218
    .line 219
    iget-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->e:J

    .line 220
    .line 221
    add-long v13, v13, p4

    .line 222
    .line 223
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->e:J

    .line 224
    .line 225
    :cond_6
    if-eqz p11, :cond_7

    .line 226
    .line 227
    iget-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->f:J

    .line 228
    .line 229
    add-long v13, v13, p4

    .line 230
    .line 231
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->f:J

    .line 232
    .line 233
    :cond_7
    if-eqz p12, :cond_8

    .line 234
    .line 235
    iget-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->g:J

    .line 236
    .line 237
    add-long v13, v13, p4

    .line 238
    .line 239
    iput-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->g:J

    .line 240
    .line 241
    :cond_8
    new-instance v11, Landroid/content/ContentValues;

    .line 242
    .line 243
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v13

    .line 250
    invoke-virtual {v11, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    .line 252
    .line 253
    iget-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->a:J

    .line 254
    .line 255
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v11, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    .line 261
    .line 262
    iget-wide v13, v10, Lcom/google/android/gms/measurement/internal/q;->b:J

    .line 263
    .line 264
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    invoke-virtual {v11, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    .line 270
    .line 271
    iget-wide v6, v10, Lcom/google/android/gms/measurement/internal/q;->c:J

    .line 272
    .line 273
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-virtual {v11, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    .line 279
    .line 280
    iget-wide v5, v10, Lcom/google/android/gms/measurement/internal/q;->d:J

    .line 281
    .line 282
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    .line 288
    .line 289
    iget-wide v4, v10, Lcom/google/android/gms/measurement/internal/q;->e:J

    .line 290
    .line 291
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 296
    .line 297
    .line 298
    iget-wide v3, v10, Lcom/google/android/gms/measurement/internal/q;->f:J

    .line 299
    .line 300
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 305
    .line 306
    .line 307
    iget-wide v2, v10, Lcom/google/android/gms/measurement/internal/q;->g:J

    .line 308
    .line 309
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 314
    .line 315
    .line 316
    const-string v0, "apps"

    .line 317
    .line 318
    const-string v2, "app_id=?"

    .line 319
    .line 320
    move-object/from16 v3, v21

    .line 321
    .line 322
    invoke-virtual {v3, v0, v11, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    .line 324
    .line 325
    goto :goto_1

    .line 326
    :catchall_0
    move-exception v0

    .line 327
    move-object v11, v12

    .line 328
    goto :goto_2

    .line 329
    :catch_0
    move-exception v0

    .line 330
    move-object v11, v12

    .line 331
    goto :goto_0

    .line 332
    :catchall_1
    move-exception v0

    .line 333
    const/4 v11, 0x0

    .line 334
    goto :goto_2

    .line 335
    :catch_1
    move-exception v0

    .line 336
    const/4 v11, 0x0

    .line 337
    :goto_0
    :try_start_2
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 338
    .line 339
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    const-string v3, "Error updating daily counts. appId"

    .line 348
    .line 349
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 354
    .line 355
    .line 356
    move-object v12, v11

    .line 357
    :goto_1
    if-eqz v12, :cond_9

    .line 358
    .line 359
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 360
    .line 361
    .line 362
    :cond_9
    return-object v10

    .line 363
    :catchall_2
    move-exception v0

    .line 364
    :goto_2
    if-eqz v11, :cond_a

    .line 365
    .line 366
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 367
    .line 368
    .line 369
    :cond_a
    throw v0
.end method

.method public final N0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/p;
    .locals 12

    .line 1
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "apps"

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    new-array v3, v3, [Ljava/lang/String;

    .line 19
    .line 20
    const-string v4, "remote_config"

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    aput-object v4, v3, v9

    .line 24
    .line 25
    const-string v4, "config_last_modified_time"

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    aput-object v4, v3, v10

    .line 29
    .line 30
    const-string v4, "e_tag"

    .line 31
    .line 32
    const/4 v11, 0x2

    .line 33
    aput-object v4, v3, v11

    .line 34
    .line 35
    const-string v4, "app_id=?"

    .line 36
    .line 37
    filled-new-array {p1}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x0

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 45
    .line 46
    .line 47
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 74
    .line 75
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const-string v6, "Got multiple records for app config, expected one. appId"

    .line 84
    .line 85
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    if-nez v2, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    new-instance v5, Lcom/google/android/gms/measurement/internal/p;

    .line 96
    .line 97
    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/p;-><init>([BLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    .line 102
    .line 103
    return-object v5

    .line 104
    :catch_0
    move-exception v2

    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p1

    .line 107
    goto :goto_2

    .line 108
    :catch_1
    move-exception v1

    .line 109
    move-object v2, v1

    .line 110
    move-object v1, v0

    .line 111
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const-string v4, "Error querying remote config. appId"

    .line 122
    .line 123
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {v3, v4, p1, v2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    .line 129
    .line 130
    :goto_1
    if-eqz v1, :cond_3

    .line 131
    .line 132
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 133
    .line 134
    .line 135
    :cond_3
    return-object v0

    .line 136
    :catchall_1
    move-exception p1

    .line 137
    move-object v0, v1

    .line 138
    :goto_2
    if-eqz v0, :cond_4

    .line 139
    .line 140
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    .line 142
    .line 143
    :cond_4
    throw p1
.end method

.method public final O0(Lcom/google/android/gms/internal/measurement/f7;Z)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->C()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->u2()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ln5/q;->n(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->v2()J

    .line 38
    .line 39
    .line 40
    move-result-wide v3

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->q()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    sub-long v5, v1, v5

    .line 49
    .line 50
    cmp-long v3, v3, v5

    .line 51
    .line 52
    if-ltz v3, :cond_0

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->v2()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->q()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    add-long/2addr v5, v1

    .line 66
    cmp-long v3, v3, v5

    .line 67
    .line 68
    if-lez v3, :cond_1

    .line 69
    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->C()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->v2()J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v4, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 99
    .line 100
    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/v9;->e()[B

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const/4 v1, 0x0

    .line 108
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/td;->V([B)[B

    .line 115
    .line 116
    .line 117
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    array-length v4, v0

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    const-string v5, "Saving bundle, size"

    .line 134
    .line 135
    invoke-virtual {v3, v5, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    new-instance v3, Landroid/content/ContentValues;

    .line 139
    .line 140
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->C()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    const-string v5, "app_id"

    .line 148
    .line 149
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->v2()J

    .line 153
    .line 154
    .line 155
    move-result-wide v4

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    const-string v5, "bundle_end_timestamp"

    .line 161
    .line 162
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    .line 164
    .line 165
    const-string v4, "data"

    .line 166
    .line 167
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 168
    .line 169
    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const-string v0, "has_realtime"

    .line 175
    .line 176
    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->G0()Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-eqz p2, :cond_2

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->H0()I

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    const-string v0, "retry_count"

    .line 194
    .line 195
    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    .line 197
    .line 198
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 199
    .line 200
    .line 201
    move-result-object p2

    .line 202
    const-string v0, "queue"

    .line 203
    .line 204
    const/4 v4, 0x0

    .line 205
    invoke-virtual {p2, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 206
    .line 207
    .line 208
    move-result-wide v3

    .line 209
    const-wide/16 v5, -0x1

    .line 210
    .line 211
    cmp-long p2, v3, v5

    .line 212
    .line 213
    if-nez p2, :cond_3

    .line 214
    .line 215
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    const-string v0, "Failed to insert bundle (got -1). appId"

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->C()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {p2, v0, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    .line 235
    .line 236
    return v1

    .line 237
    :cond_3
    const/4 p1, 0x1

    .line 238
    return p1

    .line 239
    :catch_0
    move-exception p2

    .line 240
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->C()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    const-string v2, "Error storing bundle. appId"

    .line 259
    .line 260
    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    return v1

    .line 264
    :catch_1
    move-exception p2

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/f7;->C()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    const-string v2, "Data loss. Failed to serialize bundle. appId"

    .line 284
    .line 285
    invoke-virtual {v0, v2, p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    return v1
.end method

.method public final U(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/y;
    .locals 2

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, ""

    .line 15
    .line 16
    const-string v1, "select dma_consent_settings from consent_settings where app_id=? limit 1;"

    .line 17
    .line 18
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/u;->M(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/y;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/y;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public final V(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/y;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/u;->J(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/google/android/gms/measurement/internal/d8;->c:Lcom/google/android/gms/measurement/internal/d8;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/u;->L(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d8;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "app_id"

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/y;->e()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "dma_consent_settings"

    .line 39
    .line 40
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "consent_settings"

    .line 44
    .line 45
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/u;->N(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final W(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d8;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/u;->J(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/u;->L(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d8;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/content/ContentValues;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "app_id"

    .line 26
    .line 27
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "storage_consent_at_bundling"

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d8;->l()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "consent_settings"

    .line 40
    .line 41
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/measurement/internal/u;->N(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final X(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/d8;
    .locals 2

    .line 1
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, ""

    .line 15
    .line 16
    const-string v1, "select storage_consent_at_bundling from consent_settings where app_id=? limit 1;"

    .line 17
    .line 18
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/measurement/internal/u;->M(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/16 v0, 0x64

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/google/android/gms/measurement/internal/d8;->f(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/d8;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method final Y(Ljava/lang/String;Ljava/util/List;)V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v4, "app_id=? and audience_id=?"

    .line 8
    .line 9
    const-string v0, "app_id=?"

    .line 10
    .line 11
    const-string v5, "event_filters"

    .line 12
    .line 13
    const-string v6, "property_filters"

    .line 14
    .line 15
    invoke-static/range {p2 .. p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    if-ge v8, v9, :cond_7

    .line 24
    .line 25
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    check-cast v9, Lcom/google/android/gms/internal/measurement/c4;

    .line 30
    .line 31
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/hb;->p()Lcom/google/android/gms/internal/measurement/fb;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    check-cast v9, Lcom/google/android/gms/internal/measurement/b4;

    .line 36
    .line 37
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/b4;->w()I

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    if-eqz v11, :cond_4

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    :goto_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/b4;->w()I

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    if-ge v11, v12, :cond_4

    .line 49
    .line 50
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/measurement/b4;->x(I)Lcom/google/android/gms/internal/measurement/e4;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/hb;->p()Lcom/google/android/gms/internal/measurement/fb;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    check-cast v12, Lcom/google/android/gms/internal/measurement/d4;

    .line 59
    .line 60
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/fb;->n()Lcom/google/android/gms/internal/measurement/fb;

    .line 61
    .line 62
    .line 63
    move-result-object v13

    .line 64
    check-cast v13, Lcom/google/android/gms/internal/measurement/d4;

    .line 65
    .line 66
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/d4;->t()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v14

    .line 70
    invoke-static {v14}, Li6/t;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    if-eqz v14, :cond_0

    .line 75
    .line 76
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/measurement/d4;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/d4;

    .line 77
    .line 78
    .line 79
    const/4 v14, 0x1

    .line 80
    goto :goto_2

    .line 81
    :cond_0
    const/4 v14, 0x0

    .line 82
    :goto_2
    const/4 v15, 0x0

    .line 83
    :goto_3
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/d4;->v()I

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    if-ge v15, v10, :cond_2

    .line 88
    .line 89
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/measurement/d4;->w(I)Lcom/google/android/gms/internal/measurement/g4;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->J()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    move-object/from16 v16, v12

    .line 98
    .line 99
    sget-object v12, Li6/u;->a:[Ljava/lang/String;

    .line 100
    .line 101
    move-object/from16 v17, v4

    .line 102
    .line 103
    sget-object v4, Li6/u;->b:[Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v7, v12, v4}, Li6/e0;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_1

    .line 110
    .line 111
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/hb;->p()Lcom/google/android/gms/internal/measurement/fb;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    check-cast v7, Lcom/google/android/gms/internal/measurement/f4;

    .line 116
    .line 117
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/measurement/f4;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f4;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Lcom/google/android/gms/internal/measurement/g4;

    .line 125
    .line 126
    invoke-virtual {v13, v15, v4}, Lcom/google/android/gms/internal/measurement/d4;->x(ILcom/google/android/gms/internal/measurement/g4;)Lcom/google/android/gms/internal/measurement/d4;

    .line 127
    .line 128
    .line 129
    const/4 v14, 0x1

    .line 130
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 131
    .line 132
    move-object/from16 v12, v16

    .line 133
    .line 134
    move-object/from16 v4, v17

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_2
    move-object/from16 v17, v4

    .line 138
    .line 139
    if-eqz v14, :cond_3

    .line 140
    .line 141
    invoke-virtual {v9, v11, v13}, Lcom/google/android/gms/internal/measurement/b4;->y(ILcom/google/android/gms/internal/measurement/d4;)Lcom/google/android/gms/internal/measurement/b4;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Lcom/google/android/gms/internal/measurement/c4;

    .line 149
    .line 150
    invoke-interface {v3, v8, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 154
    .line 155
    move-object/from16 v4, v17

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    move-object/from16 v17, v4

    .line 159
    .line 160
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/b4;->t()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_6

    .line 165
    .line 166
    const/4 v4, 0x0

    .line 167
    :goto_4
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/b4;->t()I

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-ge v4, v7, :cond_6

    .line 172
    .line 173
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/measurement/b4;->u(I)Lcom/google/android/gms/internal/measurement/m4;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/m4;->E()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    sget-object v11, Li6/v;->a:[Ljava/lang/String;

    .line 182
    .line 183
    sget-object v12, Li6/v;->b:[Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v10, v11, v12}, Li6/e0;->b(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    if-eqz v10, :cond_5

    .line 190
    .line 191
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/hb;->p()Lcom/google/android/gms/internal/measurement/fb;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    check-cast v7, Lcom/google/android/gms/internal/measurement/l4;

    .line 196
    .line 197
    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/measurement/l4;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/l4;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v9, v4, v7}, Lcom/google/android/gms/internal/measurement/b4;->v(ILcom/google/android/gms/internal/measurement/l4;)Lcom/google/android/gms/internal/measurement/b4;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    check-cast v7, Lcom/google/android/gms/internal/measurement/c4;

    .line 208
    .line 209
    invoke-interface {v3, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 216
    .line 217
    move-object/from16 v4, v17

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_7
    move-object/from16 v17, v4

    .line 222
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 224
    .line 225
    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 227
    .line 228
    .line 229
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    invoke-static/range {p2 .. p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 240
    .line 241
    .line 242
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 243
    .line 244
    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 246
    .line 247
    .line 248
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v7, v6, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 260
    .line 261
    .line 262
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    invoke-virtual {v7, v5, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_19

    .line 278
    .line 279
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Lcom/google/android/gms/internal/measurement/c4;

    .line 284
    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 286
    .line 287
    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 289
    .line 290
    .line 291
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c4;->C()Z

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    if-nez v10, :cond_8

    .line 302
    .line 303
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    const-string v8, "Audience with no ID. appId"

    .line 314
    .line 315
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c4;->D()I

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c4;->H()Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object v11

    .line 331
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 336
    .line 337
    .line 338
    move-result v12

    .line 339
    if-eqz v12, :cond_a

    .line 340
    .line 341
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v12

    .line 345
    check-cast v12, Lcom/google/android/gms/internal/measurement/e4;

    .line 346
    .line 347
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/e4;->C()Z

    .line 348
    .line 349
    .line 350
    move-result v12

    .line 351
    if-nez v12, :cond_9

    .line 352
    .line 353
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    const-string v8, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 364
    .line 365
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    .line 371
    .line 372
    move-result-object v10

    .line 373
    invoke-virtual {v0, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    goto :goto_5

    .line 377
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c4;->E()Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object v11

    .line 381
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v11

    .line 385
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v12

    .line 389
    if-eqz v12, :cond_c

    .line 390
    .line 391
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v12

    .line 395
    check-cast v12, Lcom/google/android/gms/internal/measurement/m4;

    .line 396
    .line 397
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/m4;->C()Z

    .line 398
    .line 399
    .line 400
    move-result v12

    .line 401
    if-nez v12, :cond_b

    .line 402
    .line 403
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 404
    .line 405
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    const-string v8, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 414
    .line 415
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v9

    .line 419
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v10

    .line 423
    invoke-virtual {v0, v8, v9, v10}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_5

    .line 427
    .line 428
    :cond_c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c4;->H()Ljava/util/List;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 437
    .line 438
    .line 439
    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    const-string v8, "data"

    .line 441
    .line 442
    const-string v13, "session_scoped"

    .line 443
    .line 444
    const-string v14, "filter_id"

    .line 445
    .line 446
    const-string v9, "audience_id"

    .line 447
    .line 448
    const-string v15, "app_id"

    .line 449
    .line 450
    if-eqz v12, :cond_12

    .line 451
    .line 452
    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v12

    .line 456
    check-cast v12, Lcom/google/android/gms/internal/measurement/e4;

    .line 457
    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 462
    .line 463
    .line 464
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    invoke-static {v12}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/e4;->E()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v21

    .line 474
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->isEmpty()Z

    .line 475
    .line 476
    .line 477
    move-result v21

    .line 478
    if-eqz v21, :cond_e

    .line 479
    .line 480
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 481
    .line 482
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    const-string v8, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 491
    .line 492
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v9

    .line 496
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    .line 498
    .line 499
    move-result-object v11

    .line 500
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/e4;->C()Z

    .line 501
    .line 502
    .line 503
    move-result v13

    .line 504
    if-eqz v13, :cond_d

    .line 505
    .line 506
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/e4;->D()I

    .line 507
    .line 508
    .line 509
    move-result v12

    .line 510
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 511
    .line 512
    .line 513
    move-result-object v12

    .line 514
    move-object/from16 v20, v12

    .line 515
    .line 516
    goto :goto_7

    .line 517
    :cond_d
    const/16 v20, 0x0

    .line 518
    .line 519
    :goto_7
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v12

    .line 523
    invoke-virtual {v0, v8, v9, v11, v12}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    move-object/from16 v21, v7

    .line 527
    .line 528
    goto/16 :goto_e

    .line 529
    .line 530
    :cond_e
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/v9;->e()[B

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    move-object/from16 v21, v7

    .line 535
    .line 536
    new-instance v7, Landroid/content/ContentValues;

    .line 537
    .line 538
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v7, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v15

    .line 548
    invoke-virtual {v7, v9, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/e4;->C()Z

    .line 552
    .line 553
    .line 554
    move-result v9

    .line 555
    if-eqz v9, :cond_f

    .line 556
    .line 557
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/e4;->D()I

    .line 558
    .line 559
    .line 560
    move-result v9

    .line 561
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 562
    .line 563
    .line 564
    move-result-object v9

    .line 565
    goto :goto_8

    .line 566
    :cond_f
    const/4 v9, 0x0

    .line 567
    :goto_8
    invoke-virtual {v7, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    .line 569
    .line 570
    const-string v9, "event_name"

    .line 571
    .line 572
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/e4;->E()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v14

    .line 576
    invoke-virtual {v7, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/e4;->M()Z

    .line 580
    .line 581
    .line 582
    move-result v9

    .line 583
    if-eqz v9, :cond_10

    .line 584
    .line 585
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/e4;->N()Z

    .line 586
    .line 587
    .line 588
    move-result v9

    .line 589
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 590
    .line 591
    .line 592
    move-result-object v9

    .line 593
    goto :goto_9

    .line 594
    :cond_10
    const/4 v9, 0x0

    .line 595
    :goto_9
    invoke-virtual {v7, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    .line 600
    .line 601
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    const/4 v8, 0x5

    .line 606
    const/4 v9, 0x0

    .line 607
    invoke-virtual {v3, v5, v9, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 608
    .line 609
    .line 610
    move-result-wide v7

    .line 611
    const-wide/16 v12, -0x1

    .line 612
    .line 613
    cmp-long v3, v7, v12

    .line 614
    .line 615
    if-nez v3, :cond_11

    .line 616
    .line 617
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 618
    .line 619
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 620
    .line 621
    .line 622
    move-result-object v3

    .line 623
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 624
    .line 625
    .line 626
    move-result-object v3

    .line 627
    const-string v7, "Failed to insert event filter (got -1). appId"

    .line 628
    .line 629
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v8

    .line 633
    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 634
    .line 635
    .line 636
    :cond_11
    move-object/from16 v3, p2

    .line 637
    .line 638
    move-object/from16 v7, v21

    .line 639
    .line 640
    goto/16 :goto_6

    .line 641
    .line 642
    :catch_0
    move-exception v0

    .line 643
    :try_start_3
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 644
    .line 645
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    const-string v7, "Error storing event filter. appId"

    .line 654
    .line 655
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v8

    .line 659
    invoke-virtual {v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_e

    .line 663
    .line 664
    :cond_12
    move-object/from16 v21, v7

    .line 665
    .line 666
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/c4;->E()Ljava/util/List;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    if-eqz v3, :cond_18

    .line 679
    .line 680
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    check-cast v3, Lcom/google/android/gms/internal/measurement/m4;

    .line 685
    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 687
    .line 688
    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 690
    .line 691
    .line 692
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    invoke-static {v3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->E()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v7

    .line 702
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 703
    .line 704
    .line 705
    move-result v7

    .line 706
    if-eqz v7, :cond_14

    .line 707
    .line 708
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 709
    .line 710
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    const-string v7, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 719
    .line 720
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v8

    .line 724
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 725
    .line 726
    .line 727
    move-result-object v9

    .line 728
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->C()Z

    .line 729
    .line 730
    .line 731
    move-result v11

    .line 732
    if-eqz v11, :cond_13

    .line 733
    .line 734
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->D()I

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    goto :goto_b

    .line 743
    :cond_13
    const/4 v3, 0x0

    .line 744
    :goto_b
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object v3

    .line 748
    invoke-virtual {v0, v7, v8, v9, v3}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_e

    .line 752
    .line 753
    :cond_14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/v9;->e()[B

    .line 754
    .line 755
    .line 756
    move-result-object v7

    .line 757
    new-instance v11, Landroid/content/ContentValues;

    .line 758
    .line 759
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v11, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    .line 764
    .line 765
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 766
    .line 767
    .line 768
    move-result-object v12

    .line 769
    invoke-virtual {v11, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->C()Z

    .line 773
    .line 774
    .line 775
    move-result v12

    .line 776
    if-eqz v12, :cond_15

    .line 777
    .line 778
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->D()I

    .line 779
    .line 780
    .line 781
    move-result v12

    .line 782
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 783
    .line 784
    .line 785
    move-result-object v12

    .line 786
    goto :goto_c

    .line 787
    :cond_15
    const/4 v12, 0x0

    .line 788
    :goto_c
    invoke-virtual {v11, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    .line 790
    .line 791
    const-string v12, "property_name"

    .line 792
    .line 793
    move-object/from16 v22, v0

    .line 794
    .line 795
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->E()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->I()Z

    .line 803
    .line 804
    .line 805
    move-result v0

    .line 806
    if-eqz v0, :cond_16

    .line 807
    .line 808
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m4;->J()Z

    .line 809
    .line 810
    .line 811
    move-result v0

    .line 812
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    goto :goto_d

    .line 817
    :cond_16
    const/4 v0, 0x0

    .line 818
    :goto_d
    invoke-virtual {v11, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v11, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 822
    .line 823
    .line 824
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    const/4 v3, 0x0

    .line 829
    const/4 v7, 0x5

    .line 830
    invoke-virtual {v0, v6, v3, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 831
    .line 832
    .line 833
    move-result-wide v11

    .line 834
    const-wide/16 v18, -0x1

    .line 835
    .line 836
    cmp-long v0, v11, v18

    .line 837
    .line 838
    if-nez v0, :cond_17

    .line 839
    .line 840
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 841
    .line 842
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    const-string v3, "Failed to insert property filter (got -1). appId"

    .line 851
    .line 852
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v7

    .line 856
    invoke-virtual {v0, v3, v7}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 857
    .line 858
    .line 859
    goto :goto_e

    .line 860
    :cond_17
    move-object/from16 v0, v22

    .line 861
    .line 862
    goto/16 :goto_a

    .line 863
    .line 864
    :catch_1
    move-exception v0

    .line 865
    :try_start_5
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 866
    .line 867
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 868
    .line 869
    .line 870
    move-result-object v3

    .line 871
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 872
    .line 873
    .line 874
    move-result-object v3

    .line 875
    const-string v7, "Error storing property filter. appId"

    .line 876
    .line 877
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v8

    .line 881
    invoke-virtual {v3, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 882
    .line 883
    .line 884
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 885
    .line 886
    .line 887
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 888
    .line 889
    .line 890
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    const/4 v3, 0x2

    .line 898
    new-array v7, v3, [Ljava/lang/String;

    .line 899
    .line 900
    const/4 v3, 0x0

    .line 901
    aput-object v2, v7, v3

    .line 902
    .line 903
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v3

    .line 907
    const/4 v8, 0x1

    .line 908
    aput-object v3, v7, v8

    .line 909
    .line 910
    move-object/from16 v3, v17

    .line 911
    .line 912
    invoke-virtual {v0, v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 913
    .line 914
    .line 915
    const/4 v7, 0x2

    .line 916
    new-array v7, v7, [Ljava/lang/String;

    .line 917
    .line 918
    const/4 v8, 0x0

    .line 919
    aput-object v2, v7, v8

    .line 920
    .line 921
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 922
    .line 923
    .line 924
    move-result-object v8

    .line 925
    const/4 v9, 0x1

    .line 926
    aput-object v8, v7, v9

    .line 927
    .line 928
    invoke-virtual {v0, v5, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 929
    .line 930
    .line 931
    move-object/from16 v17, v3

    .line 932
    .line 933
    move-object/from16 v7, v21

    .line 934
    .line 935
    move-object/from16 v3, p2

    .line 936
    .line 937
    goto/16 :goto_5

    .line 938
    .line 939
    :cond_18
    move-object/from16 v3, p2

    .line 940
    .line 941
    move-object/from16 v7, v21

    .line 942
    .line 943
    goto/16 :goto_5

    .line 944
    .line 945
    :cond_19
    const/4 v3, 0x0

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    .line 947
    .line 948
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .line 950
    .line 951
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 952
    .line 953
    .line 954
    move-result-object v5

    .line 955
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 956
    .line 957
    .line 958
    move-result v6

    .line 959
    if-eqz v6, :cond_1b

    .line 960
    .line 961
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v6

    .line 965
    check-cast v6, Lcom/google/android/gms/internal/measurement/c4;

    .line 966
    .line 967
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/c4;->C()Z

    .line 968
    .line 969
    .line 970
    move-result v7

    .line 971
    if-eqz v7, :cond_1a

    .line 972
    .line 973
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/c4;->D()I

    .line 974
    .line 975
    .line 976
    move-result v6

    .line 977
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 978
    .line 979
    .line 980
    move-result-object v9

    .line 981
    goto :goto_10

    .line 982
    :cond_1a
    move-object v9, v3

    .line 983
    :goto_10
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    goto :goto_f

    .line 987
    :cond_1b
    const-string v3, "("

    .line 988
    .line 989
    const-string v5, ")"

    .line 990
    .line 991
    const-string v6, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    .line 992
    .line 993
    const-string v7, " order by rowid desc limit -1 offset ?)"

    .line 994
    .line 995
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 999
    .line 1000
    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 1002
    .line 1003
    .line 1004
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1008
    :try_start_6
    const-string v9, "select count(1) from audience_filter_values where app_id=?"

    .line 1009
    .line 1010
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v10

    .line 1014
    invoke-direct {v1, v9, v10}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 1015
    .line 1016
    .line 1017
    move-result-wide v9
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1018
    :try_start_7
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 1019
    .line 1020
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v11

    .line 1024
    sget-object v12, Lcom/google/android/gms/measurement/internal/c5;->V:Lcom/google/android/gms/measurement/internal/b5;

    .line 1025
    .line 1026
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)I

    .line 1027
    .line 1028
    .line 1029
    move-result v11

    .line 1030
    const/16 v12, 0x7d0

    .line 1031
    .line 1032
    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    .line 1033
    .line 1034
    .line 1035
    move-result v11

    .line 1036
    const/4 v12, 0x0

    .line 1037
    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    .line 1038
    .line 1039
    .line 1040
    move-result v11

    .line 1041
    int-to-long v12, v11

    .line 1042
    cmp-long v9, v9, v12

    .line 1043
    .line 1044
    if-gtz v9, :cond_1c

    .line 1045
    .line 1046
    goto/16 :goto_12

    .line 1047
    .line 1048
    :cond_1c
    new-instance v9, Ljava/util/ArrayList;

    .line 1049
    .line 1050
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    .line 1052
    .line 1053
    const/4 v10, 0x0

    .line 1054
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1055
    .line 1056
    .line 1057
    move-result v12

    .line 1058
    if-ge v10, v12, :cond_1d

    .line 1059
    .line 1060
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v12

    .line 1064
    check-cast v12, Ljava/lang/Integer;

    .line 1065
    .line 1066
    if-eqz v12, :cond_1e

    .line 1067
    .line 1068
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 1069
    .line 1070
    .line 1071
    move-result v12

    .line 1072
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v12

    .line 1076
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1077
    .line 1078
    .line 1079
    add-int/lit8 v10, v10, 0x1

    .line 1080
    .line 1081
    goto :goto_11

    .line 1082
    :cond_1d
    const-string v0, ","

    .line 1083
    .line 1084
    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v0

    .line 1088
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v9

    .line 1092
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 1093
    .line 1094
    .line 1095
    move-result v9

    .line 1096
    const/4 v10, 0x2

    .line 1097
    add-int/2addr v9, v10

    .line 1098
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1099
    .line 1100
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1101
    .line 1102
    .line 1103
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    .line 1105
    .line 1106
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v0

    .line 1116
    const-string v3, "audience_filter_values"

    .line 1117
    .line 1118
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1119
    .line 1120
    .line 1121
    move-result v5

    .line 1122
    add-int/lit16 v5, v5, 0x8c

    .line 1123
    .line 1124
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v0

    .line 1142
    const/4 v5, 0x2

    .line 1143
    new-array v5, v5, [Ljava/lang/String;

    .line 1144
    .line 1145
    const/4 v6, 0x0

    .line 1146
    aput-object v2, v5, v6

    .line 1147
    .line 1148
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v2

    .line 1152
    const/4 v6, 0x1

    .line 1153
    aput-object v2, v5, v6

    .line 1154
    .line 1155
    invoke-virtual {v8, v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1156
    .line 1157
    .line 1158
    goto :goto_12

    .line 1159
    :catch_2
    move-exception v0

    .line 1160
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 1161
    .line 1162
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v3

    .line 1166
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v3

    .line 1170
    const-string v5, "Database error querying filters. appId"

    .line 1171
    .line 1172
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v2

    .line 1176
    invoke-virtual {v3, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1177
    .line 1178
    .line 1179
    :cond_1e
    :goto_12
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1183
    .line 1184
    .line 1185
    return-void

    .line 1186
    :catchall_0
    move-exception v0

    .line 1187
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1188
    .line 1189
    .line 1190
    throw v0
.end method

.method final Z(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/t6;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/t6;->F()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "events"

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-direct {v0, v2, v4, v1}, Lcom/google/android/gms/measurement/internal/u;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    move-object/from16 v5, p3

    .line 36
    .line 37
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v5, "Event aggregate wasn\'t created during raw event logging. appId, event"

    .line 42
    .line 43
    invoke-virtual {v2, v5, v3, v1}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/google/android/gms/measurement/internal/c0;

    .line 47
    .line 48
    move-object v3, v1

    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/t6;->F()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const-wide/16 v6, 0x1

    .line 54
    .line 55
    const-wide/16 v8, 0x1

    .line 56
    .line 57
    const-wide/16 v10, 0x1

    .line 58
    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/t6;->H()J

    .line 60
    .line 61
    .line 62
    move-result-wide v12

    .line 63
    const-wide/16 v14, 0x0

    .line 64
    .line 65
    const/16 v16, 0x0

    .line 66
    .line 67
    const/16 v17, 0x0

    .line 68
    .line 69
    const/16 v18, 0x0

    .line 70
    .line 71
    const/16 v19, 0x0

    .line 72
    .line 73
    move-object/from16 v4, p1

    .line 74
    .line 75
    invoke-direct/range {v3 .. v19}, Lcom/google/android/gms/measurement/internal/c0;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/c0;->e:J

    .line 80
    .line 81
    const-wide/16 v4, 0x1

    .line 82
    .line 83
    add-long v13, v2, v4

    .line 84
    .line 85
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/c0;->d:J

    .line 86
    .line 87
    add-long v11, v2, v4

    .line 88
    .line 89
    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/c0;->c:J

    .line 90
    .line 91
    add-long v9, v2, v4

    .line 92
    .line 93
    new-instance v2, Lcom/google/android/gms/measurement/internal/c0;

    .line 94
    .line 95
    move-object v6, v2

    .line 96
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/c0;->a:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/c0;->b:Ljava/lang/String;

    .line 99
    .line 100
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/c0;->f:J

    .line 101
    .line 102
    move-wide v15, v3

    .line 103
    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/c0;->g:J

    .line 104
    .line 105
    move-wide/from16 v17, v3

    .line 106
    .line 107
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/c0;->h:Ljava/lang/Long;

    .line 108
    .line 109
    move-object/from16 v19, v3

    .line 110
    .line 111
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/c0;->i:Ljava/lang/Long;

    .line 112
    .line 113
    move-object/from16 v20, v3

    .line 114
    .line 115
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/c0;->j:Ljava/lang/Long;

    .line 116
    .line 117
    move-object/from16 v21, v3

    .line 118
    .line 119
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/c0;->k:Ljava/lang/Boolean;

    .line 120
    .line 121
    move-object/from16 v22, v1

    .line 122
    .line 123
    invoke-direct/range {v6 .. v22}, Lcom/google/android/gms/measurement/internal/c0;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 124
    .line 125
    .line 126
    move-object v1, v2

    .line 127
    :goto_0
    return-object v1
.end method

.method protected final a0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 8
    .line 9
    .line 10
    const-string v0, "google_app_measurement.db"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method final synthetic b0(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 0

    .line 1
    const-string p1, "select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1"

    const-wide/16 p3, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/u;->q0(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method protected final l()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final m(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/d7;Ljava/lang/String;Ljava/util/Map;Li6/d0;Ljava/lang/Long;)J
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v3, p6

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 9
    .line 10
    .line 11
    invoke-static/range {p2 .. p2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->a0()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v4, 0x1

    .line 28
    const-string v5, "upload_queue"

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->L0()Lcom/google/android/gms/measurement/internal/xb;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/xb;->f:Lcom/google/android/gms/measurement/internal/a6;

    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/a6;->a()J

    .line 44
    .line 45
    .line 46
    move-result-wide v7

    .line 47
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 48
    .line 49
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    invoke-interface {v10}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    sub-long v7, v10, v7

    .line 58
    .line 59
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 60
    .line 61
    .line 62
    move-result-wide v7

    .line 63
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->r()J

    .line 67
    .line 68
    .line 69
    move-result-wide v12

    .line 70
    cmp-long v7, v7, v12

    .line 71
    .line 72
    if-lez v7, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->L0()Lcom/google/android/gms/measurement/internal/xb;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/xb;->f:Lcom/google/android/gms/measurement/internal/a6;

    .line 79
    .line 80
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->a0()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/u;->S()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    new-array v8, v6, [Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v0, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-lez v0, :cond_2

    .line 111
    .line 112
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    const-string v8, "Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted"

    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v7, v8, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_0
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 136
    .line 137
    .line 138
    :try_start_0
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sget-object v7, Lcom/google/android/gms/measurement/internal/c5;->A:Lcom/google/android/gms/measurement/internal/b5;

    .line 143
    .line 144
    invoke-virtual {v0, p1, v7}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-lez v0, :cond_3

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    const-string v8, "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)"

    .line 155
    .line 156
    const/4 v9, 0x2

    .line 157
    new-array v9, v9, [Ljava/lang/String;

    .line 158
    .line 159
    aput-object v2, v9, v6

    .line 160
    .line 161
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    aput-object v0, v9, v4

    .line 166
    .line 167
    invoke-virtual {v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 173
    .line 174
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    const-string v9, "Error deleting over the limit queued batches. appId"

    .line 187
    .line 188
    invoke-virtual {v7, v9, v8, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-eqz v8, :cond_4

    .line 209
    .line 210
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    check-cast v8, Ljava/util/Map$Entry;

    .line 215
    .line 216
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    check-cast v9, Ljava/lang/String;

    .line 221
    .line 222
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    check-cast v8, Ljava/lang/String;

    .line 227
    .line 228
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    add-int/2addr v10, v4

    .line 237
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 242
    .line 243
    .line 244
    move-result v11

    .line 245
    new-instance v12, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    add-int/2addr v10, v11

    .line 248
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v9, "="

    .line 255
    .line 256
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/v9;->e()[B

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    new-instance v7, Landroid/content/ContentValues;

    .line 275
    .line 276
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v8, "app_id"

    .line 280
    .line 281
    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    const-string v8, "measurement_batch"

    .line 285
    .line 286
    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 287
    .line 288
    .line 289
    const-string v4, "upload_uri"

    .line 290
    .line 291
    move-object/from16 v8, p3

    .line 292
    .line 293
    invoke-virtual {v7, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    const-string v4, "\r\n"

    .line 297
    .line 298
    invoke-static {v4, v0}, Li6/c;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const-string v4, "upload_headers"

    .line 303
    .line 304
    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual/range {p5 .. p5}, Li6/d0;->zza()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    const-string v4, "upload_type"

    .line 316
    .line 317
    invoke-virtual {v7, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    .line 319
    .line 320
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 323
    .line 324
    .line 325
    move-result-object v4

    .line 326
    invoke-interface {v4}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 327
    .line 328
    .line 329
    move-result-wide v8

    .line 330
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    const-string v8, "creation_timestamp"

    .line 335
    .line 336
    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 337
    .line 338
    .line 339
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    const-string v6, "retry_count"

    .line 344
    .line 345
    invoke-virtual {v7, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    .line 347
    .line 348
    if-eqz v3, :cond_5

    .line 349
    .line 350
    const-string v4, "associated_row_id"

    .line 351
    .line 352
    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    .line 354
    .line 355
    :cond_5
    const-wide/16 v3, -0x1

    .line 356
    .line 357
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    const/4 v8, 0x0

    .line 362
    invoke-virtual {v6, v5, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 363
    .line 364
    .line 365
    move-result-wide v5

    .line 366
    cmp-long v7, v5, v3

    .line 367
    .line 368
    if-nez v7, :cond_6

    .line 369
    .line 370
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const-string v5, "Failed to insert MeasurementBatch (got -1) to upload_queue. appId"

    .line 379
    .line 380
    invoke-virtual {v0, v5, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 381
    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_6
    move-wide v3, v5

    .line 385
    :goto_3
    return-wide v3

    .line 386
    :catch_1
    move-exception v0

    .line 387
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 388
    .line 389
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    const-string v6, "Error storing MeasurementBatch to upload_queue. appId"

    .line 398
    .line 399
    invoke-virtual {v5, v6, p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    return-wide v3
.end method

.method final synthetic m0()Lcom/google/android/gms/measurement/internal/qc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u;->e:Lcom/google/android/gms/measurement/internal/qc;

    return-object v0
.end method

.method public final n(J)Lcom/google/android/gms/measurement/internal/sd;
    .locals 34

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "upload_queue"

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    new-array v4, v0, [Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "rowId"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    aput-object v0, v4, v5

    .line 21
    .line 22
    const-string v0, "app_id"

    .line 23
    .line 24
    const/4 v11, 0x1

    .line 25
    aput-object v0, v4, v11

    .line 26
    .line 27
    const-string v0, "measurement_batch"

    .line 28
    .line 29
    const/4 v12, 0x2

    .line 30
    aput-object v0, v4, v12

    .line 31
    .line 32
    const-string v0, "upload_uri"

    .line 33
    .line 34
    const/4 v13, 0x3

    .line 35
    aput-object v0, v4, v13

    .line 36
    .line 37
    const-string v0, "upload_headers"

    .line 38
    .line 39
    const/4 v14, 0x4

    .line 40
    aput-object v0, v4, v14

    .line 41
    .line 42
    const-string v0, "upload_type"

    .line 43
    .line 44
    const/4 v15, 0x5

    .line 45
    aput-object v0, v4, v15

    .line 46
    .line 47
    const-string v0, "retry_count"

    .line 48
    .line 49
    const/4 v10, 0x6

    .line 50
    aput-object v0, v4, v10

    .line 51
    .line 52
    const-string v0, "creation_timestamp"

    .line 53
    .line 54
    const/4 v9, 0x7

    .line 55
    aput-object v0, v4, v9

    .line 56
    .line 57
    const-string v0, "associated_row_id"

    .line 58
    .line 59
    const/16 v8, 0x8

    .line 60
    .line 61
    aput-object v0, v4, v8

    .line 62
    .line 63
    const-string v0, "last_upload_timestamp"

    .line 64
    .line 65
    const/16 v7, 0x9

    .line 66
    .line 67
    aput-object v0, v4, v7

    .line 68
    .line 69
    const-string v0, "rowId=?"

    .line 70
    .line 71
    new-array v6, v11, [Ljava/lang/String;

    .line 72
    .line 73
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v16

    .line 77
    aput-object v16, v6, v5

    .line 78
    .line 79
    const/16 v16, 0x0

    .line 80
    .line 81
    const/16 v17, 0x0

    .line 82
    .line 83
    const/16 v18, 0x0

    .line 84
    .line 85
    const-string v19, "1"

    .line 86
    .line 87
    move-object v5, v0

    .line 88
    move v0, v7

    .line 89
    move-object/from16 v7, v16

    .line 90
    .line 91
    move v1, v8

    .line 92
    move-object/from16 v8, v17

    .line 93
    .line 94
    move v0, v9

    .line 95
    move-object/from16 v9, v18

    .line 96
    .line 97
    move v1, v10

    .line 98
    move-object/from16 v10, v19

    .line 99
    .line 100
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 101
    .line 102
    .line 103
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 104
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_0

    .line 109
    .line 110
    move-object/from16 v1, p0

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v3}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    move-object/from16 v20, v3

    .line 122
    .line 123
    check-cast v20, Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 126
    .line 127
    .line 128
    move-result-object v23

    .line 129
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v24

    .line 133
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v25

    .line 137
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 138
    .line 139
    .line 140
    move-result v26

    .line 141
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 142
    .line 143
    .line 144
    move-result v27

    .line 145
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 146
    .line 147
    .line 148
    move-result-wide v28

    .line 149
    const/16 v0, 0x8

    .line 150
    .line 151
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 152
    .line 153
    .line 154
    move-result-wide v30

    .line 155
    const/16 v0, 0x9

    .line 156
    .line 157
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 158
    .line 159
    .line 160
    move-result-wide v32

    .line 161
    move-object/from16 v19, p0

    .line 162
    .line 163
    move-wide/from16 v21, p1

    .line 164
    .line 165
    invoke-direct/range {v19 .. v33}, Lcom/google/android/gms/measurement/internal/u;->R(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/sd;

    .line 166
    .line 167
    .line 168
    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 170
    .line 171
    .line 172
    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    goto :goto_1

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    const/4 v2, 0x0

    .line 179
    :goto_0
    move-object/from16 v1, p0

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :catch_1
    move-exception v0

    .line 183
    const/4 v2, 0x0

    .line 184
    :goto_1
    move-object/from16 v1, p0

    .line 185
    .line 186
    :try_start_2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 187
    .line 188
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    const-string v4, "Error to querying MeasurementBatch from upload_queue. rowId"

    .line 197
    .line 198
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 203
    .line 204
    .line 205
    :goto_2
    if-eqz v2, :cond_1

    .line 206
    .line 207
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 208
    .line 209
    .line 210
    :cond_1
    const/4 v2, 0x0

    .line 211
    return-object v2

    .line 212
    :catchall_2
    move-exception v0

    .line 213
    :goto_3
    if-eqz v2, :cond_2

    .line 214
    .line 215
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 216
    .line 217
    .line 218
    :cond_2
    throw v0
.end method

.method public final n0(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/ld;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p6

    .line 4
    .line 5
    invoke-static/range {p6 .. p6}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 12
    .line 13
    .line 14
    const-string v0, " order by rowid limit 1;"

    .line 15
    .line 16
    const-string v3, "select metadata_fingerprint from raw_events where app_id = ?"

    .line 17
    .line 18
    const-string v4, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    .line 19
    .line 20
    const-string v5, "select app_id, metadata_fingerprint from raw_events where "

    .line 21
    .line 22
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    .line 24
    .line 25
    move-result-object v15

    .line 26
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v7
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    const-string v8, ""

    .line 31
    .line 32
    const/4 v14, 0x2

    .line 33
    const/4 v13, 0x1

    .line 34
    const-wide/16 v11, -0x1

    .line 35
    .line 36
    const/4 v10, 0x0

    .line 37
    if-eqz v7, :cond_3

    .line 38
    .line 39
    cmp-long v0, p4, v11

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    :try_start_1
    new-array v3, v14, [Ljava/lang/String;

    .line 44
    .line 45
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    aput-object v7, v3, v10

    .line 50
    .line 51
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    aput-object v7, v3, v13

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-array v3, v13, [Ljava/lang/String;

    .line 59
    .line 60
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    aput-object v7, v3, v10

    .line 65
    .line 66
    :goto_0
    if-eqz v0, :cond_1

    .line 67
    .line 68
    const-string v8, "rowid <= ? and "

    .line 69
    .line 70
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    add-int/lit16 v0, v0, 0x94

    .line 75
    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v15, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 95
    .line 96
    .line 97
    move-result-object v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 98
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    goto/16 :goto_a

    .line 105
    .line 106
    :cond_2
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    :try_start_3
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    goto/16 :goto_7

    .line 120
    .line 121
    :cond_3
    cmp-long v4, p4, v11

    .line 122
    .line 123
    if-eqz v4, :cond_4

    .line 124
    .line 125
    :try_start_4
    new-array v5, v14, [Ljava/lang/String;

    .line 126
    .line 127
    aput-object p1, v5, v10

    .line 128
    .line 129
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    aput-object v7, v5, v13

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    :goto_1
    if-eqz v4, :cond_5

    .line 141
    .line 142
    const-string v8, " and rowid <= ?"

    .line 143
    .line 144
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    add-int/lit8 v4, v4, 0x54

    .line 149
    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v15, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 169
    .line 170
    .line 171
    move-result-object v3
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 172
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_6

    .line 177
    .line 178
    goto/16 :goto_a

    .line 179
    .line 180
    :cond_6
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 185
    .line 186
    .line 187
    move-object/from16 v4, p1

    .line 188
    .line 189
    :goto_2
    :try_start_6
    const-string v8, "raw_events_metadata"

    .line 190
    .line 191
    new-array v9, v13, [Ljava/lang/String;

    .line 192
    .line 193
    const-string v5, "metadata"

    .line 194
    .line 195
    aput-object v5, v9, v10

    .line 196
    .line 197
    const-string v5, "app_id = ? and metadata_fingerprint = ?"

    .line 198
    .line 199
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v16

    .line 203
    const/16 v17, 0x0

    .line 204
    .line 205
    const/16 v18, 0x0

    .line 206
    .line 207
    const-string v19, "rowid"

    .line 208
    .line 209
    const-string v20, "2"

    .line 210
    .line 211
    move-object v7, v15

    .line 212
    move v6, v10

    .line 213
    move-object v10, v5

    .line 214
    move-object/from16 v11, v16

    .line 215
    .line 216
    move-object/from16 v12, v17

    .line 217
    .line 218
    move v5, v13

    .line 219
    move-object/from16 v13, v18

    .line 220
    .line 221
    move-object/from16 v14, v19

    .line 222
    .line 223
    move-object/from16 v16, v15

    .line 224
    .line 225
    move-object/from16 v15, v20

    .line 226
    .line 227
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    if-nez v7, :cond_7

    .line 236
    .line 237
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const-string v2, "Raw event metadata record is missing. appId"

    .line 248
    .line 249
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-virtual {v0, v2, v5}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_a

    .line 257
    .line 258
    :cond_7
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getBlob(I)[B

    .line 259
    .line 260
    .line 261
    move-result-object v7
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 262
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/f7;->h0()Lcom/google/android/gms/internal/measurement/e7;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    invoke-static {v8, v7}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    check-cast v7, Lcom/google/android/gms/internal/measurement/e7;

    .line 271
    .line 272
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    check-cast v7, Lcom/google/android/gms/internal/measurement/f7;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 277
    .line 278
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 279
    .line 280
    .line 281
    move-result v8

    .line 282
    if-eqz v8, :cond_8

    .line 283
    .line 284
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 285
    .line 286
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    const-string v9, "Get multiple raw event metadata records, expected one. appId"

    .line 295
    .line 296
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 304
    .line 305
    .line 306
    invoke-static {v7}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    iput-object v7, v2, Lcom/google/android/gms/measurement/internal/ld;->a:Lcom/google/android/gms/internal/measurement/f7;

    .line 310
    .line 311
    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 312
    .line 313
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    sget-object v8, Lcom/google/android/gms/measurement/internal/c5;->l1:Lcom/google/android/gms/measurement/internal/b5;

    .line 318
    .line 319
    const/4 v9, 0x0

    .line 320
    invoke-virtual {v7, v9, v8}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    .line 321
    .line 322
    .line 323
    move-result v7
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 324
    const-string v8, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    .line 325
    .line 326
    const-string v9, "app_id = ? and metadata_fingerprint = ?"

    .line 327
    .line 328
    const/4 v14, 0x3

    .line 329
    if-eqz v7, :cond_d

    .line 330
    .line 331
    :try_start_9
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    const-string v10, "select (rowid - 1) as max_rowid from raw_events where app_id = ? and metadata_fingerprint != ? order by rowid limit 1;"

    .line 336
    .line 337
    const-wide/16 v11, -0x1

    .line 338
    .line 339
    invoke-direct {v1, v10, v7, v11, v12}, Lcom/google/android/gms/measurement/internal/u;->q0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 340
    .line 341
    .line 342
    move-result-wide v5

    .line 343
    cmp-long v7, p4, v11

    .line 344
    .line 345
    if-nez v7, :cond_a

    .line 346
    .line 347
    cmp-long v7, v5, v11

    .line 348
    .line 349
    if-eqz v7, :cond_9

    .line 350
    .line 351
    move-wide v9, v11

    .line 352
    goto :goto_3

    .line 353
    :cond_9
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    move-object v11, v0

    .line 358
    move-object v10, v9

    .line 359
    const/4 v5, 0x2

    .line 360
    goto :goto_6

    .line 361
    :cond_a
    move-wide/from16 v9, p4

    .line 362
    .line 363
    :goto_3
    cmp-long v7, v9, v11

    .line 364
    .line 365
    if-eqz v7, :cond_b

    .line 366
    .line 367
    cmp-long v11, v5, v11

    .line 368
    .line 369
    if-eqz v11, :cond_b

    .line 370
    .line 371
    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 372
    .line 373
    .line 374
    move-result-wide v5

    .line 375
    goto :goto_4

    .line 376
    :cond_b
    if-eqz v7, :cond_c

    .line 377
    .line 378
    move-wide v5, v9

    .line 379
    :cond_c
    :goto_4
    new-array v7, v14, [Ljava/lang/String;

    .line 380
    .line 381
    const/4 v9, 0x0

    .line 382
    aput-object v4, v7, v9

    .line 383
    .line 384
    const/4 v9, 0x1

    .line 385
    aput-object v0, v7, v9

    .line 386
    .line 387
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    const/4 v5, 0x2

    .line 392
    aput-object v0, v7, v5

    .line 393
    .line 394
    move-object v11, v7

    .line 395
    goto :goto_5

    .line 396
    :cond_d
    const/4 v5, 0x2

    .line 397
    const-wide/16 v11, -0x1

    .line 398
    .line 399
    cmp-long v6, p4, v11

    .line 400
    .line 401
    if-eqz v6, :cond_e

    .line 402
    .line 403
    new-array v6, v14, [Ljava/lang/String;

    .line 404
    .line 405
    const/4 v7, 0x0

    .line 406
    aput-object v4, v6, v7

    .line 407
    .line 408
    const/4 v7, 0x1

    .line 409
    aput-object v0, v6, v7

    .line 410
    .line 411
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    aput-object v0, v6, v5

    .line 416
    .line 417
    move-object v11, v6

    .line 418
    :goto_5
    move-object v10, v8

    .line 419
    goto :goto_6

    .line 420
    :cond_e
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    move-object v11, v0

    .line 425
    move-object v10, v9

    .line 426
    :goto_6
    const-string v8, "raw_events"

    .line 427
    .line 428
    const/4 v0, 0x4

    .line 429
    new-array v9, v0, [Ljava/lang/String;

    .line 430
    .line 431
    const-string v0, "rowid"

    .line 432
    .line 433
    const/4 v6, 0x0

    .line 434
    aput-object v0, v9, v6

    .line 435
    .line 436
    const-string v0, "name"

    .line 437
    .line 438
    const/4 v6, 0x1

    .line 439
    aput-object v0, v9, v6

    .line 440
    .line 441
    const-string v0, "timestamp"

    .line 442
    .line 443
    aput-object v0, v9, v5

    .line 444
    .line 445
    const-string v0, "data"

    .line 446
    .line 447
    aput-object v0, v9, v14

    .line 448
    .line 449
    const/4 v12, 0x0

    .line 450
    const/4 v13, 0x0

    .line 451
    const-string v0, "rowid"

    .line 452
    .line 453
    const/4 v6, 0x0

    .line 454
    move-object/from16 v7, v16

    .line 455
    .line 456
    move v5, v14

    .line 457
    move-object v14, v0

    .line 458
    move-object v0, v15

    .line 459
    move-object v15, v6

    .line 460
    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 461
    .line 462
    .line 463
    move-result-object v6
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 464
    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    if-eqz v3, :cond_11

    .line 469
    .line 470
    const/4 v3, 0x0

    .line 471
    :cond_f
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 472
    .line 473
    .line 474
    move-result-wide v7

    .line 475
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getBlob(I)[B

    .line 476
    .line 477
    .line 478
    move-result-object v0
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 479
    :try_start_b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/t6;->M()Lcom/google/android/gms/internal/measurement/s6;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    invoke-static {v9, v0}, Lcom/google/android/gms/measurement/internal/td;->W(Lcom/google/android/gms/internal/measurement/hc;[B)Lcom/google/android/gms/internal/measurement/hc;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Lcom/google/android/gms/internal/measurement/s6;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 488
    .line 489
    const/4 v9, 0x1

    .line 490
    :try_start_c
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v10

    .line 494
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/s6;->E(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/s6;

    .line 495
    .line 496
    .line 497
    const/4 v10, 0x2

    .line 498
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    .line 499
    .line 500
    .line 501
    move-result-wide v11

    .line 502
    invoke-virtual {v0, v11, v12}, Lcom/google/android/gms/internal/measurement/s6;->H(J)Lcom/google/android/gms/internal/measurement/s6;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/fb;->p()Lcom/google/android/gms/internal/measurement/hb;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    check-cast v0, Lcom/google/android/gms/internal/measurement/t6;

    .line 510
    .line 511
    invoke-virtual {v2, v7, v8, v0}, Lcom/google/android/gms/measurement/internal/ld;->a(JLcom/google/android/gms/internal/measurement/t6;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-nez v0, :cond_10

    .line 516
    .line 517
    goto/16 :goto_9

    .line 518
    .line 519
    :catch_1
    move-exception v0

    .line 520
    const/4 v9, 0x1

    .line 521
    const/4 v10, 0x2

    .line 522
    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 523
    .line 524
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    const-string v8, "Data loss. Failed to merge raw event. appId"

    .line 533
    .line 534
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v11

    .line 538
    invoke-virtual {v7, v8, v11, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    :cond_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-nez v0, :cond_f

    .line 546
    .line 547
    goto :goto_9

    .line 548
    :cond_11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    const-string v2, "Raw event data disappeared while in transaction. appId"

    .line 557
    .line 558
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 563
    .line 564
    .line 565
    goto :goto_9

    .line 566
    :catchall_0
    move-exception v0

    .line 567
    goto :goto_b

    .line 568
    :catch_2
    move-exception v0

    .line 569
    goto :goto_8

    .line 570
    :catch_3
    move-exception v0

    .line 571
    :try_start_d
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 572
    .line 573
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    const-string v5, "Data loss. Failed to merge raw event metadata. appId"

    .line 582
    .line 583
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v6

    .line 587
    invoke-virtual {v2, v5, v6, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 588
    .line 589
    .line 590
    goto :goto_a

    .line 591
    :catchall_1
    move-exception v0

    .line 592
    move-object v6, v3

    .line 593
    goto :goto_b

    .line 594
    :catch_4
    move-exception v0

    .line 595
    move-object/from16 v4, p1

    .line 596
    .line 597
    :goto_7
    move-object v6, v3

    .line 598
    goto :goto_8

    .line 599
    :catchall_2
    move-exception v0

    .line 600
    const/4 v9, 0x0

    .line 601
    move-object v6, v9

    .line 602
    goto :goto_b

    .line 603
    :catch_5
    move-exception v0

    .line 604
    const/4 v9, 0x0

    .line 605
    move-object/from16 v4, p1

    .line 606
    .line 607
    move-object v6, v9

    .line 608
    :goto_8
    :try_start_e
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 609
    .line 610
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 611
    .line 612
    .line 613
    move-result-object v2

    .line 614
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    const-string v3, "Data loss. Error selecting raw event. appId"

    .line 619
    .line 620
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 625
    .line 626
    .line 627
    :goto_9
    move-object v3, v6

    .line 628
    :goto_a
    if-eqz v3, :cond_12

    .line 629
    .line 630
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 631
    .line 632
    .line 633
    :cond_12
    return-void

    .line 634
    :goto_b
    if-eqz v6, :cond_13

    .line 635
    .line 636
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 637
    .line 638
    .line 639
    :cond_13
    throw v0
.end method

.method public final o(Ljava/lang/String;Li6/g0;I)Ljava/util/List;
    .locals 33

    .line 1
    invoke-static/range {p1 .. p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 8
    .line 9
    .line 10
    const-string v0, " AND NOT "

    .line 11
    .line 12
    const-string v1, "app_id=?"

    .line 13
    .line 14
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v4, "upload_queue"

    .line 19
    .line 20
    const/16 v5, 0xa

    .line 21
    .line 22
    new-array v5, v5, [Ljava/lang/String;

    .line 23
    .line 24
    const-string v6, "rowId"

    .line 25
    .line 26
    const/4 v12, 0x0

    .line 27
    aput-object v6, v5, v12

    .line 28
    .line 29
    const-string v6, "app_id"

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    aput-object v6, v5, v7

    .line 33
    .line 34
    const-string v6, "measurement_batch"

    .line 35
    .line 36
    const/4 v13, 0x2

    .line 37
    aput-object v6, v5, v13

    .line 38
    .line 39
    const-string v6, "upload_uri"

    .line 40
    .line 41
    const/4 v14, 0x3

    .line 42
    aput-object v6, v5, v14

    .line 43
    .line 44
    const-string v6, "upload_headers"

    .line 45
    .line 46
    const/4 v15, 0x4

    .line 47
    aput-object v6, v5, v15

    .line 48
    .line 49
    const-string v6, "upload_type"

    .line 50
    .line 51
    const/4 v11, 0x5

    .line 52
    aput-object v6, v5, v11

    .line 53
    .line 54
    const-string v6, "retry_count"

    .line 55
    .line 56
    const/4 v10, 0x6

    .line 57
    aput-object v6, v5, v10

    .line 58
    .line 59
    const-string v6, "creation_timestamp"

    .line 60
    .line 61
    const/4 v9, 0x7

    .line 62
    aput-object v6, v5, v9

    .line 63
    .line 64
    const-string v6, "associated_row_id"

    .line 65
    .line 66
    const/16 v8, 0x8

    .line 67
    .line 68
    aput-object v6, v5, v8

    .line 69
    .line 70
    const-string v6, "last_upload_timestamp"

    .line 71
    .line 72
    const/16 v7, 0x9

    .line 73
    .line 74
    aput-object v6, v5, v7

    .line 75
    .line 76
    move-object/from16 v6, p2

    .line 77
    .line 78
    iget-object v6, v6, Li6/g0;->a:Ljava/util/List;

    .line 79
    .line 80
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/u;->T(Ljava/util/List;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->S()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v16

    .line 92
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result v16

    .line 96
    add-int/lit8 v16, v16, 0x11

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v17

    .line 102
    add-int v7, v16, v17

    .line 103
    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const-string v0, "creation_timestamp ASC"

    .line 130
    .line 131
    if-lez p3, :cond_0

    .line 132
    .line 133
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    goto :goto_0

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 139
    :goto_0
    const/4 v8, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    move-object v9, v2

    .line 142
    move v2, v10

    .line 143
    move-object v10, v0

    .line 144
    move v0, v11

    .line 145
    move-object v11, v1

    .line 146
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 147
    .line 148
    .line 149
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .line 154
    .line 155
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_2

    .line 160
    .line 161
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 162
    .line 163
    .line 164
    move-result-wide v20

    .line 165
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getBlob(I)[B

    .line 166
    .line 167
    .line 168
    move-result-object v22

    .line 169
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v23

    .line 173
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v24

    .line 177
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 178
    .line 179
    .line 180
    move-result v25

    .line 181
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 182
    .line 183
    .line 184
    move-result v26

    .line 185
    const/4 v4, 0x7

    .line 186
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v27

    .line 190
    const/16 v5, 0x8

    .line 191
    .line 192
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v29

    .line 196
    const/16 v6, 0x9

    .line 197
    .line 198
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 199
    .line 200
    .line 201
    move-result-wide v31

    .line 202
    move-object/from16 v18, p0

    .line 203
    .line 204
    move-object/from16 v19, p1

    .line 205
    .line 206
    invoke-direct/range {v18 .. v32}, Lcom/google/android/gms/measurement/internal/u;->R(Ljava/lang/String;J[BLjava/lang/String;Ljava/lang/String;IIJJJ)Lcom/google/android/gms/measurement/internal/sd;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    if-eqz v7, :cond_1

    .line 211
    .line 212
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_2
    move-object v2, v1

    .line 217
    move-object/from16 v1, p0

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :catchall_0
    move-exception v0

    .line 221
    move-object v2, v1

    .line 222
    goto :goto_2

    .line 223
    :catch_0
    move-exception v0

    .line 224
    move-object v2, v1

    .line 225
    goto :goto_3

    .line 226
    :catchall_1
    move-exception v0

    .line 227
    const/4 v2, 0x0

    .line 228
    :goto_2
    move-object/from16 v1, p0

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :catch_1
    move-exception v0

    .line 232
    const/4 v2, 0x0

    .line 233
    :goto_3
    move-object/from16 v1, p0

    .line 234
    .line 235
    :try_start_2
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    const-string v4, "Error to querying MeasurementBatch from upload_queue. appId"

    .line 246
    .line 247
    move-object/from16 v5, p1

    .line 248
    .line 249
    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 253
    .line 254
    .line 255
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 256
    :goto_4
    if-eqz v2, :cond_3

    .line 257
    .line 258
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 259
    .line 260
    .line 261
    :cond_3
    return-object v3

    .line 262
    :catchall_2
    move-exception v0

    .line 263
    :goto_5
    if-eqz v2, :cond_4

    .line 264
    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 266
    .line 267
    .line 268
    :cond_4
    throw v0
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 7

    .line 1
    sget-object v0, Li6/d0;->c:Li6/d0;

    .line 2
    .line 3
    filled-new-array {v0}, [Li6/d0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    aget-object v0, v0, v3

    .line 15
    .line 16
    invoke-virtual {v0}, Li6/d0;->zza()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/u;->T(Ljava/util/List;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/u;->S()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x3d

    .line 50
    .line 51
    add-int/2addr v4, v5

    .line 52
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const-string v4, "SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?"

    .line 56
    .line 57
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " AND NOT "

    .line 64
    .line 65
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    filled-new-array {p1}, [Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    const-wide/16 v4, 0x0

    .line 84
    .line 85
    cmp-long p1, v0, v4

    .line 86
    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    return v2

    .line 90
    :cond_0
    return v3
.end method

.method public final q(Ljava/lang/Long;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :try_start_0
    const-string v1, "upload_queue"

    .line 23
    .line 24
    const-string v2, "rowid=?"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v0, 0x1

    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "Deleted fewer rows from upload_queue than expected"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void

    .line 49
    :catch_0
    move-exception p1

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "Failed to delete a MeasurementBatch in a upload_queue table"

    .line 61
    .line 62
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public final r()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 7
    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 24
    .line 25
    .line 26
    return-object v1

    .line 27
    :catch_0
    move-exception v2

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :catch_1
    move-exception v0

    .line 32
    move-object v2, v0

    .line 33
    move-object v0, v1

    .line 34
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const-string v4, "Database error getting next bundle app id"

    .line 45
    .line 46
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    .line 48
    .line 49
    :cond_0
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-object v1

    .line 55
    :catchall_1
    move-exception v1

    .line 56
    move-object v5, v1

    .line 57
    move-object v1, v0

    .line 58
    move-object v0, v5

    .line 59
    :goto_1
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 62
    .line 63
    .line 64
    :cond_2
    throw v0
.end method

.method public final r0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s()Z
    .locals 4

    .line 1
    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final s0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final t(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    filled-new-array {p1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :try_start_0
    const-string p2, "queue"

    .line 20
    .line 21
    const-string v1, "rowid=?"

    .line 22
    .line 23
    invoke-virtual {v0, p2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 p2, 0x1

    .line 28
    if-ne p1, p2, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    .line 32
    .line 33
    const-string p2, "Deleted fewer rows from queue than expected"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v0, "Failed to delete a bundle in a queue table"

    .line 51
    .line 52
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final t0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method final u()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->a0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->L0()Lcom/google/android/gms/measurement/internal/xb;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/xb;->e:Lcom/google/android/gms/measurement/internal/a6;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/a6;->a()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-interface {v4}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    sub-long v1, v4, v1

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->r()J

    .line 46
    .line 47
    .line 48
    move-result-wide v6

    .line 49
    cmp-long v1, v1, v6

    .line 50
    .line 51
    if-lez v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->L0()Lcom/google/android/gms/measurement/internal/xb;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/xb;->e:Lcom/google/android/gms/measurement/internal/a6;

    .line 58
    .line 59
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/a6;->b(J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->a0()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Lcom/google/android/gms/measurement/internal/m;->q()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "queue"

    .line 106
    .line 107
    const-string v4, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 108
    .line 109
    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-lez v0, :cond_1

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "Deleted stale rows. rowsDeleted"

    .line 124
    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_1
    :goto_0
    return-void
.end method

.method final u0()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u;->d:Lcom/google/android/gms/measurement/internal/t;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/t;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object v0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Error opening database"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method final v(Ljava/util/List;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ln5/q;->m(I)I

    .line 15
    .line 16
    .line 17
    const-string v0, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    .line 18
    .line 19
    const-string v1, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->a0()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const-string v2, ","

    .line 29
    .line 30
    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x2

    .line 45
    .line 46
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 47
    .line 48
    .line 49
    const-string v2, "("

    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ")"

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x50

    .line 73
    .line 74
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .line 76
    .line 77
    const-string v2, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, " AND retry_count =  2147483647 LIMIT 1"

    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    const-wide/16 v4, 0x0

    .line 100
    .line 101
    cmp-long v2, v2, v4

    .line 102
    .line 103
    if-lez v2, :cond_1

    .line 104
    .line 105
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    add-int/lit8 v3, v3, 0x7f

    .line 129
    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    :catch_0
    move-exception p1

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-string v1, "Error incrementing retry count. error"

    .line 164
    .line 165
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final v0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;
    .locals 1

    .line 1
    const-string v0, "events"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/measurement/internal/u;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method final w(Ljava/lang/Long;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    const-string v0, " SET retry_count = retry_count + 1, last_upload_timestamp = "

    .line 11
    .line 12
    const-string v1, " AND retry_count < 2147483647"

    .line 13
    .line 14
    const-string v2, " WHERE rowid = "

    .line 15
    .line 16
    const-string v3, "UPDATE upload_queue"

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->a0()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    add-int/lit8 v4, v4, 0x56

    .line 36
    .line 37
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 38
    .line 39
    .line 40
    const-string v4, "SELECT COUNT(1) FROM upload_queue WHERE rowid = "

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, " AND retry_count =  2147483647 LIMIT 1"

    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/measurement/internal/u;->p0(Ljava/lang/String;[Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    const-wide/16 v6, 0x0

    .line 63
    .line 64
    cmp-long v4, v4, v6

    .line 65
    .line 66
    if-lez v4, :cond_1

    .line 67
    .line 68
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const-string v5, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-interface {v5}, Lcom/google/android/gms/common/util/d;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v5

    .line 97
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    add-int/lit8 v7, v7, 0x3c

    .line 106
    .line 107
    new-instance v8, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    add-int/lit8 v5, v5, 0x22

    .line 127
    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    add-int/2addr v5, v6

    .line 137
    add-int/lit8 v5, v5, 0x1d

    .line 138
    .line 139
    new-instance v6, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :catch_0
    move-exception p1

    .line 168
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    const-string v1, "Error incrementing retry count. error"

    .line 179
    .line 180
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public final w0(Lcom/google/android/gms/measurement/internal/c0;)V
    .locals 1

    .line 1
    const-string v0, "events"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/u;->P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/c0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method final x(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eq v0, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x4

    .line 18
    if-eq v0, p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v0, "Loaded invalid unknown value type, ignoring it"

    .line 35
    .line 36
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "Loaded invalid blob type value, ignoring it"

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1

    .line 61
    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1

    .line 70
    :cond_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1

    .line 79
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string p2, "Loaded invalid null value from database"

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-object v1
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "events_snapshot"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/u;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "events"

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    new-array v5, v11, [Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v5, v1

    .line 27
    check-cast v5, [Ljava/lang/String;

    .line 28
    .line 29
    const-string v6, "app_id=?"

    .line 30
    .line 31
    filled-new-array {p1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, 0x0

    .line 38
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    :cond_0
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    const-string v3, "events"

    .line 55
    .line 56
    invoke-direct {p0, v3, p1, v1}, Lcom/google/android/gms/measurement/internal/u;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/u;->P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/c0;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-nez v1, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v3, "Error creating snapshot. appId"

    .line 86
    .line 87
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {v1, v3, p1, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 95
    .line 96
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 97
    .line 98
    .line 99
    :cond_3
    return-void

    .line 100
    :goto_1
    if-eqz v2, :cond_4

    .line 101
    .line 102
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 103
    .line 104
    .line 105
    :cond_4
    throw p1
.end method

.method public final y()J
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const-string v3, "select max(bundle_end_timestamp) from queue"

    .line 5
    .line 6
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/u;->q0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public final y0(Ljava/lang/String;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "events_snapshot"

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    const-string v4, "lifetime_count"

    .line 10
    .line 11
    const-string v5, "name"

    .line 12
    .line 13
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    const-string v4, "events"

    .line 25
    .line 26
    const-string v5, "_f"

    .line 27
    .line 28
    invoke-direct {v1, v4, v2, v5}, Lcom/google/android/gms/measurement/internal/u;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    const-string v7, "_v"

    .line 33
    .line 34
    invoke-direct {v1, v4, v2, v7}, Lcom/google/android/gms/measurement/internal/u;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-direct {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/u;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    const-string v12, "events_snapshot"

    .line 48
    .line 49
    new-array v13, v10, [Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v0, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v13, v0

    .line 56
    check-cast v13, [Ljava/lang/String;

    .line 57
    .line 58
    const-string v14, "app_id=?"

    .line 59
    .line 60
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    const/16 v18, 0x0

    .line 69
    .line 70
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    .line 76
    .line 77
    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 81
    .line 82
    .line 83
    if-eqz v6, :cond_0

    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_0
    if-eqz v8, :cond_8

    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_1
    move v11, v10

    .line 92
    move v12, v11

    .line 93
    :cond_2
    :try_start_1
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/4 v13, 0x1

    .line 98
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v14

    .line 102
    const-wide/16 v16, 0x1

    .line 103
    .line 104
    cmp-long v14, v14, v16

    .line 105
    .line 106
    if-ltz v14, :cond_4

    .line 107
    .line 108
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    if-eqz v14, :cond_3

    .line 113
    .line 114
    move v11, v13

    .line 115
    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v14

    .line 120
    if-eqz v14, :cond_4

    .line 121
    .line 122
    move v12, v13

    .line 123
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 124
    .line 125
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/u;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    invoke-direct {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/u;->P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/c0;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 135
    .line 136
    .line 137
    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    if-nez v0, :cond_2

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    move v10, v11

    .line 143
    goto :goto_6

    .line 144
    :catch_0
    move-exception v0

    .line 145
    move v10, v11

    .line 146
    goto :goto_1

    .line 147
    :catchall_1
    move-exception v0

    .line 148
    move v12, v10

    .line 149
    goto :goto_6

    .line 150
    :catch_1
    move-exception v0

    .line 151
    move v12, v10

    .line 152
    :goto_1
    :try_start_2
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 153
    .line 154
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    const-string v7, "Error querying snapshot. appId"

    .line 163
    .line 164
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v5, v7, v11, v0}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 169
    .line 170
    .line 171
    move v11, v10

    .line 172
    :goto_2
    if-eqz v9, :cond_6

    .line 173
    .line 174
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 175
    .line 176
    .line 177
    :cond_6
    if-nez v11, :cond_7

    .line 178
    .line 179
    if-eqz v6, :cond_7

    .line 180
    .line 181
    :goto_3
    invoke-direct {v1, v4, v6}, Lcom/google/android/gms/measurement/internal/u;->P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/c0;)V

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_7
    if-nez v12, :cond_8

    .line 186
    .line 187
    if-eqz v8, :cond_8

    .line 188
    .line 189
    :goto_4
    invoke-direct {v1, v4, v8}, Lcom/google/android/gms/measurement/internal/u;->P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/c0;)V

    .line 190
    .line 191
    .line 192
    :cond_8
    :goto_5
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/u;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :catchall_2
    move-exception v0

    .line 197
    :goto_6
    if-eqz v9, :cond_9

    .line 198
    .line 199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 200
    .line 201
    .line 202
    :cond_9
    if-nez v10, :cond_b

    .line 203
    .line 204
    if-nez v6, :cond_a

    .line 205
    .line 206
    goto :goto_7

    .line 207
    :cond_a
    invoke-direct {v1, v4, v6}, Lcom/google/android/gms/measurement/internal/u;->P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/c0;)V

    .line 208
    .line 209
    .line 210
    goto :goto_8

    .line 211
    :cond_b
    :goto_7
    if-nez v12, :cond_c

    .line 212
    .line 213
    if-eqz v8, :cond_c

    .line 214
    .line 215
    invoke-direct {v1, v4, v8}, Lcom/google/android/gms/measurement/internal/u;->P(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/c0;)V

    .line 216
    .line 217
    .line 218
    :cond_c
    :goto_8
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/u;->Q(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v0
.end method

.method protected final z(Ljava/lang/String;Ljava/lang/String;)J
    .locals 13

    .line 1
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    const-string p2, "first_open_count"

    .line 5
    .line 6
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 20
    .line 21
    .line 22
    const-string v1, " from app2 where app_id=?"

    .line 23
    .line 24
    const-string v2, "select "

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const/16 v6, 0x30

    .line 31
    .line 32
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    filled-new-array {p1}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-wide/16 v5, -0x1

    .line 53
    .line 54
    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/u;->q0(Ljava/lang/String;[Ljava/lang/String;J)J

    .line 55
    .line 56
    .line 57
    move-result-wide v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    cmp-long v7, v1, v5

    .line 59
    .line 60
    const-string v8, "app2"

    .line 61
    .line 62
    const-string v9, "app_id"

    .line 63
    .line 64
    if-nez v7, :cond_1

    .line 65
    .line 66
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    .line 67
    .line 68
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    .line 81
    .line 82
    const-string v7, "previous_install_count"

    .line 83
    .line 84
    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    .line 86
    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v7, 0x5

    .line 89
    invoke-virtual {v0, v8, v2, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v1

    .line 93
    cmp-long v1, v1, v5

    .line 94
    .line 95
    if-nez v1, :cond_0

    .line 96
    .line 97
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "Failed to insert column (got -1). appId"

    .line 108
    .line 109
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v1, v2, v7, p2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_0
    move-wide v1, v3

    .line 118
    :cond_1
    :try_start_2
    new-instance v7, Landroid/content/ContentValues;

    .line 119
    .line 120
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-wide/16 v9, 0x1

    .line 127
    .line 128
    add-long/2addr v9, v1

    .line 129
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object v9

    .line 133
    invoke-virtual {v7, p2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    .line 135
    .line 136
    const-string v9, "app_id = ?"

    .line 137
    .line 138
    filled-new-array {p1}, [Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    int-to-long v7, v7

    .line 147
    cmp-long v3, v7, v3

    .line 148
    .line 149
    if-nez v3, :cond_2

    .line 150
    .line 151
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    const-string v4, "Failed to update column (got 0). appId"

    .line 162
    .line 163
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-virtual {v3, v4, v7, p2}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :catch_0
    move-exception v3

    .line 176
    goto :goto_0

    .line 177
    :catchall_0
    move-exception p1

    .line 178
    goto :goto_3

    .line 179
    :catch_1
    move-exception v1

    .line 180
    move-wide v11, v3

    .line 181
    move-object v3, v1

    .line 182
    move-wide v1, v11

    .line 183
    :goto_0
    :try_start_3
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 184
    .line 185
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    const-string v5, "Error inserting column. appId"

    .line 194
    .line 195
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {v4, v5, p1, p2, v3}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .line 201
    .line 202
    :goto_1
    move-wide v5, v1

    .line 203
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 204
    .line 205
    .line 206
    return-wide v5

    .line 207
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 208
    .line 209
    .line 210
    throw p1
.end method

.method public final z0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ln5/q;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ad;->j()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/u;->u0()Landroid/database/sqlite/SQLiteDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "user_attributes"

    .line 18
    .line 19
    const-string v2, "app_id=? and name=?"

    .line 20
    .line 21
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, p2}, Lcom/google/android/gms/measurement/internal/i5;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    const-string v1, "Error deleting user property. appId"

    .line 53
    .line 54
    invoke-virtual {v2, v1, p1, p2, v0}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
