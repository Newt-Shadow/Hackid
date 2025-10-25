package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.impl.ob.C0565gk;
import java.util.Collections;
/* loaded from: classes2.dex */
class Sk {

    /* renamed from: a  reason: collision with root package name */
    private final C0664kk f11361a;

    /* renamed from: b  reason: collision with root package name */
    private final C0429b9 f11362b;

    /* renamed from: c  reason: collision with root package name */
    private volatile C0541fl f11363c;

    /* renamed from: d  reason: collision with root package name */
    private final Bl f11364d;

    /* renamed from: e  reason: collision with root package name */
    private final C0565gk.b f11365e;

    /* renamed from: f  reason: collision with root package name */
    private final C0590hk f11366f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Sk(C0541fl c0541fl, C0664kk c0664kk, C0429b9 c0429b9, Bl bl, C0590hk c0590hk) {
        this(c0541fl, c0664kk, c0429b9, bl, c0590hk, new C0565gk.b());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C0541fl c0541fl) {
        this.f11363c = c0541fl;
    }

    Sk(C0541fl c0541fl, C0664kk c0664kk, C0429b9 c0429b9, Bl bl, C0590hk c0590hk, C0565gk.b bVar) {
        this.f11363c = c0541fl;
        this.f11361a = c0664kk;
        this.f11362b = c0429b9;
        this.f11364d = bl;
        this.f11366f = c0590hk;
        this.f11365e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity, InterfaceC0690ll interfaceC0690ll, boolean z10) {
        String format;
        C0541fl c0541fl = this.f11363c;
        if ((z10 || this.f11361a.b().isEmpty()) && activity != null) {
            Wk a10 = this.f11366f.a(activity, c0541fl);
            if (a10 != Wk.OK) {
                int ordinal = a10.ordinal();
                if (ordinal == 1) {
                    format = String.format("no %s_config", "ui_access");
                } else if (ordinal == 2) {
                    format = String.format("no %s_config", "ui_parsing");
                } else if (ordinal != 3) {
                    format = ordinal != 4 ? ordinal != 5 ? "parsing ui context is forbidden for some reason" : "parsing ui context is forbidden by app for activity" : "parsing ui context is forbidden by app for application";
                } else {
                    format = String.format("feature %s disabled", "ui_parsing");
                }
                interfaceC0690ll.onError(format);
                return;
            } else if (!c0541fl.f12424c) {
                interfaceC0690ll.onError(String.format("feature %s disabled", "ui_collecting_for_bridge"));
                return;
            } else if (c0541fl.f12428g == null) {
                interfaceC0690ll.onError(String.format("no %s_config", "ui_collecting_for_bridge"));
                return;
            } else {
                Bl bl = this.f11364d;
                C0957wl c0957wl = c0541fl.f12426e;
                C0565gk.b bVar = this.f11365e;
                C0664kk c0664kk = this.f11361a;
                C0429b9 c0429b9 = this.f11362b;
                bVar.getClass();
                bl.a(activity, 0L, c0541fl, c0957wl, Collections.singletonList(new C0565gk(c0664kk, c0429b9, z10, interfaceC0690ll, new C0565gk.a())));
                return;
            }
        }
        interfaceC0690ll.onResult(this.f11361a.a());
    }
}
