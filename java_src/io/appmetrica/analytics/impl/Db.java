package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import java.io.Closeable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class Db implements Ta, Closeable {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f18083a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f18084b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final String f18085c = "preferences";

    /* renamed from: d  reason: collision with root package name */
    public final Cb f18086d;

    /* renamed from: e  reason: collision with root package name */
    public volatile boolean f18087e;

    /* renamed from: f  reason: collision with root package name */
    public final J6 f18088f;

    public Db(J6 j62) {
        this.f18088f = j62;
        Cb cb2 = new Cb(this, String.format(Locale.US, "IAA-DW-%s", Integer.valueOf(Fd.a())));
        this.f18086d = cb2;
        cb2.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x002f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v10, types: [java.lang.Float] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Boolean] */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Integer] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.Long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(io.appmetrica.analytics.impl.Db r17) {
        /*
            r0 = r17
            java.lang.String r1 = "type"
            java.lang.String r2 = "value"
            java.lang.String r3 = "key"
            r17.getClass()
            io.appmetrica.analytics.impl.J6 r5 = r0.f18088f     // Catch: java.lang.Throwable -> L91
            android.database.sqlite.SQLiteDatabase r5 = r5.a()     // Catch: java.lang.Throwable -> L91
            if (r5 == 0) goto L8f
            java.lang.String r7 = r0.f18085c     // Catch: java.lang.Throwable -> L8f
            r14 = 3
            java.lang.String[] r8 = new java.lang.String[r14]     // Catch: java.lang.Throwable -> L8f
            r6 = 0
            r8[r6] = r3     // Catch: java.lang.Throwable -> L8f
            r15 = 1
            r8[r15] = r2     // Catch: java.lang.Throwable -> L8f
            r13 = 2
            r8[r13] = r1     // Catch: java.lang.Throwable -> L8f
            r9 = 0
            r10 = 0
            r11 = 0
            r12 = 0
            r16 = 0
            r6 = r5
            r4 = r13
            r13 = r16
            android.database.Cursor r6 = r6.query(r7, r8, r9, r10, r11, r12, r13)     // Catch: java.lang.Throwable -> L8f
        L2f:
            boolean r7 = r6.moveToNext()     // Catch: java.lang.Throwable -> L8d
            if (r7 == 0) goto L8d
            int r7 = r6.getColumnIndexOrThrow(r3)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r7 = r6.getString(r7)     // Catch: java.lang.Throwable -> L8d
            int r8 = r6.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L8d
            java.lang.String r8 = r6.getString(r8)     // Catch: java.lang.Throwable -> L8d
            int r9 = r6.getColumnIndexOrThrow(r1)     // Catch: java.lang.Throwable -> L8d
            int r9 = r6.getInt(r9)     // Catch: java.lang.Throwable -> L8d
            boolean r10 = android.text.TextUtils.isEmpty(r7)     // Catch: java.lang.Throwable -> L8d
            if (r10 != 0) goto L2f
            if (r9 == r15) goto L70
            if (r9 == r4) goto L6b
            if (r9 == r14) goto L66
            r10 = 4
            if (r9 == r10) goto L85
            r10 = 5
            if (r9 == r10) goto L61
        L5f:
            r8 = 0
            goto L85
        L61:
            java.lang.Float r8 = io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils.parseFloat(r8)     // Catch: java.lang.Throwable -> L8d
            goto L85
        L66:
            java.lang.Long r8 = io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils.parseLong(r8)     // Catch: java.lang.Throwable -> L8d
            goto L85
        L6b:
            java.lang.Integer r8 = io.appmetrica.analytics.coreutils.internal.parsing.ParseUtils.parseInt(r8)     // Catch: java.lang.Throwable -> L8d
            goto L85
        L70:
            java.lang.String r9 = "true"
            boolean r9 = r9.equals(r8)     // Catch: java.lang.Throwable -> L8d
            if (r9 == 0) goto L7b
            java.lang.Boolean r8 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L8d
            goto L85
        L7b:
            java.lang.String r9 = "false"
            boolean r8 = r9.equals(r8)     // Catch: java.lang.Throwable -> L8d
            if (r8 == 0) goto L5f
            java.lang.Boolean r8 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L8d
        L85:
            if (r8 == 0) goto L2f
            java.util.HashMap r9 = r0.f18083a     // Catch: java.lang.Throwable -> L8d
            r9.put(r7, r8)     // Catch: java.lang.Throwable -> L8d
            goto L2f
        L8d:
            r4 = r6
            goto L93
        L8f:
            r4 = 0
            goto L93
        L91:
            r4 = 0
            r5 = 0
        L93:
            io.appmetrica.analytics.impl.Rn.a(r4)
            io.appmetrica.analytics.impl.J6 r0 = r0.f18088f
            r0.a(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.Db.a(io.appmetrica.analytics.impl.Db):void");
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final void b() {
        synchronized (this.f18086d) {
            this.f18086d.notifyAll();
        }
    }

    public final void c() {
        if (!this.f18087e) {
            try {
                this.f18083a.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f18086d.isRunning()) {
            this.f18086d.stopRunning();
        }
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final boolean getBoolean(String str, boolean z10) {
        Object b10 = b(str);
        if (b10 instanceof Boolean) {
            return ((Boolean) b10).booleanValue();
        }
        return z10;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final int getInt(String str, int i10) {
        Object b10 = b(str);
        if (b10 instanceof Integer) {
            return ((Integer) b10).intValue();
        }
        return i10;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final long getLong(String str, long j10) {
        Object b10 = b(str);
        if (b10 instanceof Long) {
            return ((Long) b10).longValue();
        }
        return j10;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final String getString(String str, String str2) {
        Object b10 = b(str);
        if (b10 instanceof String) {
            return (String) b10;
        }
        return str2;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta remove(String str) {
        synchronized (this.f18083a) {
            c();
            this.f18083a.remove(str);
        }
        synchronized (this.f18086d) {
            this.f18084b.put(str, this);
            this.f18086d.notifyAll();
        }
        return this;
    }

    public final Object b(String str) {
        Object obj;
        synchronized (this.f18083a) {
            c();
            obj = this.f18083a.get(str);
        }
        return obj;
    }

    public static void a(Db db2, HashMap hashMap) {
        SQLiteDatabase sQLiteDatabase;
        db2.getClass();
        int size = hashMap.size();
        ContentValues[] contentValuesArr = new ContentValues[size];
        int i10 = 0;
        for (Map.Entry entry : hashMap.entrySet()) {
            ContentValues contentValues = new ContentValues();
            Object value = entry.getValue();
            contentValues.put("key", (String) entry.getKey());
            if (value == db2) {
                contentValues.putNull("value");
            } else if (value instanceof String) {
                contentValues.put("value", (String) value);
                contentValues.put("type", (Integer) 4);
            } else if (value instanceof Long) {
                contentValues.put("value", (Long) value);
                contentValues.put("type", (Integer) 3);
            } else if (value instanceof Integer) {
                contentValues.put("value", (Integer) value);
                contentValues.put("type", (Integer) 2);
            } else if (value instanceof Boolean) {
                contentValues.put("value", String.valueOf(((Boolean) value).booleanValue()));
                contentValues.put("type", (Integer) 1);
            } else if (value instanceof Float) {
                contentValues.put("value", (Float) value);
                contentValues.put("type", (Integer) 5);
            }
            contentValuesArr[i10] = contentValues;
            i10++;
        }
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            sQLiteDatabase = db2.f18088f.a();
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.beginTransaction();
                    for (int i11 = 0; i11 < size; i11++) {
                        ContentValues contentValues2 = contentValuesArr[i11];
                        if (contentValues2.getAsString("value") == null) {
                            sQLiteDatabase.delete(db2.f18085c, "key = ?", new String[]{contentValues2.getAsString("key")});
                        } else {
                            sQLiteDatabase.insertWithOnConflict(db2.f18085c, null, contentValues2, 5);
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Throwable unused) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    if (sQLiteDatabase2 != null) {
                        try {
                            sQLiteDatabase2.endTransaction();
                        } catch (Throwable unused2) {
                        }
                    }
                    sQLiteDatabase = sQLiteDatabase2;
                    db2.f18088f.a(sQLiteDatabase);
                }
            }
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.endTransaction();
                } catch (Throwable unused3) {
                }
            }
        } catch (Throwable unused4) {
        }
        db2.f18088f.a(sQLiteDatabase);
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final synchronized Ta a(String str, String str2) {
        a(str, (Object) str2);
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta a(String str, long j10) {
        a(str, Long.valueOf(j10));
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final synchronized Ta a(int i10, String str) {
        a(str, Integer.valueOf(i10));
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta a(String str, boolean z10) {
        a(str, Boolean.valueOf(z10));
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Ta a(String str, float f10) {
        a(str, Float.valueOf(f10));
        return this;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final boolean a(String str) {
        boolean containsKey;
        synchronized (this.f18083a) {
            c();
            containsKey = this.f18083a.containsKey(str);
        }
        return containsKey;
    }

    @Override // io.appmetrica.analytics.impl.Ta
    public final Set a() {
        HashSet hashSet;
        synchronized (this.f18083a) {
            hashSet = new HashSet(this.f18083a.keySet());
        }
        return hashSet;
    }

    public final void a(String str, Object obj) {
        synchronized (this.f18083a) {
            c();
            this.f18083a.put(str, obj);
        }
        synchronized (this.f18086d) {
            this.f18084b.put(str, obj);
            this.f18086d.notifyAll();
        }
    }
}
