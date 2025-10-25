package kb;

import android.content.Context;
import android.util.Log;
import com.arthenica.ffmpegkit.Chapter;
import com.arthenica.ffmpegkit.StreamInformation;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLProtectionSpaceContract;
import eb.h;
import fb.a;
import id.l;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Map;
import java.util.UUID;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
import xc.t;
import yc.h0;
/* loaded from: classes.dex */
public final class b implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f24870a;

    /* renamed from: b  reason: collision with root package name */
    private Context f24871b;

    /* renamed from: c  reason: collision with root package name */
    private final kb.c f24872c = new kb.c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class a extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24873e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(fb.b bVar) {
            super(1);
            this.f24873e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((String) obj);
            return t.f32733a;
        }

        public final void invoke(String it) {
            m.e(it, "it");
            int hashCode = it.hashCode();
            if (hashCode == -1414557169) {
                if (it.equals("always")) {
                    this.f24873e.X(eb.a.ALWAYS);
                }
            } else if (hashCode == 104712844) {
                if (it.equals("never")) {
                    this.f24873e.X(eb.a.NEVER);
                }
            } else if (hashCode == 469793511 && it.equals("identifiedOnly")) {
                this.f24873e.X(eb.a.IDENTIFIED_ONLY);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kb.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0233b extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24874e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0233b(fb.b bVar) {
            super(1);
            this.f24874e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return t.f32733a;
        }

        public final void invoke(boolean z10) {
            this.f24874e.d0(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24875e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(fb.b bVar) {
            super(1);
            this.f24875e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return t.f32733a;
        }

        public final void invoke(boolean z10) {
            this.f24875e.k0(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24876e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(fb.b bVar) {
            super(1);
            this.f24876e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return t.f32733a;
        }

        public final void invoke(boolean z10) {
            this.f24876e.O(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24877e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(fb.b bVar) {
            super(1);
            this.f24877e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return t.f32733a;
        }

        public final void invoke(int i10) {
            this.f24877e.P(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class f extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24878e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(fb.b bVar) {
            super(1);
            this.f24878e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return t.f32733a;
        }

        public final void invoke(int i10) {
            this.f24878e.U(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class g extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24879e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(fb.b bVar) {
            super(1);
            this.f24879e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return t.f32733a;
        }

        public final void invoke(int i10) {
            this.f24879e.T(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class h extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24880e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(fb.b bVar) {
            super(1);
            this.f24880e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Number) obj).intValue());
            return t.f32733a;
        }

        public final void invoke(int i10) {
            this.f24880e.Q(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class i extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24881e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(fb.b bVar) {
            super(1);
            this.f24881e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return t.f32733a;
        }

        public final void invoke(boolean z10) {
            this.f24881e.c0(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class j extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24882e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(fb.b bVar) {
            super(1);
            this.f24882e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return t.f32733a;
        }

        public final void invoke(boolean z10) {
            this.f24882e.Y(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class k extends n implements l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ fb.b f24883e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(fb.b bVar) {
            super(1);
            this.f24883e = bVar;
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke(((Boolean) obj).booleanValue());
            return t.f32733a;
        }

        public final void invoke(boolean z10) {
            this.f24883e.W(z10);
        }
    }

    private final void a(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument(MimeTypesReaderMetKeys.ALIAS_TAG);
            m.b(argument);
            eb.c.A.m((String) argument);
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void b(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument(Constants.EVENT_NAME);
            m.b(argument);
            h.a.a(eb.c.A, (String) argument, null, (Map) methodCall.argument("properties"), null, null, null, 58, null);
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void c(MethodChannel.Result result) {
        try {
            eb.c.A.close();
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void d(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument("debug");
            m.b(argument);
            eb.c.A.k(((Boolean) argument).booleanValue());
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void e(MethodChannel.Result result) {
        try {
            eb.c.A.l();
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void f(MethodChannel.Result result) {
        try {
            result.success(eb.c.A.q());
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void g(MethodChannel.Result result) {
        try {
            eb.c.A.g();
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void h(MethodChannel.Result result) {
        try {
            eb.c.A.flush();
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void i(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument("key");
            m.b(argument);
            result.success(h.a.b(eb.c.A, (String) argument, null, 2, null));
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void j(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument("key");
            m.b(argument);
            result.success(h.a.c(eb.c.A, (String) argument, null, 2, null));
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void k(Map map, String str, l lVar) {
        Object obj = map.get(str);
        if (obj == null) {
            obj = null;
        }
        if (obj != null) {
            lVar.invoke(obj);
        }
    }

    private final void l(MethodChannel.Result result) {
        String str;
        try {
            UUID sessionId = eb.c.A.getSessionId();
            if (sessionId != null) {
                str = sessionId.toString();
            } else {
                str = null;
            }
            result.success(str);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void m(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument("groupType");
            m.b(argument);
            Object argument2 = methodCall.argument("groupKey");
            m.b(argument2);
            eb.c.A.w((String) argument, (String) argument2, (Map) methodCall.argument("groupProperties"));
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void n(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Integer num = (Integer) methodCall.argument(StreamInformation.KEY_WIDTH);
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue();
            Integer num2 = (Integer) methodCall.argument(StreamInformation.KEY_HEIGHT);
            if (num2 == null) {
                num2 = 0;
            }
            int intValue2 = num2.intValue();
            String str = (String) methodCall.argument("screen");
            if (str == null) {
                str = "";
            }
            if (intValue != 0 && intValue2 != 0) {
                this.f24872c.b(intValue, intValue2, str);
                result.success(null);
                return;
            }
            result.error("INVALID_ARGUMENT", "Width or height is 0", null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void o(MethodCall methodCall, MethodChannel.Result result) {
        try {
            byte[] bArr = (byte[]) methodCall.argument("imageBytes");
            Integer num = (Integer) methodCall.argument(Chapter.KEY_ID);
            if (num == null) {
                num = 1;
            }
            int intValue = num.intValue();
            Integer num2 = (Integer) methodCall.argument("x");
            if (num2 == null) {
                num2 = 0;
            }
            int intValue2 = num2.intValue();
            Integer num3 = (Integer) methodCall.argument("y");
            if (num3 == null) {
                num3 = 0;
            }
            int intValue3 = num3.intValue();
            if (bArr != null) {
                this.f24872c.a(bArr, intValue, intValue2, intValue3);
                result.success(null);
                return;
            }
            result.error("INVALID_ARGUMENT", "Image bytes are null", null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void p(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument(Constants.USER_ID);
            m.b(argument);
            eb.c.A.s((String) argument, (Map) methodCall.argument("userProperties"), (Map) methodCall.argument("userPropertiesSetOnce"));
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003d, code lost:
        android.util.Log.e("PostHog", "com.posthog.posthog.API_KEY is missing!");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0042, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void q() {
        /*
            r8 = this;
            java.lang.String r0 = "host"
            java.lang.String r1 = "PostHog"
            android.content.Context r2 = r8.f24871b     // Catch: java.lang.Throwable -> L7d
            if (r2 != 0) goto Le
            java.lang.String r2 = "applicationContext"
            kotlin.jvm.internal.m.s(r2)     // Catch: java.lang.Throwable -> L7d
            r2 = 0
        Le:
            android.content.pm.ApplicationInfo r2 = gb.o.h(r2)     // Catch: java.lang.Throwable -> L7d
            android.os.Bundle r2 = r2.metaData     // Catch: java.lang.Throwable -> L7d
            if (r2 != 0) goto L1b
            android.os.Bundle r2 = new android.os.Bundle     // Catch: java.lang.Throwable -> L7d
            r2.<init>()     // Catch: java.lang.Throwable -> L7d
        L1b:
            java.lang.String r3 = "com.posthog.posthog.AUTO_INIT"
            r4 = 1
            boolean r3 = r2.getBoolean(r3, r4)     // Catch: java.lang.Throwable -> L7d
            if (r3 != 0) goto L2a
            java.lang.String r0 = "com.posthog.posthog.AUTO_INIT is disabled!"
            android.util.Log.i(r1, r0)     // Catch: java.lang.Throwable -> L7d
            return
        L2a:
            java.lang.String r3 = "com.posthog.posthog.API_KEY"
            java.lang.String r3 = r2.getString(r3)     // Catch: java.lang.Throwable -> L7d
            r5 = 0
            if (r3 == 0) goto L3b
            int r6 = r3.length()     // Catch: java.lang.Throwable -> L7d
            if (r6 != 0) goto L3a
            goto L3b
        L3a:
            r4 = r5
        L3b:
            if (r4 == 0) goto L43
            java.lang.String r0 = "com.posthog.posthog.API_KEY is missing!"
            android.util.Log.e(r1, r0)     // Catch: java.lang.Throwable -> L7d
            return
        L43:
            java.lang.String r4 = "com.posthog.posthog.POSTHOG_HOST"
            java.lang.String r6 = "https://us.i.posthog.com"
            java.lang.String r4 = r2.getString(r4, r6)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r6 = "com.posthog.posthog.TRACK_APPLICATION_LIFECYCLE_EVENTS"
            boolean r6 = r2.getBoolean(r6, r5)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r7 = "com.posthog.posthog.DEBUG"
            boolean r2 = r2.getBoolean(r7, r5)     // Catch: java.lang.Throwable -> L7d
            java.util.LinkedHashMap r5 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> L7d
            r5.<init>()     // Catch: java.lang.Throwable -> L7d
            java.lang.String r7 = "apiKey"
            r5.put(r7, r3)     // Catch: java.lang.Throwable -> L7d
            kotlin.jvm.internal.m.d(r4, r0)     // Catch: java.lang.Throwable -> L7d
            r5.put(r0, r4)     // Catch: java.lang.Throwable -> L7d
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r6)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r3 = "captureApplicationLifecycleEvents"
            r5.put(r3, r0)     // Catch: java.lang.Throwable -> L7d
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r2)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r2 = "debug"
            r5.put(r2, r0)     // Catch: java.lang.Throwable -> L7d
            r8.y(r5)     // Catch: java.lang.Throwable -> L7d
            goto L92
        L7d:
            r0 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "initPlugin error: "
            r2.append(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            android.util.Log.e(r1, r0)
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kb.b.q():void");
    }

    private final void r(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument("key");
            m.b(argument);
            result.success(Boolean.valueOf(h.a.d(eb.c.A, (String) argument, false, 2, null)));
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final boolean s() {
        return eb.c.A.p();
    }

    private final void t(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument("key");
            m.b(argument);
            Object argument2 = methodCall.argument("value");
            m.b(argument2);
            eb.c.A.v((String) argument, argument2);
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void u(MethodChannel.Result result) {
        try {
            h.a.e(eb.c.A, null, 1, null);
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void v(MethodChannel.Result result) {
        try {
            eb.c.A.a();
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void w(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument("screenName");
            m.b(argument);
            eb.c.A.i((String) argument, (Map) methodCall.argument("properties"));
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void x(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Map map = (Map) methodCall.arguments();
            if (map == null) {
                map = h0.e();
            }
            if (map.isEmpty()) {
                result.error("PosthogFlutterException", "Arguments is null or empty", null);
                return;
            }
            y(map);
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    private final void y(Map map) {
        boolean z10;
        String str = (String) map.get("apiKey");
        if (str != null && str.length() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            Log.e("PostHog", "apiKey is missing!");
            return;
        }
        String str2 = (String) map.get(URLProtectionSpaceContract.FeedEntry.COLUMN_NAME_HOST);
        if (str2 == null) {
            str2 = "https://us.i.posthog.com";
        }
        fb.b bVar = new fb.b(str, str2, false, false, false, null, 60, null);
        bVar.m0(false);
        bVar.l0(false);
        k(map, "captureApplicationLifecycleEvents", new c(bVar));
        k(map, "debug", new d(bVar));
        k(map, "flushAt", new e(bVar));
        k(map, "maxQueueSize", new f(bVar));
        k(map, "maxBatchSize", new g(bVar));
        k(map, "flushInterval", new h(bVar));
        k(map, "sendFeatureFlagEvents", new i(bVar));
        k(map, "preloadFeatureFlags", new j(bVar));
        k(map, "optOut", new k(bVar));
        k(map, "personProfiles", new a(bVar));
        k(map, "sessionReplay", new C0233b(bVar));
        bVar.j0().g(false);
        bVar.a0("posthog-flutter");
        bVar.b0(kb.a.a());
        a.C0168a c0168a = fb.a.f16063a;
        Context context = this.f24871b;
        if (context == null) {
            m.s("applicationContext");
            context = null;
        }
        c0168a.b(context, bVar);
    }

    private final void z(MethodCall methodCall, MethodChannel.Result result) {
        try {
            Object argument = methodCall.argument("key");
            m.b(argument);
            eb.c.A.h((String) argument);
            result.success(null);
        } catch (Throwable th) {
            result.error("PosthogFlutterException", th.getLocalizedMessage(), null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        m.e(flutterPluginBinding, "flutterPluginBinding");
        this.f24870a = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "posthog_flutter");
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        m.d(applicationContext, "flutterPluginBinding.applicationContext");
        this.f24871b = applicationContext;
        q();
        MethodChannel methodChannel = this.f24870a;
        if (methodChannel == null) {
            m.s("channel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        MethodChannel methodChannel = this.f24870a;
        if (methodChannel == null) {
            m.s("channel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        m.e(call, "call");
        m.e(result, "result");
        String str = call.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -1940249238:
                    if (str.equals("reloadFeatureFlags")) {
                        u(result);
                        return;
                    }
                    break;
                case -1733990089:
                    if (str.equals("distinctId")) {
                        f(result);
                        return;
                    }
                    break;
                case -1298848381:
                    if (str.equals("enable")) {
                        g(result);
                        return;
                    }
                    break;
                case -1084140039:
                    if (str.equals("isSessionReplayActive")) {
                        result.success(Boolean.valueOf(s()));
                        return;
                    }
                    break;
                case -1017656756:
                    if (str.equals("getFeatureFlag")) {
                        i(call, result);
                        return;
                    }
                    break;
                case -907689876:
                    if (str.equals("screen")) {
                        w(call, result);
                        return;
                    }
                    break;
                case -886066963:
                    if (str.equals("sendMetaEvent")) {
                        n(call, result);
                        return;
                    }
                    break;
                case -875229387:
                    if (str.equals("isFeatureEnabled")) {
                        r(call, result);
                        return;
                    }
                    break;
                case -715210334:
                    if (str.equals("getFeatureFlagPayload")) {
                        j(call, result);
                        return;
                    }
                    break;
                case -690213213:
                    if (str.equals("register")) {
                        t(call, result);
                        return;
                    }
                    break;
                case -665094885:
                    if (str.equals("sendFullSnapshot")) {
                        o(call, result);
                        return;
                    }
                    break;
                case -135762164:
                    if (str.equals("identify")) {
                        p(call, result);
                        return;
                    }
                    break;
                case 92902992:
                    if (str.equals(MimeTypesReaderMetKeys.ALIAS_TAG)) {
                        a(call, result);
                        return;
                    }
                    break;
                case 94756344:
                    if (str.equals("close")) {
                        c(result);
                        return;
                    }
                    break;
                case 95458899:
                    if (str.equals("debug")) {
                        d(call, result);
                        return;
                    }
                    break;
                case 97532676:
                    if (str.equals("flush")) {
                        h(result);
                        return;
                    }
                    break;
                case 98629247:
                    if (str.equals("group")) {
                        m(call, result);
                        return;
                    }
                    break;
                case 108404047:
                    if (str.equals("reset")) {
                        v(result);
                        return;
                    }
                    break;
                case 109329021:
                    if (str.equals("setup")) {
                        x(call, result);
                        return;
                    }
                    break;
                case 552585030:
                    if (str.equals("capture")) {
                        b(call, result);
                        return;
                    }
                    break;
                case 598192027:
                    if (str.equals("getSessionId")) {
                        l(result);
                        return;
                    }
                    break;
                case 836015164:
                    if (str.equals("unregister")) {
                        z(call, result);
                        return;
                    }
                    break;
                case 1671308008:
                    if (str.equals("disable")) {
                        e(result);
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }
}
