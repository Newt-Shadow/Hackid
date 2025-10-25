package r1;

import bd.b;
import id.Function2;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.coroutines.jvm.internal.k;
import td.g;
import td.l0;
import td.m0;
import td.m1;
import td.t1;
import wd.d;
import wd.e;
import xc.m;
import xc.t;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final ReentrantLock f28872a = new ReentrantLock();

    /* renamed from: b  reason: collision with root package name */
    private final Map f28873b = new LinkedHashMap();

    /* renamed from: r1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0297a extends k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f28874a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f28875b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ c0.a f28876c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: r1.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0298a implements e {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ c0.a f28877a;

            C0298a(c0.a aVar) {
                this.f28877a = aVar;
            }

            @Override // wd.e
            public final Object emit(Object obj, ad.e eVar) {
                this.f28877a.accept(obj);
                return t.f32733a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0297a(d dVar, c0.a aVar, ad.e eVar) {
            super(2, eVar);
            this.f28875b = dVar;
            this.f28876c = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new C0297a(this.f28875b, this.f28876c, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10 = b.e();
            int i10 = this.f28874a;
            if (i10 != 0) {
                if (i10 == 1) {
                    m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                m.b(obj);
                d dVar = this.f28875b;
                C0298a c0298a = new C0298a(this.f28876c);
                this.f28874a = 1;
                if (dVar.collect(c0298a, this) == e10) {
                    return e10;
                }
            }
            return t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((C0297a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    public final void a(Executor executor, c0.a consumer, d flow) {
        kotlin.jvm.internal.m.e(executor, "executor");
        kotlin.jvm.internal.m.e(consumer, "consumer");
        kotlin.jvm.internal.m.e(flow, "flow");
        ReentrantLock reentrantLock = this.f28872a;
        reentrantLock.lock();
        try {
            if (this.f28873b.get(consumer) == null) {
                this.f28873b.put(consumer, g.d(m0.a(m1.a(executor)), null, null, new C0297a(flow, consumer, null), 3, null));
            }
            t tVar = t.f32733a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void b(c0.a consumer) {
        kotlin.jvm.internal.m.e(consumer, "consumer");
        ReentrantLock reentrantLock = this.f28872a;
        reentrantLock.lock();
        try {
            t1 t1Var = (t1) this.f28873b.get(consumer);
            if (t1Var != null) {
                t1.a.a(t1Var, null, 1, null);
            }
            t1 t1Var2 = (t1) this.f28873b.remove(consumer);
        } finally {
            reentrantLock.unlock();
        }
    }
}
