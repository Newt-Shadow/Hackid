package io.appmetrica.analytics.impl;

import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
/* renamed from: io.appmetrica.analytics.impl.b5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1062b5 extends DatabaseScript {

    /* renamed from: a  reason: collision with root package name */
    public final C1037a5 f19421a = new C1037a5();

    /* renamed from: b  reason: collision with root package name */
    public final Z4 f19422b = new Z4();

    @Override // io.appmetrica.analytics.coreapi.internal.db.DatabaseScript
    public final void runScript(SQLiteDatabase sQLiteDatabase) {
        this.f19421a.runScript(sQLiteDatabase);
        this.f19422b.runScript(sQLiteDatabase);
    }
}
