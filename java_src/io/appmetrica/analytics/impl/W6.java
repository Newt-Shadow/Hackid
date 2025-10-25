package io.appmetrica.analytics.impl;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.coreutils.internal.db.DBUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class W6 {

    /* renamed from: a  reason: collision with root package name */
    public final ReentrantReadWriteLock.ReadLock f19144a;

    /* renamed from: b  reason: collision with root package name */
    public final ReentrantReadWriteLock.WriteLock f19145b;

    /* renamed from: c  reason: collision with root package name */
    public final C1263j7 f19146c;

    /* renamed from: d  reason: collision with root package name */
    public final V6 f19147d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f19148e;

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList f19149f;

    /* renamed from: g  reason: collision with root package name */
    public final Context f19150g;

    /* renamed from: h  reason: collision with root package name */
    public final C1386o5 f19151h;

    /* renamed from: i  reason: collision with root package name */
    public final AtomicLong f19152i;

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList f19153j;

    /* renamed from: k  reason: collision with root package name */
    public final S6 f19154k;

    /* renamed from: l  reason: collision with root package name */
    public final C1462r7 f19155l;

    static {
        HashSet hashSet = new HashSet();
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        hashSet.add(0);
        hashSet.add(6400);
    }

    public W6(C1386o5 c1386o5, C1263j7 c1263j7, S6 s62, C1462r7 c1462r7) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f19144a = reentrantReadWriteLock.readLock();
        this.f19145b = reentrantReadWriteLock.writeLock();
        this.f19148e = new Object();
        this.f19149f = new ArrayList(3);
        AtomicLong atomicLong = new AtomicLong();
        this.f19152i = atomicLong;
        this.f19153j = new ArrayList();
        this.f19146c = c1263j7;
        this.f19150g = c1386o5.getContext();
        this.f19151h = c1386o5;
        this.f19154k = s62;
        this.f19155l = c1462r7;
        atomicLong.set(c());
        V6 v62 = new V6(this, c1386o5);
        this.f19147d = v62;
        v62.setName(a(c1386o5));
    }

    public final long a(Set set) {
        this.f19144a.lock();
        Cursor cursor = null;
        long j10 = 0;
        try {
            SQLiteDatabase readableDatabase = this.f19146c.getReadableDatabase();
            if (readableDatabase != null) {
                StringBuilder sb2 = new StringBuilder("SELECT count() FROM events");
                if (!set.isEmpty()) {
                    sb2.append(" WHERE ");
                }
                Iterator it = set.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    Integer num = (Integer) it.next();
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
        Rn.a(cursor);
        this.f19144a.unlock();
        return j10;
    }

    public final long b() {
        this.f19144a.lock();
        try {
            return this.f19152i.get();
        } finally {
            this.f19144a.unlock();
        }
    }

    public final long c() {
        long j10;
        SQLiteDatabase readableDatabase;
        this.f19144a.lock();
        try {
            readableDatabase = this.f19146c.getReadableDatabase();
        } catch (Throwable unused) {
        }
        if (readableDatabase != null) {
            j10 = DBUtils.queryRowsCount(readableDatabase, "events");
            this.f19144a.unlock();
            return j10;
        }
        j10 = 0;
        this.f19144a.unlock();
        return j10;
    }

    public final void d() {
        Cursor cursor;
        Cursor cursor2;
        this.f19144a.lock();
        Cursor cursor3 = null;
        try {
            SQLiteDatabase readableDatabase = this.f19146c.getReadableDatabase();
            if (readableDatabase != null) {
                cursor2 = readableDatabase.rawQuery(" SELECT DISTINCT id From sessions order by id asc ", new String[0]);
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("All sessions in db: ");
                    while (cursor2.moveToNext()) {
                        stringBuffer.append(cursor2.getString(0));
                        stringBuffer.append(", ");
                    }
                    cursor3 = readableDatabase.rawQuery(" SELECT DISTINCT session_id From events order by session_id asc ", new String[0]);
                    StringBuffer stringBuffer2 = new StringBuffer();
                    stringBuffer2.append("All sessions in reports db: ");
                    while (cursor3.moveToNext()) {
                        stringBuffer2.append(cursor3.getString(0));
                        stringBuffer2.append(", ");
                    }
                } catch (Throwable unused) {
                    cursor = cursor3;
                    cursor3 = cursor2;
                    cursor2 = cursor3;
                    cursor3 = cursor;
                    this.f19144a.unlock();
                    Rn.a(cursor2);
                    Rn.a(cursor3);
                }
            } else {
                cursor2 = null;
            }
        } catch (Throwable unused2) {
            cursor = null;
        }
        this.f19144a.unlock();
        Rn.a(cursor2);
        Rn.a(cursor3);
    }

    public final void e() {
        this.f19147d.start();
    }

    public final void a(InterfaceC1066b9 interfaceC1066b9) {
        this.f19153j.add(interfaceC1066b9);
    }

    public static String a(Qa qa2) {
        return "DatabaseWorker [" + qa2.b().e() + "]";
    }

    public final void a(long j10, Ik ik, long j11) {
        JSONObject jSONObject;
        boolean b10;
        F7 f72 = new F7(null, 1, null);
        C1323lh c1323lh = (C1323lh) this.f19151h.f20263k.a();
        Long valueOf = Long.valueOf(j10);
        Long valueOf2 = Long.valueOf(j11);
        try {
            jSONObject = new JSONObject().put("dId", c1323lh.getDeviceId()).put("uId", c1323lh.getUuid()).put("appVer", c1323lh.getAppVersion()).put("appBuild", c1323lh.getAppBuildNumber()).put("kitBuildType", c1323lh.getAnalyticsSdkBuildType()).put("osVer", c1323lh.getOsVersion()).put("osApiLev", c1323lh.getOsApiLevel()).put("lang", c1323lh.getLocale()).put("root", c1323lh.getDeviceRootStatus()).put("app_debuggable", ((C1088c6) c1323lh).f19469a).put(CommonUrlParts.APP_FRAMEWORK, c1323lh.getAppFramework()).put("attribution_id", c1323lh.f20051r).put("analyticsSdkVersionName", c1323lh.getAnalyticsSdkVersionName()).put("kitBuildNumber", c1323lh.getAnalyticsSdkBuildNumber());
        } catch (Throwable unused) {
            jSONObject = new JSONObject();
        }
        String jSONObject2 = jSONObject.toString();
        Long valueOf3 = Long.valueOf(AbstractC1404on.a());
        Tj tj = Sj.f18943a;
        synchronized (tj) {
            b10 = tj.f18995b.b(true);
        }
        ContentValues fromModel = f72.fromModel(new E7(valueOf, ik, jSONObject2, new D7(valueOf2, valueOf3, Boolean.valueOf(b10))));
        if (fromModel == null) {
            return;
        }
        this.f19145b.lock();
        try {
            SQLiteDatabase writableDatabase = this.f19146c.getWritableDatabase();
            if (writableDatabase != null) {
                writableDatabase.insertOrThrow("sessions", null, fromModel);
            }
        } catch (Throwable unused2) {
        }
        this.f19145b.unlock();
    }

    public final void a(ContentValues contentValues) {
        synchronized (this.f19148e) {
            this.f19149f.add(contentValues);
        }
        synchronized (this.f19147d) {
            this.f19147d.notifyAll();
        }
    }

    public final void a() {
        SQLiteDatabase writableDatabase;
        try {
            this.f19145b.lock();
            if (this.f19152i.get() > ((C1323lh) this.f19151h.f20263k.a()).f20055v && (writableDatabase = this.f19146c.getWritableDatabase()) != null) {
                int a10 = a(writableDatabase);
                this.f19152i.addAndGet(-a10);
                if (a10 != 0) {
                    Iterator it = this.f19153j.iterator();
                    while (it.hasNext()) {
                        ((InterfaceC1066b9) it.next()).a();
                    }
                }
            }
        } catch (Throwable unused) {
        }
        this.f19145b.unlock();
    }

    public final int a(SQLiteDatabase sQLiteDatabase) {
        try {
            return this.f19154k.a(sQLiteDatabase, String.format("id IN (SELECT id FROM events ORDER BY CASE WHEN type IN (%1$s) THEN 2 WHEN type IN (%2$s) THEN 1 ELSE 0 END, id LIMIT (SELECT count() FROM events) / %3$s)", TextUtils.join(", ", H9.f18298i), TextUtils.join(", ", H9.f18299j), 10), 2, this.f19151h.f20254b.f19717b, true).f18810b;
        } catch (Throwable th) {
            Oj oj = AbstractC1375nj.f20222a;
            oj.getClass();
            oj.a(new C1400oj("deleteExcessiveReports exception", th));
            return 0;
        }
    }

    public final void a(long j10, int i10, int i11, boolean z10) {
        if (i11 <= 0) {
            return;
        }
        this.f19145b.lock();
        try {
            String format = String.format(Locale.US, "%1$s = %2$s AND %3$s = %4$s AND %5$s <= (SELECT %5$s FROM %6$s WHERE %1$s = %2$s AND %3$s = %4$s ORDER BY %5$s ASC LIMIT %7$s, 1)", "session_id", Long.toString(j10), "session_type", Integer.toString(i10), Chapter.KEY_ID, "events", Integer.toString(i11 - 1));
            SQLiteDatabase writableDatabase = this.f19146c.getWritableDatabase();
            if (writableDatabase != null) {
                Q6 a10 = this.f19154k.a(writableDatabase, format, 1, this.f19151h.f20254b.f19717b, z10);
                if (a10.f18809a != null) {
                    ArrayList arrayList = new ArrayList();
                    for (ContentValues contentValues : a10.f18809a) {
                        arrayList.add(Integer.valueOf(contentValues.getAsInteger("type").intValue()));
                    }
                    Iterator it = this.f19153j.iterator();
                    while (it.hasNext()) {
                        ((InterfaceC1066b9) it.next()).b(arrayList);
                    }
                }
                List list = a10.f18809a;
                if (list != null) {
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        a((ContentValues) list.get(i12), "Event removed from db");
                    }
                }
                this.f19152i.addAndGet(-a10.f18810b);
            }
        } catch (Throwable unused) {
        }
        this.f19145b.unlock();
    }

    public final ContentValues a(long j10, Ik ik) {
        ContentValues contentValues = new ContentValues();
        this.f19144a.lock();
        Cursor cursor = null;
        try {
            SQLiteDatabase readableDatabase = this.f19146c.getReadableDatabase();
            if (readableDatabase != null) {
                cursor = readableDatabase.rawQuery(String.format(Locale.US, "SELECT report_request_parameters FROM sessions WHERE id = %s AND type = %s ORDER BY id DESC LIMIT 1", Long.valueOf(j10), Integer.valueOf(ik.f18409a)), null);
                if (cursor.moveToNext()) {
                    ContentValues contentValues2 = new ContentValues();
                    DatabaseUtils.cursorRowToContentValues(cursor, contentValues2);
                    contentValues = contentValues2;
                }
            }
        } catch (Throwable unused) {
        }
        Rn.a(cursor);
        this.f19144a.unlock();
        return contentValues;
    }

    public static String a(LinkedHashMap linkedHashMap) {
        StringBuilder sb2 = new StringBuilder("id >= ?");
        for (String str : linkedHashMap.keySet()) {
            sb2.append(sb2.length() > 0 ? " AND " : "");
            sb2.append(str + " = ? ");
        }
        if (TextUtils.isEmpty(sb2.toString())) {
            return null;
        }
        return sb2.toString();
    }

    public static String[] a(String[] strArr, LinkedHashMap linkedHashMap) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(strArr));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add((String) entry.getValue());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public final void a(ContentValues contentValues, String str) {
        Integer asInteger = contentValues.getAsInteger("type");
        if (H9.f18293d.contains(EnumC1367nb.a(asInteger != null ? asInteger.intValue() : -1))) {
            C1438q7 model = new C1462r7(null, 1, null).toModel(contentValues);
            PublicLogger publicLogger = this.f19151h.f20265m;
            EnumC1367nb enumC1367nb = model.f20420d;
            C1413p7 c1413p7 = model.f20423g;
            publicLogger.info(Mf.a(str, enumC1367nb, c1413p7.f20331b, c1413p7.f20332c), new Object[0]);
        }
    }

    public static boolean a(W6 w62) {
        boolean isEmpty;
        synchronized (w62.f19148e) {
            isEmpty = w62.f19149f.isEmpty();
        }
        return isEmpty;
    }
}
