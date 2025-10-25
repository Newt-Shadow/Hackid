package q7;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
class m {

    /* renamed from: d  reason: collision with root package name */
    private static final FilenameFilter f28500d = new FilenameFilter() { // from class: q7.k
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean d10;
            d10 = m.d(file, str);
            return d10;
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private static final Comparator f28501e = new Comparator() { // from class: q7.l
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int e10;
            e10 = m.e((File) obj, (File) obj2);
            return e10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final w7.g f28502a;

    /* renamed from: b  reason: collision with root package name */
    private String f28503b = null;

    /* renamed from: c  reason: collision with root package name */
    private String f28504c = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(w7.g gVar) {
        this.f28502a = gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(File file, String str) {
        return str.startsWith("aqs.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int e(File file, File file2) {
        return Long.compare(file2.lastModified(), file.lastModified());
    }

    private static void f(w7.g gVar, String str, String str2) {
        if (str != null && str2 != null) {
            try {
                gVar.q(str, "aqs." + str2).createNewFile();
            } catch (IOException e10) {
                n7.g.f().l("Failed to persist App Quality Sessions session id.", e10);
            }
        }
    }

    static String g(w7.g gVar, String str) {
        List r10 = gVar.r(str, f28500d);
        if (r10.isEmpty()) {
            n7.g.f().k("Unable to read App Quality Sessions session id.");
            return null;
        }
        return ((File) Collections.min(r10, f28501e)).getName().substring(4);
    }

    public synchronized String c(String str) {
        if (Objects.equals(this.f28503b, str)) {
            return this.f28504c;
        }
        return g(this.f28502a, str);
    }

    public synchronized void h(String str) {
        if (!Objects.equals(this.f28504c, str)) {
            f(this.f28502a, this.f28503b, str);
            this.f28504c = str;
        }
    }

    public synchronized void i(String str) {
        if (!Objects.equals(this.f28503b, str)) {
            f(this.f28502a, str, this.f28504c);
            this.f28503b = str;
        }
    }
}
