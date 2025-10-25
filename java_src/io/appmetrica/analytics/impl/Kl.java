package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Kl extends BaseRequestConfig.BaseRequestArguments {

    /* renamed from: a  reason: collision with root package name */
    public final String f18501a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18502b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f18503c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f18504d;

    /* renamed from: e  reason: collision with root package name */
    public final List<String> f18505e;

    public Kl(Z3 z32) {
        this(z32.a().d(), z32.a().e(), z32.a().a(), z32.a().i(), z32.a().b());
    }

    public final boolean a(Kl kl) {
        return false;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ArgumentsMerger
    /* renamed from: b */
    public final Kl mergeFrom(Kl kl) {
        boolean z10;
        List<String> list;
        String str = (String) WrapUtils.getOrDefaultNullable(this.f18501a, kl.f18501a);
        String str2 = (String) WrapUtils.getOrDefaultNullable(this.f18502b, kl.f18502b);
        Map map = (Map) WrapUtils.getOrDefaultNullable(this.f18503c, kl.f18503c);
        if (!this.f18504d && !kl.f18504d) {
            z10 = false;
        } else {
            z10 = true;
        }
        boolean z11 = z10;
        if (kl.f18504d) {
            list = kl.f18505e;
        } else {
            list = this.f18505e;
        }
        return new Kl(str, str2, map, z11, list);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ArgumentsMerger
    public final boolean compareWithOtherArguments(Object obj) {
        Kl kl = (Kl) obj;
        return false;
    }

    public final String toString() {
        return "Arguments{distributionReferrer='" + this.f18501a + "', installReferrerSource='" + this.f18502b + "', clientClids=" + this.f18503c + ", hasNewCustomHosts=" + this.f18504d + ", newCustomHosts=" + this.f18505e + '}';
    }

    public Kl(String str, String str2, Map<String, String> map, boolean z10, List<String> list) {
        this.f18501a = str;
        this.f18502b = str2;
        this.f18503c = map;
        this.f18504d = z10;
        this.f18505e = list;
    }

    public Kl() {
        this(null, null, null, false, null);
    }
}
