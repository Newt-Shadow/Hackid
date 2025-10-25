package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.interact.CellularNetworkInfo;
import com.yandex.metrica.p;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Rf {

    /* renamed from: a  reason: collision with root package name */
    private final Sf f11200a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f11201b;

    /* renamed from: c  reason: collision with root package name */
    private final Kn<Context> f11202c;

    /* renamed from: d  reason: collision with root package name */
    private final Kn<String> f11203d;

    /* renamed from: e  reason: collision with root package name */
    private final C0592hm f11204e;

    /* loaded from: classes2.dex */
    class a extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f11205a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ IIdentifierCallback f11206b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f11207c;

        a(Context context, IIdentifierCallback iIdentifierCallback, List list) {
            this.f11205a = context;
            this.f11206b = iIdentifierCallback;
            this.f11207c = list;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            Sf sf2 = Rf.this.f11200a;
            Context context = this.f11205a;
            sf2.getClass();
            R2.a(context).a(this.f11206b, this.f11207c);
        }
    }

    /* loaded from: classes2.dex */
    class b extends AbstractCallableC0492dm<String> {
        b() {
        }

        @Override // com.yandex.metrica.impl.ob.AbstractCallableC0492dm
        public String a() {
            Rf.this.f11200a.getClass();
            R2 k10 = R2.k();
            if (k10 == null) {
                return null;
            }
            return k10.e().a();
        }
    }

    /* loaded from: classes2.dex */
    class c extends AbstractCallableC0492dm<Boolean> {
        c() {
        }

        @Override // com.yandex.metrica.impl.ob.AbstractCallableC0492dm
        public Boolean a() {
            Rf.this.f11200a.getClass();
            R2 k10 = R2.k();
            if (k10 == null) {
                return null;
            }
            return k10.e().b();
        }
    }

    /* loaded from: classes2.dex */
    class d extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f11211a;

        d(boolean z10) {
            this.f11211a = z10;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            Sf sf2 = Rf.this.f11200a;
            boolean z10 = this.f11211a;
            sf2.getClass();
            R2.b(z10);
        }
    }

    /* loaded from: classes2.dex */
    class e extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ p.Ucc f11213a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f11214b;

        /* loaded from: classes2.dex */
        class a implements InterfaceC0690ll {
            a() {
            }

            @Override // com.yandex.metrica.impl.ob.InterfaceC0690ll
            public void onError(String str) {
                e.this.f11213a.onError(str);
            }

            @Override // com.yandex.metrica.impl.ob.InterfaceC0690ll
            public void onResult(JSONObject jSONObject) {
                e.this.f11213a.onResult(jSONObject);
            }
        }

        e(p.Ucc ucc, boolean z10) {
            this.f11213a = ucc;
            this.f11214b = z10;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            Rf.b(Rf.this).a(new a(), this.f11214b);
        }
    }

    /* loaded from: classes2.dex */
    class f extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f11217a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f11218b;

        f(Context context, Map map) {
            this.f11217a = context;
            this.f11218b = map;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            Sf sf2 = Rf.this.f11200a;
            Context context = this.f11217a;
            sf2.getClass();
            R2.a(context).a(this.f11218b);
        }
    }

    public Rf(ICommonExecutor iCommonExecutor, Sf sf2) {
        this(iCommonExecutor, sf2, new Kf(sf2), new Hn(new Gn("Context")), new Hn(new Gn("Event name")), new C0592hm());
    }

    public Future<Boolean> b() {
        return this.f11201b.submit(new c());
    }

    public String c(Context context) {
        this.f11202c.a(context);
        return context.getPackageName();
    }

    public String d(Context context) {
        this.f11202c.a(context);
        this.f11200a.getClass();
        return R2.a(context).a();
    }

    public Rf(ICommonExecutor iCommonExecutor, Sf sf2, Kf kf2, Kn<Context> kn, Kn<String> kn2, C0592hm c0592hm) {
        this.f11200a = sf2;
        this.f11201b = iCommonExecutor;
        this.f11202c = kn;
        this.f11203d = kn2;
        this.f11204e = c0592hm;
    }

    public void a(Context context, IIdentifierCallback iIdentifierCallback, List<String> list) {
        this.f11202c.a(context);
        this.f11201b.execute(new a(context, iIdentifierCallback, list));
    }

    public String b(Context context) {
        this.f11202c.a(context);
        this.f11200a.getClass();
        return R2.a(context).c();
    }

    public Future<String> a() {
        return this.f11201b.submit(new b());
    }

    public String a(Context context) {
        this.f11202c.a(context);
        return this.f11204e.a(context) ? new CellularNetworkInfo(context).getCelluralInfo() : "";
    }

    static K0 b(Rf rf2) {
        rf2.f11200a.getClass();
        return R2.k().d().b();
    }

    public void a(Context context, boolean z10) {
        this.f11202c.a(context);
        this.f11201b.execute(new d(z10));
    }

    public void a(p.Ucc ucc, boolean z10) {
        this.f11200a.getClass();
        if (!R2.i()) {
            ucc.onError("Main API key is not activated");
        } else {
            this.f11201b.execute(new e(ucc, z10));
        }
    }

    public void a(Context context, Map<String, Object> map) {
        this.f11202c.a(context);
        this.f11201b.execute(new f(context, map));
    }
}
