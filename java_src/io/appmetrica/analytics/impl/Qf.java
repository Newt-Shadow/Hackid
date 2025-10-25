package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.io.File;
/* loaded from: classes2.dex */
public final class Qf implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final File f18820a;

    /* renamed from: b  reason: collision with root package name */
    public final Consumer f18821b;

    /* renamed from: c  reason: collision with root package name */
    public final C1316la f18822c;

    public Qf(File file, E1 e12, C1316la c1316la) {
        this.f18820a = file;
        this.f18821b = e12;
        this.f18822c = c1316la;
    }

    @Override // java.lang.Runnable
    public final void run() {
        File[] listFiles;
        if (this.f18820a.exists() && this.f18820a.isDirectory() && (listFiles = this.f18820a.listFiles()) != null) {
            for (File file : listFiles) {
                I9 a10 = this.f18822c.a(file.getName());
                try {
                    a10.f18380a.lock();
                    a10.f18381b.a();
                    this.f18821b.consume(file);
                    a10.c();
                } catch (Throwable unused) {
                    a10.c();
                }
            }
        }
    }
}
