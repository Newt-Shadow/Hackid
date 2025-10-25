package xd;

import kotlin.jvm.internal.g0;
/* loaded from: classes2.dex */
public abstract class p {

    /* renamed from: a  reason: collision with root package name */
    private static final id.p f32767a;

    /* loaded from: classes2.dex */
    /* synthetic */ class a extends kotlin.jvm.internal.k implements id.p {

        /* renamed from: a  reason: collision with root package name */
        public static final a f32768a = new a();

        a() {
            super(3, wd.e.class, "emit", "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // id.p
        /* renamed from: f */
        public final Object e(wd.e eVar, Object obj, ad.e eVar2) {
            return eVar.emit(obj, eVar2);
        }
    }

    static {
        a aVar = a.f32768a;
        kotlin.jvm.internal.m.c(aVar, "null cannot be cast to non-null type kotlin.Function3<kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>, kotlin.Any?, kotlin.coroutines.Continuation<kotlin.Unit>, kotlin.Any?>");
        f32767a = (id.p) g0.c(aVar, 3);
    }
}
