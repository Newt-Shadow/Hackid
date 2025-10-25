package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.Bk;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
class Bl {

    /* renamed from: a  reason: collision with root package name */
    private Runnable f9800a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f9801b;

    /* renamed from: c  reason: collision with root package name */
    private final C0689lk f9802c;

    /* renamed from: d  reason: collision with root package name */
    private final C0516el f9803d;

    /* renamed from: e  reason: collision with root package name */
    private final C1028zk f9804e;

    /* renamed from: f  reason: collision with root package name */
    private final a f9805f;

    /* renamed from: g  reason: collision with root package name */
    private final List<InterfaceC0981xl> f9806g;

    /* renamed from: h  reason: collision with root package name */
    private final List<Vk> f9807h;

    /* renamed from: i  reason: collision with root package name */
    private final Bk.a f9808i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class a {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bl(ICommonExecutor iCommonExecutor, C0689lk c0689lk, C1028zk c1028zk) {
        this(iCommonExecutor, c0689lk, c1028zk, new C0516el(), new a(), Collections.emptyList(), new Bk.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Bl bl, List list, Throwable th, C0957wl c0957wl) {
        bl.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((InterfaceC0933vl) it.next()).a(th, c0957wl);
        }
        for (InterfaceC0981xl interfaceC0981xl : bl.f9806g) {
            interfaceC0981xl.a(th, c0957wl);
        }
    }

    Bl(ICommonExecutor iCommonExecutor, C0689lk c0689lk, C1028zk c1028zk, C0516el c0516el, a aVar, List<Vk> list, Bk.a aVar2) {
        this.f9806g = new ArrayList();
        this.f9801b = iCommonExecutor;
        this.f9802c = c0689lk;
        this.f9804e = c1028zk;
        this.f9803d = c0516el;
        this.f9805f = aVar;
        this.f9807h = list;
        this.f9808i = aVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Bl bl, List list, C0491dl c0491dl, List list2, Activity activity, C0541fl c0541fl, Bk bk, long j10) {
        bl.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((InterfaceC0933vl) it.next()).a(j10, activity, c0491dl, list2, c0541fl, bk);
        }
        for (InterfaceC0981xl interfaceC0981xl : bl.f9806g) {
            interfaceC0981xl.a(j10, activity, c0491dl, list2, c0541fl, bk);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InterfaceC0981xl... interfaceC0981xlArr) {
        this.f9806g.addAll(Arrays.asList(interfaceC0981xlArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Bl bl, Activity activity, long j10) {
        for (InterfaceC0981xl interfaceC0981xl : bl.f9806g) {
            interfaceC0981xl.a(activity, j10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity, long j10, C0541fl c0541fl, C0957wl c0957wl, List<InterfaceC0933vl> list) {
        boolean z10;
        Iterator<Vk> it = this.f9807h.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().a(activity, c0957wl)) {
                    z10 = true;
                    break;
                }
            } else {
                z10 = false;
                break;
            }
        }
        boolean z11 = z10;
        WeakReference weakReference = new WeakReference(activity);
        Bk.a aVar = this.f9808i;
        C1028zk c1028zk = this.f9804e;
        aVar.getClass();
        Al al = new Al(this, weakReference, list, c0541fl, c0957wl, new Bk(c1028zk, c0541fl), z11);
        Runnable runnable = this.f9800a;
        if (runnable != null) {
            this.f9801b.remove(runnable);
        }
        this.f9800a = al;
        for (InterfaceC0981xl interfaceC0981xl : this.f9806g) {
            interfaceC0981xl.a(activity, z11);
        }
        this.f9801b.executeDelayed(al, j10);
    }
}
