package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Set;
/* loaded from: classes2.dex */
public final class Sg implements Function {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1580w0 f18936a;

    public Sg(C1580w0 c1580w0) {
        this.f18936a = c1580w0;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Function
    public final Object apply(Object obj) {
        String str = (String) obj;
        C1580w0 c1580w0 = this.f18936a;
        String str2 = c1580w0.f20841c;
        PublicLogger orCreatePublicLogger = LoggerStorage.getOrCreatePublicLogger(c1580w0.f20844f.f20891a);
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        Bundle bundle = new Bundle();
        bundle.putString("payload_crash_id", str2);
        C1136e4 c1136e4 = new C1136e4("", "", 5898, 0, orCreatePublicLogger);
        if (str != null) {
            c1136e4.f(str);
        }
        c1136e4.f19583m = bundle;
        c1136e4.f19573c = this.f18936a.f20844f.f20896f;
        return c1136e4;
    }
}
