package io.appmetrica.analytics.impl;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
import io.flutter.plugins.firebase.analytics.Constants;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes2.dex */
public final class Z4 extends DatabaseScript {

    /* renamed from: a  reason: collision with root package name */
    public final int f19321a = 2000;

    /* renamed from: b  reason: collision with root package name */
    public final String f19322b = "number";

    /* renamed from: c  reason: collision with root package name */
    public final String f19323c = "global_number";

    /* renamed from: d  reason: collision with root package name */
    public final String f19324d = "number_of_type";

    /* renamed from: e  reason: collision with root package name */
    public final String f19325e = Constants.NAME;

    /* renamed from: f  reason: collision with root package name */
    public final String f19326f = "value";

    /* renamed from: g  reason: collision with root package name */
    public final String f19327g = "type";

    /* renamed from: h  reason: collision with root package name */
    public final String f19328h = FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME;

    /* renamed from: i  reason: collision with root package name */
    public final String f19329i = "session_id";

    /* renamed from: j  reason: collision with root package name */
    public final String f19330j = "error_environment";

    /* renamed from: k  reason: collision with root package name */
    public final String f19331k = "session_type";

    /* renamed from: l  reason: collision with root package name */
    public final String f19332l = "app_environment";

    /* renamed from: m  reason: collision with root package name */
    public final String f19333m = "app_environment_revision";

    /* renamed from: n  reason: collision with root package name */
    public final String f19334n = "truncated";

    /* renamed from: o  reason: collision with root package name */
    public final String f19335o = "custom_type";

    /* renamed from: p  reason: collision with root package name */
    public final String f19336p = "encrypting_mode";

    /* renamed from: q  reason: collision with root package name */
    public final String f19337q = "profile_id";

    /* renamed from: r  reason: collision with root package name */
    public final String f19338r = "first_occurrence_status";

    /* renamed from: s  reason: collision with root package name */
    public final String f19339s = ClimateForcast.SOURCE;

    /* renamed from: t  reason: collision with root package name */
    public final String f19340t = "attribution_id_changed";

    /* renamed from: u  reason: collision with root package name */
    public final String f19341u = "open_id";

    /* renamed from: v  reason: collision with root package name */
    public final String f19342v = "extras";

    /* renamed from: w  reason: collision with root package name */
    public final String f19343w = "reports";

    /* renamed from: x  reason: collision with root package name */
    public final C1462r7 f19344x = new C1462r7(null, 1, null);

