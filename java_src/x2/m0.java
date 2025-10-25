package x2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import p2.i;
import s2.a;
import s2.c;
import y2.b;
/* loaded from: classes.dex */
public class m0 implements x2.d, y2.b, x2.c {

    /* renamed from: f  reason: collision with root package name */
    private static final n2.c f32209f = n2.c.b("proto");

    /* renamed from: a  reason: collision with root package name */
    private final v0 f32210a;

    /* renamed from: b  reason: collision with root package name */
    private final z2.a f32211b;

    /* renamed from: c  reason: collision with root package name */
    private final z2.a f32212c;

    /* renamed from: d  reason: collision with root package name */
    private final e f32213d;

    /* renamed from: e  reason: collision with root package name */
    private final wc.a f32214e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface b {
        Object apply(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final String f32215a;

        /* renamed from: b  reason: collision with root package name */
        final String f32216b;

        private c(String str, String str2) {
            this.f32215a = str;
            this.f32216b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface d {
        Object a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(z2.a aVar, z2.a aVar2, e eVar, v0 v0Var, wc.a aVar3) {
        this.f32210a = v0Var;
        this.f32211b = aVar;
        this.f32212c = aVar2;
        this.f32213d = eVar;
        this.f32214e = aVar3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object A1(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        N1(sQLiteDatabase.rawQuery(str2, null), new b() { // from class: x2.x
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Object z12;
                z12 = m0.this.z1((Cursor) obj);
                return z12;
            }
        });
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean B1(Cursor cursor) {
        boolean z10;
        if (cursor.getCount() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object C1(String str, c.b bVar, long j10, SQLiteDatabase sQLiteDatabase) {
        if (!((Boolean) N1(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(bVar.c())}), new b() { // from class: x2.v
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Boolean B1;
                B1 = m0.B1((Cursor) obj);
                return B1;
            }
        })).booleanValue()) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put(Constants.REASON, Integer.valueOf(bVar.c()));
            contentValues.put("events_dropped_count", Long.valueOf(j10));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        } else {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j10 + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(bVar.c())});
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object D1(long j10, p2.p pVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j10));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{pVar.b(), String.valueOf(a3.a.a(pVar.d()))}) < 1) {
            contentValues.put("backend_name", pVar.b());
            contentValues.put(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR, Integer.valueOf(a3.a.a(pVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object E1(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.f32211b.a()).execute();
        return null;
    }

    private List F1(SQLiteDatabase sQLiteDatabase, final p2.p pVar, int i10) {
        final ArrayList arrayList = new ArrayList();
        Long c12 = c1(sQLiteDatabase, pVar);
        if (c12 == null) {
            return arrayList;
        }
        N1(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline", "product_id", "pseudonymous_id", "experiment_ids_clear_blob", "experiment_ids_encrypted_blob"}, "context_id = ?", new String[]{c12.toString()}, null, null, null, String.valueOf(i10)), new b() { // from class: x2.y
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Object v12;
                v12 = m0.this.v1(arrayList, pVar, (Cursor) obj);
                return v12;
            }
        });
        return arrayList;
    }

    private Map G1(SQLiteDatabase sQLiteDatabase, List list) {
        final HashMap hashMap = new HashMap();
        StringBuilder sb2 = new StringBuilder("event_id IN (");
        for (int i10 = 0; i10 < list.size(); i10++) {
            sb2.append(((k) list.get(i10)).c());
            if (i10 < list.size() - 1) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        N1(sQLiteDatabase.query("event_metadata", new String[]{"event_id", io.flutter.plugins.firebase.analytics.Constants.NAME, "value"}, sb2.toString(), null, null, null, null), new b() { // from class: x2.t
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Object w12;
                w12 = m0.w1(hashMap, (Cursor) obj);
                return w12;
            }
        });
        return hashMap;
    }

    private static byte[] H1(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    private void I1(a.C0304a c0304a, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            c0304a.a(s2.d.c().c((String) entry.getKey()).b((List) entry.getValue()).a());
        }
    }

    private byte[] J1(long j10) {
        return (byte[]) N1(X0().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j10)}, null, null, "sequence_num"), new b() { // from class: x2.a0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                byte[] y12;
                y12 = m0.y1((Cursor) obj);
                return y12;
            }
        });
    }

    private Object K1(d dVar, b bVar) {
        long a10 = this.f32212c.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e10) {
                if (this.f32212c.a() >= this.f32213d.b() + a10) {
                    return bVar.apply(e10);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    private static n2.c L1(String str) {
        if (str == null) {
            return f32209f;
        }
        return n2.c.b(str);
    }

    private static String M1(Iterable iterable) {
        StringBuilder sb2 = new StringBuilder("(");
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            sb2.append(((k) it.next()).c());
            if (it.hasNext()) {
                sb2.append(',');
            }
        }
        sb2.append(')');
        return sb2.toString();
    }

    static Object N1(Cursor cursor, b bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    private c.b T0(int i10) {
        c.b bVar = c.b.REASON_UNKNOWN;
        if (i10 == bVar.c()) {
            return bVar;
        }
        c.b bVar2 = c.b.MESSAGE_TOO_OLD;
        if (i10 == bVar2.c()) {
            return bVar2;
        }
        c.b bVar3 = c.b.CACHE_FULL;
        if (i10 == bVar3.c()) {
            return bVar3;
        }
        c.b bVar4 = c.b.PAYLOAD_TOO_BIG;
        if (i10 == bVar4.c()) {
            return bVar4;
        }
        c.b bVar5 = c.b.MAX_RETRIES_REACHED;
        if (i10 == bVar5.c()) {
            return bVar5;
        }
        c.b bVar6 = c.b.INVALID_PAYLOD;
        if (i10 == bVar6.c()) {
            return bVar6;
        }
        c.b bVar7 = c.b.SERVER_ERROR;
        if (i10 == bVar7.c()) {
            return bVar7;
        }
        t2.a.b("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i10));
        return bVar;
    }

    private void U0(final SQLiteDatabase sQLiteDatabase) {
        K1(new d() { // from class: x2.g0
            @Override // x2.m0.d
            public final Object a() {
                Object i12;
                i12 = m0.i1(sQLiteDatabase);
                return i12;
            }
        }, new b() { // from class: x2.h0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Object j12;
                j12 = m0.j1((Throwable) obj);
                return j12;
            }
        });
    }

    private long V0(SQLiteDatabase sQLiteDatabase, p2.p pVar) {
        Long c12 = c1(sQLiteDatabase, pVar);
        if (c12 != null) {
            return c12.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", pVar.b());
        contentValues.put(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR, Integer.valueOf(a3.a.a(pVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (pVar.c() != null) {
            contentValues.put("extras", Base64.encodeToString(pVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    private s2.b Y0() {
        return s2.b.b().b(s2.e.c().b(W0()).c(e.f32193a.f()).a()).a();
    }

    private long Z0() {
        return X0().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private long a1() {
        return X0().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private s2.f b1() {
        final long a10 = this.f32211b.a();
        return (s2.f) d1(new b() { // from class: x2.c0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                s2.f n12;
                n12 = m0.n1(a10, (SQLiteDatabase) obj);
                return n12;
            }
        });
    }

    private Long c1(SQLiteDatabase sQLiteDatabase, p2.p pVar) {
        StringBuilder sb2 = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(pVar.b(), String.valueOf(a3.a.a(pVar.d()))));
        if (pVar.c() != null) {
            sb2.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(pVar.c(), 0));
        } else {
            sb2.append(" and extras is null");
        }
        return (Long) N1(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb2.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new b() { // from class: x2.s
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Long o12;
                o12 = m0.o1((Cursor) obj);
                return o12;
            }
        });
    }

    private boolean e1() {
        if (Z0() * a1() >= this.f32213d.f()) {
            return true;
        }
        return false;
    }

    private List f1(List list, Map map) {
        ListIterator listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            k kVar = (k) listIterator.next();
            if (map.containsKey(Long.valueOf(kVar.c()))) {
                i.a p10 = kVar.b().p();
                for (c cVar : (Set) map.get(Long.valueOf(kVar.c()))) {
                    p10.c(cVar.f32215a, cVar.f32216b);
                }
                listIterator.set(k.a(kVar.c(), kVar.d(), p10.d()));
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object g1(Cursor cursor) {
        while (cursor.moveToNext()) {
            int i10 = cursor.getInt(0);
            c(i10, c.b.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer h1(long j10, SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {String.valueOf(j10)};
        N1(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new b() { // from class: x2.r
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Object g12;
                g12 = m0.this.g1((Cursor) obj);
                return g12;
            }
        });
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object i1(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object j1(Throwable th) {
        throw new y2.a("Timed out while trying to acquire the lock.", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ SQLiteDatabase k1(Throwable th) {
        throw new y2.a("Timed out while trying to open db.", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long l1(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ s2.f m1(long j10, Cursor cursor) {
        cursor.moveToNext();
        return s2.f.c().c(cursor.getLong(0)).b(j10).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ s2.f n1(final long j10, SQLiteDatabase sQLiteDatabase) {
        return (s2.f) N1(sQLiteDatabase.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new b() { // from class: x2.d0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                s2.f m12;
                m12 = m0.m1(j10, (Cursor) obj);
                return m12;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long o1(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean p1(p2.p pVar, SQLiteDatabase sQLiteDatabase) {
        Long c12 = c1(sQLiteDatabase, pVar);
        if (c12 == null) {
            return Boolean.FALSE;
        }
        return (Boolean) N1(X0().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{c12.toString()}), new b() { // from class: x2.z
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List q1(SQLiteDatabase sQLiteDatabase) {
        return (List) N1(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() { // from class: x2.k0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                List r12;
                r12 = m0.r1((Cursor) obj);
                return r12;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List r1(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(p2.p.a().b(cursor.getString(1)).d(a3.a.b(cursor.getInt(2))).c(H1(cursor.getString(3))).a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List s1(p2.p pVar, SQLiteDatabase sQLiteDatabase) {
        n2.f[] values;
        List F1 = F1(sQLiteDatabase, pVar, this.f32213d.d());
        for (n2.f fVar : n2.f.values()) {
            if (fVar != pVar.d()) {
                int d10 = this.f32213d.d() - F1.size();
                if (d10 <= 0) {
                    break;
                }
                F1.addAll(F1(sQLiteDatabase, pVar.f(fVar), d10));
            }
        }
        return f1(F1, G1(sQLiteDatabase, F1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ s2.a t1(Map map, a.C0304a c0304a, Cursor cursor) {
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            c.b T0 = T0(cursor.getInt(1));
            long j10 = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(s2.c.c().c(T0).b(j10).a());
        }
        I1(c0304a, map);
        return c0304a.e(b1()).d(Y0()).c((String) this.f32214e.get()).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ s2.a u1(String str, final Map map, final a.C0304a c0304a, SQLiteDatabase sQLiteDatabase) {
        return (s2.a) N1(sQLiteDatabase.rawQuery(str, new String[0]), new b() { // from class: x2.b0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                s2.a t12;
                t12 = m0.this.t1(map, c0304a, (Cursor) obj);
                return t12;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object v1(List list, p2.p pVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            boolean z10 = false;
            long j10 = cursor.getLong(0);
            if (cursor.getInt(7) != 0) {
                z10 = true;
            }
            i.a o10 = p2.i.a().n(cursor.getString(1)).i(cursor.getLong(2)).o(cursor.getLong(3));
            if (z10) {
                o10.h(new p2.h(L1(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                o10.h(new p2.h(L1(cursor.getString(4)), J1(j10)));
            }
            if (!cursor.isNull(6)) {
                o10.g(Integer.valueOf(cursor.getInt(6)));
            }
            if (!cursor.isNull(8)) {
                o10.l(Integer.valueOf(cursor.getInt(8)));
            }
            if (!cursor.isNull(9)) {
                o10.m(cursor.getString(9));
            }
            if (!cursor.isNull(10)) {
                o10.j(cursor.getBlob(10));
            }
            if (!cursor.isNull(11)) {
                o10.k(cursor.getBlob(11));
            }
            list.add(k.a(j10, pVar, o10.d()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object w1(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j10 = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j10));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j10), set);
            }
            set.add(new c(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Long x1(p2.i iVar, p2.p pVar, SQLiteDatabase sQLiteDatabase) {
        boolean z10;
        byte[] bArr;
        if (e1()) {
            c(1L, c.b.CACHE_FULL, iVar.n());
            return -1L;
        }
        long V0 = V0(sQLiteDatabase, pVar);
        int e10 = this.f32213d.e();
        byte[] a10 = iVar.e().a();
        if (a10.length <= e10) {
            z10 = true;
        } else {
            z10 = false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(V0));
        contentValues.put("transport_name", iVar.n());
        contentValues.put("timestamp_ms", Long.valueOf(iVar.f()));
        contentValues.put("uptime_ms", Long.valueOf(iVar.o()));
        contentValues.put("payload_encoding", iVar.e().b().a());
        contentValues.put("code", iVar.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z10));
        if (z10) {
            bArr = a10;
        } else {
            bArr = new byte[0];
        }
        contentValues.put("payload", bArr);
        contentValues.put("product_id", iVar.l());
        contentValues.put("pseudonymous_id", iVar.m());
        contentValues.put("experiment_ids_clear_blob", iVar.g());
        contentValues.put("experiment_ids_encrypted_blob", iVar.h());
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z10) {
            int ceil = (int) Math.ceil(a10.length / e10);
            for (int i10 = 1; i10 <= ceil; i10++) {
                byte[] copyOfRange = Arrays.copyOfRange(a10, (i10 - 1) * e10, Math.min(i10 * e10, a10.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i10));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry entry : iVar.k().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put(io.flutter.plugins.firebase.analytics.Constants.NAME, (String) entry.getKey());
            contentValues3.put("value", (String) entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] y1(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i10 += blob.length;
        }
        byte[] bArr = new byte[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            byte[] bArr2 = (byte[]) arrayList.get(i12);
            System.arraycopy(bArr2, 0, bArr, i11, bArr2.length);
            i11 += bArr2.length;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object z1(Cursor cursor) {
        while (cursor.moveToNext()) {
            int i10 = cursor.getInt(0);
            c(i10, c.b.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    @Override // x2.d
    public void B(Iterable iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        X0().compileStatement("DELETE FROM events WHERE _id in " + M1(iterable)).execute();
    }

    @Override // x2.d
    public Iterable H0(final p2.p pVar) {
        return (Iterable) d1(new b() { // from class: x2.p
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                List s12;
                s12 = m0.this.s1(pVar, (SQLiteDatabase) obj);
                return s12;
            }
        });
    }

    @Override // x2.d
    public k I(final p2.p pVar, final p2.i iVar) {
        t2.a.c("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", pVar.d(), iVar.n(), pVar.b());
        long longValue = ((Long) d1(new b() { // from class: x2.i0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Long x12;
                x12 = m0.this.x1(iVar, pVar, (SQLiteDatabase) obj);
                return x12;
            }
        })).longValue();
        if (longValue < 1) {
            return null;
        }
        return k.a(longValue, pVar, iVar);
    }

    @Override // x2.d
    public boolean K0(final p2.p pVar) {
        return ((Boolean) d1(new b() { // from class: x2.l0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Boolean p12;
                p12 = m0.this.p1(pVar, (SQLiteDatabase) obj);
                return p12;
            }
        })).booleanValue();
    }

    @Override // x2.d
    public void N0(Iterable iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + M1(iterable);
        d1(new b() { // from class: x2.q
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Object A1;
                A1 = m0.this.A1(str, r3, (SQLiteDatabase) obj);
                return A1;
            }
        });
    }

    @Override // x2.d
    public Iterable U() {
        return (Iterable) d1(new b() { // from class: x2.l
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                List q12;
                q12 = m0.q1((SQLiteDatabase) obj);
                return q12;
            }
        });
    }

    long W0() {
        return Z0() * a1();
    }

    SQLiteDatabase X0() {
        final v0 v0Var = this.f32210a;
        Objects.requireNonNull(v0Var);
        return (SQLiteDatabase) K1(new d() { // from class: x2.w
            @Override // x2.m0.d
            public final Object a() {
                return v0.this.getWritableDatabase();
            }
        }, new b() { // from class: x2.e0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                SQLiteDatabase k12;
                k12 = m0.k1((Throwable) obj);
                return k12;
            }
        });
    }

    @Override // y2.b
    public Object a(b.a aVar) {
        SQLiteDatabase X0 = X0();
        U0(X0);
        try {
            Object execute = aVar.execute();
            X0.setTransactionSuccessful();
            return execute;
        } finally {
            X0.endTransaction();
        }
    }

    @Override // x2.c
    public void b() {
        d1(new b() { // from class: x2.o
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Object E1;
                E1 = m0.this.E1((SQLiteDatabase) obj);
                return E1;
            }
        });
    }

    @Override // x2.c
    public void c(final long j10, final c.b bVar, final String str) {
        d1(new b() { // from class: x2.m
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Object C1;
                C1 = m0.C1(str, bVar, j10, (SQLiteDatabase) obj);
                return C1;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f32210a.close();
    }

    Object d1(b bVar) {
        SQLiteDatabase X0 = X0();
        X0.beginTransaction();
        try {
            Object apply = bVar.apply(X0);
            X0.setTransactionSuccessful();
            return apply;
        } finally {
            X0.endTransaction();
        }
    }

    @Override // x2.c
    public s2.a e() {
        final a.C0304a e10 = s2.a.e();
        final HashMap hashMap = new HashMap();
        return (s2.a) d1(new b() { // from class: x2.u
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                s2.a u12;
                u12 = m0.this.u1(r2, hashMap, e10, (SQLiteDatabase) obj);
                return u12;
            }
        });
    }

    @Override // x2.d
    public long p0(p2.p pVar) {
        return ((Long) N1(X0().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{pVar.b(), String.valueOf(a3.a.a(pVar.d()))}), new b() { // from class: x2.f0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Long l12;
                l12 = m0.l1((Cursor) obj);
                return l12;
            }
        })).longValue();
    }

    @Override // x2.d
    public int y() {
        final long a10 = this.f32211b.a() - this.f32213d.c();
        return ((Integer) d1(new b() { // from class: x2.j0
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Integer h12;
                h12 = m0.this.h1(a10, (SQLiteDatabase) obj);
                return h12;
            }
        })).intValue();
    }

    @Override // x2.d
    public void z0(final p2.p pVar, final long j10) {
        d1(new b() { // from class: x2.n
            @Override // x2.m0.b
            public final Object apply(Object obj) {
                Object D1;
                D1 = m0.D1(j10, pVar, (SQLiteDatabase) obj);
                return D1;
            }
        });
    }
}
