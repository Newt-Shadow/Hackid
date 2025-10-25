package com.yandex.metrica.impl.ob;

import android.os.FileObserver;
import android.text.TextUtils;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.l6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class FileObserverC0675l6 extends FileObserver {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC0716mm<File> f12777a;

    /* renamed from: b  reason: collision with root package name */
    private final File f12778b;

    /* renamed from: c  reason: collision with root package name */
    private final B0 f12779c;

    public FileObserverC0675l6(File file, InterfaceC0716mm<File> interfaceC0716mm) {
        this(file, interfaceC0716mm, new B0());
    }

    @Override // android.os.FileObserver
    public void onEvent(int i10, String str) {
        if (i10 == 8 && !TextUtils.isEmpty(str)) {
            InterfaceC0716mm<File> interfaceC0716mm = this.f12777a;
            B0 b02 = this.f12779c;
            File file = this.f12778b;
            b02.getClass();
            interfaceC0716mm.b(new File(file, str));
        }
    }

    FileObserverC0675l6(File file, InterfaceC0716mm<File> interfaceC0716mm, B0 b02) {
        super(file.getAbsolutePath(), 8);
        this.f12777a = interfaceC0716mm;
        this.f12778b = file;
        this.f12779c = b02;
    }
}
