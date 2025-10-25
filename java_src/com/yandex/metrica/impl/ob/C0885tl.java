package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.view.ViewGroup;
import java.util.Arrays;
import java.util.Collections;
/* renamed from: com.yandex.metrica.impl.ob.tl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0885tl {

    /* renamed from: a  reason: collision with root package name */
    private final b f13653a;

    /* renamed from: b  reason: collision with root package name */
    private final a f13654b;

    /* renamed from: com.yandex.metrica.impl.ob.tl$a */
    /* loaded from: classes2.dex */
    static class a {
        a() {
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.tl$b */
    /* loaded from: classes2.dex */
    static class b {
        b() {
        }
    }

    public C0885tl() {
        this(new b(), new a());
    }

    public C0491dl a(Activity activity, Hk hk, C0957wl c0957wl, Ak ak, C1005yl c1005yl, C0861sl c0861sl) {
        ViewGroup viewGroup;
        C0491dl c0491dl = new C0491dl();
        try {
            viewGroup = (ViewGroup) activity.findViewById(16908290);
        } catch (Throwable th) {
            c1005yl.a("ui_parsing_root", th);
            viewGroup = null;
        }
        if (viewGroup != null) {
            this.f13653a.getClass();
            Rk rk = new Rk(c0957wl, new Fl(c1005yl), new C0860sk(c0957wl.f13903c), ak, Collections.singletonList(new Mk()), Arrays.asList(new C0416al(c0957wl.f13902b)), c1005yl, c0861sl, new Hl());
            c0491dl.a(rk, viewGroup, hk);
            if (c0957wl.f13905e) {
                this.f13654b.getClass();
                C0836rk c0836rk = new C0836rk(rk.a());
                for (C0441bl c0441bl : rk.b()) {
                    c0836rk.a(c0441bl);
                }
            }
        }
        return c0491dl;
    }

    C0885tl(b bVar, a aVar) {
        this.f13653a = bVar;
        this.f13654b = aVar;
    }
}
