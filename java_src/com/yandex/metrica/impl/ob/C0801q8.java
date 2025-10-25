package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
/* renamed from: com.yandex.metrica.impl.ob.q8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0801q8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS reports");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS sessions");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS preferences");
    }
}
