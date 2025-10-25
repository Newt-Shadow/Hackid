package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.f;
import java.util.Set;
import n5.c;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final AbstractC0097a f5876a;

    /* renamed from: b  reason: collision with root package name */
    private final g f5877b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5878c;

    /* renamed from: com.google.android.gms.common.api.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0097a extends e {
        public f a(Context context, Looper looper, n5.e eVar, Object obj, f.a aVar, f.b bVar) {
            return b(context, looper, eVar, obj, aVar, bVar);
        }

        public f b(Context context, Looper looper, n5.e eVar, Object obj, m5.d dVar, m5.m mVar) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    /* loaded from: classes.dex */
    public interface b {
    }

    /* loaded from: classes.dex */
    public static class c {
    }

    /* loaded from: classes.dex */
    public interface d {

        /* renamed from: i0  reason: collision with root package name */
        public static final C0098a f5879i0 = new C0098a(null);

        /* renamed from: com.google.android.gms.common.api.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0098a implements d {
            /* synthetic */ C0098a(m mVar) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class e {
    }

    /* loaded from: classes.dex */
    public interface f extends b {
        boolean a();

        Set b();

        void c(String str);

        void d(c.InterfaceC0255c interfaceC0255c);

        boolean e();

        String f();

        void g();

        void h(c.e eVar);

        boolean i();

        int j();

        void k(n5.k kVar, Set set);

        l5.d[] l();

        String m();

        boolean o();
    }

    /* loaded from: classes.dex */
    public static final class g extends c {
    }

    public a(String str, AbstractC0097a abstractC0097a, g gVar) {
        n5.q.l(abstractC0097a, "Cannot construct an Api with a null ClientBuilder");
        n5.q.l(gVar, "Cannot construct an Api with a null ClientKey");
        this.f5878c = str;
        this.f5876a = abstractC0097a;
        this.f5877b = gVar;
    }

    public final AbstractC0097a a() {
        return this.f5876a;
    }

    public final c b() {
        return this.f5877b;
    }

    public final String c() {
        return this.f5878c;
    }
}
