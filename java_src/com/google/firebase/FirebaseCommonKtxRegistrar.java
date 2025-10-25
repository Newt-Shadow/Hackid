package com.google.firebase;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import java.util.concurrent.Executor;
import k7.e0;
import k7.g;
import k7.q;
import kotlin.jvm.internal.m;
import td.i0;
import td.m1;
import yc.o;
@Keep
/* loaded from: classes.dex */
public final class FirebaseCommonKtxRegistrar implements ComponentRegistrar {

    /* loaded from: classes.dex */
    public static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        public static final a f8675a = new a();

        @Override // k7.g
        /* renamed from: b */
        public final i0 a(k7.d dVar) {
            Object b10 = dVar.b(e0.a(j7.a.class, Executor.class));
            m.d(b10, "get(...)");
            return m1.a((Executor) b10);
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements g {

        /* renamed from: a  reason: collision with root package name */
        public static final b f8676a = new b();

        @Override // k7.g
        /* renamed from: b */
        public final i0 a(k7.d dVar) {
            Object b10 = dVar.b(e0.a(j7.c.class, Executor.class));
            m.d(b10, "get(...)");
            return m1.a((Executor) b10);
        }
    }

    /* loaded from: classes.dex */
    public static final class c implements g {

        /* renamed from: a  reason: collision with root package name */
        public static final c f8677a = new c();

        @Override // k7.g
        /* renamed from: b */
        public final i0 a(k7.d dVar) {
            Object b10 = dVar.b(e0.a(j7.b.class, Executor.class));
            m.d(b10, "get(...)");
            return m1.a((Executor) b10);
        }
    }

    /* loaded from: classes.dex */
    public static final class d implements g {

        /* renamed from: a  reason: collision with root package name */
        public static final d f8678a = new d();

        @Override // k7.g
        /* renamed from: b */
        public final i0 a(k7.d dVar) {
            Object b10 = dVar.b(e0.a(j7.d.class, Executor.class));
            m.d(b10, "get(...)");
            return m1.a((Executor) b10);
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    public List<k7.c> getComponents() {
        List<k7.c> k10;
        k7.c d10 = k7.c.e(e0.a(j7.a.class, i0.class)).b(q.l(e0.a(j7.a.class, Executor.class))).f(a.f8675a).d();
        m.d(d10, "build(...)");
        k7.c d11 = k7.c.e(e0.a(j7.c.class, i0.class)).b(q.l(e0.a(j7.c.class, Executor.class))).f(b.f8676a).d();
        m.d(d11, "build(...)");
        k7.c d12 = k7.c.e(e0.a(j7.b.class, i0.class)).b(q.l(e0.a(j7.b.class, Executor.class))).f(c.f8677a).d();
        m.d(d12, "build(...)");
        k7.c d13 = k7.c.e(e0.a(j7.d.class, i0.class)).b(q.l(e0.a(j7.d.class, Executor.class))).f(d.f8678a).d();
        m.d(d13, "build(...)");
        k10 = o.k(d10, d11, d12, d13);
        return k10;
    }
}
