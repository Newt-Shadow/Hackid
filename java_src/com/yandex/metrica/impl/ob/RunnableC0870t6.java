package com.yandex.metrica.impl.ob;

import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.t6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class RunnableC0870t6<Output> implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final File f13611a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0741nm<File, Output> f13612b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0716mm<File> f13613c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0716mm<Output> f13614d;

    public RunnableC0870t6(File file, InterfaceC0741nm<File, Output> interfaceC0741nm, InterfaceC0716mm<File> interfaceC0716mm, InterfaceC0716mm<Output> interfaceC0716mm2) {
        this.f13611a = file;
        this.f13612b = interfaceC0741nm;
        this.f13613c = interfaceC0716mm;
        this.f13614d = interfaceC0716mm2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f13611a.exists()) {
            try {
                Output a10 = this.f13612b.a(this.f13611a);
                if (a10 != null) {
                    this.f13614d.b(a10);
                }
            } catch (Throwable unused) {
            }
            this.f13613c.b(this.f13611a);
        }
    }
}
