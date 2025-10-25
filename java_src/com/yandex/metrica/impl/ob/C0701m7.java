package com.yandex.metrica.impl.ob;

import java.io.File;
import java.io.FilenameFilter;
/* renamed from: com.yandex.metrica.impl.ob.m7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0701m7 implements FilenameFilter {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C0701m7(C0726n7 c0726n7) {
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.endsWith(".dmp");
    }
}
