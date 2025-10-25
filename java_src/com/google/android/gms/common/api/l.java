package com.google.android.gms.common.api;
/* loaded from: classes.dex */
public final class l extends UnsupportedOperationException {

    /* renamed from: a  reason: collision with root package name */
    private final l5.d f5911a;

    public l(l5.d dVar) {
        this.f5911a = dVar;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Missing ".concat(String.valueOf(this.f5911a));
    }
}
