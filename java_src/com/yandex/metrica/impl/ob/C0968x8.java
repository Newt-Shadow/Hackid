package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
/* renamed from: com.yandex.metrica.impl.ob.x8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0968x8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS startup (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
    }
}
