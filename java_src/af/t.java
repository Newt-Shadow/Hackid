package af;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.RandomAccessFile;
/* loaded from: classes2.dex */
public class t extends k {
    private final void m(s0 s0Var) {
        if (!g(s0Var)) {
            return;
        }
        throw new IOException(s0Var + " already exists.");
    }

    private final void n(s0 s0Var) {
        if (g(s0Var)) {
            return;
        }
        throw new IOException(s0Var + " doesn't exist.");
    }

    @Override // af.k
    public void a(s0 source, s0 target) {
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(target, "target");
        if (source.s().renameTo(target.s())) {
            return;
        }
        throw new IOException("failed to move " + source + " to " + target);
    }

    @Override // af.k
    public void d(s0 dir, boolean z10) {
        kotlin.jvm.internal.m.e(dir, "dir");
        if (!dir.s().mkdir()) {
            j h10 = h(dir);
            boolean z11 = false;
            if (h10 != null && h10.c()) {
                z11 = true;
            }
            if (z11) {
                if (!z10) {
                    return;
                }
                throw new IOException(dir + " already exist.");
            }
            throw new IOException("failed to create directory: " + dir);
        }
    }

    @Override // af.k
    public void f(s0 path, boolean z10) {
        kotlin.jvm.internal.m.e(path, "path");
        if (!Thread.interrupted()) {
            File s10 = path.s();
            if (!s10.delete()) {
                if (!s10.exists()) {
                    if (z10) {
                        throw new FileNotFoundException("no such file: " + path);
                    }
                    return;
                }
                throw new IOException("failed to delete " + path);
            }
            return;
        }
        throw new InterruptedIOException("interrupted");
    }

    @Override // af.k
    public j h(s0 path) {
        kotlin.jvm.internal.m.e(path, "path");
        File s10 = path.s();
        boolean isFile = s10.isFile();
        boolean isDirectory = s10.isDirectory();
        long lastModified = s10.lastModified();
        long length = s10.length();
        if (!isFile && !isDirectory && lastModified == 0 && length == 0 && !s10.exists()) {
            return null;
        }
        return new j(isFile, isDirectory, null, Long.valueOf(length), null, Long.valueOf(lastModified), null, null, 128, null);
    }

    @Override // af.k
    public i i(s0 file) {
        kotlin.jvm.internal.m.e(file, "file");
        return new s(false, new RandomAccessFile(file.s(), "r"));
    }

    @Override // af.k
    public i k(s0 file, boolean z10, boolean z11) {
        boolean z12;
        kotlin.jvm.internal.m.e(file, "file");
        if (z10 && z11) {
            z12 = false;
        } else {
            z12 = true;
        }
        if (z12) {
            if (z10) {
                m(file);
            }
            if (z11) {
                n(file);
            }
            return new s(true, new RandomAccessFile(file.s(), "rw"));
        }
        throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.".toString());
    }

    @Override // af.k
    public a1 l(s0 file) {
        kotlin.jvm.internal.m.e(file, "file");
        return m0.e(file.s());
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }
}
