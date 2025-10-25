package af;

import af.s0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileTime;
/* loaded from: classes2.dex */
public class l0 extends t {
    private final Long p(FileTime fileTime) {
        long millis;
        boolean z10;
        millis = fileTime.toMillis();
        Long valueOf = Long.valueOf(millis);
        if (valueOf.longValue() != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return null;
        }
        return valueOf;
    }

    @Override // af.t, af.k
    public void a(s0 source, s0 target) {
        String message;
        StandardCopyOption standardCopyOption;
        StandardCopyOption standardCopyOption2;
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(target, "target");
        try {
            Path t10 = source.t();
            Path t11 = target.t();
            standardCopyOption = StandardCopyOption.ATOMIC_MOVE;
            standardCopyOption2 = StandardCopyOption.REPLACE_EXISTING;
            Files.move(t10, t11, x.a(standardCopyOption), x.a(standardCopyOption2));
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e10) {
            message = e10.getMessage();
            throw new FileNotFoundException(message);
        }
    }

    @Override // af.t, af.k
    public j h(s0 path) {
        kotlin.jvm.internal.m.e(path, "path");
        return o(path.t());
    }

    protected final j o(Path nioPath) {
        LinkOption linkOption;
        BasicFileAttributes readAttributes;
        boolean isSymbolicLink;
        Path path;
        boolean isRegularFile;
        boolean isDirectory;
        s0 s0Var;
        long size;
        FileTime creationTime;
        Long l10;
        FileTime lastModifiedTime;
        Long l11;
        FileTime lastAccessTime;
        kotlin.jvm.internal.m.e(nioPath, "nioPath");
        Long l12 = null;
        try {
            Class a10 = u.a();
            linkOption = LinkOption.NOFOLLOW_LINKS;
            readAttributes = Files.readAttributes(nioPath, a10, linkOption);
            isSymbolicLink = readAttributes.isSymbolicLink();
            if (isSymbolicLink) {
                path = Files.readSymbolicLink(nioPath);
            } else {
                path = null;
            }
            isRegularFile = readAttributes.isRegularFile();
            isDirectory = readAttributes.isDirectory();
            if (path != null) {
                s0Var = s0.a.f(s0.f443b, path, false, 1, null);
            } else {
                s0Var = null;
            }
            size = readAttributes.size();
            Long valueOf = Long.valueOf(size);
            creationTime = readAttributes.creationTime();
            if (creationTime != null) {
                l10 = p(creationTime);
            } else {
                l10 = null;
            }
            lastModifiedTime = readAttributes.lastModifiedTime();
            if (lastModifiedTime != null) {
                l11 = p(lastModifiedTime);
            } else {
                l11 = null;
            }
            lastAccessTime = readAttributes.lastAccessTime();
            if (lastAccessTime != null) {
                l12 = p(lastAccessTime);
            }
            return new j(isRegularFile, isDirectory, s0Var, valueOf, l10, l11, l12, null, 128, null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }

    @Override // af.t
    public String toString() {
        return "NioSystemFileSystem";
    }
}
