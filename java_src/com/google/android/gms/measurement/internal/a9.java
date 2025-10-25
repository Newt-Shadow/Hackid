package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a9 implements xd {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w9 f7230a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a9(w9 w9Var) {
        Objects.requireNonNull(w9Var);
        this.f7230a = w9Var;
    }

    @Override // com.google.android.gms.measurement.internal.xd
    public final void c(String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.f7230a.w("auto", "_err", bundle, str);
        } else {
            this.f7230a.p("auto", "_err", bundle);
        }
    }
}
