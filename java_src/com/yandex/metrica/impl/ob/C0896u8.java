package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.impl.ob.C0627j8;
/* renamed from: com.yandex.metrica.impl.ob.u8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0896u8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS device_id_info");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS api_level_info");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS preferences");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS startup");
        sQLiteDatabase.execSQL(C0627j8.a.b.f12680b);
        sQLiteDatabase.execSQL(C0627j8.a.InterfaceC0130a.f12678b);
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS permissions");
    }
}
