package com.google.android.gms.internal.play_billing;

import com.arthenica.ffmpegkit.StreamInformation;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i extends j {

    /* renamed from: d  reason: collision with root package name */
    final transient int f6995d;

    /* renamed from: e  reason: collision with root package name */
    final transient int f6996e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ j f6997f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(j jVar, int i10, int i11) {
        this.f6997f = jVar;
        this.f6995d = i10;
        this.f6996e = i11;
    }

    @Override // com.google.android.gms.internal.play_billing.g
    final int g() {
        return this.f6997f.i() + this.f6995d + this.f6996e;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        b.a(i10, this.f6996e, StreamInformation.KEY_INDEX);
        return this.f6997f.get(i10 + this.f6995d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.g
    public final int i() {
        return this.f6997f.i() + this.f6995d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.g
    public final boolean m() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.g
    public final Object[] n() {
        return this.f6997f.n();
    }

    @Override // com.google.android.gms.internal.play_billing.j
    public final j o(int i10, int i11) {
        b.d(i10, i11, this.f6996e);
        int i12 = this.f6995d;
        return this.f6997f.subList(i10 + i12, i11 + i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6996e;
    }

    @Override // com.google.android.gms.internal.play_billing.j, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
