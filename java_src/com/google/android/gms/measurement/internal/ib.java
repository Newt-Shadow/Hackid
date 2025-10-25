package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import java.util.Objects;
/* loaded from: classes.dex */
final class ib implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ComponentName f7642a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ pb f7643b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ib(pb pbVar, ComponentName componentName) {
        this.f7642a = componentName;
        Objects.requireNonNull(pbVar);
        this.f7643b = pbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7643b.f7879c.K(this.f7642a);
    }
}
