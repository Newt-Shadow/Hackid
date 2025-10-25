package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.io.Closeable;
/* renamed from: io.appmetrica.analytics.impl.kc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1293kc implements J6 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19960a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19961b;

    /* renamed from: c  reason: collision with root package name */
    public final Qm f19962c;

    /* renamed from: d  reason: collision with root package name */
    public final C1291ka f19963d;

    /* renamed from: e  reason: collision with root package name */
    public C1263j7 f19964e;

    public C1293kc(Context context, String str, Qm qm) {
        this(context, str, new C1291ka(str), qm);
    }

    @Override // io.appmetrica.analytics.impl.J6
    public final synchronized SQLiteDatabase a() {
        C1263j7 c1263j7;
        try {
            this.f19963d.a();
            c1263j7 = new C1263j7(this.f19960a, this.f19961b, this.f19962c, PublicLogger.getAnonymousInstance());
            this.f19964e = c1263j7;
        } catch (Throwable unused) {
            return null;
        }
        return c1263j7.getWritableDatabase();
    }

    public C1293kc(Context context, String str, C1291ka c1291ka, Qm qm) {
        this.f19960a = context;
        this.f19961b = str;
        this.f19963d = c1291ka;
        this.f19962c = qm;
    }

    @Override // io.appmetrica.analytics.impl.J6
    public final synchronized void a(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.close();
            } catch (Throwable unused) {
            }
        }
        Rn.a((Closeable) this.f19964e);
        this.f19963d.b();
        this.f19964e = null;
    }
}
