package d1;

import androidx.concurrent.futures.c;
import id.l;
import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import r6.d;
import td.s0;
import xc.t;
/* loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ c.a f14412e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ s0 f14413f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(c.a aVar, s0 s0Var) {
            super(1);
            this.f14412e = aVar;
            this.f14413f = s0Var;
        }

        public final void a(Throwable th) {
            if (th != null) {
                if (th instanceof CancellationException) {
                    this.f14412e.c();
                    return;
                } else {
                    this.f14412e.e(th);
                    return;
                }
            }
            this.f14412e.b(this.f14413f.c());
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Throwable) obj);
            return t.f32733a;
        }
    }

    public static final d b(final s0 s0Var, final Object obj) {
        m.e(s0Var, "<this>");
        d a10 = c.a(new c.InterfaceC0024c() { // from class: d1.a
            @Override // androidx.concurrent.futures.c.InterfaceC0024c
            public final Object a(c.a aVar) {
                Object d10;
                d10 = b.d(s0.this, obj, aVar);
                return d10;
            }
        });
        m.d(a10, "getFuture { completer ->…      }\n        tag\n    }");
        return a10;
    }

    public static /* synthetic */ d c(s0 s0Var, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = "Deferred.asListenableFuture";
        }
        return b(s0Var, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d(s0 this_asListenableFuture, Object obj, c.a completer) {
        m.e(this_asListenableFuture, "$this_asListenableFuture");
        m.e(completer, "completer");
        this_asListenableFuture.q(new a(completer, this_asListenableFuture));
        return obj;
    }
}
