package io.appmetrica.analytics.networktasks.internal;
/* loaded from: classes2.dex */
public final class DefaultResponseValidityChecker implements ResponseValidityChecker {
    @Override // io.appmetrica.analytics.networktasks.internal.ResponseValidityChecker
    public boolean isResponseValid(int i10) {
        return (i10 == 400 || i10 == 500) ? false : true;
    }
}
