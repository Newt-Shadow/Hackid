package io.appmetrica.analytics.impl;

import android.os.Bundle;
import android.os.Handler;
import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.Set;
/* renamed from: io.appmetrica.analytics.impl.hg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1223hg implements InterfaceC1073bg {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f19741a;

    /* renamed from: b  reason: collision with root package name */
    public final C1598wi f19742b;

    /* renamed from: c  reason: collision with root package name */
    public final Te f19743c;

    /* renamed from: d  reason: collision with root package name */
    public final V7 f19744d;

    /* renamed from: e  reason: collision with root package name */
    public final C1422pg f19745e;

    /* renamed from: f  reason: collision with root package name */
    public final Handler f19746f;

    public C1223hg(C1598wi c1598wi, Te te2, Handler handler) {
        this(c1598wi, te2, handler, te2.s());
    }

    public final void a() {
        if (this.f19741a) {
            return;
        }
        C1598wi c1598wi = this.f19742b;
        ResultReceiverC1471rg resultReceiverC1471rg = new ResultReceiverC1471rg(this.f19746f, this);
        c1598wi.getClass();
        Bundle bundle = new Bundle();
        bundle.putParcelable("io.appmetrica.analytics.impl.referrer.common.ReferrerResultReceiver", resultReceiverC1471rg);
        PublicLogger anonymousInstance = PublicLogger.getAnonymousInstance();
        Set set = H9.f18290a;
        EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
        C1136e4 c1136e4 = new C1136e4("", "", 4098, 0, anonymousInstance);
        c1136e4.f19583m = bundle;
        W4 w42 = c1598wi.f20871a;
        c1598wi.a(C1598wi.a(c1136e4, w42), w42, 1, null);
    }

    public C1223hg(C1598wi c1598wi, Te te2, Handler handler, boolean z10) {
        this(c1598wi, te2, handler, z10, new V7(z10), new C1422pg());
    }

    public C1223hg(C1598wi c1598wi, Te te2, Handler handler, boolean z10, V7 v72, C1422pg c1422pg) {
        this.f19742b = c1598wi;
        this.f19743c = te2;
        this.f19741a = z10;
        this.f19744d = v72;
        this.f19745e = c1422pg;
        this.f19746f = handler;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1073bg
    public final void a(C1322lg c1322lg) {
        String str = c1322lg == null ? null : c1322lg.f20033a;
        if (!this.f19741a) {
            synchronized (this) {
                V7 v72 = this.f19744d;
                this.f19745e.getClass();
                v72.f19117d = C1422pg.a(str);
                v72.a();
            }
        }
    }

    public final synchronized void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        V7 v72 = this.f19744d;
        v72.f19116c = deferredDeeplinkParametersListener;
        if (v72.f19114a) {
            v72.a(1);
        } else {
            v72.a();
        }
        this.f19743c.u();
    }

    public final synchronized void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        V7 v72 = this.f19744d;
        v72.f19115b = deferredDeeplinkListener;
        if (v72.f19114a) {
            v72.a(1);
        } else {
            v72.a();
        }
        this.f19743c.u();
    }
}
