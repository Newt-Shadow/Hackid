package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes2.dex */
public class L8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE sessions ADD COLUMN obtained_before_first_sync INTEGER DEFAULT 0");
    }
}
