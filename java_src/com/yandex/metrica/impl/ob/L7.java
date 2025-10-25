package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import com.yandex.metrica.impl.ob.C0627j8;
import com.yandex.metrica.impl.ob.C0767on;
import com.yandex.metrica.impl.ob.C0839s;
import com.yandex.metrica.impl.ob.C0906ui;
import com.yandex.metrica.impl.ob.K7;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* loaded from: classes2.dex */
public class L7 {

    /* renamed from: o  reason: collision with root package name */
    private static final HashSet<Integer> f10687o;

    /* renamed from: a  reason: collision with root package name */
    private final ReentrantReadWriteLock f10688a;

    /* renamed from: b  reason: collision with root package name */
    private final Lock f10689b;

    /* renamed from: c  reason: collision with root package name */
    private final Lock f10690c;

    /* renamed from: d  reason: collision with root package name */
    private final O7 f10691d;

    /* renamed from: e  reason: collision with root package name */
    private final a f10692e;

    /* renamed from: f  reason: collision with root package name */
    private final Object f10693f;

    /* renamed from: g  reason: collision with root package name */
    private final List<ContentValues> f10694g;

    /* renamed from: h  reason: collision with root package name */
    private final Context f10695h;

    /* renamed from: i  reason: collision with root package name */
    private final L3 f10696i;

    /* renamed from: j  reason: collision with root package name */
    private final AtomicLong f10697j;

    /* renamed from: k  reason: collision with root package name */
    private final List<InterfaceC0730nb> f10698k;

    /* renamed from: l  reason: collision with root package name */
    private final K7 f10699l;

    /* renamed from: m  reason: collision with root package name */
    private volatile qn<C0906ui.b, Object> f10700m;

