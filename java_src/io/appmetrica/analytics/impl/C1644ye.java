package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Locale;
import java.util.UUID;
/* renamed from: io.appmetrica.analytics.impl.ye  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1644ye {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20983a;

    /* renamed from: b  reason: collision with root package name */
    public final Un f20984b;

    /* renamed from: c  reason: collision with root package name */
    public final Vn f20985c;

    public C1644ye(Context context) {
        this(context, new Un(), new Vn());
    }

    public final String a(String str) {
        String D;
        try {
            this.f20985c.getClass();
            if (!Vn.a(str)) {
                this.f20984b.getClass();
                D = rd.y.D(UUID.randomUUID().toString(), "-", "", false, 4, null);
                str = D.toLowerCase(Locale.US);
            }
            File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.f20983a, "uuid.dat");
            if (fileFromSdkStorage != null && str != null) {
                Va.a(str, new FileOutputStream(fileFromSdkStorage));
            }
            return str;
        } catch (Throwable unused) {
            return null;
        }
    }

    public C1644ye(Context context, Un un, Vn vn) {
        this.f20983a = context;
        this.f20984b = un;
        this.f20985c = vn;
    }

    public final void a() {
        File fileFromAppStorage;
        File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.f20983a, "uuid.dat");
        if (fileFromSdkStorage == null || fileFromSdkStorage.exists() || (fileFromAppStorage = FileUtils.getFileFromAppStorage(this.f20983a, "uuid.dat")) == null || !fileFromAppStorage.exists()) {
            return;
        }
        FileUtils.copyToNullable(fileFromAppStorage, fileFromSdkStorage);
    }
}
