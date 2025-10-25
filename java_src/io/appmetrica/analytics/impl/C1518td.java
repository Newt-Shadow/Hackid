package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
/* renamed from: io.appmetrica.analytics.impl.td  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1518td extends SafeRunnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1543ud f20672a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f20673b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ byte[] f20674c;

    public C1518td(C1543ud c1543ud, String str, byte[] bArr) {
        this.f20672a = c1543ud;
        this.f20673b = str;
        this.f20674c = bArr;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C1543ud.a(this.f20672a).setSessionExtra(this.f20673b, this.f20674c);
    }
}
