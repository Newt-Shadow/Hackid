package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.nf;
import com.google.android.gms.internal.measurement.oe;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.tika.metadata.ClimateForcast;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u extends ad {

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f8061f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* renamed from: g  reason: collision with root package name */
    static final String[] f8062g = {"associated_row_id", "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;", "last_upload_timestamp", "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"};

    /* renamed from: h  reason: collision with root package name */
    private static final String[] f8063h = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* renamed from: i  reason: collision with root package name */
    private static final String[] f8064i = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;", "client_upload_eligibility", "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;", "gmp_version_for_remote_config", "ALTER TABLE apps ADD COLUMN gmp_version_for_remote_config INTEGER;"};

    /* renamed from: j  reason: collision with root package name */
    private static final String[] f8065j = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* renamed from: k  reason: collision with root package name */
    private static final String[] f8066k = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* renamed from: l  reason: collision with root package name */
    private static final String[] f8067l = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: m  reason: collision with root package name */
    private static final String[] f8068m = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* renamed from: n  reason: collision with root package name */
    private static final String[] f8069n = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* renamed from: o  reason: collision with root package name */
    private static final String[] f8070o = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};

    /* renamed from: p  reason: collision with root package name */
    private static final String[] f8071p = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};

    /* renamed from: d  reason: collision with root package name */
    private final t f8072d;

    /* renamed from: e  reason: collision with root package name */
    private final qc f8073e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(pd pdVar) {
        super(pdVar);
        this.f8073e = new qc(this.f8322a.f());
        this.f8322a.w();
        this.f8072d = new t(this, this.f8322a.e(), "google_app_measurement.db");
    }

    private final String M(String str, String[] strArr, String str2) {
        Cursor cursor = null;
        try {
            try {
                cursor = u0().rawQuery(str, strArr);
                if (cursor.moveToFirst()) {
                    String string = cursor.getString(0);
                    cursor.close();
                    return string;
                }
                cursor.close();
                return "";
            } catch (SQLiteException e10) {
                this.f8322a.a().o().c("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private final void N(String str, String str2, ContentValues contentValues) {
        try {
            SQLiteDatabase u02 = u0();
            String asString = contentValues.getAsString(CommonUrlParts.APP_ID);
            if (asString == null) {
                this.f8322a.a().q().b("Value of the primary key is not set.", p5.x(CommonUrlParts.APP_ID));
                return;
            }
            StringBuilder sb2 = new StringBuilder(10);
            sb2.append(CommonUrlParts.APP_ID);
            sb2.append(" = ?");
            if (u02.update("consent_settings", contentValues, sb2.toString(), new String[]{asString}) == 0 && u02.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                this.f8322a.a().o().c("Failed to insert/update table (got -1). key", p5.x("consent_settings"), p5.x(CommonUrlParts.APP_ID));
            }
        } catch (SQLiteException e10) {
            this.f8322a.a().o().d("Error storing into table. key", p5.x("consent_settings"), p5.x(CommonUrlParts.APP_ID), e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x012f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.measurement.internal.c0 O(java.lang.String r30, java.lang.String r31, java.lang.String r32) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.O(java.lang.String, java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.c0");
    }

    private final void P(String str, c0 c0Var) {
        Long l10;
        n5.q.k(c0Var);
        h();
        j();
        ContentValues contentValues = new ContentValues();
        String str2 = c0Var.f7309a;
        contentValues.put(CommonUrlParts.APP_ID, str2);
        contentValues.put(Constants.NAME, c0Var.f7310b);
        contentValues.put("lifetime_count", Long.valueOf(c0Var.f7311c));
        contentValues.put("current_bundle_count", Long.valueOf(c0Var.f7312d));
        contentValues.put("last_fire_timestamp", Long.valueOf(c0Var.f7314f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(c0Var.f7315g));
        contentValues.put("last_bundled_day", c0Var.f7316h);
        contentValues.put("last_sampled_complex_event_id", c0Var.f7317i);
        contentValues.put("last_sampling_rate", c0Var.f7318j);
        contentValues.put("current_session_count", Long.valueOf(c0Var.f7313e));
        Boolean bool = c0Var.f7319k;
        if (bool != null && bool.booleanValue()) {
            l10 = 1L;
        } else {
            l10 = null;
        }
        contentValues.put("last_exempt_from_sampling", l10);
        try {
            if (u0().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                this.f8322a.a().o().b("Failed to insert/update event aggregates (got -1). appId", p5.x(str2));
            }
        } catch (SQLiteException e10) {
            this.f8322a.a().o().c("Error storing event aggregates. appId", p5.x(c0Var.f7309a), e10);
        }
    }

    private final void Q(String str, String str2) {
        n5.q.e(str2);
        h();
        j();
        try {
            u0().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e10) {
            this.f8322a.a().o().c("Error deleting snapshot. appId", p5.x(str2), e10);
        }
    }

    private final sd R(String str, long j10, byte[] bArr, String str2, String str3, int i10, int i11, long j11, long j12, long j13) {
        if (TextUtils.isEmpty(str2)) {
            this.f8322a.a().v().a("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
            return null;
        }
        try {
            com.google.android.gms.internal.measurement.a7 a7Var = (com.google.android.gms.internal.measurement.a7) td.W(com.google.android.gms.internal.measurement.d7.J(), bArr);
            i6.d0 a10 = i6.d0.a(i10);
            if (a10 != i6.d0.GOOGLE_SIGNAL && a10 != i6.d0.GOOGLE_SIGNAL_PENDING && i11 > 0) {
                ArrayList arrayList = new ArrayList();
                for (com.google.android.gms.internal.measurement.f7 f7Var : a7Var.t()) {
                    com.google.android.gms.internal.measurement.e7 e7Var = (com.google.android.gms.internal.measurement.e7) f7Var.p();
                    e7Var.C0(i11);
                    arrayList.add((com.google.android.gms.internal.measurement.f7) e7Var.p());
                }
                a7Var.z();
                a7Var.y(arrayList);
            }
            HashMap hashMap = new HashMap();
            if (str3 != null) {
                String[] split = str3.split("\r\n");
                int length = split.length;
                int i12 = 0;
                while (true) {
                    if (i12 >= length) {
                        break;
                    }
                    String str4 = split[i12];
                    if (str4.isEmpty()) {
                        break;
                    }
                    String[] split2 = str4.split("=", 2);
                    if (split2.length != 2) {
                        this.f8322a.a().o().b("Invalid upload header: ", str4);
                        break;
                    }
                    hashMap.put(split2[0], split2[1]);
                    i12++;
                }
            }
            rd rdVar = new rd();
            rdVar.b(j10);
            rdVar.c((com.google.android.gms.internal.measurement.d7) a7Var.p());
            rdVar.d(str2);
            rdVar.e(hashMap);
            rdVar.f(a10);
            rdVar.g(j11);
            rdVar.h(j12);
            rdVar.i(j13);
            rdVar.j(i11);
            return rdVar.a();
        } catch (IOException e10) {
            this.f8322a.a().o().c("Failed to queued MeasurementBatch from upload_queue. appId", str, e10);
            return null;
        }
    }

    private final String S() {
        w6 w6Var = this.f8322a;
        long currentTimeMillis = w6Var.f().currentTimeMillis();
        Locale locale = Locale.US;
        i6.d0 d0Var = i6.d0.GOOGLE_SIGNAL;
        Integer valueOf = Integer.valueOf(d0Var.zza());
        Long valueOf2 = Long.valueOf(currentTimeMillis);
        w6Var.w();
        String format = String.format(locale, "(upload_type = %d AND ABS(creation_timestamp - %d) > %d)", valueOf, valueOf2, Long.valueOf(((Long) c5.T.b(null)).longValue()));
        Integer valueOf3 = Integer.valueOf(d0Var.zza());
        w6Var.w();
        String format2 = String.format(locale, "(upload_type != %d AND ABS(creation_timestamp - %d) > %d)", valueOf3, valueOf2, Long.valueOf(m.q()));
        StringBuilder sb2 = new StringBuilder(String.valueOf(format).length() + 5 + String.valueOf(format2).length() + 1);
        sb2.append("(");
        sb2.append(format);
        sb2.append(" OR ");
        sb2.append(format2);
        sb2.append(")");
        return sb2.toString();
    }

    private static final String T(List list) {
        if (list.isEmpty()) {
            return "";
        }
        return String.format(" AND (upload_type IN (%s))", TextUtils.join(", ", list));
    }

    static final void o0(ContentValues contentValues, String str, Object obj) {
        n5.q.e("value");
        n5.q.k(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else if (obj instanceof Double) {
            contentValues.put("value", (Double) obj);
        } else {
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    private final long p0(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor rawQuery = u0().rawQuery(str, strArr);
                if (rawQuery.moveToFirst()) {
                    long j10 = rawQuery.getLong(0);
                    rawQuery.close();
                    return j10;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e10) {
                this.f8322a.a().o().c("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long q0(String str, String[] strArr, long j10) {
        Cursor cursor = null;
        try {
            try {
                cursor = u0().rawQuery(str, strArr);
                if (cursor.moveToFirst()) {
                    j10 = cursor.getLong(0);
                }
                cursor.close();
                return j10;
            } catch (SQLiteException e10) {
                this.f8322a.a().o().c("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public final long A() {
        return q0("select max(timestamp) from raw_events", null, 0L);
    }

    public final boolean A0(wd wdVar) {
        n5.q.k(wdVar);
        h();
        j();
        String str = wdVar.f8224a;
        String str2 = wdVar.f8226c;
        if (B0(str, str2) == null) {
            if (yd.r0(str2)) {
                if (p0("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str}) >= this.f8322a.w().F(str, c5.W, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(str2)) {
                long p02 = p0("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str, wdVar.f8225b});
                this.f8322a.w();
                if (p02 >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("origin", wdVar.f8225b);
        contentValues.put(Constants.NAME, str2);
        contentValues.put("set_timestamp", Long.valueOf(wdVar.f8227d));
        o0(contentValues, "value", wdVar.f8228e);
        try {
            if (u0().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                this.f8322a.a().o().b("Failed to insert/update user property (got -1). appId", p5.x(str));
                return true;
            }
            return true;
        } catch (SQLiteException e10) {
            this.f8322a.a().o().c("Error storing user property. appId", p5.x(wdVar.f8224a), e10);
            return true;
        }
    }

    public final boolean B() {
        if (p0("select count(1) > 0 from raw_events", null) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0099: MOVE  (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:26:0x0099 */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.wd B0(java.lang.String r15, java.lang.String r16) {
        /*
            r14 = this;
            r1 = r14
            n5.q.e(r15)
            n5.q.e(r16)
            r14.h()
            r14.j()
            r2 = 0
            android.database.sqlite.SQLiteDatabase r3 = r14.u0()     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            java.lang.String r4 = "user_attributes"
            r0 = 3
            java.lang.String[] r5 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            java.lang.String r0 = "set_timestamp"
            r11 = 0
            r5[r11] = r0     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            java.lang.String r0 = "value"
            r12 = 1
            r5[r12] = r0     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            java.lang.String r0 = "origin"
            r13 = 2
            r5[r13] = r0     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            java.lang.String r6 = "app_id=? and name=?"
            java.lang.String[] r7 = new java.lang.String[]{r15, r16}     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            r8 = 0
            r9 = 0
            r10 = 0
            android.database.Cursor r3 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            boolean r0 = r3.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            if (r0 != 0) goto L3a
            goto L92
        L3a:
            long r8 = r3.getLong(r11)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            java.lang.Object r10 = r14.x(r3, r12)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            if (r10 != 0) goto L45
            goto L92
        L45:
            java.lang.String r6 = r3.getString(r13)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            com.google.android.gms.measurement.internal.wd r0 = new com.google.android.gms.measurement.internal.wd     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            r4 = r0
            r5 = r15
            r7 = r16
            r4.<init>(r5, r6, r7, r8, r10)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            boolean r4 = r3.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            if (r4 == 0) goto L6b
            com.google.android.gms.measurement.internal.w6 r4 = r1.f8322a     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            com.google.android.gms.measurement.internal.p5 r4 = r4.a()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            com.google.android.gms.measurement.internal.n5 r4 = r4.o()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            java.lang.String r5 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.p5.x(r15)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
            r4.b(r5, r6)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L98
        L6b:
            r3.close()
            return r0
        L6f:
            r0 = move-exception
            goto L75
        L71:
            r0 = move-exception
            goto L9a
        L73:
            r0 = move-exception
            r3 = r2
        L75:
            com.google.android.gms.measurement.internal.w6 r4 = r1.f8322a     // Catch: java.lang.Throwable -> L98
            com.google.android.gms.measurement.internal.p5 r5 = r4.a()     // Catch: java.lang.Throwable -> L98
            com.google.android.gms.measurement.internal.n5 r5 = r5.o()     // Catch: java.lang.Throwable -> L98
            java.lang.String r6 = "Error querying user property. appId"
            java.lang.Object r7 = com.google.android.gms.measurement.internal.p5.x(r15)     // Catch: java.lang.Throwable -> L98
            com.google.android.gms.measurement.internal.i5 r4 = r4.D()     // Catch: java.lang.Throwable -> L98
            r8 = r16
            java.lang.String r4 = r4.c(r8)     // Catch: java.lang.Throwable -> L98
            r5.d(r6, r7, r4, r0)     // Catch: java.lang.Throwable -> L98
        L92:
            if (r3 == 0) goto L97
            r3.close()
        L97:
            return r2
        L98:
            r0 = move-exception
            r2 = r3
        L9a:
            if (r2 == 0) goto L9f
            r2.close()
        L9f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.B0(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.wd");
    }

    public final boolean C(String str, String str2) {
        if (p0("select count(1) from raw_events where app_id = ? and name = ?", new String[]{str, str2}) > 0) {
            return true;
        }
        return false;
    }

    public final List C0(String str) {
        n5.q.e(str);
        h();
        j();
        List arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase u02 = u0();
                String[] strArr = {Constants.NAME, "origin", "set_timestamp", "value"};
                w6 w6Var = this.f8322a;
                w6Var.w();
                cursor = u02.query("user_attributes", strArr, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (cursor.moveToFirst()) {
                    do {
                        String string = cursor.getString(0);
                        String string2 = cursor.getString(1);
                        if (string2 == null) {
                            string2 = "";
                        }
                        String str2 = string2;
                        long j10 = cursor.getLong(2);
                        Object x10 = x(cursor, 3);
                        if (x10 == null) {
                            w6Var.a().o().b("Read invalid user property value, ignoring it. appId", p5.x(str));
                        } else {
                            arrayList.add(new wd(str, str2, string, j10, x10));
                        }
                    } while (cursor.moveToNext());
                }
            } catch (SQLiteException e10) {
                this.f8322a.a().o().c("Error querying user properties. appId", p5.x(str), e10);
                arrayList = Collections.emptyList();
            }
            return arrayList;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public final boolean D() {
        if (p0("select count(1) > 0 from raw_events where realtime = 1", null) != 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x00bc, code lost:
        r0 = r5.a().o();
        r5.w();
        r0.b("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List D0(java.lang.String r23, java.lang.String r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.D0(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final long E(String str) {
        n5.q.e(str);
        return q0("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    public final boolean E0(i iVar) {
        n5.q.k(iVar);
        h();
        j();
        String str = iVar.f7611a;
        n5.q.k(str);
        if (B0(str, iVar.f7613c.f8095b) == null) {
            long p02 = p0("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.f8322a.w();
            if (p02 >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("origin", iVar.f7612b);
        contentValues.put(Constants.NAME, iVar.f7613c.f8095b);
        o0(contentValues, "value", n5.q.k(iVar.f7613c.g()));
        contentValues.put("active", Boolean.valueOf(iVar.f7615e));
        contentValues.put("trigger_event_name", iVar.f7616f);
        contentValues.put("trigger_timeout", Long.valueOf(iVar.f7618h));
        w6 w6Var = this.f8322a;
        contentValues.put("timed_out_event", w6Var.C().T(iVar.f7617g));
        contentValues.put("creation_timestamp", Long.valueOf(iVar.f7614d));
        contentValues.put("triggered_event", w6Var.C().T(iVar.f7619i));
        contentValues.put("triggered_timestamp", Long.valueOf(iVar.f7613c.f8096c));
        contentValues.put("time_to_live", Long.valueOf(iVar.f7620j));
        contentValues.put("expired_event", w6Var.C().T(iVar.f7621k));
        try {
            if (u0().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                w6Var.a().o().b("Failed to insert/update conditional user property (got -1)", p5.x(str));
                return true;
            }
            return true;
        } catch (SQLiteException e10) {
            this.f8322a.a().o().c("Error storing conditional user property", p5.x(str), e10);
            return true;
        }
    }

    public final boolean F(String str, Long l10, long j10, com.google.android.gms.internal.measurement.t6 t6Var) {
        h();
        j();
        n5.q.k(t6Var);
        n5.q.e(str);
        n5.q.k(l10);
        w6 w6Var = this.f8322a;
        byte[] e10 = t6Var.e();
        w6Var.a().w().c("Saving complex main event, appId, data size", w6Var.D().a(str), Integer.valueOf(e10.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("event_id", l10);
        contentValues.put("children_to_process", Long.valueOf(j10));
        contentValues.put("main_event", e10);
        try {
            if (u0().insertWithOnConflict("main_event_params", null, contentValues, 5) == -1) {
                w6Var.a().o().b("Failed to insert complex main event (got -1). appId", p5.x(str));
                return false;
            }
            return true;
        } catch (SQLiteException e11) {
            this.f8322a.a().o().c("Error storing complex main event. appId", p5.x(str), e11);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.i F0(java.lang.String r36, java.lang.String r37) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.F0(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.i");
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0082: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:26:0x0082 */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle G(java.lang.String r6) {
        /*
            r5 = this;
            r5.h()
            r5.j()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r5.u0()     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteException -> L6a
            java.lang.String r2 = "select parameters from default_event_params where app_id=?"
            java.lang.String[] r3 = new java.lang.String[]{r6}     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteException -> L6a
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L68 android.database.sqlite.SQLiteException -> L6a
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            if (r2 != 0) goto L2b
            com.google.android.gms.measurement.internal.w6 r6 = r5.f8322a     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.p5 r6 = r6.a()     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.n5 r6 = r6.w()     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            java.lang.String r2 = "Default event parameters not found"
            r6.a(r2)     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            goto L7b
        L2b:
            r2 = 0
            byte[] r2 = r1.getBlob(r2)     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.s6 r3 = com.google.android.gms.internal.measurement.t6.M()     // Catch: java.io.IOException -> L51 android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.hc r2 = com.google.android.gms.measurement.internal.td.W(r3, r2)     // Catch: java.io.IOException -> L51 android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.s6 r2 = (com.google.android.gms.internal.measurement.s6) r2     // Catch: java.io.IOException -> L51 android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.hb r2 = r2.p()     // Catch: java.io.IOException -> L51 android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.internal.measurement.t6 r2 = (com.google.android.gms.internal.measurement.t6) r2     // Catch: java.io.IOException -> L51 android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.pd r6 = r5.f8149b     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            r6.K0()     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            java.util.List r6 = r2.C()     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            android.os.Bundle r6 = com.google.android.gms.measurement.internal.td.q(r6)     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            r1.close()
            return r6
        L51:
            r2 = move-exception
            com.google.android.gms.measurement.internal.w6 r3 = r5.f8322a     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.p5 r3 = r3.a()     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.n5 r3 = r3.o()     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            java.lang.String r4 = "Failed to retrieve default event parameters. appId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.p5.x(r6)     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            r3.c(r4, r6, r2)     // Catch: android.database.sqlite.SQLiteException -> L66 java.lang.Throwable -> L81
            goto L7b
        L66:
            r6 = move-exception
            goto L6c
        L68:
            r6 = move-exception
            goto L83
        L6a:
            r6 = move-exception
            r1 = r0
        L6c:
            com.google.android.gms.measurement.internal.w6 r2 = r5.f8322a     // Catch: java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.p5 r2 = r2.a()     // Catch: java.lang.Throwable -> L81
            com.google.android.gms.measurement.internal.n5 r2 = r2.o()     // Catch: java.lang.Throwable -> L81
            java.lang.String r3 = "Error selecting default event parameters"
            r2.b(r3, r6)     // Catch: java.lang.Throwable -> L81
        L7b:
            if (r1 == 0) goto L80
            r1.close()
        L80:
            return r0
        L81:
            r6 = move-exception
            r0 = r1
        L83:
            if (r0 == 0) goto L88
            r0.close()
        L88:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.G(java.lang.String):android.os.Bundle");
    }

    public final int G0(String str, String str2) {
        n5.q.e(str);
        n5.q.e(str2);
        h();
        j();
        try {
            return u0().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            w6 w6Var = this.f8322a;
            w6Var.a().o().d("Error deleting conditional property", p5.x(str), w6Var.D().c(str2), e10);
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean H(String str, long j10) {
        try {
            if (q0("select count(*) from raw_events where app_id=? and timestamp >= ? and name not like '!_%' escape '!' limit 1;", new String[]{str, String.valueOf(j10)}, 0L) > 0) {
                return false;
            }
            if (q0("select count(*) from raw_events where app_id=? and timestamp >= ? and name like '!_%' escape '!' limit 1;", new String[]{str, String.valueOf(j10)}, 0L) <= 0) {
                return false;
            }
            return true;
        } catch (SQLiteException e10) {
            this.f8322a.a().o().b("Error checking backfill conditions", e10);
            return false;
        }
    }

    public final List H0(String str, String str2, String str3) {
        n5.q.e(str);
        h();
        j();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb2 = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb2.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb2.append(" and name glob ?");
        }
        return I0(sb2.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0126 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02b8 A[Catch: SQLiteException -> 0x02ce, TRY_LEAVE, TryCatch #5 {SQLiteException -> 0x02ce, blocks: (B:89:0x029d, B:91:0x02b8), top: B:106:0x029d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void I(java.lang.String r26, java.lang.Long r27, java.lang.String r28, android.os.Bundle r29) {
        /*
            Method dump skipped, instructions count: 753
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.I(java.lang.String, java.lang.Long, java.lang.String, android.os.Bundle):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x008f, code lost:
        r3 = r5.a().o();
        r5.w();
        r3.b("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0161  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List I0(java.lang.String r40, java.lang.String[] r41) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.I0(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
        if (r5 == 0) goto L10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v9, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.d8 J(java.lang.String r5) {
        /*
            r4 = this;
            n5.q.k(r5)
            r4.h()
            r4.j()
            java.lang.String[] r5 = new java.lang.String[]{r5}
            java.lang.String r0 = "select consent_state, consent_source from consent_settings where app_id=? limit 1;"
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r4.u0()     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L42
            android.database.Cursor r5 = r2.rawQuery(r0, r5)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L42
            boolean r0 = r5.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L5f
            if (r0 != 0) goto L2e
            com.google.android.gms.measurement.internal.w6 r0 = r4.f8322a     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L5f
            com.google.android.gms.measurement.internal.p5 r0 = r0.a()     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L5f
            com.google.android.gms.measurement.internal.n5 r0 = r0.w()     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L5f
            java.lang.String r2 = "No data found"
            r0.a(r2)     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L5f
            goto L56
        L2e:
            r0 = 0
            java.lang.String r0 = r5.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L5f
            r2 = 1
            int r2 = r5.getInt(r2)     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L5f
            com.google.android.gms.measurement.internal.d8 r1 = com.google.android.gms.measurement.internal.d8.f(r0, r2)     // Catch: android.database.sqlite.SQLiteException -> L3d java.lang.Throwable -> L5f
            goto L56
        L3d:
            r0 = move-exception
            goto L45
        L3f:
            r5 = move-exception
            r0 = r5
            goto L61
        L42:
            r5 = move-exception
            r0 = r5
            r5 = r1
        L45:
            com.google.android.gms.measurement.internal.w6 r2 = r4.f8322a     // Catch: java.lang.Throwable -> L5f
            com.google.android.gms.measurement.internal.p5 r2 = r2.a()     // Catch: java.lang.Throwable -> L5f
            com.google.android.gms.measurement.internal.n5 r2 = r2.o()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r3 = "Error querying database."
            r2.b(r3, r0)     // Catch: java.lang.Throwable -> L5f
            if (r5 == 0) goto L59
        L56:
            r5.close()
        L59:
            if (r1 != 0) goto L5e
            com.google.android.gms.measurement.internal.d8 r5 = com.google.android.gms.measurement.internal.d8.f7442c
            return r5
        L5e:
            return r1
        L5f:
            r0 = move-exception
            r1 = r5
        L61:
            if (r1 == 0) goto L66
            r1.close()
        L66:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.J(java.lang.String):com.google.android.gms.measurement.internal.d8");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0209 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0255 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0264 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0280 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0291 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02d2 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02ec A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0302 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x032d A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0344 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0357 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0373 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0383 A[Catch: SQLiteException -> 0x0398, all -> 0x03b9, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x0398, blocks: (B:4:0x013b, B:7:0x0143, B:9:0x015a, B:10:0x0161, B:12:0x0174, B:13:0x017b, B:15:0x01ba, B:20:0x01c4, B:24:0x020e, B:26:0x023d, B:31:0x0247, B:35:0x0259, B:37:0x0264, B:38:0x0276, B:40:0x0280, B:41:0x0289, B:43:0x0291, B:47:0x029a, B:49:0x02d2, B:50:0x02e4, B:52:0x02ec, B:56:0x02f5, B:63:0x030d, B:67:0x0339, B:69:0x0344, B:70:0x034f, B:72:0x0357, B:73:0x0362, B:75:0x0373, B:76:0x037a, B:78:0x0383, B:66:0x032d, B:59:0x0302, B:62:0x0309, B:34:0x0255, B:23:0x0209), top: B:97:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x03b4  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.v5 J0(java.lang.String r29) {
        /*
            Method dump skipped, instructions count: 961
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.J0(java.lang.String):com.google.android.gms.measurement.internal.v5");
    }

    public final boolean K(String str, rc rcVar) {
        h();
        j();
        n5.q.k(rcVar);
        n5.q.e(str);
        w6 w6Var = this.f8322a;
        long currentTimeMillis = w6Var.f().currentTimeMillis();
        b5 b5Var = c5.f7381w0;
        long j10 = rcVar.f7975b;
        if (j10 < currentTimeMillis - ((Long) b5Var.b(null)).longValue() || j10 > ((Long) b5Var.b(null)).longValue() + currentTimeMillis) {
            w6Var.a().r().d("Storing trigger URI outside of the max retention time span. appId, now, timestamp", p5.x(str), Long.valueOf(currentTimeMillis), Long.valueOf(j10));
        }
        w6Var.a().w().a("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("trigger_uri", rcVar.f7974a);
        contentValues.put(ClimateForcast.SOURCE, Integer.valueOf(rcVar.f7976c));
        contentValues.put("timestamp_millis", Long.valueOf(j10));
        try {
            if (u0().insert("trigger_uris", null, contentValues) == -1) {
                w6Var.a().o().b("Failed to insert trigger URI (got -1). appId", p5.x(str));
                return false;
            }
            return true;
        } catch (SQLiteException e10) {
            this.f8322a.a().o().c("Error storing trigger URI. appId", p5.x(str), e10);
            return false;
        }
    }

    public final void K0(v5 v5Var, boolean z10, boolean z11) {
        n5.q.k(v5Var);
        h();
        j();
        String o02 = v5Var.o0();
        n5.q.k(o02);
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, o02);
        if (z10) {
            contentValues.put("app_instance_id", (String) null);
        } else if (this.f8149b.g(o02).o(i6.s.ANALYTICS_STORAGE)) {
            contentValues.put("app_instance_id", v5Var.p0());
        }
        contentValues.put("gmp_app_id", v5Var.r0());
        pd pdVar = this.f8149b;
        if (pdVar.g(o02).o(i6.s.AD_STORAGE)) {
            contentValues.put("resettable_device_id_hash", v5Var.v0());
        }
        contentValues.put("last_bundle_index", Long.valueOf(v5Var.g()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(v5Var.z0()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(v5Var.B0()));
        contentValues.put("app_version", v5Var.D0());
        contentValues.put("app_store", v5Var.H0());
        contentValues.put("gmp_version", Long.valueOf(v5Var.J0()));
        contentValues.put("dev_cert_hash", Long.valueOf(v5Var.L0()));
        contentValues.put("measurement_enabled", Boolean.valueOf(v5Var.d()));
        contentValues.put("day", Long.valueOf(v5Var.n()));
        contentValues.put("daily_public_events_count", Long.valueOf(v5Var.p()));
        contentValues.put("daily_events_count", Long.valueOf(v5Var.r()));
        contentValues.put("daily_conversions_count", Long.valueOf(v5Var.t()));
        contentValues.put("config_fetched_time", Long.valueOf(v5Var.h()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(v5Var.j()));
        contentValues.put("app_version_int", Long.valueOf(v5Var.F0()));
        contentValues.put("firebase_instance_id", v5Var.x0());
        contentValues.put("daily_error_events_count", Long.valueOf(v5Var.x()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(v5Var.v()));
        contentValues.put("health_monitor_sample", v5Var.z());
        contentValues.put("android_id", (Long) 0L);
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(v5Var.P()));
        contentValues.put("dynamite_version", Long.valueOf(v5Var.b()));
        if (pdVar.g(o02).o(i6.s.ANALYTICS_STORAGE)) {
            contentValues.put("session_stitching_token", v5Var.t0());
        }
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(v5Var.V()));
        contentValues.put("target_os_version", Long.valueOf(v5Var.X()));
        contentValues.put("session_stitching_token_hash", Long.valueOf(v5Var.Z()));
        nf.a();
        w6 w6Var = this.f8322a;
        if (w6Var.w().H(o02, c5.Q0)) {
            contentValues.put("ad_services_version", Integer.valueOf(v5Var.b0()));
            contentValues.put("attribution_eligibility_status", Long.valueOf(v5Var.j0()));
        }
        contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(v5Var.d0()));
        contentValues.put("npa_metadata_value", v5Var.R());
        contentValues.put("bundle_delivery_index", Long.valueOf(v5Var.G()));
        contentValues.put("sgtm_preview_key", v5Var.l0());
        contentValues.put("dma_consent_state", Integer.valueOf(v5Var.B()));
        contentValues.put("daily_realtime_dcu_count", Integer.valueOf(v5Var.D()));
        contentValues.put("serialized_npa_metadata", v5Var.I());
        contentValues.put("client_upload_eligibility", Integer.valueOf(v5Var.M()));
        List T = v5Var.T();
        if (T != null) {
            if (T.isEmpty()) {
                w6Var.a().r().b("Safelisted events should not be an empty list. appId", o02);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(StringUtils.COMMA, T));
            }
        }
        oe.a();
        if (w6Var.w().H(null, c5.L0) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        contentValues.put("unmatched_pfo", v5Var.f0());
        contentValues.put("unmatched_uwa", v5Var.h0());
        contentValues.put("ad_campaign_info", v5Var.K());
        try {
            SQLiteDatabase u02 = u0();
            if (u02.update("apps", contentValues, "app_id = ?", new String[]{o02}) == 0 && u02.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                w6Var.a().o().b("Failed to insert/update app (got -1). appId", p5.x(o02));
            }
        } catch (SQLiteException e10) {
            this.f8322a.a().o().c("Error storing app. appId", p5.x(o02), e10);
        }
    }

    public final void L(String str, d8 d8Var) {
        n5.q.k(str);
        n5.q.k(d8Var);
        h();
        j();
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("consent_state", d8Var.l());
        contentValues.put("consent_source", Integer.valueOf(d8Var.b()));
        N("consent_settings", CommonUrlParts.APP_ID, contentValues);
    }

    public final q L0(long j10, String str, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        return M0(j10, str, 1L, false, false, z12, false, z14, z15, z16);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x016d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.q M0(long r23, java.lang.String r25, long r26, boolean r28, boolean r29, boolean r30, boolean r31, boolean r32, boolean r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.M0(long, java.lang.String, long, boolean, boolean, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.measurement.internal.q");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.p N0(java.lang.String r13) {
        /*
            r12 = this;
            n5.q.e(r13)
            r12.h()
            r12.j()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r12.u0()     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteException -> L6b
            java.lang.String r2 = "apps"
            r3 = 3
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteException -> L6b
            java.lang.String r4 = "remote_config"
            r9 = 0
            r3[r9] = r4     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteException -> L6b
            java.lang.String r4 = "config_last_modified_time"
            r10 = 1
            r3[r10] = r4     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteException -> L6b
            java.lang.String r4 = "e_tag"
            r11 = 2
            r3[r11] = r4     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteException -> L6b
            java.lang.String r4 = "app_id=?"
            java.lang.String[] r5 = new java.lang.String[]{r13}     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteException -> L6b
            r6 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L69 android.database.sqlite.SQLiteException -> L6b
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            if (r2 != 0) goto L36
            goto L81
        L36:
            byte[] r2 = r1.getBlob(r9)     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            java.lang.String r3 = r1.getString(r10)     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            java.lang.String r4 = r1.getString(r11)     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            boolean r5 = r1.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            if (r5 == 0) goto L5b
            com.google.android.gms.measurement.internal.w6 r5 = r12.f8322a     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            com.google.android.gms.measurement.internal.p5 r5 = r5.a()     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            com.google.android.gms.measurement.internal.n5 r5 = r5.o()     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            java.lang.String r6 = "Got multiple records for app config, expected one. appId"
            java.lang.Object r7 = com.google.android.gms.measurement.internal.p5.x(r13)     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            r5.b(r6, r7)     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
        L5b:
            if (r2 != 0) goto L5e
            goto L81
        L5e:
            com.google.android.gms.measurement.internal.p r5 = new com.google.android.gms.measurement.internal.p     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            r5.<init>(r2, r3, r4)     // Catch: android.database.sqlite.SQLiteException -> L67 java.lang.Throwable -> L87
            r1.close()
            return r5
        L67:
            r2 = move-exception
            goto L6e
        L69:
            r13 = move-exception
            goto L89
        L6b:
            r1 = move-exception
            r2 = r1
            r1 = r0
        L6e:
            com.google.android.gms.measurement.internal.w6 r3 = r12.f8322a     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.measurement.internal.p5 r3 = r3.a()     // Catch: java.lang.Throwable -> L87
            com.google.android.gms.measurement.internal.n5 r3 = r3.o()     // Catch: java.lang.Throwable -> L87
            java.lang.String r4 = "Error querying remote config. appId"
            java.lang.Object r13 = com.google.android.gms.measurement.internal.p5.x(r13)     // Catch: java.lang.Throwable -> L87
            r3.c(r4, r13, r2)     // Catch: java.lang.Throwable -> L87
        L81:
            if (r1 == 0) goto L86
            r1.close()
        L86:
            return r0
        L87:
            r13 = move-exception
            r0 = r1
        L89:
            if (r0 == 0) goto L8e
            r0.close()
        L8e:
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.N0(java.lang.String):com.google.android.gms.measurement.internal.p");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0043, code lost:
        if (r3 > (com.google.android.gms.measurement.internal.m.q() + r1)) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean O0(com.google.android.gms.internal.measurement.f7 r8, boolean r9) {
        /*
            r7 = this;
            r7.h()
            r7.j()
            n5.q.k(r8)
            java.lang.String r0 = r8.C()
            n5.q.e(r0)
            boolean r0 = r8.u2()
            n5.q.n(r0)
            r7.u()
            com.google.android.gms.measurement.internal.w6 r0 = r7.f8322a
            com.google.android.gms.common.util.d r1 = r0.f()
            long r1 = r1.currentTimeMillis()
            long r3 = r8.v2()
            r0.w()
            long r5 = com.google.android.gms.measurement.internal.m.q()
            long r5 = r1 - r5
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 < 0) goto L45
            long r3 = r8.v2()
            r0.w()
            long r5 = com.google.android.gms.measurement.internal.m.q()
            long r5 = r5 + r1
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 <= 0) goto L66
        L45:
            com.google.android.gms.measurement.internal.p5 r0 = r0.a()
            com.google.android.gms.measurement.internal.n5 r0 = r0.r()
            java.lang.String r3 = r8.C()
            java.lang.Object r3 = com.google.android.gms.measurement.internal.p5.x(r3)
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            long r4 = r8.v2()
            java.lang.Long r2 = java.lang.Long.valueOf(r4)
            java.lang.String r4 = "Storing bundle outside of the max uploading time span. appId, now, timestamp"
            r0.d(r4, r3, r1, r2)
        L66:
            byte[] r0 = r8.e()
            r1 = 0
            com.google.android.gms.measurement.internal.pd r2 = r7.f8149b     // Catch: java.io.IOException -> L107
            com.google.android.gms.measurement.internal.td r2 = r2.K0()     // Catch: java.io.IOException -> L107
            byte[] r0 = r2.V(r0)     // Catch: java.io.IOException -> L107
            com.google.android.gms.measurement.internal.w6 r2 = r7.f8322a
            com.google.android.gms.measurement.internal.p5 r3 = r2.a()
            com.google.android.gms.measurement.internal.n5 r3 = r3.w()
            int r4 = r0.length
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.String r5 = "Saving bundle, size"
            r3.b(r5, r4)
            android.content.ContentValues r3 = new android.content.ContentValues
            r3.<init>()
            java.lang.String r4 = r8.C()
            java.lang.String r5 = "app_id"
            r3.put(r5, r4)
            long r4 = r8.v2()
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            java.lang.String r5 = "bundle_end_timestamp"
            r3.put(r5, r4)
            java.lang.String r4 = "data"
            r3.put(r4, r0)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            java.lang.String r0 = "has_realtime"
            r3.put(r0, r9)
            boolean r9 = r8.G0()
            if (r9 == 0) goto Lc5
            int r9 = r8.H0()
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            java.lang.String r0 = "retry_count"
            r3.put(r0, r9)
        Lc5:
            android.database.sqlite.SQLiteDatabase r9 = r7.u0()     // Catch: android.database.sqlite.SQLiteException -> Lee
            java.lang.String r0 = "queue"
            r4 = 0
            long r3 = r9.insert(r0, r4, r3)     // Catch: android.database.sqlite.SQLiteException -> Lee
            r5 = -1
            int r9 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r9 != 0) goto Lec
            com.google.android.gms.measurement.internal.p5 r9 = r2.a()     // Catch: android.database.sqlite.SQLiteException -> Lee
            com.google.android.gms.measurement.internal.n5 r9 = r9.o()     // Catch: android.database.sqlite.SQLiteException -> Lee
            java.lang.String r0 = "Failed to insert bundle (got -1). appId"
            java.lang.String r2 = r8.C()     // Catch: android.database.sqlite.SQLiteException -> Lee
            java.lang.Object r2 = com.google.android.gms.measurement.internal.p5.x(r2)     // Catch: android.database.sqlite.SQLiteException -> Lee
            r9.b(r0, r2)     // Catch: android.database.sqlite.SQLiteException -> Lee
            return r1
        Lec:
            r8 = 1
            return r8
        Lee:
            r9 = move-exception
            com.google.android.gms.measurement.internal.w6 r0 = r7.f8322a
            com.google.android.gms.measurement.internal.p5 r0 = r0.a()
            com.google.android.gms.measurement.internal.n5 r0 = r0.o()
            java.lang.String r8 = r8.C()
            java.lang.Object r8 = com.google.android.gms.measurement.internal.p5.x(r8)
            java.lang.String r2 = "Error storing bundle. appId"
            r0.c(r2, r8, r9)
            return r1
        L107:
            r9 = move-exception
            com.google.android.gms.measurement.internal.w6 r0 = r7.f8322a
            com.google.android.gms.measurement.internal.p5 r0 = r0.a()
            com.google.android.gms.measurement.internal.n5 r0 = r0.o()
            java.lang.String r8 = r8.C()
            java.lang.Object r8 = com.google.android.gms.measurement.internal.p5.x(r8)
            java.lang.String r2 = "Data loss. Failed to serialize bundle. appId"
            r0.c(r2, r8, r9)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.O0(com.google.android.gms.internal.measurement.f7, boolean):boolean");
    }

    public final y U(String str) {
        n5.q.k(str);
        h();
        j();
        return y.g(M("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    public final void V(String str, y yVar) {
        n5.q.k(str);
        n5.q.k(yVar);
        h();
        j();
        d8 J = J(str);
        d8 d8Var = d8.f7442c;
        if (J == d8Var) {
            L(str, d8Var);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("dma_consent_settings", yVar.e());
        N("consent_settings", CommonUrlParts.APP_ID, contentValues);
    }

    public final void W(String str, d8 d8Var) {
        n5.q.k(str);
        n5.q.k(d8Var);
        h();
        j();
        L(str, J(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("storage_consent_at_bundling", d8Var.l());
        N("consent_settings", CommonUrlParts.APP_ID, contentValues);
    }

    public final d8 X(String str) {
        n5.q.k(str);
        h();
        j();
        return d8.f(M("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}, ""), 100);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x0345, code lost:
        if (u0().insertWithOnConflict("property_filters", null, r11, 5) != (-1)) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0347, code lost:
        r23.f8322a.a().o().b("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.p5.x(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x035b, code lost:
        r0 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x035f, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0360, code lost:
        r23.f8322a.a().o().c("Error storing property filter. appId", com.google.android.gms.measurement.internal.p5.x(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0373, code lost:
        j();
        h();
        n5.q.e(r24);
        r0 = u0();
        r3 = r17;
        r0.delete("property_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r0.delete("event_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r17 = r3;
        r7 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x03aa, code lost:
        r7 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0178, code lost:
        r11 = r0.E().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0184, code lost:
        if (r11.hasNext() == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0190, code lost:
        if (((com.google.android.gms.internal.measurement.m4) r11.next()).C() != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0192, code lost:
        r23.f8322a.a().r().c("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.p5.x(r24), java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x01ab, code lost:
        r11 = r0.H().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01c1, code lost:
        if (r11.hasNext() == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01c3, code lost:
        r12 = (com.google.android.gms.internal.measurement.e4) r11.next();
        j();
        h();
        n5.q.e(r24);
        n5.q.k(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x01dd, code lost:
        if (r12.E().isEmpty() == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01df, code lost:
        r0 = r23.f8322a.a().r();
        r9 = com.google.android.gms.measurement.internal.p5.x(r24);
        r11 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01f7, code lost:
        if (r12.C() == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01f9, code lost:
        r20 = java.lang.Integer.valueOf(r12.D());
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0204, code lost:
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0206, code lost:
        r0.d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r9, r11, java.lang.String.valueOf(r20));
        r21 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0211, code lost:
        r3 = r12.e();
        r21 = r7;
        r7 = new android.content.ContentValues();
        r7.put(io.appmetrica.analytics.networktasks.internal.CommonUrlParts.APP_ID, r24);
        r7.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x022a, code lost:
        if (r12.C() == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x022c, code lost:
        r9 = java.lang.Integer.valueOf(r12.D());
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0235, code lost:
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0236, code lost:
        r7.put("filter_id", r9);
        r7.put("event_name", r12.E());
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0246, code lost:
        if (r12.M() == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0248, code lost:
        r9 = java.lang.Boolean.valueOf(r12.N());
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0251, code lost:
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0252, code lost:
        r7.put("session_scoped", r9);
        r7.put("data", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0266, code lost:
        if (u0().insertWithOnConflict("event_filters", null, r7, 5) != (-1)) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0268, code lost:
        r23.f8322a.a().o().b("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.p5.x(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x027b, code lost:
        r7 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0281, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0282, code lost:
        r23.f8322a.a().o().c("Error storing event filter. appId", com.google.android.gms.measurement.internal.p5.x(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0297, code lost:
        r21 = r7;
        r0 = r0.E().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02a5, code lost:
        if (r0.hasNext() == false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02a7, code lost:
        r3 = (com.google.android.gms.internal.measurement.m4) r0.next();
        j();
        h();
        n5.q.e(r24);
        n5.q.k(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02c1, code lost:
        if (r3.E().isEmpty() == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02c3, code lost:
        r0 = r23.f8322a.a().r();
        r8 = com.google.android.gms.measurement.internal.p5.x(r24);
        r9 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02db, code lost:
        if (r3.C() == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02dd, code lost:
        r3 = java.lang.Integer.valueOf(r3.D());
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02e6, code lost:
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02e7, code lost:
        r0.d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r8, r9, java.lang.String.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02f0, code lost:
        r7 = r3.e();
        r11 = new android.content.ContentValues();
        r11.put(io.appmetrica.analytics.networktasks.internal.CommonUrlParts.APP_ID, r24);
        r11.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0307, code lost:
        if (r3.C() == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0309, code lost:
        r12 = java.lang.Integer.valueOf(r3.D());
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0312, code lost:
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0313, code lost:
        r11.put("filter_id", r12);
        r22 = r0;
        r11.put("property_name", r3.E());
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0325, code lost:
        if (r3.I() == false) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0327, code lost:
        r0 = java.lang.Boolean.valueOf(r3.J());
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0330, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0331, code lost:
        r11.put("session_scoped", r0);
        r11.put("data", r7);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Y(java.lang.String r24, java.util.List r25) {
        /*
            Method dump skipped, instructions count: 1190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.Y(java.lang.String, java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final c0 Z(String str, com.google.android.gms.internal.measurement.t6 t6Var, String str2) {
        c0 O = O("events", str, t6Var.F());
        if (O == null) {
            w6 w6Var = this.f8322a;
            w6Var.a().r().c("Event aggregate wasn't created during raw event logging. appId, event", p5.x(str), w6Var.D().a(str2));
            return new c0(str, t6Var.F(), 1L, 1L, 1L, t6Var.H(), 0L, null, null, null, null);
        }
        long j10 = O.f7313e + 1;
        long j11 = O.f7312d + 1;
        return new c0(O.f7309a, O.f7310b, O.f7311c + 1, j11, j10, O.f7314f, O.f7315g, O.f7316h, O.f7317i, O.f7318j, O.f7319k);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean a0() {
        w6 w6Var = this.f8322a;
        Context e10 = w6Var.e();
        w6Var.w();
        return e10.getDatabasePath("google_app_measurement.db").exists();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ long b0(String str, String[] strArr, long j10) {
        return q0("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", strArr, -1L);
    }

    @Override // com.google.android.gms.measurement.internal.ad
    protected final boolean l() {
        return false;
    }

    public final long m(String str, com.google.android.gms.internal.measurement.d7 d7Var, String str2, Map map, i6.d0 d0Var, Long l10) {
        int delete;
        h();
        j();
        n5.q.k(d7Var);
        n5.q.e(str);
        h();
        j();
        if (a0()) {
            pd pdVar = this.f8149b;
            long a10 = pdVar.L0().f8256f.a();
            w6 w6Var = this.f8322a;
            long elapsedRealtime = w6Var.f().elapsedRealtime();
            long abs = Math.abs(elapsedRealtime - a10);
            w6Var.w();
            if (abs > m.r()) {
                pdVar.L0().f8256f.b(elapsedRealtime);
                h();
                j();
                if (a0() && (delete = u0().delete("upload_queue", S(), new String[0])) > 0) {
                    w6Var.a().w().b("Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted", Integer.valueOf(delete));
                }
                n5.q.e(str);
                h();
                j();
                try {
                    int E = w6Var.w().E(str, c5.A);
                    if (E > 0) {
                        u0().delete("upload_queue", "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)", new String[]{str, String.valueOf(E)});
                    }
                } catch (SQLiteException e10) {
                    this.f8322a.a().o().c("Error deleting over the limit queued batches. appId", p5.x(str), e10);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str3 = (String) entry.getKey();
            String str4 = (String) entry.getValue();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length());
            sb2.append(str3);
            sb2.append("=");
            sb2.append(str4);
            arrayList.add(sb2.toString());
        }
        byte[] e11 = d7Var.e();
        ContentValues contentValues = new ContentValues();
        contentValues.put(CommonUrlParts.APP_ID, str);
        contentValues.put("measurement_batch", e11);
        contentValues.put("upload_uri", str2);
        contentValues.put("upload_headers", i6.c.a("\r\n", arrayList));
        contentValues.put("upload_type", Integer.valueOf(d0Var.zza()));
        w6 w6Var2 = this.f8322a;
        contentValues.put("creation_timestamp", Long.valueOf(w6Var2.f().currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        if (l10 != null) {
            contentValues.put("associated_row_id", l10);
        }
        try {
            long insert = u0().insert("upload_queue", null, contentValues);
            if (insert == -1) {
                w6Var2.a().o().b("Failed to insert MeasurementBatch (got -1) to upload_queue. appId", str);
                return -1L;
            }
            return insert;
        } catch (SQLiteException e12) {
            this.f8322a.a().o().c("Error storing MeasurementBatch to upload_queue. appId", str, e12);
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qc m0() {
        return this.f8073e;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.sd n(long r35) {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.n(long):com.google.android.gms.measurement.internal.sd");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0223 A[Catch: all -> 0x0235, SQLiteException -> 0x0237, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x0237, blocks: (B:65:0x01cf, B:68:0x01d6, B:69:0x01de, B:71:0x01e9, B:76:0x021c, B:75:0x0207, B:79:0x0223), top: B:107:0x01cf }] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v7, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n0(java.lang.String r22, long r23, long r25, com.google.android.gms.measurement.internal.ld r27) {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.n0(java.lang.String, long, long, com.google.android.gms.measurement.internal.ld):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0108  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List o(java.lang.String r34, i6.g0 r35, int r36) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.o(java.lang.String, i6.g0, int):java.util.List");
    }

    public final boolean p(String str) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(new i6.d0[]{i6.d0.GOOGLE_SIGNAL}[0].zza()));
        String T = T(arrayList);
        String S = S();
        StringBuilder sb2 = new StringBuilder(String.valueOf(T).length() + 61 + S.length());
        sb2.append("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?");
        sb2.append(T);
        sb2.append(" AND NOT ");
        sb2.append(S);
        if (p0(sb2.toString(), new String[]{str}) != 0) {
            return true;
        }
        return false;
    }

    public final void q(Long l10) {
        h();
        j();
        n5.q.k(l10);
        try {
            if (u0().delete("upload_queue", "rowid=?", new String[]{l10.toString()}) != 1) {
                this.f8322a.a().r().a("Deleted fewer rows from upload_queue than expected");
            }
        } catch (SQLiteException e10) {
            this.f8322a.a().o().b("Failed to delete a MeasurementBatch in a upload_queue table", e10);
            throw e10;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String r() {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.u0()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L1c android.database.sqlite.SQLiteException -> L1e
            boolean r2 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L1a java.lang.Throwable -> L36
            if (r2 == 0) goto L30
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L1a java.lang.Throwable -> L36
            r0.close()
            return r1
        L1a:
            r2 = move-exception
            goto L21
        L1c:
            r0 = move-exception
            goto L3a
        L1e:
            r0 = move-exception
            r2 = r0
            r0 = r1
        L21:
            com.google.android.gms.measurement.internal.w6 r3 = r6.f8322a     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.measurement.internal.p5 r3 = r3.a()     // Catch: java.lang.Throwable -> L36
            com.google.android.gms.measurement.internal.n5 r3 = r3.o()     // Catch: java.lang.Throwable -> L36
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.b(r4, r2)     // Catch: java.lang.Throwable -> L36
        L30:
            if (r0 == 0) goto L35
            r0.close()
        L35:
            return r1
        L36:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L3a:
            if (r1 == 0) goto L3f
            r1.close()
        L3f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.r():java.lang.String");
    }

    public final void r0() {
        j();
        u0().beginTransaction();
    }

    public final boolean s() {
        if (p0("select count(1) > 0 from queue where has_realtime = 1", null) != 0) {
            return true;
        }
        return false;
    }

    public final void s0() {
        j();
        u0().setTransactionSuccessful();
    }

    public final void t(long j10) {
        h();
        j();
        try {
            if (u0().delete("queue", "rowid=?", new String[]{String.valueOf(j10)}) == 1) {
                return;
            }
            throw new SQLiteException("Deleted fewer rows from queue than expected");
        } catch (SQLiteException e10) {
            this.f8322a.a().o().b("Failed to delete a bundle in a queue table", e10);
            throw e10;
        }
    }

    public final void t0() {
        j();
        u0().endTransaction();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void u() {
        h();
        j();
        if (a0()) {
            pd pdVar = this.f8149b;
            long a10 = pdVar.L0().f8255e.a();
            w6 w6Var = this.f8322a;
            long elapsedRealtime = w6Var.f().elapsedRealtime();
            long abs = Math.abs(elapsedRealtime - a10);
            w6Var.w();
            if (abs > m.r()) {
                pdVar.L0().f8255e.b(elapsedRealtime);
                h();
                j();
                if (a0()) {
                    SQLiteDatabase u02 = u0();
                    String valueOf = String.valueOf(w6Var.f().currentTimeMillis());
                    w6Var.w();
                    int delete = u02.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{valueOf, String.valueOf(m.q())});
                    if (delete > 0) {
                        w6Var.a().w().b("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SQLiteDatabase u0() {
        h();
        try {
            return this.f8072d.getWritableDatabase();
        } catch (SQLiteException e10) {
            this.f8322a.a().r().b("Error opening database", e10);
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void v(List list) {
        h();
        j();
        n5.q.k(list);
        n5.q.m(list.size());
        if (!a0()) {
            return;
        }
        String join = TextUtils.join(StringUtils.COMMA, list);
        StringBuilder sb2 = new StringBuilder(String.valueOf(join).length() + 2);
        sb2.append("(");
        sb2.append(join);
        sb2.append(")");
        String sb3 = sb2.toString();
        StringBuilder sb4 = new StringBuilder(sb3.length() + 80);
        sb4.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
        sb4.append(sb3);
        sb4.append(" AND retry_count =  2147483647 LIMIT 1");
        if (p0(sb4.toString(), null) > 0) {
            this.f8322a.a().r().a("The number of upload retries exceeds the limit. Will remain unchanged.");
        }
        try {
            SQLiteDatabase u02 = u0();
            StringBuilder sb5 = new StringBuilder(sb3.length() + 127);
            sb5.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
            sb5.append(sb3);
            sb5.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
            u02.execSQL(sb5.toString());
        } catch (SQLiteException e10) {
            this.f8322a.a().o().b("Error incrementing retry count. error", e10);
        }
    }

    public final c0 v0(String str, String str2) {
        return O("events", str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void w(Long l10) {
        h();
        j();
        n5.q.k(l10);
        if (!a0()) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(l10.toString().length() + 86);
        sb2.append("SELECT COUNT(1) FROM upload_queue WHERE rowid = ");
        sb2.append(l10);
        sb2.append(" AND retry_count =  2147483647 LIMIT 1");
        if (p0(sb2.toString(), null) > 0) {
            this.f8322a.a().r().a("The number of upload retries exceeds the limit. Will remain unchanged.");
        }
        try {
            SQLiteDatabase u02 = u0();
            long currentTimeMillis = this.f8322a.f().currentTimeMillis();
            StringBuilder sb3 = new StringBuilder(String.valueOf(currentTimeMillis).length() + 60);
            sb3.append(" SET retry_count = retry_count + 1, last_upload_timestamp = ");
            sb3.append(currentTimeMillis);
            String sb4 = sb3.toString();
            StringBuilder sb5 = new StringBuilder(sb4.length() + 34 + l10.toString().length() + 29);
            sb5.append("UPDATE upload_queue");
            sb5.append(sb4);
            sb5.append(" WHERE rowid = ");
            sb5.append(l10);
            sb5.append(" AND retry_count < 2147483647");
            u02.execSQL(sb5.toString());
        } catch (SQLiteException e10) {
            this.f8322a.a().o().b("Error incrementing retry count. error", e10);
        }
    }

    public final void w0(c0 c0Var) {
        P("events", c0Var);
    }

    final Object x(Cursor cursor, int i10) {
        int type = cursor.getType(i10);
        if (type != 0) {
            if (type != 1) {
                if (type != 2) {
                    if (type != 3) {
                        if (type != 4) {
                            this.f8322a.a().o().b("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
                            return null;
                        }
                        this.f8322a.a().o().a("Loaded invalid blob type value, ignoring it");
                        return null;
                    }
                    return cursor.getString(i10);
                }
                return Double.valueOf(cursor.getDouble(i10));
            }
            return Long.valueOf(cursor.getLong(i10));
        }
        this.f8322a.a().o().a("Loaded invalid null value from database");
        return null;
    }

    public final void x0(String str) {
        c0 O;
        Q("events_snapshot", str);
        Cursor cursor = null;
        try {
            try {
                cursor = u0().query("events", (String[]) Collections.singletonList(Constants.NAME).toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (cursor.moveToFirst()) {
                    do {
                        String string = cursor.getString(0);
                        if (string != null && (O = O("events", str, string)) != null) {
                            P("events_snapshot", O);
                        }
                    } while (cursor.moveToNext());
                }
            } catch (SQLiteException e10) {
                this.f8322a.a().o().c("Error creating snapshot. appId", p5.x(str), e10);
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    public final long y() {
        return q0("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ba, code lost:
        if (r8 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bc, code lost:
        P("events", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0056, code lost:
        if (r8 != null) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void y0(java.lang.String r20) {
        /*
            r19 = this;
            r1 = r19
            r2 = r20
            java.lang.String r3 = "events_snapshot"
            java.util.ArrayList r0 = new java.util.ArrayList
            java.lang.String r4 = "lifetime_count"
            java.lang.String r5 = "name"
            java.lang.String[] r4 = new java.lang.String[]{r5, r4}
            java.util.List r4 = java.util.Arrays.asList(r4)
            r0.<init>(r4)
            java.lang.String r4 = "events"
            java.lang.String r5 = "_f"
            com.google.android.gms.measurement.internal.c0 r6 = r1.O(r4, r2, r5)
            java.lang.String r7 = "_v"
            com.google.android.gms.measurement.internal.c0 r8 = r1.O(r4, r2, r7)
            r1.Q(r4, r2)
            r9 = 0
            r10 = 0
            android.database.sqlite.SQLiteDatabase r11 = r19.u0()     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L95
            java.lang.String r12 = "events_snapshot"
            java.lang.String[] r13 = new java.lang.String[r10]     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L95
            java.lang.Object[] r0 = r0.toArray(r13)     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L95
            r13 = r0
            java.lang.String[] r13 = (java.lang.String[]) r13     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L95
            java.lang.String r14 = "app_id=?"
            java.lang.String[] r15 = new java.lang.String[]{r20}     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L95
            r16 = 0
            r17 = 0
            r18 = 0
            android.database.Cursor r9 = r11.query(r12, r13, r14, r15, r16, r17, r18)     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L95
            boolean r0 = r9.moveToFirst()     // Catch: java.lang.Throwable -> L92 android.database.sqlite.SQLiteException -> L95
            if (r0 != 0) goto L5a
            r9.close()
            if (r6 == 0) goto L56
            goto Lb4
        L56:
            if (r8 == 0) goto Lbf
            goto Lbc
        L5a:
            r11 = r10
            r12 = r11
        L5c:
            java.lang.String r0 = r9.getString(r10)     // Catch: java.lang.Throwable -> L8c android.database.sqlite.SQLiteException -> L8f
            r13 = 1
            long r14 = r9.getLong(r13)     // Catch: java.lang.Throwable -> L8c android.database.sqlite.SQLiteException -> L8f
            r16 = 1
            int r14 = (r14 > r16 ? 1 : (r14 == r16 ? 0 : -1))
            if (r14 < 0) goto L7a
            boolean r14 = r5.equals(r0)     // Catch: java.lang.Throwable -> L8c android.database.sqlite.SQLiteException -> L8f
            if (r14 == 0) goto L73
            r11 = r13
            goto L7a
        L73:
            boolean r14 = r7.equals(r0)     // Catch: java.lang.Throwable -> L8c android.database.sqlite.SQLiteException -> L8f
            if (r14 == 0) goto L7a
            r12 = r13
        L7a:
            if (r0 == 0) goto L85
            com.google.android.gms.measurement.internal.c0 r0 = r1.O(r3, r2, r0)     // Catch: java.lang.Throwable -> L8c android.database.sqlite.SQLiteException -> L8f
            if (r0 == 0) goto L85
            r1.P(r4, r0)     // Catch: java.lang.Throwable -> L8c android.database.sqlite.SQLiteException -> L8f
        L85:
            boolean r0 = r9.moveToNext()     // Catch: java.lang.Throwable -> L8c android.database.sqlite.SQLiteException -> L8f
            if (r0 != 0) goto L5c
            goto Lab
        L8c:
            r0 = move-exception
            r10 = r11
            goto Lc4
        L8f:
            r0 = move-exception
            r10 = r11
            goto L97
        L92:
            r0 = move-exception
            r12 = r10
            goto Lc4
        L95:
            r0 = move-exception
            r12 = r10
        L97:
            com.google.android.gms.measurement.internal.w6 r5 = r1.f8322a     // Catch: java.lang.Throwable -> Lc3
            com.google.android.gms.measurement.internal.p5 r5 = r5.a()     // Catch: java.lang.Throwable -> Lc3
            com.google.android.gms.measurement.internal.n5 r5 = r5.o()     // Catch: java.lang.Throwable -> Lc3
            java.lang.String r7 = "Error querying snapshot. appId"
            java.lang.Object r11 = com.google.android.gms.measurement.internal.p5.x(r20)     // Catch: java.lang.Throwable -> Lc3
            r5.c(r7, r11, r0)     // Catch: java.lang.Throwable -> Lc3
            r11 = r10
        Lab:
            if (r9 == 0) goto Lb0
            r9.close()
        Lb0:
            if (r11 != 0) goto Lb8
            if (r6 == 0) goto Lb8
        Lb4:
            r1.P(r4, r6)
            goto Lbf
        Lb8:
            if (r12 != 0) goto Lbf
            if (r8 == 0) goto Lbf
        Lbc:
            r1.P(r4, r8)
        Lbf:
            r1.Q(r3, r2)
            return
        Lc3:
            r0 = move-exception
        Lc4:
            if (r9 == 0) goto Lc9
            r9.close()
        Lc9:
            if (r10 != 0) goto Ld2
            if (r6 != 0) goto Lce
            goto Ld2
        Lce:
            r1.P(r4, r6)
            goto Ld9
        Ld2:
            if (r12 != 0) goto Ld9
            if (r8 == 0) goto Ld9
            r1.P(r4, r8)
        Ld9:
            r1.Q(r3, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.y0(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't wrap try/catch for region: R(9:1|2|3|4|(2:6|(3:8|9|10)(1:13))|14|15|(3:17|9|10)(4:18|19|9|10)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00ae, code lost:
        r3 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b6, code lost:
        r13.f8322a.a().o().d("Error inserting column. appId", com.google.android.gms.measurement.internal.p5.x(r14), "first_open_count", r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long z(java.lang.String r14, java.lang.String r15) {
        /*
            r13 = this;
            n5.q.e(r14)
            java.lang.String r15 = "first_open_count"
            n5.q.e(r15)
            r13.h()
            r13.j()
            android.database.sqlite.SQLiteDatabase r0 = r13.u0()
            r0.beginTransaction()
            java.lang.String r1 = " from app2 where app_id=?"
            java.lang.String r2 = "select "
            r3 = 0
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r6 = 48
            r5.<init>(r6)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r5.append(r2)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r5.append(r15)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r5.append(r1)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            java.lang.String r1 = r5.toString()     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            java.lang.String[] r2 = new java.lang.String[]{r14}     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r5 = -1
            long r1 = r13.q0(r1, r2, r5)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            java.lang.String r8 = "app2"
            java.lang.String r9 = "app_id"
            if (r7 != 0) goto L75
            android.content.ContentValues r1 = new android.content.ContentValues     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r1.<init>()     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r1.put(r9, r14)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r2 = 0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r1.put(r15, r2)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            java.lang.String r7 = "previous_install_count"
            r1.put(r7, r2)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r2 = 0
            r7 = 5
            long r1 = r0.insertWithOnConflict(r8, r2, r1, r7)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            int r1 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r1 != 0) goto L74
            com.google.android.gms.measurement.internal.w6 r1 = r13.f8322a     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            com.google.android.gms.measurement.internal.p5 r1 = r1.a()     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            com.google.android.gms.measurement.internal.n5 r1 = r1.o()     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            java.lang.String r2 = "Failed to insert column (got -1). appId"
            java.lang.Object r7 = com.google.android.gms.measurement.internal.p5.x(r14)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            r1.c(r2, r7, r15)     // Catch: java.lang.Throwable -> Lb0 android.database.sqlite.SQLiteException -> Lb2
            goto Lca
        L74:
            r1 = r3
        L75:
            android.content.ContentValues r7 = new android.content.ContentValues     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            r7.<init>()     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            r7.put(r9, r14)     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            r9 = 1
            long r9 = r9 + r1
            java.lang.Long r9 = java.lang.Long.valueOf(r9)     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            r7.put(r15, r9)     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            java.lang.String r9 = "app_id = ?"
            java.lang.String[] r10 = new java.lang.String[]{r14}     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            int r7 = r0.update(r8, r7, r9, r10)     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            long r7 = (long) r7     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            int r3 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r3 != 0) goto Laa
            com.google.android.gms.measurement.internal.w6 r3 = r13.f8322a     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            com.google.android.gms.measurement.internal.p5 r3 = r3.a()     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            com.google.android.gms.measurement.internal.n5 r3 = r3.o()     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            java.lang.String r4 = "Failed to update column (got 0). appId"
            java.lang.Object r7 = com.google.android.gms.measurement.internal.p5.x(r14)     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            r3.c(r4, r7, r15)     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            goto Lca
        Laa:
            r0.setTransactionSuccessful()     // Catch: android.database.sqlite.SQLiteException -> Lae java.lang.Throwable -> Lb0
            goto Lc9
        Lae:
            r3 = move-exception
            goto Lb6
        Lb0:
            r14 = move-exception
            goto Lce
        Lb2:
            r1 = move-exception
            r11 = r3
            r3 = r1
            r1 = r11
        Lb6:
            com.google.android.gms.measurement.internal.w6 r4 = r13.f8322a     // Catch: java.lang.Throwable -> Lb0
            com.google.android.gms.measurement.internal.p5 r4 = r4.a()     // Catch: java.lang.Throwable -> Lb0
            com.google.android.gms.measurement.internal.n5 r4 = r4.o()     // Catch: java.lang.Throwable -> Lb0
            java.lang.String r5 = "Error inserting column. appId"
            java.lang.Object r14 = com.google.android.gms.measurement.internal.p5.x(r14)     // Catch: java.lang.Throwable -> Lb0
            r4.d(r5, r14, r15, r3)     // Catch: java.lang.Throwable -> Lb0
        Lc9:
            r5 = r1
        Lca:
            r0.endTransaction()
            return r5
        Lce:
            r0.endTransaction()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.u.z(java.lang.String, java.lang.String):long");
    }

    public final void z0(String str, String str2) {
        n5.q.e(str);
        n5.q.e(str2);
        h();
        j();
        try {
            u0().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            w6 w6Var = this.f8322a;
            w6Var.a().o().d("Error deleting user property. appId", p5.x(str), w6Var.D().c(str2), e10);
        }
    }
}
