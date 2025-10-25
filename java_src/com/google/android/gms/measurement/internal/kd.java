package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class kd implements xd {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ pd f7700a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kd(pd pdVar) {
        Objects.requireNonNull(pdVar);
        this.f7700a = pdVar;
    }

    @Override // com.google.android.gms.measurement.internal.xd
    public final void c(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            pd pdVar = this.f7700a;
            if (pdVar.x0() != null) {
                pdVar.x0().a().o().b("AppId not known when logging event", str2);
                return;
            }
            return;
        }
        this.f7700a.b().t(new jd(this, str, str2, bundle));
    }
}
