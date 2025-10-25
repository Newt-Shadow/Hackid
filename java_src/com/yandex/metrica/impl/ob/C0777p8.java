package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.impl.ob.C0627j8;
/* renamed from: com.yandex.metrica.impl.ob.p8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0777p8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(C0627j8.d.f12684b);
        sQLiteDatabase.execSQL(C0627j8.e.f12686b);
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS preferences (key TEXT PRIMARY KEY,value TEXT,type INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS binary_data (data_key TEXT PRIMARY KEY,value BLOB)");
    }
}
