package w7;

import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import n7.j;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    final String f31948a;

    /* renamed from: b  reason: collision with root package name */
    private final File f31949b;

    /* renamed from: c  reason: collision with root package name */
    private final File f31950c;

    /* renamed from: d  reason: collision with root package name */
    private final File f31951d;

    /* renamed from: e  reason: collision with root package name */
    private final File f31952e;

    /* renamed from: f  reason: collision with root package name */
    private final File f31953f;

    /* renamed from: g  reason: collision with root package name */
    private final File f31954g;

    public g(Context context) {
        String d10;
        String str;
        this.f31948a = j.f26477a.e(context).d();
        File filesDir = context.getFilesDir();
        this.f31949b = filesDir;
        if (y()) {
            str = ".crashlytics.v3" + File.separator + x(d10);
        } else {
            str = ".com.google.firebase.crashlytics.files.v1";
        }
        File t10 = t(new File(filesDir, str));
        this.f31950c = t10;
        this.f31951d = t(new File(t10, "open-sessions"));
        this.f31952e = t(new File(t10, "reports"));
        this.f31953f = t(new File(t10, "priority-reports"));
        this.f31954g = t(new File(t10, "native-reports"));
    }

    private void b(String str) {
        File file = new File(this.f31949b, str);
        if (file.exists() && v(file)) {
            n7.g f10 = n7.g.f();
            f10.b("Deleted previous Crashlytics file system: " + file.getPath());
        }
    }

    private void c(final String str) {
        String[] list;
        if (this.f31949b.exists() && (list = this.f31949b.list(new FilenameFilter() { // from class: w7.f
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                boolean s10;
                s10 = g.s(str, file, str2);
                return s10;
            }
        })) != null) {
            for (String str2 : list) {
                b(str2);
            }
        }
    }

    private File p(String str) {
        return u(new File(this.f31951d, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean s(String str, File file, String str2) {
        return str2.startsWith(str);
    }

    private static synchronized File t(File file) {
        synchronized (g.class) {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return file;
                }
                n7.g f10 = n7.g.f();
                f10.b("Unexpected non-directory file: " + file + "; deleting file and creating new directory.");
                file.delete();
            }
            if (!file.mkdirs()) {
                n7.g f11 = n7.g.f();
                f11.d("Could not create Crashlytics-specific directory: " + file);
            }
            return file;
        }
    }

    private static File u(File file) {
        file.mkdirs();
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean v(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                v(file2);
            }
        }
        return file.delete();
    }

    private static List w(Object[] objArr) {
        if (objArr == null) {
            return Collections.emptyList();
        }
        return Arrays.asList(objArr);
    }

    static String x(String str) {
        if (str.length() > 40) {
            return q7.j.A(str);
        }
        return str.replaceAll("[^a-zA-Z0-9.]", "_");
    }

    private boolean y() {
        return !this.f31948a.isEmpty();
    }

    public void d() {
        b(".com.google.firebase.crashlytics");
        b(".com.google.firebase.crashlytics-ndk");
        if (y()) {
            b(".com.google.firebase.crashlytics.files.v1");
            c(".com.google.firebase.crashlytics.files.v2" + File.pathSeparator);
        }
    }

    public boolean e(String str) {
        return v(new File(this.f31951d, str));
    }

    public List f() {
        return w(this.f31951d.list());
    }

    public File g(String str) {
        return new File(this.f31950c, str);
    }

    public List h(FilenameFilter filenameFilter) {
        return w(this.f31950c.listFiles(filenameFilter));
    }

    public File i(String str) {
        return new File(this.f31954g, str);
    }

    public List j() {
        return w(this.f31954g.listFiles());
    }

    public File k(String str) {
        return u(new File(p(str), "native"));
    }

    public File l(String str) {
        return new File(this.f31953f, str);
    }

    public List m() {
        return w(this.f31953f.listFiles());
    }

    public File n(String str) {
        return new File(this.f31952e, str);
    }

    public List o() {
        return w(this.f31952e.listFiles());
    }

    public File q(String str, String str2) {
        return new File(p(str), str2);
    }

    public List r(String str, FilenameFilter filenameFilter) {
        return w(p(str).listFiles(filenameFilter));
    }
}