    /* renamed from: n  reason: collision with root package name */
    private final rn<C0906ui.b, Object> f10701n;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a extends Lm {

        /* renamed from: b  reason: collision with root package name */
        private final L3 f10702b;

        a(L3 l32) {
            this.f10702b = l32;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ArrayList arrayList;
            while (isRunning()) {
                try {
                } catch (Throwable unused) {
                    stopRunning();
                }
                synchronized (this) {
                    if (L7.a(L7.this)) {
                        wait();
                    }
                    synchronized (L7.this.f10693f) {
                        arrayList = new ArrayList(L7.this.f10694g);
                        L7.this.f10694g.clear();
                    }
                    L7.this.a(arrayList);
                    synchronized (this) {
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            arrayList2.add(Integer.valueOf(L7.this.a((ContentValues) it.next())));
                        }
                        for (InterfaceC0730nb interfaceC0730nb : L7.this.f10698k) {
                            interfaceC0730nb.a(arrayList2);
                        }
                        this.f10702b.l().c();
                    }
                }
            }
        }
    }

    static {
        HashSet<Integer> hashSet = new HashSet<>();
        f10687o = hashSet;
        hashSet.add(Integer.valueOf(EnumC0396a1.EVENT_TYPE_INIT.b()));
        hashSet.add(Integer.valueOf(EnumC0396a1.EVENT_TYPE_START.b()));
    }

    public L7(L3 l32, O7 o72, K7 k72) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f10688a = reentrantReadWriteLock;
        this.f10689b = reentrantReadWriteLock.readLock();
        this.f10690c = reentrantReadWriteLock.writeLock();
        this.f10693f = new Object();
        this.f10694g = new ArrayList(3);
        AtomicLong atomicLong = new AtomicLong();
        this.f10697j = atomicLong;
        this.f10698k = new ArrayList();
        this.f10701n = new rn<>();
        this.f10691d = o72;
        this.f10695h = l32.g();
        this.f10696i = l32;
        this.f10699l = k72;
        atomicLong.set(d());
        a aVar = new a(l32);
        this.f10692e = aVar;
        aVar.setName(a(l32));
        a(l32.w());
    }

    public void e() {
        this.f10692e.start();
    }

    private void a(C0787pi c0787pi) {
        Object ynVar;
        Object ynVar2;
        C0906ui.a aVar = null;
        C0906ui.a aVar2 = (!c0787pi.f().f11303o || c0787pi.Q() == null) ? null : c0787pi.Q().f13734b;
        if (c0787pi.f().f11303o && c0787pi.Q() != null) {
            aVar = c0787pi.Q().f13733a;
        }
        EnumMap enumMap = new EnumMap(C0906ui.b.class);
        C0906ui.b bVar = C0906ui.b.WIFI;
        if (aVar2 == null) {
            ynVar = new sn();
        } else {
            ynVar = new yn(new xn(new Bn(), new Cn()), new dc.c(), aVar2.f13735a, aVar2.f13736b);
        }
        enumMap.put((EnumMap) bVar, (C0906ui.b) ynVar);
        C0906ui.b bVar2 = C0906ui.b.CELL;
        if (aVar == null) {
            ynVar2 = new sn();
        } else {
            ynVar2 = new yn(new xn(new C0767on.a(), new pn()), new dc.c(), aVar.f13735a, aVar.f13736b);
        }
        enumMap.put((EnumMap) bVar2, (C0906ui.b) ynVar2);
        this.f10700m = new qn<>(enumMap);
    }

    private long d() {
        long j10;
        SQLiteDatabase readableDatabase;
        this.f10689b.lock();
        try {
            readableDatabase = this.f10691d.getReadableDatabase();
        } catch (Throwable unused) {
        }
        if (readableDatabase != null) {
            j10 = C0419b.a(readableDatabase, "reports");
            this.f10689b.unlock();
            return j10;
        }
        j10 = 0;
        this.f10689b.unlock();
        return j10;
    }

    public Cursor b(long j10, EnumC0526f6 enumC0526f6) {
        Cursor cursor;
        SQLiteDatabase readableDatabase;
        this.f10689b.lock();
        try {
            readableDatabase = this.f10691d.getReadableDatabase();
        } catch (Throwable unused) {
        }
        if (readableDatabase != null) {
            cursor = readableDatabase.query("reports", null, "session_id = ? AND session_type = ?", new String[]{Long.toString(j10), Integer.toString(enumC0526f6.a())}, null, null, "number ASC", null);
            this.f10689b.unlock();
            return cursor;
        }
        cursor = null;
        this.f10689b.unlock();
        return cursor;
    }

    public long c() {
        this.f10689b.lock();
        try {
            return this.f10697j.get();
        } finally {
            this.f10689b.unlock();
        }
    }

    public List<ContentValues> b() {
        ArrayList arrayList = new ArrayList();
        this.f10689b.lock();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase readableDatabase = this.f10691d.getReadableDatabase();
                if (readableDatabase != null) {
                    cursor = readableDatabase.rawQuery(C0627j8.e.f12687c, null);
                    while (cursor.moveToNext()) {
                        ContentValues contentValues = new ContentValues();
                        DatabaseUtils.cursorRowToContentValues(cursor, contentValues);
                        arrayList.add(contentValues);
                    }
                }
            } finally {
                A2.a(cursor);
                this.f10689b.unlock();
            }
        } catch (Throwable unused) {
            arrayList = new ArrayList();
        }
        return arrayList;
    }

    public long a(Set<Integer> set) {
        this.f10689b.lock();
        Cursor cursor = null;
        long j10 = 0;
        try {
            SQLiteDatabase readableDatabase = this.f10691d.getReadableDatabase();
            if (readableDatabase != null) {
                StringBuilder sb2 = new StringBuilder("SELECT count() FROM reports");
                if (!set.isEmpty()) {
                    sb2.append(" WHERE ");
                }
                int i10 = 0;
                for (Integer num : set) {
                    if (i10 > 0) {
                        sb2.append(" OR ");
                    }
                    sb2.append("type == " + num);
                    i10++;
                }
                cursor = readableDatabase.rawQuery(sb2.toString(), null);
                if (cursor.moveToFirst()) {
                    j10 = cursor.getLong(0);
                }
            }
        } catch (Throwable unused) {
        }
        A2.a(cursor);
        this.f10689b.unlock();
        return j10;
    }

    public void b(C0787pi c0787pi) {
        a(c0787pi);
    }

    public void a(InterfaceC0730nb interfaceC0730nb) {
        this.f10698k.add(interfaceC0730nb);
    }

    private static String a(P3 p32) {
        return "DatabaseWorker [" + ((L3) p32).e().c() + "]";
    }

    public void a(long j10, EnumC0526f6 enumC0526f6, long j11) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(Chapter.KEY_ID, Long.valueOf(j10));
        contentValues.put("start_time", Long.valueOf(j11));
        contentValues.put("server_time_offset", Long.valueOf(C0542fm.c().a()));
        contentValues.put("obtained_before_first_sync", Boolean.valueOf(C0542fm.c().e()));
        contentValues.put("type", Integer.valueOf(enumC0526f6.a()));
        new C0595i0(this.f10695h).a(this.f10696i.m()).a(contentValues).a();
        this.f10690c.lock();
        try {
            SQLiteDatabase writableDatabase = this.f10691d.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.insertOrThrow("sessions", null, contentValues);
            }
        } catch (Throwable unused) {
        }
        this.f10690c.unlock();
    }

    public void a(Bm bm, int i10, C0451c6 c0451c6, C0839s.a aVar, O3 o32) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("number", Long.valueOf(c0451c6.a()));
        contentValues.put("global_number", Integer.valueOf(C1008z0.d(i10) ? o32.a() : 0));
        contentValues.put("number_of_type", Integer.valueOf(o32.a(i10)));
        contentValues.put(FFmpegKitFlutterPlugin.KEY_STATISTICS_TIME, Long.valueOf(c0451c6.b()));
        contentValues.put("session_id", Long.valueOf(c0451c6.c()));
        contentValues.put("session_type", Integer.valueOf(c0451c6.d().a()));
        new C0595i0(this.f10695h).a(this.f10696i.m()).a(contentValues).a(bm, aVar, f10687o.contains(Integer.valueOf(i10)) ? this.f10701n : this.f10700m);
        synchronized (this.f10693f) {
            this.f10694g.add(contentValues);
        }
        synchronized (this.f10692e) {
            this.f10692e.notifyAll();
        }
    }

    public int a(long j10) {
        this.f10690c.lock();
        int i10 = 0;
        try {
            int i11 = C0627j8.f12672a;
            SQLiteDatabase writableDatabase = this.f10691d.getWritableDatabase();
            if (writableDatabase != null) {
                i10 = writableDatabase.delete("sessions", C0627j8.e.f12688d, new String[]{String.valueOf(j10)});
            }
        } catch (Throwable unused) {
        }
        this.f10690c.unlock();
        return i10;
    }

    public void a() {
        SQLiteDatabase writableDatabase;
        try {
            this.f10690c.lock();
            if (this.f10697j.get() > this.f10696i.m().J() && (writableDatabase = this.f10691d.getWritableDatabase()) != null) {
                this.f10697j.addAndGet(-a(writableDatabase));
            }
        } catch (Throwable unused) {
        }
        this.f10690c.unlock();
    }

    private int a(SQLiteDatabase sQLiteDatabase) {
        try {
            return this.f10699l.a(sQLiteDatabase, "reports", String.format("%1$s IN (SELECT %1$s FROM %2$s ORDER BY CASE WHEN %3$s IN (%4$s) THEN 2 WHEN %3$s IN (%5$s) THEN 1 ELSE 0 END, %6$s LIMIT (SELECT count() FROM %2$s) / %7$s)", Chapter.KEY_ID, "reports", "type", TextUtils.join(", ", C1008z0.f14050i), TextUtils.join(", ", C1008z0.f14051j), Chapter.KEY_ID, 10), K7.b.DB_OVERFLOW, this.f10696i.e().a(), true).f10611b;
        } catch (Throwable th) {
            ((C0736nh) C0761oh.a()).reportError("deleteExcessiveReports exception", th);
            return 0;
        }
    }

    public void a(long j10, int i10, int i11, boolean z10) {
        List<ContentValues> list;
        if (i11 <= 0) {
            return;
        }
        this.f10690c.lock();
        try {
            String format = String.format(Locale.US, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)", "session_id", Long.toString(j10), "session_type", Integer.toString(i10), Chapter.KEY_ID, "reports", Integer.toString(i11 - 1));
            SQLiteDatabase writableDatabase = this.f10691d.getWritableDatabase();
            if (writableDatabase != null) {
                K7.a a10 = this.f10699l.a(writableDatabase, "reports", format, K7.b.BAD_REQUEST, this.f10696i.e().a(), z10);
                if (a10.f10610a != null) {
                    ArrayList arrayList = new ArrayList();
                    for (ContentValues contentValues : a10.f10610a) {
                        arrayList.add(Integer.valueOf(a(contentValues)));
                    }
                    for (InterfaceC0730nb interfaceC0730nb : this.f10698k) {
                        interfaceC0730nb.b(arrayList);
                    }
                }
                if (this.f10696i.q().isEnabled() && (list = a10.f10610a) != null) {
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        a(list.get(i12), "Event removed from db");
                    }
                }
                this.f10697j.addAndGet(-a10.f10611b);
            }
        } catch (Throwable unused) {
        }
        this.f10690c.unlock();
    }

    public Cursor a(Map<String, String> map) {
        Cursor cursor;
        SQLiteDatabase readableDatabase;
        this.f10689b.lock();
        try {
            readableDatabase = this.f10691d.getReadableDatabase();
        } catch (Throwable unused) {
        }
        if (readableDatabase != null) {
            cursor = readableDatabase.query("sessions", null, a("id >= ?", map), a(new String[]{Long.toString(0L)}, map), null, null, "id ASC", null);
            this.f10689b.unlock();
            return cursor;
        }
        cursor = null;
        this.f10689b.unlock();
        return cursor;
    }

    void a(List<ContentValues> list) {
        SQLiteDatabase sQLiteDatabase;
        if (list.isEmpty()) {
            return;
        }
        this.f10690c.lock();
        SQLiteDatabase sQLiteDatabase2 = null;
        try {
            sQLiteDatabase = this.f10691d.getWritableDatabase();
            if (sQLiteDatabase != null) {
                try {
                    sQLiteDatabase.beginTransaction();
                    for (ContentValues contentValues : list) {
                        sQLiteDatabase.insertOrThrow("reports", null, contentValues);
                        this.f10697j.incrementAndGet();
                        a(contentValues, "Event saved to db");
                    }
                    sQLiteDatabase.setTransactionSuccessful();
                    this.f10697j.get();
                } catch (Throwable unused) {
                    sQLiteDatabase2 = sQLiteDatabase;
                    sQLiteDatabase = sQLiteDatabase2;
                    A2.a(sQLiteDatabase);
                    this.f10690c.unlock();
                }
            }
        } catch (Throwable unused2) {
        }
        A2.a(sQLiteDatabase);
        this.f10690c.unlock();
    }

    public ContentValues a(long j10, EnumC0526f6 enumC0526f6) {
        ContentValues contentValues = new ContentValues();
        this.f10689b.lock();
        Cursor cursor = null;
        try {
            SQLiteDatabase readableDatabase = this.f10691d.getReadableDatabase();
            if (readableDatabase != null) {
                cursor = readableDatabase.rawQuery(String.format(Locale.US, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1", Long.valueOf(j10), Integer.valueOf(enumC0526f6.a())), null);
                if (cursor.moveToNext()) {
                    ContentValues contentValues2 = new ContentValues();
                    DatabaseUtils.cursorRowToContentValues(cursor, contentValues2);
                    contentValues = contentValues2;
                }
            }
            A2.a(cursor);
            this.f10689b.unlock();
        } catch (Throwable unused) {
            A2.a(cursor);
            this.f10689b.unlock();
        }
        return contentValues;
    }

    private static String a(String str, Map<String, String> map) {
        StringBuilder sb2 = new StringBuilder(str);
        for (String str2 : map.keySet()) {
            sb2.append(sb2.length() > 0 ? " AND " : "");
            sb2.append(str2 + " = ? ");
        }
        if (TextUtils.isEmpty(sb2.toString())) {
            return null;
        }
        return sb2.toString();
    }

    private static String[] a(String[] strArr, Map<String, String> map) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(strArr));
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private void a(ContentValues contentValues, String str) {
        Integer asInteger = contentValues.getAsInteger("type");
        if (C1008z0.c(asInteger != null ? asInteger.intValue() : -1)) {
            StringBuilder sb2 = new StringBuilder(str);
            sb2.append(": ");
            String asString = contentValues.getAsString(Constants.NAME);
            if (asString == null) {
                asString = "";
            }
            sb2.append(asString);
            String asString2 = contentValues.getAsString("value");
            String str2 = asString2 != null ? asString2 : "";
            if (C1008z0.e(a(contentValues)) && !TextUtils.isEmpty(str2)) {
                sb2.append(" with value ");
                sb2.append(str2);
            }
            this.f10696i.q().i(sb2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(ContentValues contentValues) {
        return contentValues.getAsInteger("type").intValue();
    }

    static boolean a(L7 l72) {
        boolean isEmpty;
        synchronized (l72.f10693f) {
            isEmpty = l72.f10694g.isEmpty();
        }
        return isEmpty;
    }
}
