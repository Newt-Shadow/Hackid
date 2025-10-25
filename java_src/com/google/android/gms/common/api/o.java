package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.BasePendingResult;
/* loaded from: classes.dex */
final class o extends BasePendingResult {

    /* renamed from: n  reason: collision with root package name */
    private final k f5912n;

    public o(f fVar, k kVar) {
        super(fVar);
        this.f5912n = kVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final k c(Status status) {
        return this.f5912n;
    }
}
