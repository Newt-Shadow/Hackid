package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import java.util.Locale;
/* loaded from: classes2.dex */
public class M8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        Locale locale = Locale.US;
        sQLiteDatabase.execSQL(String.format(locale, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d", "reports", "encrypting_mode", Integer.valueOf(Em.NONE.a())));
        sQLiteDatabase.execSQL(String.format(locale, "UPDATE %s SET %s = %d where %s=%d", "reports", "encrypting_mode", Integer.valueOf(Em.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER.a()), "type", Integer.valueOf(EnumC0396a1.EVENT_TYPE_IDENTITY.b())));
        sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN profile_id TEXT ");
    }
}
