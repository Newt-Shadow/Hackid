package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.DeferredDeeplinkListener;
import io.appmetrica.analytics.DeferredDeeplinkParametersListener;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.Map;
/* loaded from: classes2.dex */
public final class V7 {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f19114a;

    /* renamed from: b  reason: collision with root package name */
    public DeferredDeeplinkListener f19115b;

    /* renamed from: c  reason: collision with root package name */
    public DeferredDeeplinkParametersListener f19116c;

    /* renamed from: d  reason: collision with root package name */
    public T7 f19117d;

    public V7(boolean z10) {
        this.f19114a = z10;
    }

    public final void a(int i10) {
        DeferredDeeplinkParametersListener.Error error;
        DeferredDeeplinkListener.Error error2;
        T7 t72 = this.f19117d;
        String str = t72 == null ? null : t72.f18962c;
        DeferredDeeplinkListener deferredDeeplinkListener = this.f19115b;
        if (deferredDeeplinkListener != null) {
            if (i10 != 0) {
                int i11 = i10 - 1;
                if (i11 == 0) {
                    error2 = DeferredDeeplinkListener.Error.NOT_A_FIRST_LAUNCH;
                } else if (i11 == 1) {
                    error2 = DeferredDeeplinkListener.Error.PARSE_ERROR;
                } else if (i11 != 2) {
                    error2 = DeferredDeeplinkListener.Error.UNKNOWN;
                } else {
                    error2 = DeferredDeeplinkListener.Error.NO_REFERRER;
                }
                deferredDeeplinkListener.onError(error2, (String) WrapUtils.getOrDefault(str, ""));
                this.f19115b = null;
            } else {
                throw null;
            }
        }
        DeferredDeeplinkParametersListener deferredDeeplinkParametersListener = this.f19116c;
        if (deferredDeeplinkParametersListener != null) {
            if (i10 != 0) {
                int i12 = i10 - 1;
                if (i12 == 0) {
                    error = DeferredDeeplinkParametersListener.Error.NOT_A_FIRST_LAUNCH;
                } else if (i12 == 1) {
                    error = DeferredDeeplinkParametersListener.Error.PARSE_ERROR;
                } else if (i12 != 2) {
                    error = DeferredDeeplinkParametersListener.Error.UNKNOWN;
                } else {
                    error = DeferredDeeplinkParametersListener.Error.NO_REFERRER;
                }
                deferredDeeplinkParametersListener.onError(error, (String) WrapUtils.getOrDefault(str, ""));
                this.f19116c = null;
                return;
            }
            throw null;
        }
    }

    public final void a() {
        T7 t72 = this.f19117d;
        if (t72 != null) {
            String str = t72.f18961b;
            if (str != null) {
                DeferredDeeplinkListener deferredDeeplinkListener = this.f19115b;
                if (deferredDeeplinkListener != null) {
                    deferredDeeplinkListener.onDeeplinkLoaded(str);
                    this.f19115b = null;
                }
                if (!Rn.a(this.f19117d.f18960a)) {
                    Map<String, String> map = this.f19117d.f18960a;
                    DeferredDeeplinkParametersListener deferredDeeplinkParametersListener = this.f19116c;
                    if (deferredDeeplinkParametersListener != null) {
                        deferredDeeplinkParametersListener.onParametersLoaded(map);
                        this.f19116c = null;
                        return;
                    }
                    return;
                }
                String str2 = this.f19117d.f18962c;
                DeferredDeeplinkParametersListener deferredDeeplinkParametersListener2 = this.f19116c;
                if (deferredDeeplinkParametersListener2 != null) {
                    deferredDeeplinkParametersListener2.onError(DeferredDeeplinkParametersListener.Error.PARSE_ERROR, (String) WrapUtils.getOrDefault(str2, ""));
                    this.f19116c = null;
                }
            } else if (t72.f18962c != null) {
                a(2);
            } else {
                a(3);
            }
        }
    }
}
