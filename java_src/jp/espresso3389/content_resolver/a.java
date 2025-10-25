package jp.espresso3389.content_resolver;

import ad.e;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.arthenica.ffmpegkit.Chapter;
import id.Function2;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.util.HashMap;
import kotlin.coroutines.jvm.internal.k;
import td.g;
import td.i;
import td.l0;
import td.m0;
import td.v;
import td.z0;
import xc.j;
import xc.m;
import xc.q;
import xc.t;
import yc.h0;
/* loaded from: classes2.dex */
public final class a implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f24620a;

    /* renamed from: b  reason: collision with root package name */
    private FlutterPlugin.FlutterPluginBinding f24621b;

    /* renamed from: c  reason: collision with root package name */
    private final l0 f24622c = m0.a(z0.b());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: jp.espresso3389.content_resolver.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0230a extends k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f24623a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f24625c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f24626d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0230a(String str, Object obj, e eVar) {
            super(2, eVar);
            this.f24625c = str;
            this.f24626d = obj;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final e create(Object obj, e eVar) {
            return new C0230a(this.f24625c, this.f24626d, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f24623a == 0) {
                m.b(obj);
                MethodChannel methodChannel = a.this.f24620a;
                if (methodChannel == null) {
                    kotlin.jvm.internal.m.s("channel");
                    methodChannel = null;
                }
                methodChannel.invokeMethod(this.f24625c, this.f24626d);
                return t.f32733a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, e eVar) {
            return ((C0230a) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f24627a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f24628b;

        /* renamed from: d  reason: collision with root package name */
        int f24630d;

        b(e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f24628b = obj;
            this.f24630d |= Integer.MIN_VALUE;
            return a.this.l(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f24631a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f24633c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Object f24634d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ v f24635e;

        /* renamed from: jp.espresso3389.content_resolver.a$c$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public static final class C0231a implements MethodChannel.Result {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ v f24636a;

            C0231a(v vVar) {
                this.f24636a = vVar;
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void error(String errorCode, String str, Object obj) {
                kotlin.jvm.internal.m.e(errorCode, "errorCode");
                v vVar = this.f24636a;
                vVar.E(new Exception(errorCode + ": " + str));
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void notImplemented() {
                this.f24636a.E(new j(null, 1, null));
            }

            @Override // io.flutter.plugin.common.MethodChannel.Result
            public void success(Object obj) {
                this.f24636a.H(obj);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, Object obj, v vVar, e eVar) {
            super(2, eVar);
            this.f24633c = str;
            this.f24634d = obj;
            this.f24635e = vVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final e create(Object obj, e eVar) {
            return new c(this.f24633c, this.f24634d, this.f24635e, eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f24631a == 0) {
                m.b(obj);
                MethodChannel methodChannel = a.this.f24620a;
                if (methodChannel == null) {
                    kotlin.jvm.internal.m.s("channel");
                    methodChannel = null;
                }
                methodChannel.invokeMethod(this.f24633c, this.f24634d, new C0231a(this.f24635e));
                return t.f32733a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, e eVar) {
            return ((c) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class d extends k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        Object f24637a;

        /* renamed from: b  reason: collision with root package name */
        Object f24638b;

        /* renamed from: c  reason: collision with root package name */
        Object f24639c;

        /* renamed from: d  reason: collision with root package name */
        Object f24640d;

        /* renamed from: e  reason: collision with root package name */
        Object f24641e;

        /* renamed from: f  reason: collision with root package name */
        int f24642f;

        /* renamed from: g  reason: collision with root package name */
        int f24643g;

        /* renamed from: h  reason: collision with root package name */
        int f24644h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ int f24645i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ a f24646j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ Uri f24647k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ int f24648l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(int i10, a aVar, Uri uri, int i11, e eVar) {
            super(2, eVar);
            this.f24645i = i10;
            this.f24646j = aVar;
            this.f24647k = uri;
            this.f24648l = i11;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final e create(Object obj, e eVar) {
            return new d(this.f24645i, this.f24646j, this.f24647k, this.f24648l, eVar);
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00bb  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0079 A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r3v0, types: [int] */
        /* JADX WARN: Type inference failed for: r3v10 */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x010d -> B:60:0x0072). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r17) {
            /*
                Method dump skipped, instructions count: 342
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: jp.espresso3389.content_resolver.a.d.invokeSuspend(java.lang.Object):java.lang.Object");
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, e eVar) {
            return ((d) create(l0Var, eVar)).invokeSuspend(t.f32733a);
        }
    }

    private final xc.k e(int i10) {
        long j10 = i10;
        long malloc = ByteBufferHelper.malloc(j10);
        return q.a(Long.valueOf(malloc), ByteBufferHelper.newDirectBuffer(malloc, j10));
    }

    private final String f(Uri uri) {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.f24621b;
        if (flutterPluginBinding == null) {
            kotlin.jvm.internal.m.s("flutterPluginBinding");
            flutterPluginBinding = null;
        }
        Cursor query = flutterPluginBinding.getApplicationContext().getContentResolver().query(uri, null, null, null, null);
        if (query == null) {
            return null;
        }
        Cursor cursor = query;
        try {
            Cursor cursor2 = cursor;
            int columnIndex = cursor2.getColumnIndex("_display_name");
            cursor2.moveToFirst();
            String string = cursor2.getString(columnIndex);
            gd.b.a(cursor, null);
            return string;
        } finally {
        }
    }

    private final String g(Uri uri) {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.f24621b;
        if (flutterPluginBinding == null) {
            kotlin.jvm.internal.m.s("flutterPluginBinding");
            flutterPluginBinding = null;
        }
        return flutterPluginBinding.getApplicationContext().getContentResolver().getType(uri);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final InputStream h(Uri uri) {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.f24621b;
        if (flutterPluginBinding == null) {
            kotlin.jvm.internal.m.s("flutterPluginBinding");
            flutterPluginBinding = null;
        }
        InputStream openInputStream = flutterPluginBinding.getApplicationContext().getContentResolver().openInputStream(uri);
        kotlin.jvm.internal.m.b(openInputStream);
        return openInputStream;
    }

    private final OutputStream i(Uri uri, String str) {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.f24621b;
        if (flutterPluginBinding == null) {
            kotlin.jvm.internal.m.s("flutterPluginBinding");
            flutterPluginBinding = null;
        }
        return new BufferedOutputStream(new ParcelFileDescriptor.AutoCloseOutputStream(flutterPluginBinding.getApplicationContext().getContentResolver().openFileDescriptor(uri, str)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object j(String str, Object obj, e eVar) {
        Object e10;
        Object g10 = g.g(z0.c(), new C0230a(str, obj, null), eVar);
        e10 = bd.d.e();
        if (g10 == e10) {
            return g10;
        }
        return t.f32733a;
    }

    private final void k(long j10) {
        ByteBufferHelper.free(j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0070 A[PHI: r0 
      PHI: (r0v4 java.lang.Object) = (r0v3 java.lang.Object), (r0v1 java.lang.Object) binds: [B:21:0x006d, B:12:0x002d] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object l(java.lang.String r16, java.lang.Object r17, ad.e r18) {
        /*
            r15 = this;
            r0 = r18
            boolean r1 = r0 instanceof jp.espresso3389.content_resolver.a.b
            if (r1 == 0) goto L16
            r1 = r0
            jp.espresso3389.content_resolver.a$b r1 = (jp.espresso3389.content_resolver.a.b) r1
            int r2 = r1.f24630d
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.f24630d = r2
            r8 = r15
            goto L1c
        L16:
            jp.espresso3389.content_resolver.a$b r1 = new jp.espresso3389.content_resolver.a$b
            r8 = r15
            r1.<init>(r0)
        L1c:
            java.lang.Object r0 = r1.f24628b
            java.lang.Object r9 = bd.b.e()
            int r2 = r1.f24630d
            r10 = 2
            r11 = 0
            r12 = 1
            if (r2 == 0) goto L41
            if (r2 == r12) goto L39
            if (r2 != r10) goto L31
            xc.m.b(r0)
            goto L70
        L31:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L39:
            java.lang.Object r2 = r1.f24627a
            td.v r2 = (td.v) r2
            xc.m.b(r0)
            goto L65
        L41:
            xc.m.b(r0)
            td.v r0 = td.x.b(r11, r12, r11)
            td.d2 r13 = td.z0.c()
            jp.espresso3389.content_resolver.a$c r14 = new jp.espresso3389.content_resolver.a$c
            r7 = 0
            r2 = r14
            r3 = r15
            r4 = r16
            r5 = r17
            r6 = r0
            r2.<init>(r4, r5, r6, r7)
            r1.f24627a = r0
            r1.f24630d = r12
            java.lang.Object r2 = td.g.g(r13, r14, r1)
            if (r2 != r9) goto L64
            return r9
        L64:
            r2 = r0
        L65:
            r1.f24627a = r11
            r1.f24630d = r10
            java.lang.Object r0 = r2.w(r1)
            if (r0 != r9) goto L70
            return r9
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: jp.espresso3389.content_resolver.a.l(java.lang.String, java.lang.Object, ad.e):java.lang.Object");
    }

    private final void m(MethodCall methodCall, MethodChannel.Result result) {
        Object argument = methodCall.argument(Chapter.KEY_ID);
        kotlin.jvm.internal.m.c(argument, "null cannot be cast to non-null type kotlin.Int");
        int intValue = ((Integer) argument).intValue();
        Object argument2 = methodCall.argument("uri");
        kotlin.jvm.internal.m.c(argument2, "null cannot be cast to non-null type kotlin.String");
        Uri parse = Uri.parse((String) argument2);
        Object argument3 = methodCall.argument("bufferSize");
        kotlin.jvm.internal.m.c(argument3, "null cannot be cast to non-null type kotlin.Int");
        i.d(this.f24622c, null, null, new d(((Integer) argument3).intValue(), this, parse, intValue, null), 3, null);
        result.success(null);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        kotlin.jvm.internal.m.e(flutterPluginBinding, "flutterPluginBinding");
        this.f24621b = flutterPluginBinding;
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "content_resolver");
        this.f24620a = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        kotlin.jvm.internal.m.e(binding, "binding");
        MethodChannel methodChannel = this.f24620a;
        if (methodChannel == null) {
            kotlin.jvm.internal.m.s("channel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
        m0.c(this.f24622c, null, 1, null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        HashMap g10;
        HashMap g11;
        HashMap g12;
        kotlin.jvm.internal.m.e(call, "call");
        kotlin.jvm.internal.m.e(result, "result");
        long j10 = 0;
        try {
            String str = call.method;
            if (str != null) {
                switch (str.hashCode()) {
                    case -1626388697:
                        if (!str.equals("releaseBuffer")) {
                            break;
                        } else {
                            Object obj = call.arguments;
                            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.Long");
                            k(((Long) obj).longValue());
                            result.success(0);
                            return;
                        }
                    case -632050790:
                        if (!str.equals("writeContent")) {
                            break;
                        } else {
                            Object argument = call.argument("uri");
                            kotlin.jvm.internal.m.c(argument, "null cannot be cast to non-null type kotlin.String");
                            Uri parse = Uri.parse((String) argument);
                            kotlin.jvm.internal.m.d(parse, "parse(...)");
                            Object argument2 = call.argument("mode");
                            kotlin.jvm.internal.m.c(argument2, "null cannot be cast to non-null type kotlin.String");
                            OutputStream i10 = i(parse, (String) argument2);
                            Object argument3 = call.argument("bytes");
                            kotlin.jvm.internal.m.c(argument3, "null cannot be cast to non-null type kotlin.ByteArray");
                            i10.write((byte[]) argument3);
                            t tVar = t.f32733a;
                            gd.b.a(i10, null);
                            result.success(0);
                            return;
                        }
                    case 1424624857:
                        if (!str.equals("streamContent")) {
                            break;
                        } else {
                            m(call, result);
                            return;
                        }
                    case 1505584627:
                        if (!str.equals("saveContentToFile")) {
                            break;
                        } else {
                            Object argument4 = call.argument("uri");
                            kotlin.jvm.internal.m.c(argument4, "null cannot be cast to non-null type kotlin.String");
                            Uri parse2 = Uri.parse((String) argument4);
                            Object argument5 = call.argument("filePath");
                            kotlin.jvm.internal.m.c(argument5, "null cannot be cast to non-null type kotlin.String");
                            File file = new File((String) argument5);
                            kotlin.jvm.internal.m.b(parse2);
                            InputStream h10 = h(parse2);
                            FileOutputStream fileOutputStream = new FileOutputStream(file);
                            try {
                                gd.a.b(h10, fileOutputStream, 0, 2, null);
                                gd.b.a(fileOutputStream, null);
                                gd.b.a(h10, null);
                                g10 = h0.g(q.a("mimeType", g(parse2)), q.a("fileName", f(parse2)));
                                result.success(g10);
                                return;
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    gd.b.a(fileOutputStream, th);
                                    throw th2;
                                }
                            }
                        }
                    case 1510300818:
                        if (!str.equals("getContentMetadata")) {
                            break;
                        } else {
                            Object obj2 = call.arguments;
                            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.String");
                            Uri parse3 = Uri.parse((String) obj2);
                            kotlin.jvm.internal.m.b(parse3);
                            g11 = h0.g(q.a("mimeType", g(parse3)), q.a("fileName", f(parse3)));
                            result.success(g11);
                            return;
                        }
                    case 1988390979:
                        if (!str.equals("getContent")) {
                            break;
                        } else {
                            Object obj3 = call.arguments;
                            kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type kotlin.String");
                            Uri parse4 = Uri.parse((String) obj3);
                            kotlin.jvm.internal.m.b(parse4);
                            InputStream h11 = h(parse4);
                            try {
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                gd.a.b(h11, byteArrayOutputStream, 0, 2, null);
                                xc.k e10 = e(byteArrayOutputStream.size());
                                long longValue = ((Number) e10.a()).longValue();
                                try {
                                    ((ByteBuffer) e10.b()).put(byteArrayOutputStream.toByteArray());
                                    g12 = h0.g(q.a("address", Long.valueOf(longValue)), q.a("length", Integer.valueOf(byteArrayOutputStream.size())), q.a("mimeType", g(parse4)), q.a("fileName", f(parse4)));
                                    result.success(g12);
                                    t tVar2 = t.f32733a;
                                    try {
                                        gd.b.a(h11, null);
                                        return;
                                    } catch (Exception e11) {
                                        e = e11;
                                        j10 = longValue;
                                        k(j10);
                                        result.error(Constants.EXCEPTION, "Internal error.", e);
                                        return;
                                    }
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            } catch (Throwable th4) {
                                throw th4;
                            }
                        }
                }
            }
            result.notImplemented();
        } catch (Exception e12) {
            e = e12;
        }
    }
}
