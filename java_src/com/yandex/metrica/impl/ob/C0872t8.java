package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.impl.ob.C0627j8;
/* renamed from: com.yandex.metrica.impl.ob.t8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0872t8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS startup (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
        sQLiteDatabase.execSQL(C0627j8.a.b.f12679a);
        sQLiteDatabase.execSQL(C0627j8.a.InterfaceC0130a.f12677a);
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS binary_data (data_key TEXT PRIMARY KEY,value BLOB)");
    }
}
