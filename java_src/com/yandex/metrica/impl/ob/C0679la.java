package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.io.Closeable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.la  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0679la implements S7, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, Object> f12785a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, Object> f12786b;

    /* renamed from: c  reason: collision with root package name */
    private final String f12787c;

    /* renamed from: d  reason: collision with root package name */
    private final a f12788d;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f12789e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC0553g8 f12790f;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.la$a */
    /* loaded from: classes2.dex */
    public class a extends Lm {
        public a(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            HashMap hashMap;
            synchronized (C0679la.this.f12785a) {
                C0679la.b(C0679la.this);
                C0679la.this.f12789e = true;
                C0679la.this.f12785a.notifyAll();
            }
            while (isRunning()) {
                synchronized (this) {
                    if (C0679la.this.f12786b.size() == 0) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                    hashMap = new HashMap(C0679la.this.f12786b);
                    C0679la.this.f12786b.clear();
                }
                if (hashMap.size() > 0) {
                    C0679la.a(C0679la.this, hashMap);
                    hashMap.clear();
                }
            }
        }
    }

    public C0679la(O7 o72, String str) {
        this(str, new C0603i8(o72));
    }

    static void a(C0679la c0679la, Map map) {
        SQLiteDatabase sQLiteDatabase;
        c0679la.getClass();
        int size = map.size();
        ContentValues[] contentValuesArr = new ContentValues[size];
        int i10 = 0;
        for (Map.Entry entry : map.entrySet()) {
            ContentValues contentValues = new ContentValues();
            Object value = entry.getValue();
            contentValues.put("key", (String) entry.getKey());
            if (value == c0679la) {
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
            sQLiteDatabase = c0679la.f12790f.a();
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.beginTransaction();
                    for (int i11 = 0; i11 < size; i11++) {
                        ContentValues contentValues2 = contentValuesArr[i11];
                        if (contentValues2.getAsString("value") == null) {
                            sQLiteDatabase.delete(c0679la.f12787c, "key = ?", new String[]{contentValues2.getAsString("key")});
                        } else {
                            sQLiteDatabase.insertWithOnConflict(c0679la.f12787c, null, contentValues2, 5);
                        }
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                } catch (Throwable unused) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    sQLiteDatabase = sQLiteDatabase2;
                    A2.a(sQLiteDatabase);
                    c0679la.f12790f.a(sQLiteDatabase);
                }
            }
        } catch (Throwable unused2) {
        }
        A2.a(sQLiteDatabase);
        c0679la.f12790f.a(sQLiteDatabase);
    }

    static void b(C0679la c0679la) {
        Cursor cursor;
        SQLiteDatabase sQLiteDatabase;
        Object obj;
        c0679la.getClass();
        try {
            sQLiteDatabase = c0679la.f12790f.a();
        } catch (Throwable unused) {
            cursor = null;
            sQLiteDatabase = null;
        }
        if (sQLiteDatabase != null) {
            try {
                Cursor query = sQLiteDatabase.query(c0679la.f12787c, new String[]{"key", "value", "type"}, null, null, null, null, null);
                while (query.moveToNext()) {
                    try {
                        String string = query.getString(query.getColumnIndexOrThrow("key"));
                        String string2 = query.getString(query.getColumnIndexOrThrow("value"));
                        int i10 = query.getInt(query.getColumnIndexOrThrow("type"));
                        if (!TextUtils.isEmpty(string)) {
                            if (i10 != 1) {
                                if (i10 == 2) {
                                    obj = Integer.valueOf(Integer.parseInt(string2));
                                } else if (i10 != 3) {
                                    obj = string2;
                                    if (i10 != 4) {
                                        if (i10 == 5) {
                                            try {
                                                obj = Float.valueOf(Float.parseFloat(string2));
                                            } catch (NumberFormatException unused2) {
                                            }
                                        }
                                        obj = null;
                                    }
                                } else {
                                    obj = Long.valueOf(Long.parseLong(string2));
                                }
                            } else if ("true".equals(string2)) {
                                obj = Boolean.TRUE;
                            } else {
                                if ("false".equals(string2)) {
                                    obj = Boolean.FALSE;
                                }
                                obj = null;
                            }
                            if (obj != null) {
                                c0679la.f12785a.put(string, obj);
                            }
                        }
                    } catch (Throwable unused3) {
                    }
                }
                cursor = query;
            } catch (Throwable unused4) {
            }
            A2.a(cursor);
            c0679la.f12790f.a(sQLiteDatabase);
        }
        cursor = null;
        A2.a(cursor);
        c0679la.f12790f.a(sQLiteDatabase);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f12788d.isRunning()) {
            this.f12788d.stopRunning();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C0679la(String str, InterfaceC0553g8 interfaceC0553g8) {
        this.f12785a = new HashMap();
        this.f12786b = new HashMap();
        this.f12790f = interfaceC0553g8;
        this.f12787c = str;
        a aVar = new a(String.format(Locale.US, "YMM-DW-%s", Integer.valueOf(Mm.c())));
        this.f12788d = aVar;
        aVar.start();
    }

    private Object c(String str) {
        Object obj;
        synchronized (this.f12785a) {
            c();
            obj = this.f12785a.get(str);
        }
        return obj;
    }

    private void c() {
        if (this.f12789e) {
            return;
        }
        try {
            this.f12785a.wait();
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public void b() {
        synchronized (this.f12788d) {
            this.f12788d.notifyAll();
        }
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public String b(String str, String str2) {
        Object c10 = c(str);
        return c10 instanceof String ? (String) c10 : str2;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public boolean b(String str, boolean z10) {
        Object c10 = c(str);
        return c10 instanceof Boolean ? ((Boolean) c10).booleanValue() : z10;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str) {
        synchronized (this.f12785a) {
            c();
            this.f12785a.remove(str);
        }
        synchronized (this.f12788d) {
            this.f12786b.put(str, this);
            this.f12788d.notifyAll();
        }
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 b(String str, long j10) {
        a(str, Long.valueOf(j10));
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public synchronized S7 b(String str, int i10) {
        a(str, Integer.valueOf(i10));
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public int a(String str, int i10) {
        Object c10 = c(str);
        return c10 instanceof Integer ? ((Integer) c10).intValue() : i10;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public long a(String str, long j10) {
        Object c10 = c(str);
        return c10 instanceof Long ? ((Long) c10).longValue() : j10;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public synchronized S7 a(String str, String str2) {
        a(str, (Object) str2);
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public S7 a(String str, boolean z10) {
        a(str, Boolean.valueOf(z10));
        return this;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public boolean a(String str) {
        boolean containsKey;
        synchronized (this.f12785a) {
            c();
            containsKey = this.f12785a.containsKey(str);
        }
        return containsKey;
    }

    @Override // com.yandex.metrica.impl.ob.S7
    public Set<String> a() {
        HashSet hashSet;
        synchronized (this.f12785a) {
            hashSet = new HashSet(this.f12785a.keySet());
        }
        return hashSet;
    }

    void a(String str, Object obj) {
        synchronized (this.f12785a) {
            c();
            this.f12785a.put(str, obj);
        }
        synchronized (this.f12788d) {
            this.f12786b.put(str, obj);
            this.f12788d.notifyAll();
        }
    }
}
