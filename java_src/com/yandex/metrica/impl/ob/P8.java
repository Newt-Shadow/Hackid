package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
/* loaded from: classes2.dex */
public class P8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete("reports", "session_id = ?", new String[]{String.valueOf(-2L)});
        sQLiteDatabase.delete("sessions", "id = ?", new String[]{String.valueOf(-2L)});
    }
}
