package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class Ym implements TempCacheStorage {

    /* renamed from: a  reason: collision with root package name */
    public final J6 f19307a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19308b;

    /* renamed from: c  reason: collision with root package name */
    public final SystemTimeProvider f19309c = new SystemTimeProvider();

    public Ym(J6 j62, String str) {
        this.f19307a = j62;
        this.f19308b = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    /* renamed from: a */
    public final List<TempCacheStorage.Entry> get(String str, int i10) {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2;
        C1055an c1055an;
        ArrayList arrayList = new ArrayList();
        Cursor cursor2 = null;
        try {
            sQLiteDatabase2 = this.f19307a.a();
            sQLiteDatabase = sQLiteDatabase2;
        } catch (Throwable unused) {
            cursor = null;
        }
        if (sQLiteDatabase2 != null) {
            try {
                cursor = sQLiteDatabase2.query(false, this.f19308b, null, "scope=?", new String[]{str}, null, null, Chapter.KEY_ID, String.valueOf(i10));
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        try {
                            try {
                                c1055an = new C1055an(cursor.getLong(cursor.getColumnIndexOrThrow(Chapter.KEY_ID)), cursor.getString(cursor.getColumnIndexOrThrow("scope")), cursor.getLong(cursor.getColumnIndexOrThrow(Constants.TIMESTAMP)), cursor.getBlob(cursor.getColumnIndexOrThrow("data")));
                            } catch (Throwable unused2) {
                                c1055an = null;
                            }
                            if (c1055an != null) {
                                arrayList.add(c1055an);
                            }
                        } catch (Throwable unused3) {
                            cursor2 = sQLiteDatabase2;
                            sQLiteDatabase2 = cursor2;
                            cursor2 = cursor;
                            sQLiteDatabase = sQLiteDatabase2;
                            Rn.a(cursor2);
                            this.f19307a.a(sQLiteDatabase);
                            return arrayList;
                        }
                    }
                }
            } catch (Throwable unused4) {
                cursor = null;
            }
            cursor2 = cursor;
            sQLiteDatabase = sQLiteDatabase2;
        }
        Rn.a(cursor2);
        this.f19307a.a(sQLiteDatabase);
        return arrayList;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    public final long put(String str, long j10, byte[] bArr) {
        SQLiteDatabase sQLiteDatabase;
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            sQLiteDatabase = this.f19307a.a();
            if (sQLiteDatabase != null) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("scope", str);
                    contentValues.put(Constants.TIMESTAMP, Long.valueOf(j10));
                    contentValues.put("data", bArr);
                    long insertOrThrow = sQLiteDatabase.insertOrThrow(this.f19308b, null, contentValues);
                    this.f19307a.a(sQLiteDatabase);
                    return insertOrThrow;
                } catch (Throwable unused) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    sQLiteDatabase = sQLiteDatabase2;
                    this.f19307a.a(sQLiteDatabase);
                    return -1L;
                }
            }
        } catch (Throwable unused2) {
        }
        this.f19307a.a(sQLiteDatabase);
        return -1L;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    public final void remove(long j10) {
        a("id=?", new String[]{String.valueOf(j10)});
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    public final void removeOlderThan(String str, long j10) {
        a("scope=? AND timestamp<?", new String[]{str, String.valueOf(this.f19309c.currentTimeMillis() - j10)});
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.TempCacheStorage
    public final TempCacheStorage.Entry get(String str) {
        Object Q;
        Q = yc.w.Q(get(str, 1));
        return (TempCacheStorage.Entry) Q;
    }

    public final void a(String str, String[] strArr) {
        SQLiteDatabase sQLiteDatabase;
        try {
            sQLiteDatabase = this.f19307a.a();
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.delete(this.f19308b, str, strArr);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
            sQLiteDatabase = null;
        }
        this.f19307a.a(sQLiteDatabase);
    }
}
