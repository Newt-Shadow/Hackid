package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.BuildConfig;
import io.appmetrica.analytics.coreutils.internal.executors.BlockingExecutor;
import io.appmetrica.analytics.coreutils.internal.network.UserAgent;
import io.appmetrica.analytics.networktasks.internal.AESRSARequestBodyEncrypter;
import io.appmetrica.analytics.networktasks.internal.AllHostsExponentialBackoffPolicy;
import io.appmetrica.analytics.networktasks.internal.DefaultResponseValidityChecker;
import io.appmetrica.analytics.networktasks.internal.ExponentialBackoffDataHolder;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import java.util.LinkedHashMap;
import java.util.List;
/* loaded from: classes2.dex */
public final class Ud {

    /* renamed from: a  reason: collision with root package name */
    public static final Ud f19043a = new Ud();

    /* renamed from: b  reason: collision with root package name */
    public static final LinkedHashMap f19044b = new LinkedHashMap();

    /* renamed from: c  reason: collision with root package name */
    public static final String f19045c = UserAgent.getFor(BuildConfig.LIBRARY_PACKAGE_NAME, "7.8.0", "50130522");

    public final synchronized ExponentialBackoffDataHolder a(Sd sd2) {
        Object obj;
        LinkedHashMap linkedHashMap = f19044b;
        obj = linkedHashMap.get(sd2);
        if (obj == null) {
            obj = new ExponentialBackoffDataHolder(new Ia(C1665za.E.x(), sd2), sd2.name());
            linkedHashMap.put(sd2, obj);
        }
        return (ExponentialBackoffDataHolder) obj;
    }

    public static final NetworkTask a(C1386o5 c1386o5) {
        List b10;
        AESRSARequestBodyEncrypter aESRSARequestBodyEncrypter = new AESRSARequestBodyEncrypter();
        C1049ah c1049ah = new C1049ah(aESRSARequestBodyEncrypter);
        Jb jb2 = new Jb(c1386o5);
        BlockingExecutor blockingExecutor = new BlockingExecutor();
        J9 j92 = new J9(c1386o5.f20253a);
        AllHostsExponentialBackoffPolicy allHostsExponentialBackoffPolicy = new AllHostsExponentialBackoffPolicy(f19043a.a(Sd.REPORT));
        C1572vh c1572vh = new C1572vh(c1386o5, c1049ah, jb2, new FullUrlFormer(c1049ah, jb2), new RequestDataHolder(), new ResponseDataHolder(new DefaultResponseValidityChecker()), c1386o5.h(), c1386o5.o(), c1386o5.t(), aESRSARequestBodyEncrypter);
        b10 = yc.n.b(new Qn());
        return new NetworkTask(blockingExecutor, j92, allHostsExponentialBackoffPolicy, c1572vh, b10, f19045c);
    }
}
