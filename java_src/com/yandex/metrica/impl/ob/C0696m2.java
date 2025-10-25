package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.SparseArray;
import com.pichillilorenzo.flutter_inappwebview_android.chrome_custom_tabs.ChromeCustomTabsActivity;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.C0787pi;
import com.yandex.metrica.impl.ob.C0811qi;
import com.yandex.metrica.impl.ob.C0839s;
import com.yandex.metrica.impl.ob.C0915v3;
import com.yandex.metrica.impl.ob.D1;
import com.yandex.metrica.impl.ob.InterfaceC0530fa;
import com.yandex.metrica.impl.ob.Ud;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.m2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0696m2 extends D1 {

    /* renamed from: a  reason: collision with root package name */
    private final C0504e9 f12820a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f12821b;

    /* renamed from: c  reason: collision with root package name */
    private final C0403a8 f12822c;

    /* renamed from: com.yandex.metrica.impl.ob.m2$a */
    /* loaded from: classes2.dex */
    class a extends SparseArray<D1.a> {
        a() {
            put(29, new j(C0696m2.this.f12821b));
            put(39, new k());
            put(47, new l(C0696m2.this.f12820a));
            put(60, new m(C0696m2.this.f12820a));
            put(62, new n());
            put(66, new o());
            put(67, new g(InterfaceC0530fa.b.a(C0811qi.class).b(C0696m2.this.f12821b), new C0529f9(C0629ja.a(C0696m2.this.f12821b).q(), C0696m2.this.f12821b.getPackageName())));
            put(68, new u());
            put(72, new f(InterfaceC0530fa.b.b(Bd.class).b(C0696m2.this.f12821b), InterfaceC0530fa.b.a(C0811qi.class).b(C0696m2.this.f12821b)));
            put(82, new h(InterfaceC0530fa.b.b(Bd.class).b(C0696m2.this.f12821b), InterfaceC0530fa.b.a(C0877td.class).b(C0696m2.this.f12821b)));
            put(87, new i(InterfaceC0530fa.b.a(C0811qi.class).b(C0696m2.this.f12821b)));
            put(92, new c(InterfaceC0530fa.b.a(C0811qi.class).b(C0696m2.this.f12821b)));
            put(93, new e(C0696m2.this.f12821b, InterfaceC0530fa.b.a(C0509ee.class).b(C0696m2.this.f12821b), InterfaceC0530fa.b.a(Ud.class).b(C0696m2.this.f12821b)));
            put(94, new p(C0696m2.this.f12821b, InterfaceC0530fa.b.a(C0811qi.class).b(C0696m2.this.f12821b)));
            put(98, new t(C0696m2.this.f12820a));
            put(100, new b(new C0529f9(C0629ja.a(C0696m2.this.f12821b).q(), C0696m2.this.f12821b.getPackageName())));
            put(ChromeCustomTabsActivity.NO_HISTORY_CHROME_CUSTOM_TAB_REQUEST_CODE, new q(C0696m2.this.f12820a, InterfaceC0530fa.b.a(C0811qi.class).b(C0696m2.this.f12821b)));
            put(102, new r(InterfaceC0530fa.b.a(Ud.class).b(C0696m2.this.f12821b)));
            put(103, new d(InterfaceC0530fa.b.a(Z1.class).b(C0696m2.this.f12821b), InterfaceC0530fa.b.a(C0915v3.class).b(C0696m2.this.f12821b), C0696m2.this.f12820a));
            put(104, new s(C0629ja.a(C0696m2.this.f12821b).o()));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$b */
    /* loaded from: classes2.dex */
    static class b implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0529f9 f12824a;

        public b(C0529f9 c0529f9) {
            this.f12824a = c0529f9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f12824a.f();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$c */
    /* loaded from: classes2.dex */
    static class c implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage f12825a;

        c(ProtobufStateStorage protobufStateStorage) {
            this.f12825a = protobufStateStorage;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            C0811qi c0811qi = (C0811qi) this.f12825a.read();
            this.f12825a.save(c0811qi.a(c0811qi.f13406r).g(c0811qi.f13404p).a());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$d */
    /* loaded from: classes2.dex */
    static class d implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage f12826a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage f12827b;

        /* renamed from: c  reason: collision with root package name */
        private final C0504e9 f12828c;

        public d(ProtobufStateStorage protobufStateStorage, ProtobufStateStorage protobufStateStorage2, C0504e9 c0504e9) {
            this.f12826a = protobufStateStorage;
            this.f12827b = protobufStateStorage2;
            this.f12828c = c0504e9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            Z1 z12 = (Z1) this.f12826a.read();
            this.f12826a.delete();
            if (z12.f11856b) {
                if (!A2.b(z12.f11855a)) {
                    C0915v3.a aVar = new C0915v3.a(z12.f11855a, EnumC0888u0.SATELLITE);
                    this.f12827b.save(new C0915v3(aVar, Collections.singletonList(aVar)));
                }
                this.f12828c.h();
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$e */
    /* loaded from: classes2.dex */
    static class e implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0409ae f12829a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage f12830b;

        /* renamed from: c  reason: collision with root package name */
        private final ProtobufStateStorage f12831c;

        e(Context context, ProtobufStateStorage protobufStateStorage, ProtobufStateStorage protobufStateStorage2) {
            this(protobufStateStorage, protobufStateStorage2, new C0409ae(context));
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            C0509ee invoke;
            C0509ee c0509ee = (C0509ee) this.f12830b.read();
            ArrayList arrayList = new ArrayList();
            EnumC0888u0 enumC0888u0 = c0509ee.f12327e;
            if (enumC0888u0 != EnumC0888u0.UNDEFINED) {
                arrayList.add(new Ud.a(c0509ee.f12323a, c0509ee.f12324b, enumC0888u0));
            }
            if (c0509ee.f12327e == EnumC0888u0.RETAIL && (invoke = this.f12829a.invoke()) != null) {
                arrayList.add(new Ud.a(invoke.f12323a, invoke.f12324b, invoke.f12327e));
            }
            this.f12831c.save(new Ud(c0509ee, arrayList));
            this.f12830b.delete();
        }

        e(ProtobufStateStorage protobufStateStorage, ProtobufStateStorage protobufStateStorage2, C0409ae c0409ae) {
            this.f12830b = protobufStateStorage;
            this.f12831c = protobufStateStorage2;
            this.f12829a = c0409ae;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$f */
    /* loaded from: classes2.dex */
    static class f implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage f12832a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage f12833b;

        /* renamed from: c  reason: collision with root package name */
        private final B0 f12834c;

        public f(ProtobufStateStorage protobufStateStorage, ProtobufStateStorage protobufStateStorage2) {
            this(protobufStateStorage, protobufStateStorage2, new B0());
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            JSONObject jSONObject;
            String str;
            V7 h10 = C0629ja.a(context).h();
            List<Bd> b10 = h10.b();
            if (b10 != null) {
                this.f12832a.save(b10);
                h10.a();
            }
            C0811qi c0811qi = (C0811qi) this.f12833b.read();
            C0811qi.b a10 = c0811qi.a(c0811qi.f13406r);
            String str2 = null;
            try {
                jSONObject = new JSONObject(L0.a(this.f12834c.b(context.getFilesDir(), "credentials.dat")));
            } catch (Throwable unused) {
                jSONObject = null;
            }
            if (jSONObject == null && bc.a.b()) {
                try {
                    jSONObject = new JSONObject(L0.a(this.f12834c.b(context.getNoBackupFilesDir(), "credentials.dat")));
                } catch (Throwable unused2) {
                }
            }
            if (jSONObject != null) {
                str2 = jSONObject.optString("device_id", null);
                str = jSONObject.optString("device_id_hash", null);
            } else {
                str = null;
            }
            if (!TextUtils.isEmpty(str2)) {
                a10.c(str2);
            }
            if (!TextUtils.isEmpty(str)) {
                a10.d(str);
            }
            a10.b(true);
            this.f12833b.save(a10.a());
            context.getSharedPreferences("com.yandex.metrica.configuration", 0).edit().clear().apply();
        }

        f(ProtobufStateStorage protobufStateStorage, ProtobufStateStorage protobufStateStorage2, B0 b02) {
            this.f12832a = protobufStateStorage;
            this.f12833b = protobufStateStorage2;
            this.f12834c = b02;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$g */
    /* loaded from: classes2.dex */
    static class g implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private ProtobufStateStorage f12835a;

        /* renamed from: b  reason: collision with root package name */
        private C0529f9 f12836b;

        public g(ProtobufStateStorage protobufStateStorage, C0529f9 c0529f9) {
            this.f12835a = protobufStateStorage;
            this.f12836b = c0529f9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f12835a.save(this.f12836b.g());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$h */
    /* loaded from: classes2.dex */
    static class h implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage f12837a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage f12838b;

        h(ProtobufStateStorage protobufStateStorage, ProtobufStateStorage protobufStateStorage2) {
            this.f12837a = protobufStateStorage;
            this.f12838b = protobufStateStorage2;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f12838b.save(new C0877td(new ArrayList((Collection) this.f12837a.read()), null, new ArrayList()));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$i */
    /* loaded from: classes2.dex */
    static class i implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage f12839a;

        i(ProtobufStateStorage protobufStateStorage) {
            this.f12839a = protobufStateStorage;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            ProtobufStateStorage protobufStateStorage = this.f12839a;
            C0811qi c0811qi = (C0811qi) protobufStateStorage.read();
            protobufStateStorage.save(c0811qi.a(c0811qi.f13406r).b(true).a());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$j */
    /* loaded from: classes2.dex */
    static class j implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private Pd f12840a;

        /* renamed from: b  reason: collision with root package name */
        private C0529f9 f12841b;

        j(Context context) {
            this.f12840a = new Pd(context);
            this.f12841b = new C0529f9(C0629ja.a(context).p(), context.getPackageName());
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            String b10 = this.f12840a.b((String) null);
            if (!TextUtils.isEmpty(b10)) {
                this.f12841b.i(b10).d();
                Pd.b(context);
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$k */
    /* loaded from: classes2.dex */
    static class k implements D1.a {
        k() {
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            Md md2 = new Md(context, context.getPackageName());
            SharedPreferences a10 = C0419b.a(context, "_boundentrypreferences");
            Rd rd2 = Md.H;
            String string = a10.getString(rd2.b(), null);
            Rd rd3 = Md.I;
            long j10 = a10.getLong(rd3.b(), -1L);
            if (string != null && j10 != -1) {
                md2.a(new C0839s.a(string, j10)).b();
                a10.edit().remove(rd2.b()).remove(rd3.b()).apply();
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$l */
    /* loaded from: classes2.dex */
    static class l implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0504e9 f12842a;

        l(C0504e9 c0504e9) {
            this.f12842a = c0504e9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            C0504e9 c0504e9 = this.f12842a;
            Qd qd2 = new Qd(context, null);
            if (qd2.f()) {
                c0504e9.d(true);
                qd2.g();
            }
            C0504e9 c0504e92 = this.f12842a;
            Od od2 = new Od(context, context.getPackageName());
            long a10 = od2.a(0);
            if (a10 != 0) {
                c0504e92.l(a10);
            }
            od2.f();
            new Md(context, new W3(context.getPackageName(), null).b()).i().b();
            this.f12842a.d();
            Hd hd2 = new Hd(context);
            hd2.a();
            hd2.b();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$m */
    /* loaded from: classes2.dex */
    static class m implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0504e9 f12843a;

        m(C0504e9 c0504e9) {
            this.f12843a = c0504e9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            boolean z10;
            boolean z11 = true;
            if (new C0529f9(C0629ja.a(context).q(), context.getPackageName()).g().f13409u > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (this.f12843a.b(-1) <= 0) {
                z11 = false;
            }
            if (z10 || z11) {
                this.f12843a.c(false).d();
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$n */
    /* loaded from: classes2.dex */
    static class n implements D1.a {
        n() {
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            C0529f9 c0529f9 = new C0529f9(C0629ja.a(context).q(), context.getPackageName());
            String h10 = c0529f9.h(null);
            if (h10 != null) {
                c0529f9.b(Collections.singletonList(h10));
            }
            String g10 = c0529f9.g(null);
            if (g10 != null) {
                c0529f9.a(Collections.singletonList(g10));
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$o */
    /* loaded from: classes2.dex */
    static class o implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final B0 f12844a;

        /* renamed from: com.yandex.metrica.impl.ob.m2$o$a */
        /* loaded from: classes2.dex */
        static class a implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            final Iterable<FilenameFilter> f12845a;

            a(Iterable<FilenameFilter> iterable) {
                this.f12845a = iterable;
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                for (FilenameFilter filenameFilter : this.f12845a) {
                    if (filenameFilter.accept(file, str)) {
                        return true;
                    }
                }
                return false;
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.m2$o$b */
        /* loaded from: classes2.dex */
        static class b implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            private final FilenameFilter f12846a;

            b(FilenameFilter filenameFilter) {
                this.f12846a = filenameFilter;
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                if (str.startsWith("db_metrica_")) {
                    try {
                        FilenameFilter filenameFilter = this.f12846a;
                        if (str.endsWith("-journal")) {
                            str = str.replace("-journal", "");
                        }
                        return filenameFilter.accept(file, str);
                    } catch (Throwable unused) {
                        return false;
                    }
                }
                return false;
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.m2$o$c */
        /* loaded from: classes2.dex */
        static class c implements FilenameFilter {
            c() {
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.endsWith("null");
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.m2$o$d */
        /* loaded from: classes2.dex */
        static class d implements FilenameFilter {

            /* renamed from: a  reason: collision with root package name */
            private final String f12847a;

            d(String str) {
                this.f12847a = str;
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return !str.contains(this.f12847a);
            }
        }

        o() {
            this(new B0());
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            File[] listFiles;
            if (b(context) == null) {
                listFiles = new File[0];
            } else {
                listFiles = b(context).listFiles(new a(Arrays.asList(new b(new d(context.getPackageName())), new b(new c()))));
            }
            for (File file : listFiles) {
                try {
                    if (!file.delete()) {
                        ((C0736nh) C0761oh.a()).reportEvent("Can not delete file", new JSONObject().put("fileName", file.getName()).toString());
                    }
                } catch (Throwable th) {
                    ((C0736nh) C0761oh.a()).reportError("Can not delete file", th);
                }
            }
            new C0529f9(C0629ja.a(context).q(), context.getPackageName()).f(new Rd("LAST_STARTUP_CLIDS_SAVE_TIME", null).a()).d();
        }

        File b(Context context) {
            if (A2.a(21)) {
                return context.getNoBackupFilesDir();
            }
            File filesDir = context.getFilesDir();
            if (filesDir != null) {
                return this.f12844a.b(filesDir.getParentFile(), "databases");
            }
            return null;
        }

        o(B0 b02) {
            this.f12844a = b02;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$r */
    /* loaded from: classes2.dex */
    static class r implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage f12858a;

        public r(ProtobufStateStorage protobufStateStorage) {
            this.f12858a = protobufStateStorage;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            Ud ud2 = (Ud) this.f12858a.read();
            ArrayList arrayList = new ArrayList();
            Ud.a aVar = null;
            for (Ud.a aVar2 : ud2.f11504b) {
                if (aVar2.f11507c != EnumC0888u0.APP) {
                    arrayList.add(aVar2);
                } else if (aVar == null) {
                    arrayList.add(aVar2);
                    aVar = aVar2;
                }
            }
            this.f12858a.save(new Ud(ud2.f11503a, arrayList));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$s */
    /* loaded from: classes2.dex */
    static class s implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final R7 f12859a;

        public s(R7 r72) {
            this.f12859a = r72;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f12859a.b("notification_cache_state");
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$t */
    /* loaded from: classes2.dex */
    static class t implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0504e9 f12860a;

        public t(C0504e9 c0504e9) {
            this.f12860a = c0504e9;
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            this.f12860a.f(new Rd("REFERRER", null).a()).f(new Rd("REFERRER_HOLDER_STATE", null).a()).d();
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$u */
    /* loaded from: classes2.dex */
    static class u implements D1.a {
        u() {
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            boolean z10;
            ProtobufStateStorage b10 = InterfaceC0530fa.b.a(C0811qi.class).b(context);
            C0811qi c0811qi = (C0811qi) b10.read();
            C0811qi.b a10 = c0811qi.a(c0811qi.f13406r);
            if (c0811qi.f13409u > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            b10.save(a10.a(z10).b(true).a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0696m2(Context context, C0504e9 c0504e9, C0403a8 c0403a8) {
        this.f12821b = context;
        this.f12820a = c0504e9;
        this.f12822c = c0403a8;
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$q */
    /* loaded from: classes2.dex */
    static class q implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final C0504e9 f12850a;

        /* renamed from: b  reason: collision with root package name */
        private final ProtobufStateStorage f12851b;

        /* renamed from: c  reason: collision with root package name */
        private final C0403a8 f12852c;

        /* renamed from: d  reason: collision with root package name */
        private final String f12853d;

        /* renamed from: e  reason: collision with root package name */
        private final String f12854e;

        /* renamed from: f  reason: collision with root package name */
        private final String f12855f;

        /* renamed from: g  reason: collision with root package name */
        private final String f12856g;

        /* renamed from: h  reason: collision with root package name */
        private final String f12857h;

        public q(C0504e9 c0504e9, ProtobufStateStorage protobufStateStorage) {
            this(c0504e9, protobufStateStorage, F0.g().w().b());
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            Boolean bool;
            Long l10;
            Long l11;
            Long l12;
            Integer valueOf;
            C0811qi c0811qi = (C0811qi) this.f12851b.read();
            Nd nd2 = new Nd(context);
            int f10 = nd2.f();
            if (f10 == -1) {
                f10 = this.f12850a.a(-1);
            }
            C0403a8 c0403a8 = this.f12852c;
            String str = c0811qi.f13390b;
            String str2 = c0811qi.f13391c;
            String a10 = this.f12850a.a(this.f12853d, (String) null);
            if (this.f12850a.c(this.f12854e)) {
                bool = Boolean.valueOf(this.f12850a.a(this.f12854e, false));
            } else {
                bool = null;
            }
            if (this.f12850a.c(this.f12855f)) {
                l10 = Long.valueOf(this.f12850a.a(this.f12855f, -1L));
            } else {
                l10 = null;
            }
            if (this.f12850a.c(this.f12856g)) {
                l11 = Long.valueOf(this.f12850a.a(this.f12856g, -1L));
            } else {
                l11 = null;
            }
            if (this.f12850a.c(this.f12857h)) {
                l12 = Long.valueOf(this.f12850a.a(this.f12857h, -1L));
            } else {
                l12 = null;
            }
            if (f10 == -1) {
                valueOf = null;
            } else {
                valueOf = Integer.valueOf(f10);
            }
            c0403a8.a(str, str2, a10, bool, l10, l11, l12, valueOf);
            this.f12850a.j().f(this.f12853d).f(this.f12854e).f(this.f12855f).f(this.f12856g).f(this.f12857h).d();
            nd2.h().b();
        }

        q(C0504e9 c0504e9, ProtobufStateStorage protobufStateStorage, C0403a8 c0403a8) {
            this.f12853d = new Rd("REFERRER_FROM_PLAY_SERVICES").a();
            this.f12854e = new Rd("REFERRER_CHECKED").a();
            this.f12855f = new Rd("L_ID").a();
            this.f12856g = new Rd("LBS_ID").a();
            this.f12857h = new Rd("L_REQ_NUM").a();
            this.f12850a = c0504e9;
            this.f12851b = protobufStateStorage;
            this.f12852c = c0403a8;
        }
    }

    @Override // com.yandex.metrica.impl.ob.D1
    SparseArray<D1.a> a() {
        return new a();
    }

    /* renamed from: com.yandex.metrica.impl.ob.m2$p */
    /* loaded from: classes2.dex */
    static class p implements D1.a {

        /* renamed from: a  reason: collision with root package name */
        private final ProtobufStateStorage f12848a;

        /* renamed from: b  reason: collision with root package name */
        private final C0489dj f12849b;

        public p(Context context, ProtobufStateStorage protobufStateStorage) {
            this(protobufStateStorage, C0514ej.a(context).b(context, new C0613ij(new C0787pi.b(context))));
        }

        @Override // com.yandex.metrica.impl.ob.D1.a
        public void a(Context context) {
            String str = this.f12849b.a().f11672a;
            if (!TextUtils.isEmpty(str)) {
                C0811qi c0811qi = (C0811qi) this.f12848a.read();
                if (!str.equals(c0811qi.f13389a)) {
                    this.f12848a.save(c0811qi.a(c0811qi.f13406r).k(str).a());
                }
            }
        }

        public p(ProtobufStateStorage protobufStateStorage, C0489dj c0489dj) {
            this.f12848a = protobufStateStorage;
            this.f12849b = c0489dj;
        }
    }

    @Override // com.yandex.metrica.impl.ob.D1
    protected int a(Nd nd2) {
        int f10 = nd2.f();
        if (f10 == -1) {
            f10 = this.f12820a.a(-1);
        }
        return f10 == -1 ? this.f12822c.c() : f10;
    }

    @Override // com.yandex.metrica.impl.ob.D1
    protected void a(Nd nd2, int i10) {
        this.f12822c.a(i10);
    }
}
