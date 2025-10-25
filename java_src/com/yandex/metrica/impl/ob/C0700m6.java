package com.yandex.metrica.impl.ob;

import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.m6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0700m6 {
    public boolean a(File file) {
        if (file == null) {
            return false;
        }
        if (file.exists()) {
            if (file.isDirectory()) {
                return true;
            }
            if (!file.delete()) {
                return false;
            }
            return file.mkdir();
        }
        return file.mkdir();
    }
}
