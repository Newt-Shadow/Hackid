package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0808qf;
import com.yandex.metrica.impl.ob.C0839s;
import com.yandex.metrica.networktasks.api.DefaultNetworkResponseHandler;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import com.yandex.metrica.networktasks.api.SendingDataTaskHelper;
import com.yandex.metrica.networktasks.api.UnderlyingNetworkTask;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class P1 implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private final L3 f11019a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, String> f11020b;

    /* renamed from: c  reason: collision with root package name */
    private Ig f11021c;

    /* renamed from: d  reason: collision with root package name */
    private C0808qf f11022d;

    /* renamed from: e  reason: collision with root package name */
    private final L7 f11023e;

    /* renamed from: f  reason: collision with root package name */
    private List<Long> f11024f;

    /* renamed from: g  reason: collision with root package name */
    private int f11025g;

    /* renamed from: h  reason: collision with root package name */
    private int f11026h;

    /* renamed from: i  reason: collision with root package name */
    private b f11027i;

    /* renamed from: j  reason: collision with root package name */
    private final InterfaceC0543fn<byte[]> f11028j;

    /* renamed from: k  reason: collision with root package name */
    private final C0467cm f11029k;

    /* renamed from: l  reason: collision with root package name */
    private final C0428b8 f11030l;

    /* renamed from: m  reason: collision with root package name */
    private final M0 f11031m;

    /* renamed from: n  reason: collision with root package name */
    private final Qg f11032n;

    /* renamed from: o  reason: collision with root package name */
    private final FullUrlFormer f11033o;

    /* renamed from: p  reason: collision with root package name */
    private final C0471d1 f11034p;

    /* renamed from: q  reason: collision with root package name */
    private final RequestDataHolder f11035q;

    /* renamed from: r  reason: collision with root package name */
    private final ResponseDataHolder f11036r;

    /* renamed from: s  reason: collision with root package name */
    private final SendingDataTaskHelper f11037s;

    /* renamed from: t  reason: collision with root package name */
    private int f11038t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final C0808qf.d f11039a;

        /* renamed from: b  reason: collision with root package name */
        final C0839s.a f11040b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f11041c;

        a(C0808qf.d dVar, C0839s.a aVar, boolean z10) {
            this.f11039a = dVar;
            this.f11040b = aVar;
            this.f11041c = z10;
        }
    }

    /* loaded from: classes2.dex */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final List<C0808qf.d> f11042a;

        /* renamed from: b  reason: collision with root package name */
        final List<Long> f11043b;

        /* renamed from: c  reason: collision with root package name */
        final JSONObject f11044c;

        b(List<C0808qf.d> list, List<Long> list2, JSONObject jSONObject) {
            this.f11042a = list;
            this.f11043b = list2;
            this.f11044c = jSONObject;
        }
    }

    public P1(L3 l32, Qg qg, C0471d1 c0471d1, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, RequestBodyEncrypter requestBodyEncrypter) {
        this(l32, qg, c0471d1, fullUrlFormer, requestDataHolder, responseDataHolder, l32.i(), l32.q(), l32.x(), requestBodyEncrypter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int a(P1 p12, int i10) {
        int i11 = p12.f11025g + i10;
        p12.f11025g = i11;
        return i11;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public String description() {
        return "ReportTask_" + this.f11019a.e().a();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public FullUrlFormer getFullUrlFormer() {
        return this.f11033o;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RequestDataHolder getRequestDataHolder() {
        return this.f11035q;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public ResponseDataHolder getResponseDataHolder() {
        return this.f11036r;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RetryPolicyConfig getRetryPolicyConfig() {
        return this.f11019a.m().q();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public SSLSocketFactory getSslSocketFactory() {
        F0.g().t().getClass();
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e4 A[LOOP:2: B:86:0x01de->B:88:0x01e4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01fd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01ff  */
    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onCreateTask() {
        /*
            Method dump skipped, instructions count: 676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.P1.onCreateTask():boolean");
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPerformRequest() {
        this.f11037s.b();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPostRequestComplete(boolean z10) {
        if (z10) {
            a(false);
        } else if (A2.b(this.f11036r.a())) {
            a(true);
        }
        if (z10 && this.f11029k.isEnabled()) {
            for (int i10 = 0; i10 < this.f11027i.f11042a.size(); i10++) {
                this.f11029k.a(this.f11027i.f11042a.get(i10), "Event sent");
            }
        }
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onRequestComplete() {
        return this.f11037s.a();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onRequestError(Throwable th) {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onShouldNotExecute() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onSuccessfulTaskFinished() {
        this.f11019a.l().c();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskAdded() {
        this.f11019a.l().a();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskFinished() {
        this.f11019a.i().a();
        this.f11019a.l().b();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskRemoved() {
        this.f11019a.l().b();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onUnsuccessfulTaskFinished() {
    }

    private C0808qf.a[] a(JSONObject jSONObject) {
        int length = jSONObject.length();
        if (length > 0) {
            C0808qf.a[] aVarArr = new C0808qf.a[length];
            Iterator<String> keys = jSONObject.keys();
            int i10 = 0;
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    C0808qf.a aVar = new C0808qf.a();
                    aVar.f13303a = next;
                    aVar.f13304b = jSONObject.getString(next);
                    aVarArr[i10] = aVar;
                } catch (Throwable unused) {
                }
                i10++;
            }
            return aVarArr;
        }
        return null;
    }

    private P1(L3 l32, Qg qg, C0471d1 c0471d1, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, L7 l72, C0467cm c0467cm, C0428b8 c0428b8, RequestBodyEncrypter requestBodyEncrypter) {
        this(l32, c0467cm, l72, qg, c0428b8, c0471d1, new Tm(1024000, "event value in ReportTask", c0467cm), C0761oh.a(), fullUrlFormer, requestDataHolder, responseDataHolder, requestBodyEncrypter);
    }

    P1(L3 l32, C0467cm c0467cm, L7 l72, Qg qg, C0428b8 c0428b8, C0471d1 c0471d1, Tm tm, M0 m02, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, RequestBodyEncrypter requestBodyEncrypter) {
        this.f11020b = new LinkedHashMap();
        this.f11025g = 0;
        this.f11026h = -1;
        this.f11037s = new SendingDataTaskHelper(requestBodyEncrypter, new Ql(), requestDataHolder, responseDataHolder, new DefaultNetworkResponseHandler());
        this.f11032n = qg;
        this.f11019a = l32;
        this.f11023e = l72;
        this.f11029k = c0467cm;
        this.f11028j = tm;
        this.f11030l = c0428b8;
        this.f11034p = c0471d1;
        this.f11031m = m02;
        this.f11035q = requestDataHolder;
        this.f11036r = responseDataHolder;
        this.f11033o = fullUrlFormer;
    }

    private void a(boolean z10) {
        this.f11030l.c(this.f11038t);
        C0808qf.d[] dVarArr = this.f11022d.f13297a;
        for (int i10 = 0; i10 < dVarArr.length; i10++) {
            try {
                C0808qf.d dVar = dVarArr[i10];
                this.f11023e.a(this.f11024f.get(i10).longValue(), J1.a(dVar.f13332b.f13371c).a(), dVar.f13333c.length, z10);
            } catch (Throwable unused) {
            }
        }
        this.f11023e.a(this.f11019a.v().a());
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051 A[Catch: all -> 0x0130, TRY_LEAVE, TryCatch #0 {all -> 0x0130, blocks: (B:5:0x001f, B:6:0x0025, B:8:0x002c, B:20:0x0051, B:23:0x005d, B:26:0x006c, B:28:0x0076, B:37:0x0098, B:42:0x00a9, B:44:0x00b7, B:51:0x00c3, B:50:0x00c2, B:47:0x00bd, B:52:0x00c9, B:58:0x00e0, B:61:0x00e7, B:39:0x00a1, B:67:0x00f3, B:18:0x004b, B:68:0x00f8, B:70:0x00fe, B:71:0x0113, B:73:0x0117), top: B:88:0x001d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    com.yandex.metrica.impl.ob.P1.a a(long r17, com.yandex.metrica.impl.ob.C0808qf.d.b r19, com.yandex.metrica.impl.ob.Lg r20, java.util.List<java.lang.Throwable> r21, int r22) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.P1.a(long, com.yandex.metrica.impl.ob.qf$d$b, com.yandex.metrica.impl.ob.Lg, java.util.List, int):com.yandex.metrica.impl.ob.P1$a");
    }
}
