package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import java.util.Locale;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes2.dex */
public class V8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(String.format(Locale.US, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", ClimateForcast.SOURCE, 0));
    }
}
