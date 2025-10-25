package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.util.Base64;
import android.util.Pair;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.impl.ob.U1;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class T1 implements P0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f11371a;

    /* renamed from: b  reason: collision with root package name */
    private C0745o1 f11372b;

    /* renamed from: c  reason: collision with root package name */
    private C0620j1 f11373c;

    /* renamed from: d  reason: collision with root package name */
    private final T f11374d;

    /* renamed from: e  reason: collision with root package name */
    private InterfaceC0637ji f11375e;

    /* renamed from: f  reason: collision with root package name */
    private final P6 f11376f;

    /* renamed from: g  reason: collision with root package name */
    private final C0918v6 f11377g;

    /* renamed from: h  reason: collision with root package name */
    private final U1 f11378h = new U1(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Map f11379a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Q1 f11380b;

        a(Map map, Q1 q12) {
            this.f11379a = map;
            this.f11380b = q12;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C0445c0 a(C0445c0 c0445c0) {
            T1 t12 = T1.this;
            C0445c0 f10 = c0445c0.f(Tl.g(this.f11379a));
            Q1 q12 = this.f11380b;
            t12.getClass();
            if (C1008z0.f(f10.f12102e)) {
                f10.c(q12.f11134c.a());
            }
            return f10;
        }
    }

    /* loaded from: classes2.dex */
    class b implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0927vf f11382a;

        b(T1 t12, C0927vf c0927vf) {
            this.f11382a = c0927vf;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C0445c0 a(C0445c0 c0445c0) {
            return c0445c0.f(new String(Base64.encode(MessageNano.toByteArray(this.f11382a), 0)));
        }
    }

    /* loaded from: classes2.dex */
    class c implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11383a;

        c(T1 t12, String str) {
            this.f11383a = str;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C0445c0 a(C0445c0 c0445c0) {
            return c0445c0.f(this.f11383a);
        }
    }

    /* loaded from: classes2.dex */
    class d implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ W1 f11384a;

        d(T1 t12, W1 w12) {
            this.f11384a = w12;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C0445c0 a(C0445c0 c0445c0) {
            Pair<byte[], Integer> a10 = this.f11384a.a();
            C0445c0 f10 = c0445c0.f(new String(Base64.encode((byte[]) a10.first, 0)));
            f10.f12105h = ((Integer) a10.second).intValue();
            return f10;
        }
    }

    /* loaded from: classes2.dex */
    class e implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Sg f11385a;

        e(T1 t12, Sg sg) {
            this.f11385a = sg;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C0445c0 a(C0445c0 c0445c0) {
            xc.k a10 = this.f11385a.a();
            C0445c0 f10 = c0445c0.f(new String(Base64.encode((byte[]) a10.c(), 0)));
            f10.f12105h = ((Integer) a10.d()).intValue();
            return f10;
        }
    }

    /* loaded from: classes2.dex */
    class f implements U1.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Na f11386a;

        f(T1 t12, Na na2) {
            this.f11386a = na2;
        }

        @Override // com.yandex.metrica.impl.ob.U1.e
        public C0445c0 a(C0445c0 c0445c0) {
            C0445c0 f10 = c0445c0.f(L0.a(MessageNano.toByteArray((MessageNano) this.f11386a.f10887a)));
            f10.f12105h = this.f11386a.f10888b.a();
            return f10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public T1(A3 a32, Context context, C0745o1 c0745o1, P6 p62, C0918v6 c0918v6) {
        this.f11372b = c0745o1;
        this.f11371a = context;
        this.f11374d = new T(a32);
        this.f11376f = p62;
        this.f11377g = c0918v6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0620j1 c0620j1) {
        this.f11373c = c0620j1;
    }

    public void b(Q1 q12) {
        C0609ie c0609ie = q12.f11135d;
        String e10 = q12.e();
        C0467cm a10 = a(q12);
        List<Integer> list = C1008z0.f14050i;
        JSONObject jSONObject = new JSONObject();
        if (c0609ie != null) {
            c0609ie.a(jSONObject);
        }
        a(new J(jSONObject.toString(), "", EnumC0396a1.EVENT_TYPE_ACTIVATION.b(), 0, a10).d(e10), q12);
    }

    public void c(Q1 q12) {
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_APP_ENVIRONMENT_CLEARED.b();
        a(new U1.f(c0445c0, q12));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        this.f11372b.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        this.f11372b.f();
    }

    public void f() {
        this.f11372b.a();
    }

    public void g() {
        this.f11372b.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InterfaceC0637ji interfaceC0637ji) {
        this.f11375e = interfaceC0637ji;
        this.f11374d.a(interfaceC0637ji);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Boolean bool, Boolean bool2, Boolean bool3) {
        if (A2.a(bool)) {
            this.f11374d.b().o(bool.booleanValue());
        }
        if (A2.a(bool2)) {
            this.f11374d.b().u(bool2.booleanValue());
        }
        if (A2.a(bool3)) {
            this.f11374d.b().i(bool3.booleanValue());
        }
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_UPDATE_PRE_ACTIVATION_CONFIG.b();
        a(c0445c0, this.f11374d);
    }

    public C0745o1 c() {
        return this.f11372b;
    }

    public Future<Void> b(A3 a32) {
        return this.f11378h.queueResumeUserSession(a32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, Q1 q12) {
        try {
            a(C1008z0.c(L0.a(MessageNano.toByteArray(this.f11376f.fromModel(new C0477d7(str == null ? new byte[0] : str.getBytes("UTF-8"), new C0452c7(EnumC0552g7.USER, null))))), a(q12)), q12);
        } catch (UnsupportedEncodingException unused) {
        }
    }

    public void b(String str) {
        this.f11374d.a().b(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(H6 h62, Q1 q12) {
        this.f11372b.f();
        a(this.f11377g.a(h62, q12));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(String str, Q1 q12) {
        a(new U1.f(J.a(str, a(q12)), q12).a(new c(this, str)));
    }

    public Future<Void> a(C0445c0 c0445c0, Q1 q12, Map<String, Object> map) {
        EnumC0396a1 enumC0396a1 = EnumC0396a1.EVENT_TYPE_UNDEFINED;
        this.f11372b.f();
        U1.f fVar = new U1.f(c0445c0, q12);
        if (!A2.b(map)) {
            fVar.a(new a(map, q12));
        }
        return a(fVar);
    }

    public ec.k b() {
        return this.f11378h;
    }

    public Future<Void> a(A3 a32) {
        return this.f11378h.queuePauseUserSession(a32);
    }

    public void a(List<String> list, ResultReceiver resultReceiver, Map<String, String> map) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.yandex.metrica.impl.IdentifiersData", new V0(list, map, resultReceiver));
        EnumC0396a1 enumC0396a1 = EnumC0396a1.EVENT_TYPE_STARTUP;
        int i10 = Ul.f11624e;
        C0467cm a10 = C0467cm.a();
        List<Integer> list2 = C1008z0.f14050i;
        a(new J("", "", enumC0396a1.b(), 0, a10).c(bundle), this.f11374d);
    }

    public void a(ResultReceiverC0511eg resultReceiverC0511eg) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.yandex.metrica.impl.referrer.common.ReferrerResultReceiver", resultReceiverC0511eg);
        int i10 = Ul.f11624e;
        C0467cm a10 = C0467cm.a();
        List<Integer> list = C1008z0.f14050i;
        a(new J("", "", EnumC0396a1.EVENT_TYPE_REQUEST_REFERRER.b(), 0, a10).c(bundle), this.f11374d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0445c0 c0445c0, Q1 q12) {
        if (C1008z0.f(c0445c0.f12102e)) {
            c0445c0.c(q12.f11134c.a());
        }
        a(c0445c0, q12, (Map<String, Object>) null);
    }

    public void a(List<String> list) {
        this.f11374d.a().a(list);
    }

    public void a(Map<String, String> map) {
        this.f11374d.a().a(map);
    }

    public void a(String str) {
        this.f11374d.a().a(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(H6 h62, Q1 q12) {
        this.f11372b.f();
        U1.f a10 = this.f11377g.a(h62, q12);
        a10.a().a(this.f11375e);
        this.f11378h.sendCrash(a10);
    }

    public void a(String str, String str2, Q1 q12) {
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_APP_ENVIRONMENT_UPDATED.b();
        a(new U1.f(c0445c0.a(str, str2), q12));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0927vf c0927vf, Q1 q12) {
        C0445c0 c0445c0 = new C0445c0();
        c0445c0.f12102e = EnumC0396a1.EVENT_TYPE_SEND_USER_PROFILE.b();
        a(new U1.f(c0445c0, q12).a(new b(this, c0927vf)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(W1 w12, Q1 q12) {
        J j10 = new J(a(q12));
        j10.f12102e = EnumC0396a1.EVENT_TYPE_SEND_REVENUE_EVENT.b();
        a(new U1.f(j10, q12).a(new d(this, w12)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Sg sg, Q1 q12) {
        J j10 = new J(a(q12));
        j10.f12102e = EnumC0396a1.EVENT_TYPE_SEND_AD_REVENUE_EVENT.b();
        a(new U1.f(j10, q12).a(new e(this, sg)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Za za2, Q1 q12) {
        for (Na<C0709mf, Vm> na2 : za2.toProto()) {
            J j10 = new J(a(q12));
            j10.f12102e = EnumC0396a1.EVENT_TYPE_SEND_ECOMMERCE_EVENT.b();
            a(new U1.f(j10, q12).a(new f(this, na2)));
        }
    }

    public void a(IMetricaService iMetricaService, C0445c0 c0445c0, Q1 q12) {
        iMetricaService.reportData(c0445c0.b(q12.c()));
        C0620j1 c0620j1 = this.f11373c;
        if (c0620j1 == null || c0620j1.f9735b.f()) {
            this.f11372b.g();
        }
    }

    private Future<Void> a(U1.f fVar) {
        fVar.a().a(this.f11375e);
        return this.f11378h.queueReport(fVar);
    }

    public Context a() {
        return this.f11371a;
    }

    private C0467cm a(Q1 q12) {
        return Ul.b(q12.b().b());
    }
}
