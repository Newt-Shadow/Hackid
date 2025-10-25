package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.u6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class RunnableC0894u6 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final File f13680a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0716mm<File> f13681b;

    /* renamed from: c  reason: collision with root package name */
    private final C0910um f13682c;

    public RunnableC0894u6(Context context, File file, InterfaceC0716mm<File> interfaceC0716mm) {
        this(file, interfaceC0716mm, C0910um.a(context));
    }

    @Override // java.lang.Runnable
    public void run() {
        File[] listFiles;
        if (this.f13680a.exists() && this.f13680a.isDirectory() && (listFiles = this.f13680a.listFiles()) != null) {
            for (File file : listFiles) {
                C0862sm a10 = this.f13682c.a(file.getName());
                try {
                    a10.a();
                    this.f13681b.b(file);
                } catch (Throwable unused) {
                }
                a10.c();
            }
        }
    }

    RunnableC0894u6(File file, InterfaceC0716mm<File> interfaceC0716mm, C0910um c0910um) {
        this.f13680a = file;
        this.f13681b = interfaceC0716mm;
        this.f13682c = c0910um;
    }
}
