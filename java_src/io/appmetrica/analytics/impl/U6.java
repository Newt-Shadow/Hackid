package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import java.io.File;
@DoNotInline
/* loaded from: classes2.dex */
public final class U6 implements T6 {

    /* renamed from: a  reason: collision with root package name */
    private final Hg f19038a;

    public U6(Hg hg) {
        this.f19038a = hg;
    }

    @Override // io.appmetrica.analytics.impl.T6
    public File a(Context context, String str) {
        return new File(context.getNoBackupFilesDir(), this.f19038a.a(str));
    }
}
