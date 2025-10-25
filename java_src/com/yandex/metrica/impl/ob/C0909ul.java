package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* renamed from: com.yandex.metrica.impl.ob.ul  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0909ul implements InterfaceC0566gl {

    /* renamed from: a  reason: collision with root package name */
    private final Xk f13774a;

    /* renamed from: b  reason: collision with root package name */
    private final Sk f13775b;

    /* renamed from: c  reason: collision with root package name */
    private final C0429b9 f13776c;

    /* renamed from: d  reason: collision with root package name */
    private final C1028zk f13777d;

    /* renamed from: e  reason: collision with root package name */
    private final Lk f13778e;

    /* renamed from: f  reason: collision with root package name */
    private Activity f13779f;

    /* renamed from: g  reason: collision with root package name */
    private C0541fl f13780g;

    /* renamed from: com.yandex.metrica.impl.ob.ul$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0716mm<Activity> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(Activity activity) {
            C0909ul.this.f13774a.a(activity);
        }
    }

    public C0909ul(Context context, C0429b9 c0429b9, El el, ICommonExecutor iCommonExecutor, C0541fl c0541fl) {
        this(context, c0429b9, el, iCommonExecutor, c0541fl, new C1028zk(c0541fl));
    }

    public synchronized void b(Activity activity) {
        this.f13779f = activity;
        this.f13774a.a(activity);
    }

    private C0909ul(Context context, C0429b9 c0429b9, El el, ICommonExecutor iCommonExecutor, C0541fl c0541fl, C1028zk c1028zk) {
        this(c0429b9, el, c0541fl, c1028zk, new C0664kk(1, c0429b9), new Bl(iCommonExecutor, new C0689lk(c0429b9), c1028zk), new C0590hk(context));
    }

    public synchronized void a(Activity activity) {
        this.f13778e.a(activity);
        this.f13779f = null;
    }

    private C0909ul(C0429b9 c0429b9, El el, C0541fl c0541fl, C1028zk c1028zk, C0664kk c0664kk, Bl bl, C0590hk c0590hk) {
        this(c0429b9, c0541fl, el, bl, c1028zk, new Xk(c0541fl, c0664kk, c0429b9, bl, c0590hk), new Sk(c0541fl, c0664kk, c0429b9, bl, c0590hk), new C0714mk());
    }

    C0909ul(C0429b9 c0429b9, C0541fl c0541fl, El el, Bl bl, C1028zk c1028zk, Xk xk, Sk sk, C0714mk c0714mk) {
        this.f13776c = c0429b9;
        this.f13780g = c0541fl;
        this.f13777d = c1028zk;
        this.f13774a = xk;
        this.f13775b = sk;
        Lk lk = new Lk(new a(), el);
        this.f13778e = lk;
        bl.a(c0714mk, lk);
    }

    public synchronized void a(InterfaceC0690ll interfaceC0690ll, boolean z10) {
        this.f13775b.a(this.f13779f, interfaceC0690ll, z10);
        this.f13776c.c(true);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0566gl
    public synchronized void a(C0541fl c0541fl) {
        if (!c0541fl.equals(this.f13780g)) {
            this.f13777d.a(c0541fl);
            this.f13775b.a(c0541fl);
            this.f13774a.a(c0541fl);
            this.f13780g = c0541fl;
            Activity activity = this.f13779f;
            if (activity != null) {
                this.f13774a.b(activity);
            }
        }
    }
}
