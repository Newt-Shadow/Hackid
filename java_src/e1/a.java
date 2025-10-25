package e1;

import android.content.Context;
import android.net.Uri;
import android.view.InputEvent;
import androidx.privacysandbox.ads.adservices.measurement.l;
import androidx.privacysandbox.ads.adservices.measurement.n;
import id.Function2;
import kotlin.coroutines.jvm.internal.k;
import kotlin.jvm.internal.DefaultConstructorMarker;
import r6.d;
import td.i;
import td.l0;
import td.m0;
import td.s0;
import td.z0;
import xc.m;
import xc.t;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static final b f15222a = new b(null);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e1.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0154a extends a {

        /* renamed from: b  reason: collision with root package name */
        private final androidx.privacysandbox.ads.adservices.measurement.b f15223b;

        /* renamed from: e1.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static final class C0155a extends k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f15224a;

            C0155a(androidx.privacysandbox.ads.adservices.measurement.a aVar, ad.e eVar) {
                super(2, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new C0155a(null, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f15224a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    androidx.privacysandbox.ads.adservices.measurement.b bVar = C0154a.this.f15223b;
                    this.f15224a = 1;
                    if (bVar.a(null, this) == e10) {
                        return e10;
                    }
                }
                return t.f32733a;
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((C0155a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* renamed from: e1.a$a$b */
        /* loaded from: classes.dex */
        static final class b extends k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f15226a;

            b(ad.e eVar) {
                super(2, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new b(eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f15226a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    androidx.privacysandbox.ads.adservices.measurement.b bVar = C0154a.this.f15223b;
                    this.f15226a = 1;
                    obj = bVar.b(this);
                    if (obj == e10) {
                        return e10;
                    }
                }
                return obj;
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((b) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* renamed from: e1.a$a$c */
        /* loaded from: classes.dex */
        static final class c extends k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f15228a;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Uri f15230c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ InputEvent f15231d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            c(Uri uri, InputEvent inputEvent, ad.e eVar) {
                super(2, eVar);
                this.f15230c = uri;
                this.f15231d = inputEvent;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new c(this.f15230c, this.f15231d, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f15228a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    androidx.privacysandbox.ads.adservices.measurement.b bVar = C0154a.this.f15223b;
                    Uri uri = this.f15230c;
                    InputEvent inputEvent = this.f15231d;
                    this.f15228a = 1;
                    if (bVar.c(uri, inputEvent, this) == e10) {
                        return e10;
                    }
                }
                return t.f32733a;
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((c) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* renamed from: e1.a$a$d */
        /* loaded from: classes.dex */
        static final class d extends k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f15232a;

            d(l lVar, ad.e eVar) {
                super(2, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new d(null, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f15232a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    androidx.privacysandbox.ads.adservices.measurement.b bVar = C0154a.this.f15223b;
                    this.f15232a = 1;
                    if (bVar.d(null, this) == e10) {
                        return e10;
                    }
                }
                return t.f32733a;
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((d) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* renamed from: e1.a$a$e */
        /* loaded from: classes.dex */
        static final class e extends k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f15234a;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Uri f15236c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            e(Uri uri, ad.e eVar) {
                super(2, eVar);
                this.f15236c = uri;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new e(this.f15236c, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f15234a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    androidx.privacysandbox.ads.adservices.measurement.b bVar = C0154a.this.f15223b;
                    Uri uri = this.f15236c;
                    this.f15234a = 1;
                    if (bVar.e(uri, this) == e10) {
                        return e10;
                    }
                }
                return t.f32733a;
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((e) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* renamed from: e1.a$a$f */
        /* loaded from: classes.dex */
        static final class f extends k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f15237a;

            f(androidx.privacysandbox.ads.adservices.measurement.m mVar, ad.e eVar) {
                super(2, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new f(null, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f15237a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    androidx.privacysandbox.ads.adservices.measurement.b bVar = C0154a.this.f15223b;
                    this.f15237a = 1;
                    if (bVar.f(null, this) == e10) {
                        return e10;
                    }
                }
                return t.f32733a;
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((f) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* renamed from: e1.a$a$g */
        /* loaded from: classes.dex */
        static final class g extends k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f15239a;

            g(n nVar, ad.e eVar) {
                super(2, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new g(null, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                Object e10;
                e10 = bd.d.e();
                int i10 = this.f15239a;
                if (i10 != 0) {
                    if (i10 == 1) {
                        m.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    m.b(obj);
                    androidx.privacysandbox.ads.adservices.measurement.b bVar = C0154a.this.f15223b;
                    this.f15239a = 1;
                    if (bVar.g(null, this) == e10) {
                        return e10;
                    }
                }
                return t.f32733a;
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((g) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        public C0154a(androidx.privacysandbox.ads.adservices.measurement.b mMeasurementManager) {
            kotlin.jvm.internal.m.e(mMeasurementManager, "mMeasurementManager");
            this.f15223b = mMeasurementManager;
        }

        @Override // e1.a
        public r6.d b() {
            s0 b10;
            b10 = i.b(m0.a(z0.a()), null, null, new b(null), 3, null);
            return d1.b.c(b10, null, 1, null);
        }

        @Override // e1.a
        public r6.d c(Uri trigger) {
            s0 b10;
            kotlin.jvm.internal.m.e(trigger, "trigger");
            b10 = i.b(m0.a(z0.a()), null, null, new e(trigger, null), 3, null);
            return d1.b.c(b10, null, 1, null);
        }

        public r6.d e(androidx.privacysandbox.ads.adservices.measurement.a deletionRequest) {
            s0 b10;
            kotlin.jvm.internal.m.e(deletionRequest, "deletionRequest");
            b10 = i.b(m0.a(z0.a()), null, null, new C0155a(deletionRequest, null), 3, null);
            return d1.b.c(b10, null, 1, null);
        }

        public r6.d f(Uri attributionSource, InputEvent inputEvent) {
            s0 b10;
            kotlin.jvm.internal.m.e(attributionSource, "attributionSource");
            b10 = i.b(m0.a(z0.a()), null, null, new c(attributionSource, inputEvent, null), 3, null);
            return d1.b.c(b10, null, 1, null);
        }

        public r6.d g(l request) {
            s0 b10;
            kotlin.jvm.internal.m.e(request, "request");
            b10 = i.b(m0.a(z0.a()), null, null, new d(request, null), 3, null);
            return d1.b.c(b10, null, 1, null);
        }

        public r6.d h(androidx.privacysandbox.ads.adservices.measurement.m request) {
            s0 b10;
            kotlin.jvm.internal.m.e(request, "request");
            b10 = i.b(m0.a(z0.a()), null, null, new f(request, null), 3, null);
            return d1.b.c(b10, null, 1, null);
        }

        public r6.d i(n request) {
            s0 b10;
            kotlin.jvm.internal.m.e(request, "request");
            b10 = i.b(m0.a(z0.a()), null, null, new g(request, null), 3, null);
            return d1.b.c(b10, null, 1, null);
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Context context) {
            kotlin.jvm.internal.m.e(context, "context");
            androidx.privacysandbox.ads.adservices.measurement.b a10 = androidx.privacysandbox.ads.adservices.measurement.b.f3088a.a(context);
            if (a10 != null) {
                return new C0154a(a10);
            }
            return null;
        }
    }

    public static final a a(Context context) {
        return f15222a.a(context);
    }

    public abstract d b();

    public abstract d c(Uri uri);
}