    public static boolean a(C1438q7 c1438q7) {
        Long l10;
        EnumC1367nb enumC1367nb;
        Long l11;
        Long l12;
        Long l13;
        Integer num;
        Long l14 = c1438q7.f20417a;
        return (l14 == null || l14.longValue() < 10000000000L || c1438q7.f20418b == null || (l10 = c1438q7.f20419c) == null || l10.longValue() < 0 || (enumC1367nb = c1438q7.f20420d) == null || enumC1367nb == EnumC1367nb.EVENT_TYPE_UNDEFINED || (l11 = c1438q7.f20421e) == null || l11.longValue() < 0 || (l12 = c1438q7.f20422f) == null || l12.longValue() < 0 || ((l13 = c1438q7.f20423g.f20333d) != null && l13.longValue() < 0) || ((num = c1438q7.f20423g.f20338i) != null && num.intValue() < 0)) ? false : true;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.db.DatabaseScript
    public final void runScript(SQLiteDatabase sQLiteDatabase) {
        Cursor cursor;
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS events (id INTEGER PRIMARY KEY,session_id INTEGER,session_type INTEGER,number_in_session INTEGER,type INTEGER,global_number INTEGER,time INTEGER,event_description BLOB )");
        Cursor cursor2 = null;
        try {
            cursor = sQLiteDatabase.query(this.f19343w, null, null, null, null, null, null, String.valueOf(this.f19321a));
            while (cursor.moveToNext()) {
                try {
                    C1438q7 a10 = a(cursor);
                    if (a10 != null && a(a10)) {
                        try {
                            sQLiteDatabase.insertOrThrow("events", null, this.f19344x.fromModel(a10));
                        } catch (Throwable unused) {
                        }
                    }
                } catch (Throwable unused2) {
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor = cursor2;
                        cursor.close();
                    }
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + this.f19343w);
                }
            }
        } catch (Throwable unused3) {
        }
        cursor.close();
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + this.f19343w);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00f1, code lost:
        if (r3.intValue() == 0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0133, code lost:
        if (r2.intValue() == 1) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0162, code lost:
        if (r2.intValue() == 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0164, code lost:
        r27 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0170, code lost:
        if (r2.intValue() == 1) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0184, code lost:
        if (r32.getInt(r32.getColumnIndexOrThrow(r31.f19340t)) != 1) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002a, code lost:
        if (r3.intValue() != 0) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ed A[Catch: all -> 0x01bb, TryCatch #4 {all -> 0x01bb, blocks: (B:3:0x0004, B:9:0x002e, B:16:0x003b, B:22:0x00f6, B:28:0x0102, B:35:0x0112, B:71:0x0188, B:75:0x0198, B:79:0x01ad, B:78:0x01a7, B:31:0x0107, B:25:0x00fb, B:19:0x00ed, B:12:0x0033, B:6:0x0026, B:52:0x014b, B:58:0x0167, B:61:0x016c, B:55:0x015e, B:36:0x011c, B:42:0x0138, B:48:0x0144, B:45:0x013d, B:39:0x012f), top: B:88:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012f A[Catch: all -> 0x0147, TryCatch #4 {all -> 0x01bb, blocks: (B:3:0x0004, B:9:0x002e, B:16:0x003b, B:22:0x00f6, B:28:0x0102, B:35:0x0112, B:71:0x0188, B:75:0x0198, B:79:0x01ad, B:78:0x01a7, B:31:0x0107, B:25:0x00fb, B:19:0x00ed, B:12:0x0033, B:6:0x0026, B:52:0x014b, B:58:0x0167, B:61:0x016c, B:55:0x015e, B:36:0x011c, B:42:0x0138, B:48:0x0144, B:45:0x013d, B:39:0x012f), top: B:88:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x013c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013d A[Catch: all -> 0x0147, TryCatch #4 {all -> 0x01bb, blocks: (B:3:0x0004, B:9:0x002e, B:16:0x003b, B:22:0x00f6, B:28:0x0102, B:35:0x0112, B:71:0x0188, B:75:0x0198, B:79:0x01ad, B:78:0x01a7, B:31:0x0107, B:25:0x00fb, B:19:0x00ed, B:12:0x0033, B:6:0x0026, B:52:0x014b, B:58:0x0167, B:61:0x016c, B:55:0x015e, B:36:0x011c, B:42:0x0138, B:48:0x0144, B:45:0x013d, B:39:0x012f), top: B:88:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x015e A[Catch: all -> 0x0176, TryCatch #4 {all -> 0x01bb, blocks: (B:3:0x0004, B:9:0x002e, B:16:0x003b, B:22:0x00f6, B:28:0x0102, B:35:0x0112, B:71:0x0188, B:75:0x0198, B:79:0x01ad, B:78:0x01a7, B:31:0x0107, B:25:0x00fb, B:19:0x00ed, B:12:0x0033, B:6:0x0026, B:52:0x014b, B:58:0x0167, B:61:0x016c, B:55:0x015e, B:36:0x011c, B:42:0x0138, B:48:0x0144, B:45:0x013d, B:39:0x012f), top: B:88:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x016c A[Catch: all -> 0x0176, TRY_LEAVE, TryCatch #4 {all -> 0x01bb, blocks: (B:3:0x0004, B:9:0x002e, B:16:0x003b, B:22:0x00f6, B:28:0x0102, B:35:0x0112, B:71:0x0188, B:75:0x0198, B:79:0x01ad, B:78:0x01a7, B:31:0x0107, B:25:0x00fb, B:19:0x00ed, B:12:0x0033, B:6:0x0026, B:52:0x014b, B:58:0x0167, B:61:0x016c, B:55:0x015e, B:36:0x011c, B:42:0x0138, B:48:0x0144, B:45:0x013d, B:39:0x012f), top: B:88:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a7 A[Catch: all -> 0x01bb, TryCatch #4 {all -> 0x01bb, blocks: (B:3:0x0004, B:9:0x002e, B:16:0x003b, B:22:0x00f6, B:28:0x0102, B:35:0x0112, B:71:0x0188, B:75:0x0198, B:79:0x01ad, B:78:0x01a7, B:31:0x0107, B:25:0x00fb, B:19:0x00ed, B:12:0x0033, B:6:0x0026, B:52:0x014b, B:58:0x0167, B:61:0x016c, B:55:0x015e, B:36:0x011c, B:42:0x0138, B:48:0x0144, B:45:0x013d, B:39:0x012f), top: B:88:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.impl.C1438q7 a(android.database.Cursor r32) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.Z4.a(android.database.Cursor):io.appmetrica.analytics.impl.q7");
    }
}
