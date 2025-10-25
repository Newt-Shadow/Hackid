package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.impl.ob.C0808qf;
import java.util.Locale;
/* loaded from: classes2.dex */
public class X8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(String.format(Locale.US, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "open_id", Long.valueOf(new C0808qf.d.a().f13357w)));
    }
}
