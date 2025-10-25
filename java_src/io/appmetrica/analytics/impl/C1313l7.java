package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.l7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1313l7 {

    /* renamed from: a  reason: collision with root package name */
    public final T6 f20011a;

    /* renamed from: b  reason: collision with root package name */
    public final List f20012b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f20013c;

    public C1313l7(T6 t62, ArrayList arrayList, boolean z10) {
        this.f20011a = t62;
        this.f20012b = arrayList;
        this.f20013c = z10;
    }

    public final String a(Context context, InterfaceC1239i7 interfaceC1239i7) {
        File parentFile;
        try {
            File a10 = this.f20011a.a(context, interfaceC1239i7.b());
            if (!a10.exists() && (parentFile = a10.getParentFile()) != null && (parentFile.exists() || parentFile.mkdirs())) {
                a(context, interfaceC1239i7.a(), a10);
            }
            return a10.getPath();
        } catch (Throwable unused) {
            return interfaceC1239i7.b();
        }
    }

    public final void a(Context context, String str, File file) {
        List<String> k10;
        List<T6> list = this.f20012b;
        if ((list instanceof Collection) && list.isEmpty()) {
            return;
        }
        for (T6 t62 : list) {
            File a10 = t62.a(context, str);
            if (a10.exists()) {
                try {
                    if (this.f20013c) {
                        FileUtils.copyToNullable(a10, file);
                    } else {
                        FileUtils.move(a10, file);
                    }
                    String path = a10.getPath();
                    String path2 = file.getPath();
                    k10 = yc.o.k("-journal", "-shm", "-wal");
                    for (String str2 : k10) {
                        File file2 = new File(path + str2);
                        File file3 = new File(path2 + str2);
                        if (this.f20013c) {
                            FileUtils.copyToNullable(file2, file3);
                        } else {
                            FileUtils.move(file2, file3);
                        }
                    }
                    return;
                } catch (Throwable unused) {
                    continue;
                }
            }
        }
    }
}
