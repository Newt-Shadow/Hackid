package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.ConfigProvider;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import io.appmetrica.analytics.networktasks.internal.RetryPolicyConfig;
import io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: io.appmetrica.analytics.impl.km  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1303km implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    public final C1353mm f19991a;

    /* renamed from: b  reason: collision with root package name */
    public Ol f19992b;

    /* renamed from: c  reason: collision with root package name */
    public EnumC1551ul f19993c;

    /* renamed from: d  reason: collision with root package name */
    public final RequestDataHolder f19994d;

    /* renamed from: e  reason: collision with root package name */
    public final ConfigProvider f19995e;

    /* renamed from: f  reason: collision with root package name */
    public final ResponseDataHolder f19996f;

    /* renamed from: g  reason: collision with root package name */
    public final FullUrlFormer f19997g;

    /* renamed from: h  reason: collision with root package name */
    public final Cl f19998h;

    public C1303km(C1353mm c1353mm, FullUrlFormer<Ml> fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, ConfigProvider<Ml> configProvider) {
        this(c1353mm, new Cl(), fullUrlFormer, requestDataHolder, responseDataHolder, configProvider);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final String description() {
        return "Startup task for component: " + this.f19991a.f20138a.f20228f.toString();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final FullUrlFormer<?> getFullUrlFormer() {
        return this.f19997g;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final RequestDataHolder getRequestDataHolder() {
        return this.f19994d;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final ResponseDataHolder getResponseDataHolder() {
        return this.f19996f;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final RetryPolicyConfig getRetryPolicyConfig() {
        return ((Ml) this.f19995e.getConfig()).getRetryPolicyConfig();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final SSLSocketFactory getSslSocketFactory() {
        ((C1327ll) C1665za.E.y()).getClass();
        return null;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final boolean onCreateTask() {
        this.f19994d.setHeader("Accept-Encoding", "encrypted");
        return this.f19991a.g();
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onPerformRequest() {
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onPostRequestComplete(boolean z10) {
        if (!z10) {
            this.f19993c = EnumC1551ul.PARSE;
        }
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final boolean onRequestComplete() {
        Ol handle = this.f19998h.handle(this.f19996f);
        this.f19992b = handle;
        if (handle != null) {
            return true;
        }
        return false;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onRequestError(Throwable th) {
        this.f19993c = EnumC1551ul.NETWORK;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onShouldNotExecute() {
        this.f19993c = EnumC1551ul.NETWORK;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onSuccessfulTaskFinished() {
        if (this.f19992b != null && this.f19996f.getResponseHeaders() != null) {
            this.f19991a.a(this.f19992b, (Ml) this.f19995e.getConfig(), this.f19996f.getResponseHeaders());
        }
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onTaskAdded() {
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onTaskFinished() {
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onTaskRemoved() {
    }

    @Override // io.appmetrica.analytics.networktasks.internal.UnderlyingNetworkTask
    public final void onUnsuccessfulTaskFinished() {
        if (this.f19993c == null) {
            this.f19993c = EnumC1551ul.UNKNOWN;
        }
        this.f19991a.a(this.f19993c);
    }

    public C1303km(C1353mm c1353mm, Cl cl, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, ConfigProvider configProvider) {
        this.f19991a = c1353mm;
        this.f19998h = cl;
        this.f19994d = requestDataHolder;
        this.f19996f = responseDataHolder;
        this.f19995e = configProvider;
        this.f19997g = fullUrlFormer;
        fullUrlFormer.setHosts(((Ml) configProvider.getConfig()).k());
    }
}
