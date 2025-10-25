package lb;

import com.posthog.PostHogEvent;
import com.posthog.internal.PostHogBatchEvent;
import com.posthog.internal.PostHogFlagsRequest;
import com.posthog.internal.PostHogFlagsResponse;
import com.posthog.internal.PostHogRemoteConfigResponse;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ne.b0;
import ne.w;
import ne.y;
import org.apache.tika.metadata.HttpHeaders;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    private static final a f25409d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final eb.d f25410a;

    /* renamed from: b  reason: collision with root package name */
    private final xc.d f25411b;

    /* renamed from: c  reason: collision with root package name */
    private final ne.w f25412c;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    static final class b extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ PostHogBatchEvent f25413e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ c f25414f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f25415g;

        /* loaded from: classes.dex */
        public static final class a extends com.google.gson.reflect.a<PostHogBatchEvent> {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(PostHogBatchEvent postHogBatchEvent, c cVar, String str) {
            super(1);
            this.f25413e = postHogBatchEvent;
            this.f25414f = cVar;
            this.f25415g = str;
        }

        public final void a(OutputStream it) {
            BufferedWriter bufferedWriter;
            kotlin.jvm.internal.m.e(it, "it");
            this.f25413e.setSentAt(this.f25414f.f25410a.f().c());
            this.f25414f.h(this.f25413e, this.f25415g);
            b0 E = this.f25414f.f25410a.E();
            PostHogBatchEvent postHogBatchEvent = this.f25413e;
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(it, rd.d.f29089b);
            if (outputStreamWriter instanceof BufferedWriter) {
                bufferedWriter = (BufferedWriter) outputStreamWriter;
            } else {
                bufferedWriter = new BufferedWriter(outputStreamWriter, 8192);
            }
            E.b().A(postHogBatchEvent, new a().d(), bufferedWriter);
            bufferedWriter.flush();
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((OutputStream) obj);
            return xc.t.f32733a;
        }
    }

    /* renamed from: lb.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0244c extends com.google.gson.reflect.a<PostHogFlagsResponse> {
    }

    /* loaded from: classes.dex */
    static final class d extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ PostHogFlagsRequest f25417f;

        /* loaded from: classes.dex */
        public static final class a extends com.google.gson.reflect.a<PostHogFlagsRequest> {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(PostHogFlagsRequest postHogFlagsRequest) {
            super(1);
            this.f25417f = postHogFlagsRequest;
        }

        public final void a(OutputStream it) {
            BufferedWriter bufferedWriter;
            kotlin.jvm.internal.m.e(it, "it");
            b0 E = c.this.f25410a.E();
            PostHogFlagsRequest postHogFlagsRequest = this.f25417f;
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(it, rd.d.f29089b);
            if (outputStreamWriter instanceof BufferedWriter) {
                bufferedWriter = (BufferedWriter) outputStreamWriter;
            } else {
                bufferedWriter = new BufferedWriter(outputStreamWriter, 8192);
            }
            E.b().A(postHogFlagsRequest, new a().d(), bufferedWriter);
            bufferedWriter.flush();
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((OutputStream) obj);
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    public static final class e extends ne.z {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ id.l f25419c;

        e(id.l lVar) {
            this.f25419c = lVar;
        }

        @Override // ne.z
        public ne.v b() {
            return c.this.f();
        }

        @Override // ne.z
        public void e(af.e sink) {
            kotlin.jvm.internal.m.e(sink, "sink");
            OutputStream P0 = sink.P0();
            try {
                this.f25419c.invoke(P0);
                xc.t tVar = xc.t.f32733a;
                gd.b.a(P0, null);
            } finally {
            }
        }
    }

    /* loaded from: classes.dex */
    static final class f extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final f f25420e = new f();

        f() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final ne.v invoke() {
            try {
                return ne.v.f26801e.a("application/json; charset=utf-8");
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class g extends com.google.gson.reflect.a<PostHogRemoteConfigResponse> {
    }

    /* loaded from: classes.dex */
    static final class h extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ List f25422f;

        /* loaded from: classes.dex */
        public static final class a extends com.google.gson.reflect.a<List<? extends PostHogEvent>> {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(List list) {
            super(1);
            this.f25422f = list;
        }

        public final void a(OutputStream it) {
            BufferedWriter bufferedWriter;
            kotlin.jvm.internal.m.e(it, "it");
            b0 E = c.this.f25410a.E();
            List list = this.f25422f;
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(it, rd.d.f29089b);
            if (outputStreamWriter instanceof BufferedWriter) {
                bufferedWriter = (BufferedWriter) outputStreamWriter;
            } else {
                bufferedWriter = new BufferedWriter(outputStreamWriter, 8192);
            }
            E.b().A(list, new a().d(), bufferedWriter);
            bufferedWriter.flush();
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((OutputStream) obj);
            return xc.t.f32733a;
        }
    }

    public c(eb.d config) {
        xc.d a10;
        kotlin.jvm.internal.m.e(config, "config");
        this.f25410a = config;
        a10 = xc.f.a(f.f25420e);
        this.f25411b = a10;
        this.f25412c = new w.a().G(config.x()).a(new lb.b(config)).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ne.v f() {
        return (ne.v) this.f25411b.getValue();
    }

    private final String g() {
        boolean w10;
        w10 = rd.y.w(this.f25410a.l(), "/", false, 2, null);
        if (w10) {
            String substring = this.f25410a.l().substring(0, this.f25410a.l().length() - 1);
            kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }
        return this.f25410a.l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(Object obj, String str) {
        if (this.f25410a.g()) {
            try {
                String c10 = this.f25410a.E().c(obj);
                if (c10 != null) {
                    i o10 = this.f25410a.o();
                    o10.a("Request " + str + "}: " + c10);
                }
            } catch (Throwable unused) {
            }
        }
    }

    private final ne.a0 i(ne.a0 a0Var) {
        if (this.f25410a.g()) {
            try {
                ne.b0 a10 = a0Var.a();
                if (a10 == null) {
                    return a0Var;
                }
                ne.v e10 = a10.e();
                String g10 = a10.g();
                i o10 = this.f25410a.o();
                o10.a("Response " + a0Var.H().i() + ": " + g10);
                b0.b bVar = ne.b0.f26599b;
                byte[] bytes = g10.getBytes(rd.d.f29089b);
                kotlin.jvm.internal.m.d(bytes, "this as java.lang.String).getBytes(charset)");
                return a0Var.w().b(bVar.b(bytes, e10)).c();
            } catch (Throwable unused) {
                return a0Var;
            }
        }
        return a0Var;
    }

    private final ne.y j(String str, id.l lVar) {
        return new y.a().m(str).d("User-Agent", this.f25410a.K()).g(new e(lVar)).a();
    }

    public final void d(List events) {
        kotlin.jvm.internal.m.e(events, "events");
        PostHogBatchEvent postHogBatchEvent = new PostHogBatchEvent(this.f25410a.b(), events, null, 4, null);
        String str = g() + "/batch";
        ne.a0 execute = this.f25412c.w(j(str, new b(postHogBatchEvent, this, str))).execute();
        try {
            ne.a0 i10 = i(execute);
            if (i10.s()) {
                xc.t tVar = xc.t.f32733a;
                gd.b.a(execute, null);
                return;
            }
            throw new lb.e(i10.f(), i10.u(), i10.a());
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                gd.b.a(execute, th);
                throw th2;
            }
        }
    }

    public final PostHogFlagsResponse e(String distinctId, String str, Map map) {
        BufferedReader bufferedReader;
        kotlin.jvm.internal.m.e(distinctId, "distinctId");
        PostHogFlagsRequest postHogFlagsRequest = new PostHogFlagsRequest(this.f25410a.b(), distinctId, str, map);
        String str2 = g() + "/flags/?v=2&config=true";
        h(postHogFlagsRequest, str2);
        ne.a0 execute = this.f25412c.w(j(str2, new d(postHogFlagsRequest))).execute();
        try {
            ne.a0 i10 = i(execute);
            if (i10.s()) {
                ne.b0 a10 = i10.a();
                if (a10 != null) {
                    b0 E = this.f25410a.E();
                    Reader a11 = a10.a();
                    if (a11 instanceof BufferedReader) {
                        bufferedReader = (BufferedReader) a11;
                    } else {
                        bufferedReader = new BufferedReader(a11, 8192);
                    }
                    PostHogFlagsResponse postHogFlagsResponse = (PostHogFlagsResponse) E.b().k(bufferedReader, new C0244c().d());
                    gd.b.a(execute, null);
                    return postHogFlagsResponse;
                }
                gd.b.a(execute, null);
                return null;
            }
            throw new lb.e(i10.f(), i10.u(), i10.a());
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                gd.b.a(execute, th);
                throw th2;
            }
        }
    }

    public final PostHogRemoteConfigResponse k() {
        BufferedReader bufferedReader;
        String g10 = g();
        if (kotlin.jvm.internal.m.a(g10, "https://us.i.posthog.com")) {
            g10 = "https://us-assets.i.posthog.com";
        } else if (kotlin.jvm.internal.m.a(g10, "https://eu.i.posthog.com")) {
            g10 = "https://eu-assets.i.posthog.com";
        }
        y.a aVar = new y.a();
        ne.a0 execute = this.f25412c.w(aVar.m(g10 + "/array/" + this.f25410a.b() + "/config").d("User-Agent", this.f25410a.K()).d(HttpHeaders.CONTENT_TYPE, "application/json; charset=utf-8").b().a()).execute();
        try {
            ne.a0 i10 = i(execute);
            if (i10.s()) {
                ne.b0 a10 = i10.a();
                if (a10 != null) {
                    b0 E = this.f25410a.E();
                    Reader a11 = a10.a();
                    if (a11 instanceof BufferedReader) {
                        bufferedReader = (BufferedReader) a11;
                    } else {
                        bufferedReader = new BufferedReader(a11, 8192);
                    }
                    PostHogRemoteConfigResponse postHogRemoteConfigResponse = (PostHogRemoteConfigResponse) E.b().k(bufferedReader, new g().d());
                    gd.b.a(execute, null);
                    return postHogRemoteConfigResponse;
                }
                gd.b.a(execute, null);
                return null;
            }
            throw new lb.e(i10.f(), i10.u(), i10.a());
        } finally {
        }
    }

    public final void l(List events) {
        kotlin.jvm.internal.m.e(events, "events");
        Iterator it = events.iterator();
        while (it.hasNext()) {
            ((PostHogEvent) it.next()).setApiKey(this.f25410a.b());
        }
        String str = g() + this.f25410a.G();
        h(events, str);
        ne.a0 execute = this.f25412c.w(j(str, new h(events))).execute();
        try {
            ne.a0 i10 = i(execute);
            if (i10.s()) {
                xc.t tVar = xc.t.f32733a;
                gd.b.a(execute, null);
                return;
            }
            throw new lb.e(i10.f(), i10.u(), i10.a());
        } finally {
        }
    }
}
