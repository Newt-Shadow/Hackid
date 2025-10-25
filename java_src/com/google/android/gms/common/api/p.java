package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
/* loaded from: classes.dex */
final class p extends BasePendingResult {
    public p(f fVar) {
        super(fVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final k c(Status status) {
        throw new UnsupportedOperationException("Creating failed results is not supported");
    }
}
