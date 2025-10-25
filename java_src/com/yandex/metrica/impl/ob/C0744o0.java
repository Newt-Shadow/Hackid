package com.yandex.metrica.impl.ob;

import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.o0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0744o0 {

    /* renamed from: a  reason: collision with root package name */
    private boolean f13027a;

    /* renamed from: b  reason: collision with root package name */
    private DeferredDeeplinkListener f13028b;

    /* renamed from: c  reason: collision with root package name */
    private DeferredDeeplinkParametersListener f13029c;

    /* renamed from: d  reason: collision with root package name */
    private C0719n0 f13030d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.o0$a */
    /* loaded from: classes2.dex */
    public enum a {
        NOT_A_FIRST_LAUNCH,
        PARSE_ERROR,
        NO_REFERRER
    }

    public C0744o0(boolean z10) {
        this.f13027a = z10;
    }

    public void a(C0719n0 c0719n0) {
        this.f13030d = c0719n0;
        a();
    }

    private void a(a aVar) {
        DeferredDeeplinkListener.Error error;
        C0719n0 c0719n0 = this.f13030d;
        String str = c0719n0 == null ? null : c0719n0.f12965c;
        DeferredDeeplinkListener deferredDeeplinkListener = this.f13028b;
        if (deferredDeeplinkListener != null) {
            int ordinal = aVar.ordinal();
            if (ordinal == 0) {
                error = DeferredDeeplinkListener.Error.NOT_A_FIRST_LAUNCH;
            } else if (ordinal == 1) {
                error = DeferredDeeplinkListener.Error.PARSE_ERROR;
            } else if (ordinal != 2) {
                error = DeferredDeeplinkListener.Error.UNKNOWN;
            } else {
                error = DeferredDeeplinkListener.Error.NO_REFERRER;
            }
            deferredDeeplinkListener.onError(error, str == null ? "" : str);
            this.f13028b = null;
        }
        a(aVar, str);
    }

    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        this.f13029c = deferredDeeplinkParametersListener;
        if (this.f13027a) {
            a(a.NOT_A_FIRST_LAUNCH);
        } else {
            a();
        }
    }

    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        this.f13028b = deferredDeeplinkListener;
        if (this.f13027a) {
            a(a.NOT_A_FIRST_LAUNCH);
        } else {
            a();
        }
    }

    private void a() {
        C0719n0 c0719n0 = this.f13030d;
        if (c0719n0 != null) {
            String str = c0719n0.f12964b;
            if (str != null) {
                DeferredDeeplinkListener deferredDeeplinkListener = this.f13028b;
                if (deferredDeeplinkListener != null) {
                    deferredDeeplinkListener.onDeeplinkLoaded(str);
                    this.f13028b = null;
                }
                if (!A2.b(this.f13030d.f12963a)) {
                    Map<String, String> map = this.f13030d.f12963a;
                    DeferredDeeplinkParametersListener deferredDeeplinkParametersListener = this.f13029c;
                    if (deferredDeeplinkParametersListener != null) {
                        deferredDeeplinkParametersListener.onParametersLoaded(map);
                        this.f13029c = null;
                        return;
                    }
                    return;
                }
                a(a.PARSE_ERROR, this.f13030d.f12965c);
            } else if (c0719n0.f12965c != null) {
                a(a.PARSE_ERROR);
            } else {
                a(a.NO_REFERRER);
            }
        }
    }

    private void a(a aVar, String str) {
        DeferredDeeplinkParametersListener.Error error;
        DeferredDeeplinkParametersListener deferredDeeplinkParametersListener = this.f13029c;
        if (deferredDeeplinkParametersListener != null) {
            int ordinal = aVar.ordinal();
            if (ordinal == 0) {
                error = DeferredDeeplinkParametersListener.Error.NOT_A_FIRST_LAUNCH;
            } else if (ordinal == 1) {
                error = DeferredDeeplinkParametersListener.Error.PARSE_ERROR;
            } else if (ordinal != 2) {
                error = DeferredDeeplinkParametersListener.Error.UNKNOWN;
            } else {
                error = DeferredDeeplinkParametersListener.Error.NO_REFERRER;
            }
            if (str == null) {
                str = "";
            }
            deferredDeeplinkParametersListener.onError(error, str);
            this.f13029c = null;
        }
    }
}
