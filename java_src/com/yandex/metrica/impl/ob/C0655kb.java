package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0630jb;
import com.yandex.metrica.network.NetworkClient;
import com.yandex.metrica.network.Request;
import com.yandex.metrica.network.Response;
/* renamed from: com.yandex.metrica.impl.ob.kb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0655kb {

    /* renamed from: a  reason: collision with root package name */
    private final C0630jb f12740a;

    /* renamed from: b  reason: collision with root package name */
    private final Uh f12741b;

    public C0655kb(C0630jb c0630jb, Uh uh) {
        this.f12740a = c0630jb;
        this.f12741b = uh;
    }

    public final void a() {
        Request b10 = new Request.Builder(this.f12741b.c()).b();
        NetworkClient.Builder builder = new NetworkClient.Builder();
        F0 g10 = F0.g();
        kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
        g10.t().getClass();
        String str = null;
        NetworkClient.Builder f10 = builder.f(null);
        int i10 = C0707md.f12879a;
        NetworkClient.Builder e10 = f10.b(i10).e(i10);
        boolean z10 = false;
        NetworkClient a10 = e10.g(false).c(true).a();
        kotlin.jvm.internal.m.d(a10, "NetworkClient.Builder()\n…rue)\n            .build()");
        Response execute = a10.g(b10).execute();
        kotlin.jvm.internal.m.d(execute, "client.newCall(request).execute()");
        C0630jb c0630jb = this.f12740a;
        if (execute.a() == 200) {
            z10 = true;
        }
        int length = execute.e().length;
        int a11 = execute.a();
        Throwable it = execute.c();
        if (it != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(it.getClass().getSimpleName());
            sb2.append(" : ");
            kotlin.jvm.internal.m.d(it, "it");
            sb2.append(it.getLocalizedMessage());
            str = sb2.toString();
        }
        c0630jb.a(new C0630jb.a(z10, a11, length, str));
    }
}
