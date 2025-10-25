package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
/* renamed from: io.appmetrica.analytics.impl.c6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1088c6 extends BaseRequestConfig {

    /* renamed from: a  reason: collision with root package name */
    public String f19469a;

    /* renamed from: b  reason: collision with root package name */
    public String f19470b;

    /* renamed from: c  reason: collision with root package name */
    public Ql f19471c;

    public final String b() {
        return this.f19470b;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.BaseRequestConfig
    public String toString() {
        return "CoreRequestConfig{mAppDebuggable='" + this.f19469a + "', mAppSystem='" + this.f19470b + "', startupState=" + this.f19471c + '}';
    }

    public final String a() {
        return this.f19469a;
    }
}
