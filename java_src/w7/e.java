package w7;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
import q7.g0;
import q7.n;
import s7.o;
import t7.f0;
import u7.j;
/* loaded from: classes.dex */
public class e {

    /* renamed from: e  reason: collision with root package name */
    private static final Charset f31938e = Charset.forName("UTF-8");

    /* renamed from: f  reason: collision with root package name */
    private static final int f31939f = 15;

    /* renamed from: g  reason: collision with root package name */
    private static final j f31940g = new j();

    /* renamed from: h  reason: collision with root package name */
    private static final Comparator f31941h = new Comparator() { // from class: w7.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int u10;
            u10 = e.u((File) obj, (File) obj2);
            return u10;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final FilenameFilter f31942i = new FilenameFilter() { // from class: w7.b
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean v10;
            v10 = e.v(file, str);
            return v10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f31943a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    private final g f31944b;

    /* renamed from: c  reason: collision with root package name */
    private final y7.j f31945c;

    /* renamed from: d  reason: collision with root package name */
    private final n f31946d;

    public e(g gVar, y7.j jVar, n nVar) {
        this.f31944b = gVar;
        this.f31945c = jVar;
        this.f31946d = nVar;
    }

    private static String A(File file) {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), f31938e);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    private void B(File file, f0.d dVar, String str, f0.a aVar) {
        String d10 = this.f31946d.d(str);
        try {
            j jVar = f31940g;
            F(this.f31944b.i(str), jVar.M(jVar.L(A(file)).u(dVar).q(aVar).p(d10)));
        } catch (IOException e10) {
            n7.g f10 = n7.g.f();
            f10.l("Could not synthesize final native report file for " + file, e10);
        }
    }

    private void C(String str, long j10) {
        boolean z10;
        List<File> r10 = this.f31944b.r(str, f31942i);
        if (r10.isEmpty()) {
            n7.g.f().i("Session " + str + " has no events.");
            return;
        }
        Collections.sort(r10);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z10 = false;
            for (File file : r10) {
                try {
                    arrayList.add(f31940g.j(A(file)));
                } catch (IOException e10) {
                    n7.g.f().l("Could not add event to report for " + file, e10);
                }
                if (z10 || s(file.getName())) {
                    z10 = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            n7.g.f().k("Could not parse event files for session " + str);
            return;
        }
        D(this.f31944b.q(str, "report"), arrayList, j10, z10, o.l(str, this.f31944b), this.f31946d.d(str));
    }

    private void D(File file, List list, long j10, boolean z10, String str, String str2) {
        File n10;
        try {
            j jVar = f31940g;
            f0 r10 = jVar.L(A(file)).v(j10, z10, str).p(str2).r(list);
            f0.e n11 = r10.n();
            if (n11 == null) {
                return;
            }
            n7.g f10 = n7.g.f();
            f10.b("appQualitySessionId: " + str2);
            if (z10) {
                n10 = this.f31944b.l(n11.i());
            } else {
                n10 = this.f31944b.n(n11.i());
            }
            F(n10, jVar.M(r10));
        } catch (IOException e10) {
            n7.g f11 = n7.g.f();
            f11.l("Could not synthesize final report file for " + file, e10);
        }
    }

    private int E(String str, int i10) {
        List r10 = this.f31944b.r(str, new FilenameFilter() { // from class: w7.c
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                boolean t10;
                t10 = e.t(file, str2);
                return t10;
            }
        });
        Collections.sort(r10, new Comparator() { // from class: w7.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int x10;
                x10 = e.x((File) obj, (File) obj2);
                return x10;
            }
        });
        return f(r10, i10);
    }

