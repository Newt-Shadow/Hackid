package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.DefaultNetworkResponseHandler;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.RequestBodyEncrypter;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import com.yandex.metrica.networktasks.api.SendingDataTaskHelper;
import com.yandex.metrica.networktasks.api.UnderlyingNetworkTask;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.yandex.metrica.impl.ob.cd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0458cd implements UnderlyingNetworkTask {

    /* renamed from: a  reason: collision with root package name */
    private final C0842s2 f12157a;

    /* renamed from: b  reason: collision with root package name */
    private final C0706mc f12158b;

    /* renamed from: c  reason: collision with root package name */
    private final C0403a8 f12159c;

    /* renamed from: d  reason: collision with root package name */
    private final C0508ed f12160d;

    /* renamed from: e  reason: collision with root package name */
    private final Fc f12161e;

    /* renamed from: f  reason: collision with root package name */
    private final Pg f12162f;

    /* renamed from: g  reason: collision with root package name */
    private final FullUrlFormer f12163g;

    /* renamed from: h  reason: collision with root package name */
    private final ConfigProvider f12164h;

    /* renamed from: i  reason: collision with root package name */
    private final RequestDataHolder f12165i;

    /* renamed from: j  reason: collision with root package name */
    private final ResponseDataHolder f12166j;

    /* renamed from: k  reason: collision with root package name */
    private final SendingDataTaskHelper f12167k;

    /* renamed from: l  reason: collision with root package name */
    private long f12168l;

    /* renamed from: m  reason: collision with root package name */
    private C0483dd f12169m;

    public C0458cd(Context context, C0842s2 c0842s2, Fc fc2, Pg pg, ConfigProvider configProvider, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, FullUrlFormer fullUrlFormer, RequestBodyEncrypter requestBodyEncrypter) {
        this(c0842s2, fc2, F0.g().w().a(), pg, new C0508ed(context), fullUrlFormer, requestDataHolder, responseDataHolder, configProvider, new SendingDataTaskHelper(requestBodyEncrypter, new Ql(), requestDataHolder, responseDataHolder, new DefaultNetworkResponseHandler()));
    }

    private boolean a() {
        boolean z10;
        C0483dd a10 = this.f12160d.a(this.f12158b.f12865d);
        this.f12169m = a10;
        C0784pf c0784pf = a10.f12213c;
        if (c0784pf.f13121b.length == 0 && c0784pf.f13120a.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return false;
        }
        return this.f12167k.c(MessageNano.toByteArray(c0784pf));
    }

    private void b() {
        long f10 = this.f12159c.f() + 1;
        this.f12168l = f10;
        this.f12162f.a(f10);
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public String description() {
        return "LocationTask";
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public FullUrlFormer getFullUrlFormer() {
        return this.f12163g;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RequestDataHolder getRequestDataHolder() {
        return this.f12165i;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public ResponseDataHolder getResponseDataHolder() {
        return this.f12166j;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public RetryPolicyConfig getRetryPolicyConfig() {
        return ((C0558gd) this.f12164h.getConfig()).q();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public SSLSocketFactory getSslSocketFactory() {
        F0.g().t().getClass();
        return null;
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onCreateTask() {
        C0558gd c0558gd = (C0558gd) this.f12164h.getConfig();
        if (this.f12157a.d() || TextUtils.isEmpty(c0558gd.g()) || TextUtils.isEmpty(c0558gd.w()) || A2.b(this.f12163g.b())) {
            return false;
        }
        return a();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPerformRequest() {
        this.f12167k.b();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onPostRequestComplete(boolean z10) {
        if (z10 || A2.b(this.f12166j.a())) {
            this.f12160d.a(this.f12169m);
        }
        this.f12159c.c(this.f12168l);
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public boolean onRequestComplete() {
        return this.f12167k.a();
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onRequestError(Throwable th) {
        this.f12159c.c(this.f12168l);
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onShouldNotExecute() {
    }

    @Override // com.yandex.metrica.networktasks.api.UnderlyingNetworkTask
    public void onSuccessfulTaskFinished() {
        this.f12161e.a();
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

    C0458cd(C0842s2 c0842s2, Fc fc2, C0403a8 c0403a8, Pg pg, C0508ed c0508ed, FullUrlFormer fullUrlFormer, RequestDataHolder requestDataHolder, ResponseDataHolder responseDataHolder, ConfigProvider configProvider, SendingDataTaskHelper sendingDataTaskHelper) {
        this.f12167k = sendingDataTaskHelper;
        this.f12157a = c0842s2;
        this.f12161e = fc2;
        this.f12164h = configProvider;
        C0558gd c0558gd = (C0558gd) configProvider.getConfig();
        this.f12158b = c0558gd.z();
        this.f12159c = c0403a8;
        this.f12160d = c0508ed;
        this.f12162f = pg;
        this.f12165i = requestDataHolder;
        this.f12166j = responseDataHolder;
        this.f12163g = fullUrlFormer;
        b();
        fullUrlFormer.f(c0558gd.A());
    }
}
