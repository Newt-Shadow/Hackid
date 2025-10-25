package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.YandexMetrica;
/* renamed from: com.yandex.metrica.impl.ob.v8  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0920v8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS api_level_info (API_LEVEL INT )");
        ContentValues contentValues = new ContentValues();
        contentValues.put("API_LEVEL", Integer.valueOf(YandexMetrica.getLibraryApiLevel()));
        sQLiteDatabase.insert("api_level_info", "API_LEVEL", contentValues);
    }
}
