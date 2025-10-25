package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import java.util.Locale;
/* loaded from: classes2.dex */
public class Q8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        Locale locale = Locale.US;
        sQLiteDatabase.execSQL(String.format(locale, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "global_number", 0));
        sQLiteDatabase.execSQL(String.format(locale, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "number_of_type", 0));
    }
}
