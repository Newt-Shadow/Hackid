package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.io.Closeable;
/* renamed from: io.appmetrica.analytics.impl.j7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1263j7 extends SQLiteOpenHelper implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final String f19843a;

    /* renamed from: b  reason: collision with root package name */
    public final PublicLogger f19844b;

    /* renamed from: c  reason: collision with root package name */
    public final Qm f19845c;

    public C1263j7(Context context, String str, Qm qm, PublicLogger publicLogger) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, L5.f18514b);
        this.f19845c = qm;
        this.f19843a = str;
        this.f19844b = publicLogger;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getReadableDatabase() {
        try {
            return super.getReadableDatabase();
        } catch (Throwable th) {
            this.f19844b.error(th, "Could not get readable database %s due to an exception. AppMetrica SDK may behave unexpectedly.", this.f19843a);
            Oj oj = AbstractC1375nj.f20222a;
            oj.getClass();
            oj.a(new C1400oj("db_read_error", th));
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (Throwable th) {
            this.f19844b.error(th, "Could not get writable database %s due to an exception. AppMetrica SDK may behave unexpectedly.", this.f19843a);
            Oj oj = AbstractC1375nj.f20222a;
            oj.getClass();
            oj.a(new C1400oj("db_write_error", th));
            return null;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f19845c.f18854a.runScript(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        Qm qm = this.f19845c;
        if (i10 > i11) {
            try {
                qm.f18855b.runScript(sQLiteDatabase);
            } catch (Throwable unused) {
            }
            try {
                qm.f18854a.runScript(sQLiteDatabase);
                return;
            } catch (Throwable unused2) {
                return;
            }
        }
        qm.getClass();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        Qm qm = this.f19845c;
        qm.getClass();
        try {
            Rm rm = qm.f18857d;
            if (rm != null && !rm.a(sQLiteDatabase)) {
                try {
                    qm.f18855b.runScript(sQLiteDatabase);
                } catch (Throwable unused) {
                }
                qm.f18854a.runScript(sQLiteDatabase);
            }
        } catch (Throwable unused2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    @Override // android.database.sqlite.SQLiteOpenHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onUpgrade(android.database.sqlite.SQLiteDatabase r5, int r6, int r7) {
        /*
            r4 = this;
            io.appmetrica.analytics.impl.Qm r0 = r4.f19845c
            r0.getClass()
            r1 = 1
            if (r7 <= r6) goto L34
            int r6 = r6 + r1
        L9:
            if (r6 > r7) goto L32
            io.appmetrica.analytics.impl.Ba r2 = r0.f18856c     // Catch: java.lang.Throwable -> L34
            java.lang.Integer r3 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L34
            java.util.HashMap r2 = r2.f17991a     // Catch: java.lang.Throwable -> L34
            java.lang.Object r2 = r2.get(r3)     // Catch: java.lang.Throwable -> L34
            java.util.Collection r2 = (java.util.Collection) r2     // Catch: java.lang.Throwable -> L34
            if (r2 == 0) goto L2f
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L34
        L1f:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L34
            if (r3 == 0) goto L2f
            java.lang.Object r3 = r2.next()     // Catch: java.lang.Throwable -> L34
            io.appmetrica.analytics.coreapi.internal.db.DatabaseScript r3 = (io.appmetrica.analytics.coreapi.internal.db.DatabaseScript) r3     // Catch: java.lang.Throwable -> L34
            r3.runScript(r5)     // Catch: java.lang.Throwable -> L34
            goto L1f
        L2f:
            int r6 = r6 + 1
            goto L9
        L32:
            r6 = 0
            goto L35
        L34:
            r6 = r1
        L35:
            io.appmetrica.analytics.impl.Rm r7 = r0.f18857d
            boolean r7 = r7.a(r5)
            r7 = r7 ^ r1
            r6 = r6 | r7
            if (r6 == 0) goto L49
            io.appmetrica.analytics.coreapi.internal.db.DatabaseScript r6 = r0.f18855b
            r6.runScript(r5)     // Catch: java.lang.Throwable -> L44
        L44:
            io.appmetrica.analytics.coreapi.internal.db.DatabaseScript r6 = r0.f18854a
            r6.runScript(r5)     // Catch: java.lang.Throwable -> L49
        L49:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1263j7.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
    }
}
