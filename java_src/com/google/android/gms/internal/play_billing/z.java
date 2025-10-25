package com.google.android.gms.internal.play_billing;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class z extends c0 {

    /* renamed from: a  reason: collision with root package name */
    private final ByteBuffer f7177a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    @Override // com.google.android.gms.internal.play_billing.c0
    public final g0 a(char c10) {
        this.f7177a.putChar(c10);
        try {
            b(this.f7177a.array(), 0, 2);
            return this;
        } finally {
            this.f7177a.clear();
        }
    }

    protected abstract void b(byte[] bArr, int i10, int i11);
}
