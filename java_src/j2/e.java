package j2;

import android.os.Build;
import j2.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e implements c.b {
    @Override // j2.c.b
    public String a(String str) {
        if (str.startsWith("lib") && str.endsWith(".so")) {
            return str;
        }
        return System.mapLibraryName(str);
    }

    @Override // j2.c.b
    public void b(String str) {
        System.loadLibrary(str);
    }

    @Override // j2.c.b
    public String c(String str) {
        return str.substring(3, str.length() - 3);
    }

    @Override // j2.c.b
    public String[] d() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr.length > 0) {
            return strArr;
        }
        String str = Build.CPU_ABI2;
        if (!f.a(str)) {
            return new String[]{Build.CPU_ABI, str};
        }
        return new String[]{Build.CPU_ABI};
    }

    @Override // j2.c.b
    public void e(String str) {
        System.load(str);
    }
}
