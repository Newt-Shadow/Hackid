package com.yandex.metrica.impl.ob;

import android.os.FileObserver;
import java.io.File;
/* loaded from: classes2.dex */
public class Y6 {

    /* renamed from: a  reason: collision with root package name */
    private final FileObserver f11830a;

    /* renamed from: b  reason: collision with root package name */
    private final File f11831b;

    /* renamed from: c  reason: collision with root package name */
    private final C0700m6 f11832c;

    public Y6(File file, InterfaceC0716mm<File> interfaceC0716mm) {
        this(new FileObserverC0675l6(file, interfaceC0716mm), file, new C0700m6());
    }

    public void a() {
        this.f11832c.a(this.f11831b);
        this.f11830a.startWatching();
    }

    Y6(FileObserver fileObserver, File file, C0700m6 c0700m6) {
        this.f11830a = fileObserver;
        this.f11831b = file;
        this.f11832c = c0700m6;
    }
}
