package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.modulesapi.internal.common.TableDescription;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
import java.util.HashMap;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.k7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1288k7 {

    /* renamed from: t  reason: collision with root package name */
    public static volatile C1288k7 f19922t;

    /* renamed from: e  reason: collision with root package name */
    public final Context f19927e;

    /* renamed from: f  reason: collision with root package name */
    public C1263j7 f19928f;

    /* renamed from: g  reason: collision with root package name */
    public C1263j7 f19929g;

    /* renamed from: h  reason: collision with root package name */
    public C1284k3 f19930h;

    /* renamed from: i  reason: collision with root package name */
    public C1309l3 f19931i;

    /* renamed from: j  reason: collision with root package name */
    public C1284k3 f19932j;

    /* renamed from: k  reason: collision with root package name */
    public C1309l3 f19933k;

    /* renamed from: l  reason: collision with root package name */
    public Db f19934l;

    /* renamed from: m  reason: collision with root package name */
    public Eb f19935m;

    /* renamed from: n  reason: collision with root package name */
    public Ym f19936n;

    /* renamed from: o  reason: collision with root package name */
    public Zm f19937o;

    /* renamed from: p  reason: collision with root package name */
    public Db f19938p;

    /* renamed from: q  reason: collision with root package name */
    public Eb f19939q;

    /* renamed from: r  reason: collision with root package name */
    public C1293kc f19940r;

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f19923a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f19924b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    public final HashMap f19925c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final X6 f19926d = L5.a();

    /* renamed from: s  reason: collision with root package name */
    public final C1338m7 f19941s = new C1338m7();

    public C1288k7(Context context) {
        this.f19927e = context;
    }

    public static C1288k7 a(Context context) {
        if (f19922t == null) {
            synchronized (C1288k7.class) {
                if (f19922t == null) {
                    f19922t = new C1288k7(context.getApplicationContext());
                }
            }
        }
        return f19922t;
    }

    public final synchronized Ta b(C1212h5 c1212h5) {
        Ta ta2;
        String str = new Y4(c1212h5).f19277a;
        ta2 = (Ta) this.f19924b.get(str);
        if (ta2 == null) {
            ta2 = new Db(new C1078bl(c(c1212h5)));
            this.f19924b.put(str, ta2);
        }
        return ta2;
    }

    public final synchronized C1263j7 c(C1212h5 c1212h5) {
        C1263j7 c1263j7;
        Y4 y42 = new Y4(c1212h5);
        c1263j7 = (C1263j7) this.f19923a.get(y42.f19277a);
        if (c1263j7 == null) {
            Context context = this.f19927e;
            C1338m7 c1338m7 = this.f19941s;
            String a10 = new C1313l7(c1338m7.f20094a, c1338m7.f20095b, false).a(context, y42);
            X6 x62 = this.f19926d;
            x62.getClass();
            Object[] objArr = new Object[1];
            String str = c1212h5.f19717b;
            if (str == null) {
                str = "main";
            }
            objArr[0] = str;
            String format = String.format("component-%s", objArr);
            Pm pm = x62.f19227c;
            C1214h7 c1214h7 = x62.f19225a;
            Z6 z62 = c1214h7.f19722a;
            C1039a7 c1039a7 = c1214h7.f19723b;
            Ba ba2 = new Ba(false);
            ba2.a(112, new C1062b5());
            Rm rm = new Rm(format, x62.f19226b.f18264a);
            pm.getClass();
            c1263j7 = new C1263j7(context, a10, new Qm(z62, c1039a7, ba2, rm), PublicLogger.getAnonymousInstance());
            this.f19923a.put(y42.f19277a, c1263j7);
        }
        return c1263j7;
    }

    public final synchronized Ta d() {
        if (this.f19934l == null) {
            this.f19934l = new Db(new C1078bl(h()));
        }
        return this.f19934l;
    }

    public final IBinaryDataHelper e() {
        if (this.f19932j == null) {
            if (this.f19929g == null) {
                Context context = this.f19927e;
                C1338m7 c1338m7 = this.f19941s;
                String a10 = new C1313l7(c1338m7.f20094a, c1338m7.f20095b, false).a(context, new C1607x2());
                X6 x62 = this.f19926d;
                x62.getClass();
                HashMap hashMap = new HashMap();
                hashMap.put("binary_data", G5.f18262a);
                Pm pm = x62.f19227c;
                C1214h7 c1214h7 = x62.f19225a;
                C1064b7 c1064b7 = c1214h7.f19728g;
                C1089c7 c1089c7 = c1214h7.f19729h;
                Ba ba2 = new Ba(false);
                Rm rm = new Rm("auto_inapp", hashMap);
                pm.getClass();
                this.f19929g = new C1263j7(context, a10, new Qm(c1064b7, c1089c7, ba2, rm), PublicLogger.getAnonymousInstance());
            }
            this.f19932j = new C1284k3(new C1078bl(this.f19929g));
        }
        return this.f19932j;
    }

    public final Ta f() {
        C1293kc c1293kc;
        if (this.f19938p == null) {
            synchronized (this) {
                if (this.f19940r == null) {
                    C1338m7 c1338m7 = this.f19941s;
                    String a10 = new C1313l7(c1338m7.f20094a, c1338m7.f20095b, true).a(this.f19927e, new C1161f4());
                    Context context = this.f19927e;
                    X6 x62 = this.f19926d;
                    x62.getClass();
                    HashMap hashMap = new HashMap();
                    hashMap.put("preferences", I5.f18371a);
                    Pm pm = x62.f19227c;
                    C1214h7 c1214h7 = x62.f19225a;
                    C1114d7 c1114d7 = c1214h7.f19724c;
                    C1139e7 c1139e7 = c1214h7.f19725d;
                    Ba ba2 = new Ba(false);
                    ba2.a(112, new C1186g4());
                    Rm rm = new Rm("service database", hashMap);
                    pm.getClass();
                    this.f19940r = new C1293kc(context, a10, new C1291ka(a10), new Qm(c1114d7, c1139e7, ba2, rm));
                }
                c1293kc = this.f19940r;
            }
            this.f19938p = new Db(c1293kc);
        }
        return this.f19938p;
    }

    public final IBinaryDataHelper g() {
        if (this.f19930h == null) {
            this.f19930h = new C1284k3(new C1078bl(h()));
        }
        return this.f19930h;
    }

    public final synchronized C1263j7 h() {
        if (this.f19928f == null) {
            Context context = this.f19927e;
            C1338m7 c1338m7 = this.f19941s;
            String a10 = new C1313l7(c1338m7.f20094a, c1338m7.f20095b, true).a(context, new Zj());
            X6 x62 = this.f19926d;
            x62.getClass();
            HashMap hashMap = new HashMap();
            hashMap.put("preferences", I5.f18371a);
            hashMap.put("binary_data", G5.f18262a);
            hashMap.put("temp_cache", AbstractC1080bn.f19444a);
            for (ModuleServicesDatabase moduleServicesDatabase : C1665za.E.o().b()) {
                for (TableDescription tableDescription : moduleServicesDatabase.getTables()) {
                    hashMap.put(tableDescription.getTableName(), tableDescription.getColumnNames());
                }
            }
            Pm pm = x62.f19227c;
            C1214h7 c1214h7 = x62.f19225a;
            C1164f7 c1164f7 = c1214h7.f19726e;
            C1189g7 c1189g7 = c1214h7.f19727f;
            Ba ba2 = new Ba(false);
            ba2.a(114, new C1052ak());
            for (ModuleServicesDatabase moduleServicesDatabase2 : C1665za.E.o().b()) {
                for (TableDescription tableDescription2 : moduleServicesDatabase2.getTables()) {
                    for (Map.Entry<Integer, DatabaseScript> entry : tableDescription2.getDatabaseProviderUpgradeScript().entrySet()) {
                        ba2.a(entry.getKey(), entry.getValue());
                    }
                }
            }
            Rm rm = new Rm("service database", hashMap);
            pm.getClass();
            this.f19928f = new C1263j7(context, a10, new Qm(c1164f7, c1189g7, ba2, rm), PublicLogger.getAnonymousInstance());
        }
        return this.f19928f;
    }

    public final synchronized IBinaryDataHelper a(C1212h5 c1212h5) {
        IBinaryDataHelper iBinaryDataHelper;
        String str = new Y4(c1212h5).f19277a;
        iBinaryDataHelper = (IBinaryDataHelper) this.f19925c.get(str);
        if (iBinaryDataHelper == null) {
            iBinaryDataHelper = new C1284k3(new C1078bl(c(c1212h5)));
            this.f19925c.put(str, iBinaryDataHelper);
        }
        return iBinaryDataHelper;
    }

    public final synchronized Ta b() {
        return f();
    }

    public final synchronized Ta a() {
        if (this.f19939q == null) {
            this.f19939q = new Eb(f());
        }
        return this.f19939q;
    }

    public final synchronized Ta c() {
        if (this.f19935m == null) {
            if (this.f19934l == null) {
                this.f19934l = new Db(new C1078bl(h()));
            }
            this.f19935m = new Eb(this.f19934l);
        }
        return this.f19935m;
    }
}
