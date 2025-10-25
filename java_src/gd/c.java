package gd;

import java.io.File;
/* loaded from: classes2.dex */
public abstract class c {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String b(File file, File file2, String str) {
        StringBuilder sb2 = new StringBuilder(file.toString());
        if (file2 != null) {
            sb2.append(" -> " + file2);
        }
        if (str != null) {
            sb2.append(": " + str);
        }
        String sb3 = sb2.toString();
        kotlin.jvm.internal.m.d(sb3, "toString(...)");
        return sb3;
    }
}
