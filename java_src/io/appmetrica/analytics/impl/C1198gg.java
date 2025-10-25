package io.appmetrica.analytics.impl;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
/* renamed from: io.appmetrica.analytics.impl.gg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1198gg implements InterfaceC1043ab {

    /* renamed from: a  reason: collision with root package name */
    public final InstallReferrerClient f19675a;

    /* renamed from: b  reason: collision with root package name */
    public final ICommonExecutor f19676b;

    public C1198gg(Context context, ICommonExecutor iCommonExecutor) {
        this(InstallReferrerClient.newBuilder(context).build(), iCommonExecutor);
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1043ab
    public final void a(InterfaceC1447qg interfaceC1447qg) {
        this.f19675a.startConnection(new C1148eg(this, interfaceC1447qg));
    }

    public C1198gg(InstallReferrerClient installReferrerClient, ICommonExecutor iCommonExecutor) {
        this.f19675a = installReferrerClient;
        this.f19676b = iCommonExecutor;
    }
}
