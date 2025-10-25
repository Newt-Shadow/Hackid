package io.appmetrica.analytics.impl;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Rm {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f18912a;

    public Rm(String str, HashMap<String, List<String>> hashMap) {
        this.f18912a = hashMap;
    }

    public final HashMap<String, List<String>> a() {
        return this.f18912a;
    }

    public final boolean a(SQLiteDatabase sQLiteDatabase) {
        try {
            boolean z10 = true;
            for (Map.Entry entry : this.f18912a.entrySet()) {
                Cursor query = sQLiteDatabase.query((String) entry.getKey(), null, null, null, null, null, null);
                if (query == null) {
                    Rn.a(query);
                    return false;
                }
                String str = (String) entry.getKey();
                List asList = Arrays.asList(query.getColumnNames());
                Collections.sort(asList);
                z10 &= ((List) entry.getValue()).equals(asList);
                Rn.a(query);
            }
            return z10;
        } catch (Throwable unused) {
            return false;
        }
    }
}
