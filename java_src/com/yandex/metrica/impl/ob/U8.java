package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import java.util.Locale;
/* loaded from: classes2.dex */
public class U8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(String.format(Locale.US, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "call_state", 0));
    }
}
