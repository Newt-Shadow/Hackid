package com.yandex.metrica.impl.ob;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes2.dex */
public class V7 {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0553g8 f11654a;

    public V7(O7 o72, String str) {
        this(new C0603i8(o72), str);
    }

    public void a() {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = this.f11654a.a();
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.execSQL("DROP TABLE IF EXISTS permissions");
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
            sQLiteDatabase = null;
        }
        this.f11654a.a(sQLiteDatabase);
    }

    public List<Bd> b() {
        SQLiteDatabase sQLiteDatabase;
        Cursor cursor;
        boolean z10;
        try {
            sQLiteDatabase = this.f11654a.a();
        } catch (Throwable unused) {
            sQLiteDatabase = null;
            cursor = null;
        }
        if (sQLiteDatabase != null) {
            try {
                cursor = sQLiteDatabase.query("permissions", null, null, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            ArrayList arrayList = new ArrayList();
                            do {
                                int columnIndex = cursor.getColumnIndex(Constants.NAME);
                                int columnIndex2 = cursor.getColumnIndex("granted");
                                String string = cursor.getString(columnIndex);
                                if (cursor.getLong(columnIndex2) == 1) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                arrayList.add(new Bd(string, z10));
                            } while (cursor.moveToNext());
                            this.f11654a.a(sQLiteDatabase);
                            A2.a(cursor);
                            return arrayList;
                        }
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable unused3) {
            }
            this.f11654a.a(sQLiteDatabase);
            A2.a(cursor);
            return null;
        }
        cursor = null;
        this.f11654a.a(sQLiteDatabase);
        A2.a(cursor);
        return null;
    }

    V7(InterfaceC0553g8 interfaceC0553g8, String str) {
        this.f11654a = interfaceC0553g8;
    }
}
