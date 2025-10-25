package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;
/* renamed from: io.appmetrica.analytics.impl.na  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1366na implements ho {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20170a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20171b;

    public C1366na(Context context, String str) {
        this.f20170a = context;
        this.f20171b = str;
    }

    @Override // io.appmetrica.analytics.impl.ho
    public final String a() {
        String g10;
        try {
            File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.f20170a, this.f20171b);
            if (fileFromSdkStorage != null) {
                fileFromSdkStorage.exists();
                File fileFromAppStorage = FileUtils.getFileFromAppStorage(this.f20170a, this.f20171b);
                if (fileFromAppStorage != null) {
                    FileUtils.copyToNullable(fileFromAppStorage, fileFromSdkStorage);
                }
                g10 = gd.i.g(fileFromSdkStorage, null, 1, null);
                return g10;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // io.appmetrica.analytics.impl.ho
    public final void a(String str) {
        try {
            File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.f20170a, this.f20171b);
            if (fileFromSdkStorage != null) {
                gd.i.i(fileFromSdkStorage, str, null, 2, null);
            }
        } catch (Throwable unused) {
        }
    }
}
