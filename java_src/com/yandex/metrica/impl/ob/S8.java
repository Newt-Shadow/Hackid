package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.yandex.metrica.impl.ob.E;
import java.util.Locale;
/* loaded from: classes2.dex */
public class S8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        Locale locale = Locale.US;
        sQLiteDatabase.execSQL(String.format(locale, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "battery_charge_type", Integer.valueOf(E.b.a.UNKNOWN.a())));
        sQLiteDatabase.execSQL(String.format(locale, "ALTER TABLE %s ADD COLUMN %s TEXT", "reports", "collection_mode"));
        sQLiteDatabase.execSQL(String.format(locale, "UPDATE %s SET %s = \"\" WHERE %s == %d AND %2$s != \"\" AND %2$s IS NOT NULL", "reports", "value", "type", Integer.valueOf(EnumC0396a1.EVENT_TYPE_START.b())));
    }
}
