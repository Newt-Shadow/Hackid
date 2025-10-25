package com.google.android.gms.internal.play_billing;

import java.io.IOException;
/* loaded from: classes.dex */
public final class k1 extends IOException {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k1(String str, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.valueOf(str)), th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k1(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
