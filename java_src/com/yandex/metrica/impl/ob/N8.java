package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import java.util.Locale;
/* loaded from: classes2.dex */
public class N8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(String.format(Locale.US, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "first_occurrence_status", 0));
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS binary_data (data_key TEXT PRIMARY KEY,value BLOB)");
    }
}
