package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public abstract class J7 {

    /* renamed from: a  reason: collision with root package name */
    private final O7 f10484a;

    /* renamed from: b  reason: collision with root package name */
    private final C0403a8 f10485b;

    /* renamed from: f  reason: collision with root package name */
    private final ContentValues f10489f = new ContentValues();

    /* renamed from: c  reason: collision with root package name */
    private final AtomicLong f10486c = new AtomicLong(d());

    /* renamed from: d  reason: collision with root package name */
    private final AtomicLong f10487d = new AtomicLong(a(Long.MAX_VALUE));

    /* renamed from: e  reason: collision with root package name */
    private final AtomicLong f10488e = new AtomicLong(a());

    /* JADX INFO: Access modifiers changed from: package-private */
    public J7(O7 o72, C0403a8 c0403a8) {
        this.f10484a = o72;
        this.f10485b = c0403a8;
    }

    private long d() {
        try {
            SQLiteDatabase readableDatabase = this.f10484a.getReadableDatabase();
            if (readableDatabase != null) {
                return C0419b.a(readableDatabase, e());
            }
            return 0L;
        } catch (Throwable unused) {
            return 0L;
        }
    }

    protected abstract long a();

    public synchronized void a(long j10, String str) {
        try {
            SQLiteDatabase writableDatabase = this.f10484a.getWritableDatabase();
            if (writableDatabase != null) {
                this.f10489f.clear();
                this.f10489f.put("incremental_id", Long.valueOf(this.f10488e.get() + 1));
                this.f10489f.put(Constants.TIMESTAMP, Long.valueOf(j10));
                this.f10489f.put("data", str);
                if (writableDatabase.insert(e(), null, this.f10489f) != -1) {
                    this.f10486c.incrementAndGet();
                    this.f10488e.incrementAndGet();
                    b(this.f10488e.get());
                    if (this.f10487d.get() > j10) {
                        this.f10487d.set(j10);
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public long b() {
        return this.f10487d.get();
    }

    protected abstract void b(long j10);

    public long c() {
        return this.f10486c.get();
    }

    public abstract String e();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0403a8 f() {
        return this.f10485b;
    }

    public synchronized int b(int i10) {
        int i11 = 0;
        if (i10 < 1) {
            return 0;
        }
        String format = String.format(Locale.US, "%1$s <= (select max(%1$s) from (select %1$s from %2$s order by %1$s limit ?))", "incremental_id", e());
        try {
            SQLiteDatabase writableDatabase = this.f10484a.getWritableDatabase();
            if (writableDatabase != null && (i11 = writableDatabase.delete(e(), format, new String[]{String.valueOf(i10)})) > 0) {
                this.f10486c.getAndAdd(-i11);
                this.f10487d.set(a(Long.MAX_VALUE));
            }
        } catch (Throwable unused) {
        }
        return i11;
    }

    public synchronized int c(long j10) {
        int i10;
        i10 = 0;
        String format = String.format(Locale.US, "%s <= ?", "incremental_id");
        try {
            SQLiteDatabase writableDatabase = this.f10484a.getWritableDatabase();
            if (writableDatabase != null && (i10 = writableDatabase.delete(e(), format, new String[]{String.valueOf(j10)})) > 0) {
                this.f10486c.getAndAdd(-i10);
                this.f10487d.set(a(Long.MAX_VALUE));
            }
        } catch (Throwable unused) {
        }
        return i10;
    }

    public long a(long j10) {
        String format = String.format(Locale.US, "Select min(%s) from %s", Constants.TIMESTAMP, e());
        Cursor cursor = null;
        try {
            SQLiteDatabase readableDatabase = this.f10484a.getReadableDatabase();
            if (readableDatabase != null) {
                cursor = readableDatabase.rawQuery(format, null);
                if (cursor.moveToFirst()) {
                    long j11 = cursor.getLong(0);
                    if (j11 != 0) {
                        j10 = j11;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        A2.a(cursor);
        return j10;
    }

    public synchronized Map<Long, String> a(int i10) {
        LinkedHashMap linkedHashMap;
        linkedHashMap = new LinkedHashMap();
        Cursor cursor = null;
        try {
            SQLiteDatabase readableDatabase = this.f10484a.getReadableDatabase();
            if (readableDatabase != null) {
                cursor = readableDatabase.query(e(), new String[]{"incremental_id", "data"}, null, null, null, null, "incremental_id ASC", String.valueOf(i10));
                while (cursor.moveToNext()) {
                    this.f10489f.clear();
                    try {
                        C0419b.a(cursor, this.f10489f);
                    } catch (Throwable unused) {
                    }
                    Long asLong = this.f10489f.getAsLong("incremental_id");
                    String asString = this.f10489f.getAsString("data");
                    if (asLong != null && asString != null) {
                        linkedHashMap.put(asLong, asString);
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        A2.a(cursor);
        return linkedHashMap;
    }
}
