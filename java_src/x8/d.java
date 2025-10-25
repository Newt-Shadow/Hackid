package x8;

import android.util.Log;
import id.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONObject;
import sd.a;
import u8.w0;
import xc.t;
/* loaded from: classes.dex */
public final class d implements o {

    /* renamed from: g  reason: collision with root package name */
    private static final a f32537g = new a(null);

    /* renamed from: h  reason: collision with root package name */
    private static final int f32538h;

    /* renamed from: i  reason: collision with root package name */
    private static final rd.l f32539i;

    /* renamed from: a  reason: collision with root package name */
    private final w0 f32540a;

    /* renamed from: b  reason: collision with root package name */
    private final l8.e f32541b;

    /* renamed from: c  reason: collision with root package name */
    private final u8.b f32542c;

    /* renamed from: d  reason: collision with root package name */
    private final x8.a f32543d;

    /* renamed from: e  reason: collision with root package name */
    private final l f32544e;

    /* renamed from: f  reason: collision with root package name */
    private final ce.a f32545f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return d.f32538h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.d {

        /* renamed from: a  reason: collision with root package name */
        Object f32546a;

        /* renamed from: b  reason: collision with root package name */
        Object f32547b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f32548c;

        /* renamed from: e  reason: collision with root package name */
        int f32550e;

        b(ad.e eVar) {
            super(eVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            this.f32548c = obj;
            this.f32550e |= Integer.MIN_VALUE;
            return d.this.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32551a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32552b;

        c(ad.e eVar) {
            super(2, eVar);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(JSONObject jSONObject, ad.e eVar) {
            return ((c) create(jSONObject, eVar)).invokeSuspend(t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            c cVar = new c(eVar);
            cVar.f32552b = obj;
            return cVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00c3  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00c8  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00f4 A[RETURN] */
        /* JADX WARN: Type inference failed for: r13v0 */
        /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Boolean] */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r4v10, types: [java.lang.Boolean] */
        @Override // kotlin.coroutines.jvm.internal.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r20) {
            /*
                Method dump skipped, instructions count: 248
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: x8.d.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x8.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0368d extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32554a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32555b;

        C0368d(ad.e eVar) {
            super(2, eVar);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(String str, ad.e eVar) {
            return ((C0368d) create(str, eVar)).invokeSuspend(t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            C0368d c0368d = new C0368d(eVar);
            c0368d.f32555b = obj;
            return c0368d;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            bd.d.e();
            if (this.f32554a == 0) {
                xc.m.b(obj);
                Log.e("FirebaseSessions", "Error failed to fetch the remote configs: " + ((String) this.f32555b));
                return t.f32733a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    static {
        a.C0309a c0309a = sd.a.f29581b;
        f32538h = (int) sd.a.r(sd.c.h(24, sd.d.f29593g));
        f32539i = new rd.l("/");
    }

    public d(w0 timeProvider, l8.e firebaseInstallationsApi, u8.b appInfo, x8.a configsFetcher, l settingsCache) {
        kotlin.jvm.internal.m.e(timeProvider, "timeProvider");
        kotlin.jvm.internal.m.e(firebaseInstallationsApi, "firebaseInstallationsApi");
        kotlin.jvm.internal.m.e(appInfo, "appInfo");
        kotlin.jvm.internal.m.e(configsFetcher, "configsFetcher");
        kotlin.jvm.internal.m.e(settingsCache, "settingsCache");
        this.f32540a = timeProvider;
        this.f32541b = firebaseInstallationsApi;
        this.f32542c = appInfo;
        this.f32543d = configsFetcher;
        this.f32544e = settingsCache;
        this.f32545f = ce.g.b(false, 1, null);
    }

    private final String i(String str) {
        return f32539i.f(str, "");
    }

    @Override // x8.o
    public Boolean a() {
        return this.f32544e.d();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008d A[Catch: all -> 0x0150, TRY_LEAVE, TryCatch #0 {all -> 0x0150, blocks: (B:36:0x0085, B:38:0x008d, B:41:0x0098), top: B:62:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0098 A[Catch: all -> 0x0150, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0150, blocks: (B:36:0x0085, B:38:0x008d, B:41:0x0098), top: B:62:0x0085 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ba A[Catch: all -> 0x004e, TRY_LEAVE, TryCatch #2 {all -> 0x004e, blocks: (B:21:0x004a, B:45:0x00ac, B:47:0x00ba, B:51:0x00c6), top: B:65:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c5  */
    @Override // x8.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object b(ad.e r14) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: x8.d.b(ad.e):java.lang.Object");
    }

    @Override // x8.o
    public sd.a c() {
        Integer b10 = this.f32544e.b();
        if (b10 != null) {
            a.C0309a c0309a = sd.a.f29581b;
            return sd.a.b(sd.c.h(b10.intValue(), sd.d.f29591e));
        }
        return null;
    }

    @Override // x8.o
    public Double d() {
        return this.f32544e.a();
    }
}
