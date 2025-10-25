package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.impl.ob.C0565gk;
import java.util.Collections;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Xk {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0690ll f11811a;

    /* renamed from: b  reason: collision with root package name */
    private final C0664kk f11812b;

    /* renamed from: c  reason: collision with root package name */
    private final C0429b9 f11813c;

    /* renamed from: d  reason: collision with root package name */
    private volatile C0541fl f11814d;

    /* renamed from: e  reason: collision with root package name */
    private final Bl f11815e;

    /* renamed from: f  reason: collision with root package name */
    private final C0565gk.b f11816f;

    /* renamed from: g  reason: collision with root package name */
    private final C0590hk f11817g;

    /* loaded from: classes2.dex */
    class a implements InterfaceC0690ll {
        a(Xk xk) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0690ll
        public void onError(String str) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0690ll
        public void onResult(JSONObject jSONObject) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Xk(C0541fl c0541fl, C0664kk c0664kk, C0429b9 c0429b9, Bl bl, C0590hk c0590hk) {
        this(c0541fl, c0664kk, c0429b9, bl, c0590hk, new C0565gk.b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0541fl c0541fl) {
        this.f11814d = c0541fl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Activity activity) {
        C0541fl c0541fl = this.f11814d;
        if (this.f11817g.a(activity, c0541fl) == Wk.OK) {
            a(activity, 0L, c0541fl, c0541fl.f12426e);
        }
    }

    Xk(C0541fl c0541fl, C0664kk c0664kk, C0429b9 c0429b9, Bl bl, C0590hk c0590hk, C0565gk.b bVar) {
        this.f11811a = new a(this);
        this.f11814d = c0541fl;
        this.f11812b = c0664kk;
        this.f11813c = c0429b9;
        this.f11815e = bl;
        this.f11816f = bVar;
        this.f11817g = c0590hk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity) {
        C0541fl c0541fl = this.f11814d;
        if (this.f11817g.a(activity, c0541fl) == Wk.OK) {
            C0957wl c0957wl = c0541fl.f12426e;
            a(activity, c0957wl.f13904d, c0541fl, c0957wl);
        }
    }

    private void a(Activity activity, long j10, C0541fl c0541fl, C0957wl c0957wl) {
        Bl bl = this.f11815e;
        C0565gk.b bVar = this.f11816f;
        C0664kk c0664kk = this.f11812b;
        C0429b9 c0429b9 = this.f11813c;
        InterfaceC0690ll interfaceC0690ll = this.f11811a;
        bVar.getClass();
        bl.a(activity, j10, c0541fl, c0957wl, Collections.singletonList(new C0565gk(c0664kk, c0429b9, false, interfaceC0690ll, new C0565gk.a())));
    }
}
