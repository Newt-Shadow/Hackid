package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Locale;
/* loaded from: classes.dex */
public final class oa extends IOException {
    /* JADX INFO: Access modifiers changed from: package-private */
    public oa(long j10, long j11, int i10, Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(String.valueOf(String.format(Locale.US, "Pos: %d, limit: %d, len: %d", Long.valueOf(j10), Long.valueOf(j11), Integer.valueOf(i10)))), th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public oa(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
