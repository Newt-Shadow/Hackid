package com.yandex.metrica.impl.ob;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Z7 implements Y7 {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, List<String>> f11872a;

    public Z7(String str, HashMap<String, List<String>> hashMap) {
        this.f11872a = hashMap;
    }

    public boolean a(SQLiteDatabase sQLiteDatabase) {
        try {
            boolean z10 = true;
            for (Map.Entry<String, List<String>> entry : this.f11872a.entrySet()) {
                Cursor query = sQLiteDatabase.query(entry.getKey(), null, null, null, null, null, null);
                if (query == null) {
                    A2.a(query);
                    return false;
                }
                entry.getKey();
                List asList = Arrays.asList(query.getColumnNames());
                Collections.sort(asList);
                z10 &= entry.getValue().equals(asList);
                A2.a(query);
            }
            return z10;
        } catch (Throwable unused) {
            return false;
        }
    }
}
