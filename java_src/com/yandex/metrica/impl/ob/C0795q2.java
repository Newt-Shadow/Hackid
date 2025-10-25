package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.NetworkResponseHandler;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import com.yandex.metrica.networktasks.api.UnderlyingNetworkTask;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.yandex.metrica.impl.ob.q2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0795q2 implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private final C0834ri f13243a;

    /* renamed from: b  reason: collision with root package name */
    private Ui f13244b;

    /* renamed from: c  reason: collision with root package name */
    private EnumC0563gi f13245c;

    /* renamed from: d  reason: collision with root package name */
    private final RequestDataHolder f13246d;

    /* renamed from: e  reason: collision with root package name */
    private final ConfigProvider f13247e;

    /* renamed from: f  reason: collision with root package name */
    private final ResponseDataHolder f13248f;

    /* renamed from: g  reason: collision with root package name */
    private final FullUrlFormer f13249g;

    /* renamed from: h  reason: collision with root package name */
    private final NetworkResponseHandler f13250h;

    public C0795q2(C0834ri c0834ri, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, ConfigProvider configProvider) {
        this(c0834ri, new C0771p2(), fullUrlFormer, requestDataHolder, responseDataHolder, configProvider);
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public String description() {
        return "Startup task for component: " + this.f13243a.a().toString();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public FullUrlFormer getFullUrlFormer() {
        return this.f13249g;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RequestDataHolder getRequestDataHolder() {
        return this.f13246d;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public ResponseDataHolder getResponseDataHolder() {
        return this.f13248f;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RetryPolicyConfig getRetryPolicyConfig() {
        return ((Mg) this.f13247e.getConfig()).q();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public SSLSocketFactory getSslSocketFactory() {
        F0.g().t().getClass();
        return null;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onCreateTask() {
        this.f13246d.g("Accept-Encoding", "encrypted");
        return this.f13243a.e();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPerformRequest() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPostRequestComplete(boolean z10) {
        if (!z10) {
            this.f13245c = EnumC0563gi.PARSE;
        }
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onRequestComplete() {
        Ui ui = (Ui) this.f13250h.handle(this.f13248f);
        this.f13244b = ui;
        if (ui != null) {
            return true;
        }
        return false;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onRequestError(Throwable th) {
        this.f13245c = EnumC0563gi.NETWORK;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onShouldNotExecute() {
        this.f13245c = EnumC0563gi.NETWORK;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onSuccessfulTaskFinished() {
        if (this.f13244b != null && this.f13248f.c() != null) {
            this.f13243a.a(this.f13244b, (Mg) this.f13247e.getConfig(), this.f13248f.c());
        }
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
        if (this.f13245c == null) {
            this.f13245c = EnumC0563gi.UNKNOWN;
        }
        this.f13243a.a(this.f13245c);
    }

    C0795q2(C0834ri c0834ri, C0771p2 c0771p2, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, ConfigProvider configProvider) {
        this.f13243a = c0834ri;
        this.f13250h = c0771p2;
        this.f13246d = requestDataHolder;
        this.f13248f = responseDataHolder;
        this.f13247e = configProvider;
        this.f13249g = fullUrlFormer;
        fullUrlFormer.f(((Mg) configProvider.getConfig()).I());
    }
}
