package com.yandex.metrica.impl.ob;

import android.database.sqlite.SQLiteDatabase;
import com.arthenica.ffmpegkit.Chapter;
/* loaded from: classes2.dex */
public class F8 extends AbstractC0652k8 {
    @Override // com.yandex.metrica.impl.ob.AbstractC0652k8
    public void a(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN environment TEXT ");
        sQLiteDatabase.execSQL("ALTER TABLE reports ADD COLUMN user_info TEXT ");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ALTER TABLE ");
        sb2.append("reports");
        sb2.append(" ADD COLUMN ");
        sb2.append("session_type");
        sb2.append(" INTEGER DEFAULT ");
        EnumC0526f6 enumC0526f6 = EnumC0526f6.FOREGROUND;
        sb2.append(enumC0526f6.a());
        sQLiteDatabase.execSQL(sb2.toString());
        StringBuilder sb3 = new StringBuilder();
        sb3.append("UPDATE ");
        sb3.append("reports");
        sb3.append(" SET ");
        sb3.append("session_type");
        sb3.append(" = ");
        EnumC0526f6 enumC0526f62 = EnumC0526f6.BACKGROUND;
        sb3.append(enumC0526f62.a());
        sb3.append(" WHERE ");
        sb3.append("session_id");
        sb3.append(" = ");
        sb3.append(-2L);
        sQLiteDatabase.execSQL(sb3.toString());
        sQLiteDatabase.execSQL("ALTER TABLE sessions ADD COLUMN server_time_offset INTEGER ");
        sQLiteDatabase.execSQL("ALTER TABLE sessions ADD COLUMN type INTEGER DEFAULT " + enumC0526f6.a());
        sQLiteDatabase.execSQL("UPDATE sessions SET type = " + enumC0526f62.a() + " WHERE " + Chapter.KEY_ID + " = -2");
    }
}
