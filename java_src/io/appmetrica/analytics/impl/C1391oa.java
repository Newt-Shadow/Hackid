package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;
/* renamed from: io.appmetrica.analytics.impl.oa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1391oa {

    /* renamed from: a  reason: collision with root package name */
    public volatile Boolean f20290a;

    public final void a(Context context) {
        boolean z10;
        boolean z11;
        if (this.f20290a == null) {
            synchronized (this) {
                if (this.f20290a == null) {
                    boolean z12 = false;
                    try {
                        File fileFromAppStorage = FileUtils.getFileFromAppStorage(context, "uuid.dat");
                        if (fileFromAppStorage != null) {
                            z10 = fileFromAppStorage.exists();
                        } else {
                            z10 = false;
                        }
                        File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(context, "uuid.dat");
                        if (fileFromSdkStorage != null) {
                            z11 = fileFromSdkStorage.exists();
                        } else {
                            z11 = false;
                        }
                        if (z10 || z11) {
                            z12 = true;
                        }
                    } catch (Throwable unused) {
                    }
                    this.f20290a = Boolean.valueOf(z12);
                }
                xc.t tVar = xc.t.f32733a;
            }
        }
    }
}
