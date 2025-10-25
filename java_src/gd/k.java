package gd;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import rd.b0;
import yc.w;
/* loaded from: classes2.dex */
public abstract class k extends j {
    public static File k(File file, File target, boolean z10, int i10) {
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(target, "target");
        if (file.exists()) {
            if (target.exists()) {
                if (z10) {
                    if (!target.delete()) {
                        throw new d(file, target, "Tried to overwrite the destination, but failed to delete it.");
                    }
                } else {
                    throw new d(file, target, "The destination file already exists.");
                }
            }
            if (file.isDirectory()) {
                if (!target.mkdirs()) {
                    throw new f(file, target, "Failed to create target directory.");
                }
            } else {
                File parentFile = target.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(target);
                    a.a(fileInputStream, fileOutputStream, i10);
                    b.a(fileOutputStream, null);
                    b.a(fileInputStream, null);
                } finally {
                }
            }
            return target;
        }
        throw new m(file, null, "The source file doesn't exist.", 2, null);
    }

    public static /* synthetic */ File l(File file, File file2, boolean z10, int i10, int i11, Object obj) {
        File k10;
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 8192;
        }
        k10 = k(file, file2, z10, i10);
        return k10;
    }

    public static String m(File file) {
        String H0;
        kotlin.jvm.internal.m.e(file, "<this>");
        String name = file.getName();
        kotlin.jvm.internal.m.d(name, "getName(...)");
        H0 = b0.H0(name, '.', "");
        return H0;
    }

    public static String n(File file) {
        String O0;
        kotlin.jvm.internal.m.e(file, "<this>");
        String name = file.getName();
        kotlin.jvm.internal.m.d(name, "getName(...)");
        O0 = b0.O0(name, ".", null, 2, null);
        return O0;
    }

    private static final e o(e eVar) {
        return new e(eVar.a(), p(eVar.b()));
    }

    private static final List p(List list) {
        Object Z;
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            String name = file.getName();
            if (!kotlin.jvm.internal.m.a(name, ".")) {
                if (kotlin.jvm.internal.m.a(name, "..")) {
                    if (!arrayList.isEmpty()) {
                        Z = w.Z(arrayList);
                        if (!kotlin.jvm.internal.m.a(((File) Z).getName(), "..")) {
                            arrayList.remove(arrayList.size() - 1);
                        }
                    }
                    arrayList.add(file);
                } else {
                    arrayList.add(file);
                }
            }
        }
        return arrayList;
    }

    public static File q(File file, File base) {
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(base, "base");
        return new File(t(file, base));
    }

    public static final File r(File file, File relative) {
        boolean z10;
        boolean Q;
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(relative, "relative");
        if (h.b(relative)) {
            return relative;
        }
        String file2 = file.toString();
        kotlin.jvm.internal.m.d(file2, "toString(...)");
        if (file2.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            Q = b0.Q(file2, File.separatorChar, false, 2, null);
            if (!Q) {
                return new File(file2 + File.separatorChar + relative);
            }
        }
        return new File(file2 + relative);
    }

    public static File s(File file, String relative) {
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(relative, "relative");
        return r(file, new File(relative));
    }

    public static final String t(File file, File base) {
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(base, "base");
        String u10 = u(file, base);
        if (u10 != null) {
            return u10;
        }
        throw new IllegalArgumentException("this and base files have different roots: " + file + " and " + base + '.');
    }

    private static final String u(File file, File file2) {
        List J;
        e o10 = o(h.c(file));
        e o11 = o(h.c(file2));
        if (!kotlin.jvm.internal.m.a(o10.a(), o11.a())) {
            return null;
        }
        int c10 = o11.c();
        int c11 = o10.c();
        int min = Math.min(c11, c10);
        int i10 = 0;
        while (i10 < min && kotlin.jvm.internal.m.a(o10.b().get(i10), o11.b().get(i10))) {
            i10++;
        }
        StringBuilder sb2 = new StringBuilder();
        int i11 = c10 - 1;
        if (i10 <= i11) {
            while (!kotlin.jvm.internal.m.a(((File) o11.b().get(i11)).getName(), "..")) {
                sb2.append("..");
                if (i11 != i10) {
                    sb2.append(File.separatorChar);
                }
                if (i11 != i10) {
                    i11--;
                }
            }
            return null;
        }
        if (i10 < c11) {
            if (i10 < c10) {
                sb2.append(File.separatorChar);
            }
            J = w.J(o10.b(), i10);
            String separator = File.separator;
            kotlin.jvm.internal.m.d(separator, "separator");
            w.V(J, sb2, separator, null, null, 0, null, null, 124, null);
        }
        return sb2.toString();
    }
}
