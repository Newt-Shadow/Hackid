package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdTrackingInfoResult;
import io.appmetrica.analytics.coreapi.internal.identifiers.AdvertisingIdsHolder;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* loaded from: classes2.dex */
public final class O implements Ma {

    /* renamed from: a  reason: collision with root package name */
    public final Context f18665a;

    /* renamed from: b  reason: collision with root package name */
    public final ICommonExecutor f18666b;

    /* renamed from: i  reason: collision with root package name */
    public FutureTask f18673i;

    /* renamed from: j  reason: collision with root package name */
    public final E f18674j;

    /* renamed from: c  reason: collision with root package name */
    public final String f18667c = "advertising identifiers collecting is forbidden by client configuration";

    /* renamed from: d  reason: collision with root package name */
    public final String f18668d = "advertising identifiers collecting is forbidden by startup";

    /* renamed from: e  reason: collision with root package name */
    public final String f18669e = "advertising identifiers collecting is forbidden by unknown reason";

    /* renamed from: f  reason: collision with root package name */
    public final I f18670f = new I(new C1621xg("google"));

    /* renamed from: g  reason: collision with root package name */
    public final I f18671g = new I(new C1621xg("huawei"));

    /* renamed from: h  reason: collision with root package name */
    public final I f18672h = new I(new C1621xg("yandex"));

    /* renamed from: k  reason: collision with root package name */
    public volatile AdvertisingIdsHolder f18675k = new AdvertisingIdsHolder();

    /* renamed from: l  reason: collision with root package name */
    public B f18676l = new B(4, 4, 4);

    public O(Context context, ICommonExecutor iCommonExecutor, Ql ql) {
        this.f18665a = context;
        this.f18666b = iCommonExecutor;
        this.f18674j = new E(ql);
    }

    public static final Void e(O o10) {
        o10.f18675k = new AdvertisingIdsHolder(o10.a(o10.f18676l.f17965a, new L(o10)), o10.a(o10.f18676l.f17966b, new M(o10)), o10.a(o10.f18676l.f17967c, new N(o10, new Wd())));
        return null;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.identifiers.SimpleAdvertisingIdGetter
    public final synchronized AdvertisingIdsHolder getIdentifiers(Context context) {
        return getIdentifiers();
    }

    @Override // io.appmetrica.analytics.impl.Ma
    public final synchronized void init() {
        if (this.f18673i == null) {
            this.f18676l = this.f18674j.a();
            FutureTask futureTask = new FutureTask(new Callable() { // from class: io.appmetrica.analytics.impl.dp
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return O.e(O.this);
                }
            });
            this.f18673i = futureTask;
            this.f18666b.execute(futureTask);
        }
    }

    @Override // io.appmetrica.analytics.impl.Ma, io.appmetrica.analytics.impl.Vl
    public final synchronized void a(Ql ql) {
        this.f18674j.a(ql);
        a((Fi) new Wd(), false);
    }

    @Override // io.appmetrica.analytics.impl.Ma
    public final synchronized void b(boolean z10) {
        this.f18674j.f18119b.update(z10);
        a((Fi) new Wd(), false);
    }

    @Override // io.appmetrica.analytics.impl.Ma
    public final synchronized AdvertisingIdsHolder getIdentifiers() {
        FutureTask futureTask = this.f18673i;
        if (futureTask == null) {
            kotlin.jvm.internal.m.s("refresh");
            futureTask = null;
        }
        try {
            futureTask.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
        return this.f18675k;
    }

    @Override // io.appmetrica.analytics.impl.Ma
    public final synchronized AdvertisingIdsHolder a() {
        return a(new Wd());
    }

    @Override // io.appmetrica.analytics.impl.Ma
    public final synchronized AdvertisingIdsHolder a(Fi fi) {
        try {
            a(fi, true).get();
        } catch (InterruptedException | ExecutionException unused) {
        }
        return this.f18675k;
    }

    public final FutureTask a(final Fi fi, final boolean z10) {
        final B a10 = this.f18674j.a();
        FutureTask futureTask = new FutureTask(new Callable() { // from class: io.appmetrica.analytics.impl.ep
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return O.a(z10, a10, this, fi);
            }
        });
        this.f18673i = futureTask;
        this.f18666b.execute(futureTask);
        FutureTask futureTask2 = this.f18673i;
        if (futureTask2 == null) {
            kotlin.jvm.internal.m.s("refresh");
            return null;
        }
        return futureTask2;
    }

    public static final Void a(boolean z10, B b10, O o10, Fi fi) {
        if (z10 || !kotlin.jvm.internal.m.a(b10, o10.f18676l)) {
            AdvertisingIdsHolder advertisingIdsHolder = o10.f18675k;
            AdTrackingInfoResult a10 = o10.a(b10.f17965a, new L(o10));
            AdTrackingInfoResult google = advertisingIdsHolder.getGoogle();
            IdentifierStatus identifierStatus = a10.mStatus;
            IdentifierStatus identifierStatus2 = IdentifierStatus.UNKNOWN;
            if (identifierStatus == identifierStatus2) {
                a10 = new AdTrackingInfoResult(google.mAdTrackingInfo, identifierStatus, a10.mErrorExplanation);
            }
            AdTrackingInfoResult a11 = o10.a(b10.f17966b, new M(o10));
            AdTrackingInfoResult huawei = advertisingIdsHolder.getHuawei();
            IdentifierStatus identifierStatus3 = a11.mStatus;
            if (identifierStatus3 == identifierStatus2) {
                a11 = new AdTrackingInfoResult(huawei.mAdTrackingInfo, identifierStatus3, a11.mErrorExplanation);
            }
            AdTrackingInfoResult a12 = o10.a(b10.f17967c, new N(o10, fi));
            AdTrackingInfoResult yandex = advertisingIdsHolder.getYandex();
            IdentifierStatus identifierStatus4 = a12.mStatus;
            if (identifierStatus4 == identifierStatus2) {
                a12 = new AdTrackingInfoResult(yandex.mAdTrackingInfo, identifierStatus4, a12.mErrorExplanation);
            }
            o10.f18675k = new AdvertisingIdsHolder(a10, a11, a12);
            return null;
        }
        return null;
    }

    public final AdTrackingInfoResult a(int i10, id.a aVar) {
        if (i10 != 0) {
            int i11 = i10 - 1;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 == 3) {
                            return new AdTrackingInfoResult(null, IdentifierStatus.UNKNOWN, this.f18669e);
                        }
                        throw new xc.i();
                    }
                    return new AdTrackingInfoResult(null, IdentifierStatus.FEATURE_DISABLED, this.f18668d);
                }
                return new AdTrackingInfoResult(null, IdentifierStatus.FORBIDDEN_BY_CLIENT_CONFIG, this.f18667c);
            }
            return (AdTrackingInfoResult) aVar.invoke();
        }
        throw null;
    }
}
