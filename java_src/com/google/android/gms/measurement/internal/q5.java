package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class q5 {

    /* renamed from: a  reason: collision with root package name */
    public final String f7919a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7920b;

    /* renamed from: c  reason: collision with root package name */
    public final long f7921c;

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f7922d;

    public q5(String str, String str2, Bundle bundle, long j10) {
        this.f7919a = str;
        this.f7920b = str2;
        this.f7922d = bundle;
        this.f7921c = j10;
    }

    public static q5 a(g0 g0Var) {
        return new q5(g0Var.f7551a, g0Var.f7553c, g0Var.f7552b.o(), g0Var.f7554d);
    }

    public final g0 b() {
        return new g0(this.f7919a, new e0(new Bundle(this.f7922d)), this.f7920b, this.f7921c);
    }

    public final String toString() {
        String str = this.f7920b;
        String obj = this.f7922d.toString();
        int length = String.valueOf(str).length();
        String str2 = this.f7919a;
        StringBuilder sb2 = new StringBuilder(length + 13 + String.valueOf(str2).length() + 8 + obj.length());
        sb2.append("origin=");
        sb2.append(str);
        sb2.append(",name=");
        sb2.append(str2);
        sb2.append(",params=");
        sb2.append(obj);
        return sb2.toString();
    }
}
