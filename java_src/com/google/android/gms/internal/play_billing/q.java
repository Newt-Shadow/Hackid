package com.google.android.gms.internal.play_billing;

import com.arthenica.ffmpegkit.StreamInformation;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class q extends j {

    /* renamed from: f  reason: collision with root package name */
    static final j f7091f = new q(new Object[0], 0);

    /* renamed from: d  reason: collision with root package name */
    final transient Object[] f7092d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f7093e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Object[] objArr, int i10) {
        this.f7092d = objArr;
        this.f7093e = i10;
    }

    @Override // com.google.android.gms.internal.play_billing.j, com.google.android.gms.internal.play_billing.g
    final int d(Object[] objArr, int i10) {
        System.arraycopy(this.f7092d, 0, objArr, 0, this.f7093e);
        return this.f7093e;
    }

    @Override // com.google.android.gms.internal.play_billing.g
    final int g() {
        return this.f7093e;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        b.a(i10, this.f7093e, StreamInformation.KEY_INDEX);
        Object obj = this.f7092d[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.g
    public final int i() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.g
    public final boolean m() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.g
    public final Object[] n() {
        return this.f7092d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7093e;
    }
}
