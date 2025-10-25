package io.appmetrica.analytics.impl;

import android.database.sqlite.SQLiteDatabase;
/* renamed from: io.appmetrica.analytics.impl.bl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1078bl implements J6 {

    /* renamed from: a  reason: collision with root package name */
    public final C1263j7 f19440a;

    public C1078bl(C1263j7 c1263j7) {
        this.f19440a = c1263j7;
    }

    @Override // io.appmetrica.analytics.impl.J6
    public final void a(SQLiteDatabase sQLiteDatabase) {
    }

    @Override // io.appmetrica.analytics.impl.J6
    public final SQLiteDatabase a() {
        try {
            return this.f19440a.getWritableDatabase();
        } catch (Throwable unused) {
            return null;
        }
    }
}
