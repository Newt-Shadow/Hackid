package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.ub  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0899ub {

    /* renamed from: a  reason: collision with root package name */
    public final C0875tb f13685a;

    /* renamed from: b  reason: collision with root package name */
    public final U0 f13686b;

    /* renamed from: c  reason: collision with root package name */
    public final String f13687c;

    public C0899ub() {
        this(null, U0.UNKNOWN, "identifier info has never been updated");
    }

    public boolean a() {
        C0875tb c0875tb = this.f13685a;
        if (c0875tb != null && !TextUtils.isEmpty(c0875tb.f13629b)) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "AdTrackingInfoResult{mAdTrackingInfo=" + this.f13685a + ", mStatus=" + this.f13686b + ", mErrorExplanation='" + this.f13687c + "'}";
    }

    public C0899ub(C0875tb c0875tb, U0 u02, String str) {
        this.f13685a = c0875tb;
        this.f13686b = u02;
        this.f13687c = str;
    }
}
