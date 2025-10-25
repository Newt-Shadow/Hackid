package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.DefaultResponseParser;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.NetworkResponseHandler;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import com.yandex.metrica.networktasks.api.UnderlyingNetworkTask;
import javax.net.ssl.SSLSocketFactory;
import org.apache.tika.metadata.HttpHeaders;
/* loaded from: classes2.dex */
public class B4 implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private final ConfigProvider f9750a;

    /* renamed from: b  reason: collision with root package name */
    private final C0445c0 f9751b;

    /* renamed from: c  reason: collision with root package name */
    private final E4 f9752c;

    /* renamed from: d  reason: collision with root package name */
    private final dc.d f9753d = new dc.c();

    /* renamed from: e  reason: collision with root package name */
    private final Ql f9754e = new Ql();

    /* renamed from: f  reason: collision with root package name */
    private final String f9755f = B4.class.getName() + "@" + Integer.toHexString(hashCode());

    /* renamed from: g  reason: collision with root package name */
    private final C0428b8 f9756g;

    /* renamed from: h  reason: collision with root package name */
    private final FullUrlFormer f9757h;

    /* renamed from: i  reason: collision with root package name */
    private final RequestDataHolder f9758i;

    /* renamed from: j  reason: collision with root package name */
    private final ResponseDataHolder f9759j;

    /* renamed from: k  reason: collision with root package name */
    private final NetworkResponseHandler f9760k;

    public B4(ConfigProvider configProvider, C0445c0 c0445c0, E4 e42, C0428b8 c0428b8, NetworkResponseHandler networkResponseHandler, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, FullUrlFormer fullUrlFormer) {
        this.f9750a = configProvider;
        this.f9751b = c0445c0;
        this.f9752c = e42;
        this.f9756g = c0428b8;
        this.f9758i = requestDataHolder;
        this.f9759j = responseDataHolder;
        this.f9760k = networkResponseHandler;
        this.f9757h = fullUrlFormer;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public String description() {
        return this.f9755f;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public FullUrlFormer getFullUrlFormer() {
        return this.f9757h;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RequestDataHolder getRequestDataHolder() {
        return this.f9758i;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public ResponseDataHolder getResponseDataHolder() {
        return this.f9759j;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RetryPolicyConfig getRetryPolicyConfig() {
        return null;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public SSLSocketFactory getSslSocketFactory() {
        F0.g().t().getClass();
        return null;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onCreateTask() {
        boolean z10;
        byte[] bArr;
        D4 d42 = (D4) this.f9750a.getConfig();
        boolean x10 = d42.x();
        boolean b10 = A2.b(d42.C());
        if (x10 && !b10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        this.f9757h.f(d42.C());
        byte[] a10 = new C4(this.f9751b, d42, this.f9752c, new O3(this.f9756g), new C0468cn(1024, "diagnostic event name"), new C0468cn(204800, "diagnostic event value"), new dc.c()).a();
        try {
            bArr = this.f9754e.compress(a10);
        } catch (Throwable unused) {
            bArr = null;
        }
        if (!A2.a(bArr)) {
            this.f9758i.g(HttpHeaders.CONTENT_ENCODING, "gzip");
            a10 = bArr;
        }
        this.f9758i.h(a10);
        return true;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPerformRequest() {
        this.f9758i.a(this.f9753d.currentTimeMillis());
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPostRequestComplete(boolean z10) {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onRequestComplete() {
        DefaultResponseParser.Response response = (DefaultResponseParser.Response) this.f9760k.handle(this.f9759j);
        if (response != null && "accepted".equals(response.f14164a)) {
            return true;
        }
        return false;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onRequestError(Throwable th) {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onShouldNotExecute() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onSuccessfulTaskFinished() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskAdded() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskFinished() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onTaskRemoved() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onUnsuccessfulTaskFinished() {
    }
}
