package com.google.android.gms.measurement.internal;

import java.util.Map;
/* loaded from: classes.dex */
final class s5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final r5 f7994a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7995b;

    /* renamed from: c  reason: collision with root package name */
    private final Throwable f7996c;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f7997d;

    /* renamed from: e  reason: collision with root package name */
    private final String f7998e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f7999f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ s5(String str, r5 r5Var, int i10, Throwable th, byte[] bArr, Map map, byte[] bArr2) {
        n5.q.k(r5Var);
        this.f7994a = r5Var;
        this.f7995b = i10;
        this.f7996c = th;
        this.f7997d = bArr;
        this.f7998e = str;
        this.f7999f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7994a.a(this.f7998e, this.f7995b, this.f7996c, this.f7997d, this.f7999f);
    }
}
