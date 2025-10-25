package com.google.android.gms.internal.play_billing;

import java.security.MessageDigest;
import java.util.Arrays;
/* loaded from: classes.dex */
final class k0 extends z {

    /* renamed from: b  reason: collision with root package name */
    private final MessageDigest f7035b;

    /* renamed from: c  reason: collision with root package name */
    private final int f7036c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f7037d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ k0(MessageDigest messageDigest, int i10, j0 j0Var) {
        this.f7035b = messageDigest;
        this.f7036c = i10;
    }

    private final void c() {
        if (!this.f7037d) {
            return;
        }
        throw new IllegalStateException("Cannot re-use a Hasher after calling hash() on it");
    }

    @Override // com.google.android.gms.internal.play_billing.z
    protected final void b(byte[] bArr, int i10, int i11) {
        c();
        this.f7035b.update(bArr, 0, 2);
    }

    @Override // com.google.android.gms.internal.play_billing.g0
    public final e0 f() {
        c();
        this.f7037d = true;
        int i10 = this.f7036c;
        if (i10 == this.f7035b.getDigestLength()) {
            byte[] digest = this.f7035b.digest();
            int i11 = e0.f6972b;
            return new d0(digest);
        }
        byte[] copyOf = Arrays.copyOf(this.f7035b.digest(), i10);
        int i12 = e0.f6972b;
        return new d0(copyOf);
    }
}
