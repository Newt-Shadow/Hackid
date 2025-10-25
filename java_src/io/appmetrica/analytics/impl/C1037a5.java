package io.appmetrica.analytics.impl;

import android.database.Cursor;
import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
/* renamed from: io.appmetrica.analytics.impl.a5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1037a5 extends DatabaseScript {

    /* renamed from: a  reason: collision with root package name */
    public final String f19365a = "sessions";

    /* renamed from: b  reason: collision with root package name */
    public final int f19366b = 200;

    /* renamed from: c  reason: collision with root package name */
    public final String f19367c = Chapter.KEY_ID;

    /* renamed from: d  reason: collision with root package name */
    public final String f19368d = "start_time";

    /* renamed from: e  reason: collision with root package name */
    public final String f19369e = "report_request_parameters";

    /* renamed from: f  reason: collision with root package name */
    public final String f19370f = "server_time_offset";

    /* renamed from: g  reason: collision with root package name */
    public final String f19371g = "type";

    /* renamed from: h  reason: collision with root package name */
    public final String f19372h = "obtained_before_first_sync";

    /* renamed from: i  reason: collision with root package name */
    public final F7 f19373i = new F7(null, 1, null);

    public final E7 a(Cursor cursor) {
        try {
            Long valueOf = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.f19367c)));
            int i10 = cursor.getInt(cursor.getColumnIndexOrThrow(this.f19371g));
            Ik ik = Ik.FOREGROUND;
            boolean z10 = true;
            if (i10 != 0) {
                ik = Ik.BACKGROUND;
                if (i10 != 1) {
                    ik = null;
                }
            }
            String string = cursor.getString(cursor.getColumnIndexOrThrow(this.f19369e));
            Long valueOf2 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.f19368d)));
            Long valueOf3 = Long.valueOf(cursor.getLong(cursor.getColumnIndexOrThrow(this.f19370f)));
            if (cursor.getInt(cursor.getColumnIndexOrThrow(this.f19372h)) != 1) {
                z10 = false;
            }
            return new E7(valueOf, ik, string, new D7(valueOf2, valueOf3, Boolean.valueOf(z10)));
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
        if (r2 == null) goto L47;
     */
    @Override // io.appmetrica.analytics.coreapi.internal.db.DatabaseScript
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void runScript(android.database.sqlite.SQLiteDatabase r12) {
        /*
            r11 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            java.lang.String r3 = r11.f19365a     // Catch: java.lang.Throwable -> L5a
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            int r2 = r11.f19366b     // Catch: java.lang.Throwable -> L5a
            java.lang.String r10 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L5a
            r2 = r12
            android.database.Cursor r2 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L5a
        L19:
            boolean r3 = r2.moveToNext()     // Catch: java.lang.Throwable -> L5b
            if (r3 == 0) goto L5d
            io.appmetrica.analytics.impl.E7 r3 = r11.a(r2)     // Catch: java.lang.Throwable -> L5b
            if (r3 == 0) goto L19
            java.lang.Long r4 = r3.f18144a     // Catch: java.lang.Throwable -> L5b
            if (r4 == 0) goto L19
            long r4 = r4.longValue()     // Catch: java.lang.Throwable -> L5b
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 < 0) goto L19
            io.appmetrica.analytics.impl.Ik r4 = r3.f18145b     // Catch: java.lang.Throwable -> L5b
            if (r4 == 0) goto L19
            java.lang.String r4 = r3.f18146c     // Catch: java.lang.Throwable -> L5b
            if (r4 == 0) goto L19
            int r4 = r4.length()     // Catch: java.lang.Throwable -> L5b
            if (r4 != 0) goto L42
            goto L19
        L42:
            io.appmetrica.analytics.impl.D7 r4 = r3.f18147d     // Catch: java.lang.Throwable -> L5b
            java.lang.Long r4 = r4.f18078a     // Catch: java.lang.Throwable -> L5b
            if (r4 == 0) goto L19
            long r4 = r4.longValue()     // Catch: java.lang.Throwable -> L5b
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 <= 0) goto L19
            io.appmetrica.analytics.impl.F7 r4 = r11.f19373i     // Catch: java.lang.Throwable -> L5b
            android.content.ContentValues r3 = r4.fromModel(r3)     // Catch: java.lang.Throwable -> L5b
            r0.add(r3)     // Catch: java.lang.Throwable -> L5b
            goto L19
        L5a:
            r2 = r1
        L5b:
            if (r2 == 0) goto L60
        L5d:
            r2.close()
        L60:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "DROP TABLE IF EXISTS "
            r2.<init>(r3)
            java.lang.String r3 = r11.f19365a
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r12.execSQL(r2)
            java.lang.String r2 = "CREATE TABLE IF NOT EXISTS sessions (id INTEGER,type INTEGER,report_request_parameters TEXT,session_description BLOB )"
            r12.execSQL(r2)
            java.util.Iterator r0 = r0.iterator()
        L7c:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L8e
            java.lang.Object r2 = r0.next()
            android.content.ContentValues r2 = (android.content.ContentValues) r2
            java.lang.String r3 = "sessions"
            r12.insertOrThrow(r3, r1, r2)     // Catch: java.lang.Throwable -> L7c
            goto L7c
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1037a5.runScript(android.database.sqlite.SQLiteDatabase):void");
    }
}