    private static void F(File file, String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f31938e);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void G(File file, String str, long j10) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f31938e);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(h(j10));
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private SortedSet e(String str) {
        this.f31944b.d();
        SortedSet p10 = p();
        if (str != null) {
            p10.remove(str);
        }
        if (p10.size() <= 8) {
            return p10;
        }
        while (p10.size() > 8) {
            String str2 = (String) p10.last();
            n7.g f10 = n7.g.f();
            f10.b("Removing session over cap: " + str2);
            this.f31944b.e(str2);
            p10.remove(str2);
        }
        return p10;
    }

    private static int f(List list, int i10) {
        int size = list.size();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            if (size <= i10) {
                return size;
            }
            g.v(file);
            size--;
        }
        return size;
    }

    private void g() {
        int i10 = this.f31945c.b().f33032a.f33044b;
        List n10 = n();
        int size = n10.size();
        if (size <= i10) {
            return;
        }
        for (File file : n10.subList(i10, size)) {
            file.delete();
        }
    }

    private static long h(long j10) {
        return j10 * 1000;
    }

    private void j(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    private static String m(int i10, boolean z10) {
        String str;
        String format = String.format(Locale.US, "%010d", Integer.valueOf(i10));
        if (z10) {
            str = "_";
        } else {
            str = "";
        }
        return "event" + format + str;
    }

    private List n() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f31944b.m());
        arrayList.addAll(this.f31944b.j());
        Comparator comparator = f31941h;
        Collections.sort(arrayList, comparator);
        List o10 = this.f31944b.o();
        Collections.sort(o10, comparator);
        arrayList.addAll(o10);
        return arrayList;
    }

    private static String o(String str) {
        return str.substring(0, f31939f);
    }

    private static boolean s(String str) {
        if (str.startsWith("event") && str.endsWith("_")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t(File file, String str) {
        if (str.startsWith("event") && !str.endsWith("_")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int u(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean v(File file, String str) {
        return str.startsWith("event");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int x(File file, File file2) {
        return o(file.getName()).compareTo(o(file2.getName()));
    }

    public void i() {
        j(this.f31944b.o());
        j(this.f31944b.m());
        j(this.f31944b.j());
    }

    public void k(String str, long j10) {
        for (String str2 : e(str)) {
            n7.g f10 = n7.g.f();
            f10.i("Finalizing report for session " + str2);
            C(str2, j10);
            this.f31944b.e(str2);
        }
        g();
    }

    public void l(String str, f0.d dVar, f0.a aVar) {
        File q10 = this.f31944b.q(str, "report");
        n7.g f10 = n7.g.f();
        f10.b("Writing native session report for " + str + " to file: " + q10);
        B(q10, dVar, str, aVar);
    }

    public SortedSet p() {
        return new TreeSet(this.f31944b.f()).descendingSet();
    }

    public long q(String str) {
        return this.f31944b.q(str, "start-time").lastModified();
    }

    public boolean r() {
        if (this.f31944b.o().isEmpty() && this.f31944b.m().isEmpty() && this.f31944b.j().isEmpty()) {
            return false;
        }
        return true;
    }

    public List w() {
        List<File> n10 = n();
        ArrayList arrayList = new ArrayList();
        for (File file : n10) {
            try {
                arrayList.add(g0.a(f31940g.L(A(file)), file.getName(), file));
            } catch (IOException e10) {
                n7.g f10 = n7.g.f();
                f10.l("Could not load report file " + file + "; deleting", e10);
                file.delete();
            }
        }
        return arrayList;
    }

    public void y(f0.e.d dVar, String str, boolean z10) {
        int i10 = this.f31945c.b().f33032a.f33043a;
        try {
            F(this.f31944b.q(str, m(this.f31943a.getAndIncrement(), z10)), f31940g.k(dVar));
        } catch (IOException e10) {
            n7.g f10 = n7.g.f();
            f10.l("Could not persist event for session " + str, e10);
        }
        E(str, i10);
    }

    public void z(f0 f0Var) {
        f0.e n10 = f0Var.n();
        if (n10 == null) {
            n7.g.f().b("Could not get session for report");
            return;
        }
        String i10 = n10.i();
        try {
            F(this.f31944b.q(i10, "report"), f31940g.M(f0Var));
            G(this.f31944b.q(i10, "start-time"), "", n10.l());
        } catch (IOException e10) {
            n7.g f10 = n7.g.f();
            f10.c("Could not persist report for session " + i10, e10);
        }
    }
}
