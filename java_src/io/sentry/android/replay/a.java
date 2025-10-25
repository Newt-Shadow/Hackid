package io.sentry.android.replay;

import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.x2;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import rd.b0;
import rd.d0;
/* loaded from: classes2.dex */
public class a implements x2 {
    private static final xc.d snakecasePattern$delegate;
    private static final HashSet<String> supportedNetworkData;
    private String lastConnectivityState;
    public static final b Companion = new b(null);
    public static final int $stable = 8;

    /* renamed from: io.sentry.android.replay.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0193a extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final C0193a f22565e = new C0193a();

        C0193a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final rd.l invoke() {
            return new rd.l("_[a-z]");
        }
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final rd.l b() {
            return (rd.l) a.snakecasePattern$delegate.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: e  reason: collision with root package name */
        public static final c f22566e = new c();

        c() {
            super(1);
        }

        @Override // id.l
        /* renamed from: a */
        public final CharSequence invoke(rd.i it) {
            char R0;
            kotlin.jvm.internal.m.e(it, "it");
            R0 = d0.R0(it.getValue());
            String valueOf = String.valueOf(R0);
            kotlin.jvm.internal.m.c(valueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = valueOf.toUpperCase(Locale.ROOT);
            kotlin.jvm.internal.m.d(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
            return upperCase;
        }
    }

    static {
        xc.d b10;
        b10 = xc.f.b(xc.h.f32713c, C0193a.f22565e);
        snakecasePattern$delegate = b10;
        HashSet<String> hashSet = new HashSet<>();
        hashSet.add("status_code");
        hashSet.add(Constants.METHOD);
        hashSet.add("response_content_length");
        hashSet.add("request_content_length");
        hashSet.add("http.response_content_length");
        hashSet.add("http.request_content_length");
        supportedNetworkData = hashSet;
    }

    private final boolean a(io.sentry.e eVar) {
        String str;
        boolean z10;
        Object obj = eVar.i().get("url");
        if (obj instanceof String) {
            str = (String) obj;
        } else {
            str = null;
        }
        if (str != null && str.length() != 0) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            return false;
        }
        Map data = eVar.i();
        kotlin.jvm.internal.m.d(data, "data");
        if (!data.containsKey("http.start_timestamp")) {
            return false;
        }
        Map data2 = eVar.i();
        kotlin.jvm.internal.m.d(data2, "data");
        if (!data2.containsKey("http.end_timestamp")) {
            return false;
        }
        return true;
    }

    private final String b(String str) {
        return Companion.b().e(str, c.f22566e);
    }

    private final io.sentry.rrweb.i c(io.sentry.e eVar) {
        double longValue;
        double longValue2;
        String D;
        String G0;
        Object obj = eVar.i().get("http.start_timestamp");
        Object obj2 = eVar.i().get("http.end_timestamp");
        io.sentry.rrweb.i iVar = new io.sentry.rrweb.i();
        iVar.f(eVar.l().getTime());
        iVar.s("resource.http");
        Object obj3 = eVar.i().get("url");
        kotlin.jvm.internal.m.c(obj3, "null cannot be cast to non-null type kotlin.String");
        iVar.q((String) obj3);
        if (obj instanceof Double) {
            longValue = ((Number) obj).doubleValue();
        } else {
            kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type kotlin.Long");
            longValue = ((Long) obj).longValue();
        }
        iVar.u(longValue / 1000.0d);
        if (obj2 instanceof Double) {
            longValue2 = ((Number) obj2).doubleValue();
        } else {
            kotlin.jvm.internal.m.c(obj2, "null cannot be cast to non-null type kotlin.Long");
            longValue2 = ((Long) obj2).longValue();
        }
        iVar.r(longValue2 / 1000.0d);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map i10 = eVar.i();
        kotlin.jvm.internal.m.d(i10, "breadcrumb.data");
        for (Map.Entry entry : i10.entrySet()) {
            String key = (String) entry.getKey();
            Object value = entry.getValue();
            if (supportedNetworkData.contains(key)) {
                kotlin.jvm.internal.m.d(key, "key");
                D = rd.y.D(key, "content_length", "body_size", false, 4, null);
                G0 = b0.G0(D, ".", null, 2, null);
                linkedHashMap.put(b(G0), value);
            }
        }
        iVar.o(linkedHashMap);
        return iVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:117:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f2  */
    @Override // io.sentry.x2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public io.sentry.rrweb.b convert(io.sentry.e r10) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.replay.a.convert(io.sentry.e):io.sentry.rrweb.b");
    }
}
