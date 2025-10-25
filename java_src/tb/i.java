package tb;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.SQLException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.Build;
import android.util.Log;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i {

    /* renamed from: n  reason: collision with root package name */
    private static Boolean f30546n;

    /* renamed from: a  reason: collision with root package name */
    final boolean f30547a;

    /* renamed from: b  reason: collision with root package name */
    final String f30548b;

    /* renamed from: c  reason: collision with root package name */
    final int f30549c;

    /* renamed from: d  reason: collision with root package name */
    final int f30550d;

    /* renamed from: e  reason: collision with root package name */
    final Context f30551e;

    /* renamed from: h  reason: collision with root package name */
    public n f30554h;

    /* renamed from: i  reason: collision with root package name */
    SQLiteDatabase f30555i;

    /* renamed from: l  reason: collision with root package name */
    private Integer f30558l;

    /* renamed from: f  reason: collision with root package name */
    final List f30552f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    final Map f30553g = new HashMap();

    /* renamed from: j  reason: collision with root package name */
    private int f30556j = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f30557k = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f30559m = 0;

    /* loaded from: classes.dex */
    class a implements DatabaseErrorHandler {
        a() {
        }

        @Override // android.database.DatabaseErrorHandler
        public void onCorruption(SQLiteDatabase sQLiteDatabase) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, String str, int i10, boolean z10, int i11) {
        this.f30551e = context;
        this.f30548b = str;
        this.f30547a = z10;
        this.f30549c = i10;
        this.f30550d = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Cursor G(c0 c0Var, SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
        c0Var.a(sQLiteQuery);
        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H(vb.e eVar) {
        boolean z10;
        Boolean h10 = eVar.h();
        if (Boolean.TRUE.equals(h10) && eVar.e()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            int i10 = this.f30557k + 1;
            this.f30557k = i10;
            this.f30558l = Integer.valueOf(i10);
        }
        if (!w(eVar)) {
            if (z10) {
                this.f30558l = null;
            }
        } else if (z10) {
            HashMap hashMap = new HashMap();
            hashMap.put("transactionId", this.f30558l);
            eVar.success(hashMap);
        } else {
            if (Boolean.FALSE.equals(h10)) {
                this.f30558l = null;
            }
            eVar.success(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        while (!this.f30552f.isEmpty() && this.f30558l == null) {
            ((vb.g) this.f30552f.get(0)).a();
            this.f30552f.remove(0);
        }
    }

    private void S(vb.e eVar, Runnable runnable) {
        Integer d10 = eVar.d();
        Integer num = this.f30558l;
        if (num == null) {
            runnable.run();
        } else if (d10 != null && (d10.equals(num) || d10.intValue() == -1)) {
            runnable.run();
            if (this.f30558l == null && !this.f30552f.isEmpty()) {
                this.f30554h.a(this, new Runnable() { // from class: tb.h
                    @Override // java.lang.Runnable
                    public final void run() {
                        i.this.Q();
                    }
                });
            }
        } else {
            this.f30552f.add(new vb.g(eVar, runnable));
        }
    }

    protected static boolean i(Context context, String str, boolean z10) {
        ApplicationInfo y10;
        PackageManager.ApplicationInfoFlags of2;
        try {
            String packageName = context.getPackageName();
            if (Build.VERSION.SDK_INT >= 33) {
                PackageManager packageManager = context.getPackageManager();
                of2 = PackageManager.ApplicationInfoFlags.of(128L);
                y10 = packageManager.getApplicationInfo(packageName, of2);
            } else {
                y10 = y(context, packageName, 128);
            }
            if (y10.metaData.getBoolean(str, z10)) {
                return true;
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    protected static boolean j(Context context) {
        return i(context, "com.tekartik.sqflite.wal_enabled", false);
    }

    private void l(int i10) {
        s sVar = (s) this.f30553g.get(Integer.valueOf(i10));
        if (sVar != null) {
            m(sVar);
        }
    }

    private void m(s sVar) {
        try {
            int i10 = sVar.f30586a;
            if (q.c(this.f30550d)) {
                Log.d("Sqflite", A() + "closing cursor " + i10);
            }
            this.f30553g.remove(Integer.valueOf(i10));
            sVar.f30588c.close();
        } catch (Exception unused) {
        }
    }

    private Map n(Cursor cursor, Integer num) {
        HashMap hashMap = null;
        int i10 = 0;
        ArrayList arrayList = null;
        while (cursor.moveToNext()) {
            if (hashMap == null) {
                ArrayList arrayList2 = new ArrayList();
                HashMap hashMap2 = new HashMap();
                i10 = cursor.getColumnCount();
                hashMap2.put("columns", Arrays.asList(cursor.getColumnNames()));
                hashMap2.put("rows", arrayList2);
                arrayList = arrayList2;
                hashMap = hashMap2;
            }
            arrayList.add(d0.a(cursor, i10));
            if (num != null && arrayList.size() >= num.intValue()) {
                break;
            }
        }
        if (hashMap == null) {
            return new HashMap();
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void o(String str) {
        SQLiteDatabase.deleteDatabase(new File(str));
    }

    private boolean p(vb.e eVar) {
        if (!w(eVar)) {
            return false;
        }
        eVar.success(null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cf  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean I(vb.e r10) {
        /*
            r9 = this;
            boolean r0 = r9.w(r10)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            boolean r0 = r10.c()
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L14
            r10.success(r2)
            return r3
        L14:
            java.lang.String r0 = "SELECT changes(), last_insert_rowid()"
            android.database.sqlite.SQLiteDatabase r4 = r9.C()     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lbe
            android.database.Cursor r0 = r4.rawQuery(r0, r2)     // Catch: java.lang.Throwable -> Lbc java.lang.Exception -> Lbe
            java.lang.String r4 = "Sqflite"
            if (r0 == 0) goto L9b
            int r5 = r0.getCount()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            if (r5 <= 0) goto L9b
            boolean r5 = r0.moveToFirst()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            if (r5 == 0) goto L9b
            int r5 = r0.getInt(r1)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            if (r5 != 0) goto L67
            int r5 = r9.f30550d     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            boolean r5 = tb.q.b(r5)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            if (r5 == 0) goto L60
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r5.<init>()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r6 = r9.A()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r5.append(r6)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r6 = "no changes (id was "
            r5.append(r6)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            long r6 = r0.getLong(r3)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r5.append(r6)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r6 = ")"
            r5.append(r6)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            android.util.Log.d(r4, r5)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
        L60:
            r10.success(r2)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r0.close()
            return r3
        L67:
            long r5 = r0.getLong(r3)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            int r2 = r9.f30550d     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            boolean r2 = tb.q.b(r2)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            if (r2 == 0) goto L8e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r2.<init>()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r7 = r9.A()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r2.append(r7)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r7 = "inserted "
            r2.append(r7)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r2.append(r5)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            android.util.Log.d(r4, r2)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
        L8e:
            java.lang.Long r2 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r10.success(r2)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r0.close()
            return r3
        L99:
            r2 = move-exception
            goto Lc2
        L9b:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r5.<init>()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r6 = r9.A()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r5.append(r6)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r6 = "fail to read changes for Insert"
            r5.append(r6)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            android.util.Log.e(r4, r5)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            r10.success(r2)     // Catch: java.lang.Exception -> L99 java.lang.Throwable -> Lcb
            if (r0 == 0) goto Lbb
            r0.close()
        Lbb:
            return r3
        Lbc:
            r10 = move-exception
            goto Lcd
        Lbe:
            r0 = move-exception
            r8 = r2
            r2 = r0
            r0 = r8
        Lc2:
            r9.D(r2, r10)     // Catch: java.lang.Throwable -> Lcb
            if (r0 == 0) goto Lca
            r0.close()
        Lca:
            return r1
        Lcb:
            r10 = move-exception
            r2 = r0
        Lcd:
            if (r2 == 0) goto Ld2
            r2.close()
        Ld2:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: tb.i.I(vb.e):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [vb.f, vb.e] */
    /* JADX WARN: Type inference failed for: r1v0, types: [tb.c0, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r9v0, types: [tb.i] */
    /* renamed from: r */
    public boolean J(vb.e eVar) {
        boolean z10;
        Integer num = (Integer) eVar.a("cursorPageSize");
        final ?? b10 = eVar.b();
        if (q.b(this.f30550d)) {
            Log.d("Sqflite", A() + b10);
        }
        s sVar = null;
        try {
            try {
                b10 = z().rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: tb.f
                    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
                    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                        Cursor G;
                        G = i.G(c0.this, sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
                        return G;
                    }
                }, b10.c(), tb.a.f30509a, null);
                try {
                    Map n10 = n(b10, num);
                    if (num != null && !b10.isLast() && !b10.isAfterLast()) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        int i10 = this.f30559m + 1;
                        this.f30559m = i10;
                        n10.put("cursorId", Integer.valueOf(i10));
                        s sVar2 = new s(i10, num.intValue(), b10);
                        try {
                            this.f30553g.put(Integer.valueOf(i10), sVar2);
                            sVar = sVar2;
                        } catch (Exception e10) {
                            e = e10;
                            sVar = sVar2;
                            D(e, eVar);
                            if (sVar != null) {
                                m(sVar);
                            }
                            if (sVar == null && b10 != 0) {
                                b10.close();
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            sVar = sVar2;
                            if (sVar == null && b10 != 0) {
                                b10.close();
                            }
                            throw th;
                        }
                    }
                    eVar.success(n10);
                    if (sVar == null && b10 != 0) {
                        b10.close();
                    }
                    return true;
                } catch (Exception e11) {
                    e = e11;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e12) {
            e = e12;
            b10 = 0;
        } catch (Throwable th3) {
            th = th3;
            b10 = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public boolean K(vb.e eVar) {
        boolean z10;
        String str;
        int intValue = ((Integer) eVar.a("cursorId")).intValue();
        boolean equals = Boolean.TRUE.equals(eVar.a("cancel"));
        if (q.c(this.f30550d)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(A());
            sb2.append("cursor ");
            sb2.append(intValue);
            if (equals) {
                str = " cancel";
            } else {
                str = " next";
            }
            sb2.append(str);
            Log.d("Sqflite", sb2.toString());
        }
        s sVar = null;
        if (equals) {
            l(intValue);
            eVar.success(null);
            return true;
        }
        s sVar2 = (s) this.f30553g.get(Integer.valueOf(intValue));
        boolean z11 = false;
        try {
            if (sVar2 != null) {
                Cursor cursor = sVar2.f30588c;
                Map n10 = n(cursor, Integer.valueOf(sVar2.f30587b));
                if (!cursor.isLast() && !cursor.isAfterLast()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    try {
                        try {
                            n10.put("cursorId", Integer.valueOf(intValue));
                        } catch (Exception e10) {
                            e = e10;
                            D(e, eVar);
                            if (sVar2 != null) {
                                m(sVar2);
                            } else {
                                sVar = sVar2;
                            }
                            if (!z10 && sVar != null) {
                                m(sVar);
                            }
                            return false;
                        }
                    } catch (Throwable th) {
                        th = th;
                        z11 = z10;
                        if (!z11 && sVar2 != null) {
                            m(sVar2);
                        }
                        throw th;
                    }
                }
                eVar.success(n10);
                if (!z10) {
                    m(sVar2);
                }
                return true;
            }
            throw new IllegalStateException("Cursor " + intValue + " not found");
        } catch (Exception e11) {
            e = e11;
            z10 = false;
        } catch (Throwable th2) {
            th = th2;
            if (!z11) {
                m(sVar2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public boolean L(vb.e eVar) {
        if (!w(eVar)) {
            return false;
        }
        Cursor cursor = null;
        if (eVar.c()) {
            eVar.success(null);
            return true;
        }
        try {
            try {
                Cursor rawQuery = C().rawQuery("SELECT changes()", null);
                if (rawQuery != null) {
                    try {
                        if (rawQuery.getCount() > 0 && rawQuery.moveToFirst()) {
                            int i10 = rawQuery.getInt(0);
                            if (q.b(this.f30550d)) {
                                Log.d("Sqflite", A() + "changed " + i10);
                            }
                            eVar.success(Integer.valueOf(i10));
                            rawQuery.close();
                            return true;
                        }
                    } catch (Exception e10) {
                        e = e10;
                        cursor = rawQuery;
                        D(e, eVar);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        cursor = rawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                Log.e("Sqflite", A() + "fail to read changes for Update/Delete");
                eVar.success(null);
                if (rawQuery != null) {
                    rawQuery.close();
                }
                return true;
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private boolean w(vb.e eVar) {
        c0 b10 = eVar.b();
        if (q.b(this.f30550d)) {
            Log.d("Sqflite", A() + b10);
        }
        Boolean h10 = eVar.h();
        try {
            C().execSQL(b10.c(), b10.d());
            u(h10);
            return true;
        } catch (Exception e10) {
            D(e10, eVar);
            return false;
        }
    }

    public static boolean x(String str) {
        try {
            return new File(str).exists();
        } catch (Exception unused) {
            return false;
        }
    }

    static ApplicationInfo y(Context context, String str, int i10) {
        return context.getPackageManager().getApplicationInfo(str, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String A() {
        return "[" + B() + "] ";
    }

    String B() {
        Thread currentThread = Thread.currentThread();
        return this.f30549c + StringUtils.COMMA + currentThread.getName() + "(" + currentThread.getId() + ")";
    }

    public SQLiteDatabase C() {
        return this.f30555i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void D(Exception exc, vb.e eVar) {
        if (exc instanceof SQLiteCantOpenDatabaseException) {
            eVar.error("sqlite_error", "open_failed " + this.f30548b, null);
        } else if (exc instanceof SQLException) {
            eVar.error("sqlite_error", exc.getMessage(), vb.h.a(eVar));
        } else {
            eVar.error("sqlite_error", exc.getMessage(), vb.h.a(eVar));
        }
    }

    public void E(final vb.e eVar) {
        S(eVar, new Runnable() { // from class: tb.d
            @Override // java.lang.Runnable
            public final void run() {
                i.this.I(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean F() {
        boolean z10;
        if (this.f30556j > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    public void M() {
        int i10;
        if (f30546n == null) {
            Boolean valueOf = Boolean.valueOf(j(this.f30551e));
            f30546n = valueOf;
            if (valueOf.booleanValue() && q.c(this.f30550d)) {
                Log.d("Sqflite", A() + "[sqflite] WAL enabled");
            }
        }
        if (f30546n.booleanValue()) {
            i10 = 805306368;
        } else {
            i10 = 268435456;
        }
        this.f30555i = SQLiteDatabase.openDatabase(this.f30548b, null, i10);
    }

    public void N() {
        this.f30555i = SQLiteDatabase.openDatabase(this.f30548b, null, 1, new a());
    }

    public void O(final vb.e eVar) {
        S(eVar, new Runnable() { // from class: tb.e
            @Override // java.lang.Runnable
            public final void run() {
                i.this.J(eVar);
            }
        });
    }

    public void P(final vb.e eVar) {
        S(eVar, new Runnable() { // from class: tb.b
            @Override // java.lang.Runnable
            public final void run() {
                i.this.K(eVar);
            }
        });
    }

    public void R(final vb.e eVar) {
        S(eVar, new Runnable() { // from class: tb.g
            @Override // java.lang.Runnable
            public final void run() {
                i.this.L(eVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(MethodCall methodCall, MethodChannel.Result result) {
        vb.d dVar = new vb.d(methodCall, result);
        boolean c10 = dVar.c();
        boolean j10 = dVar.j();
        ArrayList arrayList = new ArrayList();
        for (Map map : (List) dVar.a("operations")) {
            vb.c cVar = new vb.c(map, c10);
            String f10 = cVar.f();
            f10.hashCode();
            char c11 = 65535;
            switch (f10.hashCode()) {
                case -1319569547:
                    if (f10.equals("execute")) {
                        c11 = 0;
                        break;
                    }
                    break;
                case -1183792455:
                    if (f10.equals("insert")) {
                        c11 = 1;
                        break;
                    }
                    break;
                case -838846263:
                    if (f10.equals("update")) {
                        c11 = 2;
                        break;
                    }
                    break;
                case 107944136:
                    if (f10.equals("query")) {
                        c11 = 3;
                        break;
                    }
                    break;
            }
            switch (c11) {
                case 0:
                    if (p(cVar)) {
                        cVar.r(arrayList);
                        break;
                    } else if (j10) {
                        cVar.q(arrayList);
                        break;
                    } else {
                        cVar.p(result);
                        return;
                    }
                case 1:
                    if (I(cVar)) {
                        cVar.r(arrayList);
                        break;
                    } else if (j10) {
                        cVar.q(arrayList);
                        break;
                    } else {
                        cVar.p(result);
                        return;
                    }
                case 2:
                    if (L(cVar)) {
                        cVar.r(arrayList);
                        break;
                    } else if (j10) {
                        cVar.q(arrayList);
                        break;
                    } else {
                        cVar.p(result);
                        return;
                    }
                case 3:
                    if (J(cVar)) {
                        cVar.r(arrayList);
                        break;
                    } else if (j10) {
                        cVar.q(arrayList);
                        break;
                    } else {
                        cVar.p(result);
                        return;
                    }
                default:
                    result.error("bad_param", "Batch method '" + f10 + "' not supported", null);
                    return;
            }
        }
        if (c10) {
            result.success(null);
        } else {
            result.success(arrayList);
        }
    }

    public void k() {
        if (!this.f30553g.isEmpty() && q.b(this.f30550d)) {
            Log.d("Sqflite", A() + this.f30553g.size() + " cursor(s) are left opened");
        }
        this.f30555i.close();
    }

    synchronized void u(Boolean bool) {
        if (Boolean.TRUE.equals(bool)) {
            this.f30556j++;
        } else if (Boolean.FALSE.equals(bool)) {
            this.f30556j--;
        }
    }

    public void v(final vb.e eVar) {
        S(eVar, new Runnable() { // from class: tb.c
            @Override // java.lang.Runnable
            public final void run() {
                i.this.H(eVar);
            }
        });
    }

    public SQLiteDatabase z() {
        return this.f30555i;
    }
}
