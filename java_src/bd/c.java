package bd;

import ad.e;
import ad.i;
import id.Function2;
import kotlin.coroutines.jvm.internal.h;
import kotlin.coroutines.jvm.internal.j;
import kotlin.jvm.internal.g0;
import kotlin.jvm.internal.m;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class c {

    /* loaded from: classes2.dex */
    public static final class a extends j {

        /* renamed from: a  reason: collision with root package name */
        private int f4738a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f4739b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f4740c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e eVar, Function2 function2, Object obj) {
            super(eVar);
            this.f4739b = function2;
            this.f4740c = obj;
            m.c(eVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        protected Object invokeSuspend(Object obj) {
            int i10 = this.f4738a;
            if (i10 != 0) {
                if (i10 == 1) {
                    this.f4738a = 2;
                    xc.m.b(obj);
                    return obj;
                }
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f4738a = 1;
            xc.m.b(obj);
            m.c(this.f4739b, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
            return ((Function2) g0.c(this.f4739b, 2)).invoke(this.f4740c, this);
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        private int f4741a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function2 f4742b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f4743c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(e eVar, i iVar, Function2 function2, Object obj) {
            super(eVar, iVar);
            this.f4742b = function2;
            this.f4743c = obj;
            m.c(eVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        protected Object invokeSuspend(Object obj) {
            int i10 = this.f4741a;
            if (i10 != 0) {
                if (i10 == 1) {
                    this.f4741a = 2;
                    xc.m.b(obj);
                    return obj;
                }
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f4741a = 1;
            xc.m.b(obj);
            m.c(this.f4742b, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
            return ((Function2) g0.c(this.f4742b, 2)).invoke(this.f4743c, this);
        }
    }

    /* renamed from: bd.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0082c extends j {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0082c(e eVar) {
            super(eVar);
            m.c(eVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        protected Object invokeSuspend(Object obj) {
            xc.m.b(obj);
            return obj;
        }
    }

    /* loaded from: classes2.dex */
    public static final class d extends kotlin.coroutines.jvm.internal.d {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(e eVar, i iVar) {
            super(eVar, iVar);
            m.c(eVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        }

        @Override // kotlin.coroutines.jvm.internal.a
        protected Object invokeSuspend(Object obj) {
            xc.m.b(obj);
            return obj;
        }
    }

    public static e a(Function2 function2, Object obj, e completion) {
        m.e(function2, "<this>");
        m.e(completion, "completion");
        e a10 = h.a(completion);
        if (function2 instanceof kotlin.coroutines.jvm.internal.a) {
            return ((kotlin.coroutines.jvm.internal.a) function2).create(obj, a10);
        }
        i context = a10.getContext();
        if (context == ad.j.f295a) {
            return new a(a10, function2, obj);
        }
        return new b(a10, context, function2, obj);
    }

    private static final e b(e eVar) {
        i context = eVar.getContext();
        if (context == ad.j.f295a) {
            return new C0082c(eVar);
        }
        return new d(eVar, context);
    }

    public static e c(e eVar) {
        kotlin.coroutines.jvm.internal.d dVar;
        e intercepted;
        m.e(eVar, "<this>");
        if (eVar instanceof kotlin.coroutines.jvm.internal.d) {
            dVar = (kotlin.coroutines.jvm.internal.d) eVar;
        } else {
            dVar = null;
        }
        if (dVar != null && (intercepted = dVar.intercepted()) != null) {
            return intercepted;
        }
        return eVar;
    }

    public static Object d(Function2 function2, Object obj, e completion) {
        m.e(function2, "<this>");
        m.e(completion, "completion");
        return ((Function2) g0.c(function2, 2)).invoke(obj, b(h.a(completion)));
    }
}
