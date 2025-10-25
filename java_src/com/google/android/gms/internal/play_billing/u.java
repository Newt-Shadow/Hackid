package com.google.android.gms.internal.play_billing;

import com.arthenica.ffmpegkit.StreamInformation;
import java.util.Objects;
/* loaded from: classes.dex */
final class u extends j {

    /* renamed from: d  reason: collision with root package name */
    private final transient Object[] f7117d;

    /* renamed from: e  reason: collision with root package name */
    private final transient int f7118e;

    /* renamed from: f  reason: collision with root package name */
    private final transient int f7119f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(Object[] objArr, int i10, int i11) {
        this.f7117d = objArr;
        this.f7118e = i10;
        this.f7119f = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        b.a(i10, this.f7119f, StreamInformation.KEY_INDEX);
        Object obj = this.f7117d[i10 + i10 + this.f7118e];
        Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.g
    public final boolean m() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7119f;
    }
}
