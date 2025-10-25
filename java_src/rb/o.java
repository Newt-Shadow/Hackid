package rb;

import android.content.Context;
import android.util.Log;
import com.arthenica.ffmpegkit.Chapter;
import id.Function2;
import io.flutter.FlutterInjector;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.embedding.engine.loader.FlutterLoader;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.view.FlutterCallbackInformation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import td.l0;
import td.m0;
import td.t1;
import td.z0;
import xc.t;
/* loaded from: classes.dex */
public final class o implements MethodChannel.MethodCallHandler {

    /* renamed from: j  reason: collision with root package name */
    public static final a f29062j = new a(null);

    /* renamed from: k  reason: collision with root package name */
    private static final String f29063k = o.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private final qb.a f29064a;

    /* renamed from: b  reason: collision with root package name */
    private final qb.b f29065b;

    /* renamed from: c  reason: collision with root package name */
    private qb.c f29066c;

    /* renamed from: d  reason: collision with root package name */
    private final ob.a f29067d;

    /* renamed from: e  reason: collision with root package name */
    private final FlutterEngine f29068e;

    /* renamed from: f  reason: collision with root package name */
    private final FlutterLoader f29069f;

    /* renamed from: g  reason: collision with root package name */
    private final MethodChannel f29070g;

    /* renamed from: h  reason: collision with root package name */
    private t1 f29071h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f29072i;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements MethodChannel.Result {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ id.a f29073a;

        b(id.a aVar) {
            this.f29073a = aVar;
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void error(String errorCode, String str, Object obj) {
            kotlin.jvm.internal.m.e(errorCode, "errorCode");
            this.f29073a.invoke();
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void notImplemented() {
            this.f29073a.invoke();
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void success(Object obj) {
            this.f29073a.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f29074a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ long f29075b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ o f29076c;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f29077a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ o f29078b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(o oVar, ad.e eVar) {
                super(2, eVar);
                this.f29078b = oVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final ad.e create(Object obj, ad.e eVar) {
                return new a(this.f29078b, eVar);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            public final Object invokeSuspend(Object obj) {
                bd.d.e();
                if (this.f29077a == 0) {
                    xc.m.b(obj);
                    try {
                        this.f29078b.r();
                        return t.f32733a;
                    } catch (Exception e10) {
                        return kotlin.coroutines.jvm.internal.b.c(Log.e(o.f29063k, "repeatTask", e10));
                    }
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }

            @Override // id.Function2
            public final Object invoke(l0 l0Var, ad.e eVar) {
                return ((a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(long j10, o oVar, ad.e eVar) {
            super(2, eVar);
            this.f29075b = j10;
            this.f29076c = oVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            return new c(this.f29075b, this.f29076c, eVar);
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:13:0x002a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x003f A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x003d -> B:11:0x0020). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = bd.b.e()
                int r1 = r7.f29074a
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1c
                if (r1 == r3) goto L17
                if (r1 != r2) goto Lf
                goto L1c
            Lf:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L17:
                xc.m.b(r8)
                r8 = r7
                goto L2b
            L1c:
                xc.m.b(r8)
                r8 = r7
            L20:
                long r4 = r8.f29075b
                r8.f29074a = r3
                java.lang.Object r1 = td.v0.a(r4, r8)
                if (r1 != r0) goto L2b
                return r0
            L2b:
                td.d2 r1 = td.z0.c()
                rb.o$c$a r4 = new rb.o$c$a
                rb.o r5 = r8.f29076c
                r6 = 0
                r4.<init>(r5, r6)
                r8.f29074a = r2
                java.lang.Object r1 = td.g.g(r1, r4, r8)
                if (r1 != r0) goto L20
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: rb.o.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((c) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    public o(Context context, qb.a serviceStatus, qb.b taskData, qb.c taskEventAction, ob.a taskLifecycleListener) {
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(serviceStatus, "serviceStatus");
        kotlin.jvm.internal.m.e(taskData, "taskData");
        kotlin.jvm.internal.m.e(taskEventAction, "taskEventAction");
        kotlin.jvm.internal.m.e(taskLifecycleListener, "taskLifecycleListener");
        this.f29064a = serviceStatus;
        this.f29065b = taskData;
        this.f29066c = taskEventAction;
        this.f29067d = taskLifecycleListener;
        FlutterEngine flutterEngine = new FlutterEngine(context);
        this.f29068e = flutterEngine;
        FlutterLoader flutterLoader = FlutterInjector.instance().flutterLoader();
        this.f29069f = flutterLoader;
        if (!flutterLoader.initialized()) {
            flutterLoader.startInitialization(context);
        }
        flutterLoader.ensureInitializationComplete(context, null);
        taskLifecycleListener.c(flutterEngine);
        BinaryMessenger binaryMessenger = flutterEngine.getDartExecutor().getBinaryMessenger();
        kotlin.jvm.internal.m.d(binaryMessenger, "getBinaryMessenger(...)");
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "flutter_foreground_task/background");
        this.f29070g = methodChannel;
        methodChannel.setMethodCallHandler(this);
        Long a10 = taskData.a();
        if (a10 != null) {
            String findAppBundlePath = flutterLoader.findAppBundlePath();
            kotlin.jvm.internal.m.d(findAppBundlePath, "findAppBundlePath(...)");
            flutterEngine.getDartExecutor().executeDartCallback(new DartExecutor.DartCallback(context.getAssets(), findAppBundlePath, FlutterCallbackInformation.lookupCallbackInformation(a10.longValue())));
        }
    }

    private final void A() {
        t1 t1Var = this.f29071h;
        if (t1Var != null) {
            t1.a.a(t1Var, null, 1, null);
        }
        this.f29071h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t C(final o oVar, final qb.c cVar) {
        oVar.s(new id.a() { // from class: rb.l
            @Override // id.a
            public final Object invoke() {
                t D;
                D = o.D(o.this, cVar);
                return D;
            }
        });
        return t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t D(o oVar, qb.c cVar) {
        oVar.f29066c = cVar;
        oVar.z();
        return t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t m(final o oVar) {
        oVar.A();
        oVar.f29070g.setMethodCallHandler(null);
        if (oVar.f29065b.a() == null) {
            oVar.f29067d.onEngineWillDestroy();
            oVar.f29068e.destroy();
        } else {
            oVar.o(oVar.f29070g, "onDestroy", null, new id.a() { // from class: rb.j
                @Override // id.a
                public final Object invoke() {
                    t n10;
                    n10 = o.n(o.this);
                    return n10;
                }
            });
            oVar.f29067d.d();
            oVar.f29067d.onEngineWillDestroy();
        }
        oVar.f29072i = true;
        return t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t n(o oVar) {
        oVar.f29068e.destroy();
        return t.f32733a;
    }

    private final void o(MethodChannel methodChannel, String str, Object obj, id.a aVar) {
        methodChannel.invokeMethod(str, obj, new b(aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t q(o oVar, String str, Object obj) {
        oVar.f29070g.invokeMethod(str, obj);
        return t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r() {
        this.f29070g.invokeMethod("onRepeatEvent", null);
        this.f29067d.b();
    }

    private final void s(id.a aVar) {
        if (this.f29065b.a() == null) {
            return;
        }
        aVar.invoke();
    }

    private final void t(id.a aVar) {
        if (this.f29072i) {
            return;
        }
        aVar.invoke();
    }

    private final void u() {
        t(new id.a() { // from class: rb.g
            @Override // id.a
            public final Object invoke() {
                t v10;
                v10 = o.v(o.this);
                return v10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t v(final o oVar) {
        oVar.s(new id.a() { // from class: rb.k
            @Override // id.a
            public final Object invoke() {
                t w10;
                w10 = o.w(o.this);
                return w10;
            }
        });
        return t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t w(final o oVar) {
        ob.c cVar;
        String a10 = oVar.f29064a.a();
        int hashCode = a10.hashCode();
        if (hashCode == -212670797 ? !a10.equals("com.pravera.flutter_foreground_task.action.api_start") : !(hashCode == 481521696 ? a10.equals("com.pravera.flutter_foreground_task.action.api_restart") : hashCode == 2050777240 && a10.equals("com.pravera.flutter_foreground_task.action.api_update"))) {
            cVar = ob.c.f27538b;
        } else {
            cVar = ob.c.f27537a;
        }
        oVar.o(oVar.f29070g, "onStart", Integer.valueOf(cVar.ordinal()), new id.a() { // from class: rb.m
            @Override // id.a
            public final Object invoke() {
                t x10;
                x10 = o.x(o.this);
                return x10;
            }
        });
        oVar.f29067d.a(cVar);
        return t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t x(final o oVar) {
        oVar.t(new id.a() { // from class: rb.n
            @Override // id.a
            public final Object invoke() {
                t y10;
                y10 = o.y(o.this);
                return y10;
            }
        });
        return t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t y(o oVar) {
        oVar.z();
        return t.f32733a;
    }

    private final void z() {
        t1 d10;
        A();
        qb.d b10 = this.f29066c.b();
        long a10 = this.f29066c.a();
        if (b10 == qb.d.f28658c) {
            return;
        }
        if (b10 != qb.d.f28659d) {
            d10 = td.i.d(m0.a(z0.a()), null, null, new c(a10, this, null), 3, null);
            this.f29071h = d10;
            return;
        }
        r();
    }

    public final void B(final qb.c taskEventAction) {
        kotlin.jvm.internal.m.e(taskEventAction, "taskEventAction");
        t(new id.a() { // from class: rb.f
            @Override // id.a
            public final Object invoke() {
                t C;
                C = o.C(o.this, taskEventAction);
                return C;
            }
        });
    }

    public final void l() {
        t(new id.a() { // from class: rb.i
            @Override // id.a
            public final Object invoke() {
                t m10;
                m10 = o.m(o.this);
                return m10;
            }
        });
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        kotlin.jvm.internal.m.e(call, "call");
        kotlin.jvm.internal.m.e(result, "result");
        if (kotlin.jvm.internal.m.a(call.method, Chapter.KEY_START)) {
            u();
        } else {
            result.notImplemented();
        }
    }

    public final void p(final String method, final Object obj) {
        kotlin.jvm.internal.m.e(method, "method");
        t(new id.a() { // from class: rb.h
            @Override // id.a
            public final Object invoke() {
                t q10;
                q10 = o.q(o.this, method, obj);
                return q10;
            }
        });
    }
}
