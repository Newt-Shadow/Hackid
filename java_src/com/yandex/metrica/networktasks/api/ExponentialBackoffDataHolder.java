package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.impl.g;
import com.yandex.metrica.networktasks.impl.h;
/* loaded from: classes2.dex */
public class ExponentialBackoffDataHolder {

    /* renamed from: a  reason: collision with root package name */
    private final g f14165a;

    /* renamed from: b  reason: collision with root package name */
    private final h f14166b;

    /* renamed from: c  reason: collision with root package name */
    private final HostRetryInfoProvider f14167c;

    /* renamed from: d  reason: collision with root package name */
    private long f14168d;

    /* renamed from: e  reason: collision with root package name */
    private int f14169e;

    public ExponentialBackoffDataHolder(HostRetryInfoProvider hostRetryInfoProvider) {
        this(hostRetryInfoProvider, new h(), new g());
    }

    public void a() {
        this.f14169e = 1;
        this.f14168d = 0L;
        this.f14167c.saveNextSendAttemptNumber(1);
        this.f14167c.saveLastAttemptTimeSeconds(this.f14168d);
    }

    public void b() {
        this.f14166b.getClass();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        this.f14168d = currentTimeMillis;
        this.f14169e++;
        this.f14167c.saveLastAttemptTimeSeconds(currentTimeMillis);
        this.f14167c.saveNextSendAttemptNumber(this.f14169e);
    }

    public boolean c(RetryPolicyConfig retryPolicyConfig) {
        if (retryPolicyConfig != null) {
            long j10 = this.f14168d;
            if (j10 != 0) {
                g gVar = this.f14165a;
                int i10 = retryPolicyConfig.f14206b * ((1 << (this.f14169e - 1)) - 1);
                int i11 = retryPolicyConfig.f14205a;
                if (i10 > i11) {
                    i10 = i11;
                }
                return gVar.a(j10, i10, "last send attempt");
            }
        }
        return true;
    }

    ExponentialBackoffDataHolder(HostRetryInfoProvider hostRetryInfoProvider, h hVar, g gVar) {
        this.f14167c = hostRetryInfoProvider;
        this.f14166b = hVar;
        this.f14165a = gVar;
        this.f14168d = hostRetryInfoProvider.getLastAttemptTimeSeconds();
        this.f14169e = hostRetryInfoProvider.getNextSendAttemptNumber();
    }
}
