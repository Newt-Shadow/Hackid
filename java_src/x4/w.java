package x4;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import y4.q0;
/* loaded from: classes.dex */
public final class w extends f {

    /* renamed from: e  reason: collision with root package name */
    private RandomAccessFile f32475e;

    /* renamed from: f  reason: collision with root package name */
    private Uri f32476f;

    /* renamed from: g  reason: collision with root package name */
    private long f32477g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f32478h;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(Throwable th) {
            if ((th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class b extends k {
        public b(Throwable th, int i10) {
            super(th, i10);
        }

        public b(String str, Throwable th, int i10) {
            super(str, th, i10);
        }
    }

    public w() {
        super(false);
    }

    private static RandomAccessFile u(Uri uri) {
        int i10 = 2006;
        try {
            return new RandomAccessFile((String) y4.a.e(uri.getPath()), "r");
        } catch (FileNotFoundException e10) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new b(e10, (q0.f32946a < 21 || !a.b(e10.getCause())) ? 2005 : 2005);
            }
            throw new b(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e10, 1004);
        } catch (SecurityException e11) {
            throw new b(e11, 2006);
        } catch (RuntimeException e12) {
            throw new b(e12, 2000);
        }
    }

    @Override // x4.j
    public void close() {
        this.f32476f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f32475e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (IOException e10) {
                throw new b(e10, 2000);
            }
        } finally {
            this.f32475e = null;
            if (this.f32478h) {
                this.f32478h = false;
                r();
            }
        }
    }

    @Override // x4.j
    public long i(n nVar) {
        Uri uri = nVar.f32371a;
        this.f32476f = uri;
        s(nVar);
        RandomAccessFile u10 = u(uri);
        this.f32475e = u10;
        try {
            u10.seek(nVar.f32377g);
            long j10 = nVar.f32378h;
            if (j10 == -1) {
                j10 = this.f32475e.length() - nVar.f32377g;
            }
            this.f32477g = j10;
            if (j10 >= 0) {
                this.f32478h = true;
                t(nVar);
                return this.f32477g;
            }
            throw new b(null, null, 2008);
        } catch (IOException e10) {
            throw new b(e10, 2000);
        }
    }

    @Override // x4.j
    public Uri o() {
        return this.f32476f;
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        if (this.f32477g == 0) {
            return -1;
        }
        try {
            int read = ((RandomAccessFile) q0.j(this.f32475e)).read(bArr, i10, (int) Math.min(this.f32477g, i11));
            if (read > 0) {
                this.f32477g -= read;
                q(read);
            }
            return read;
        } catch (IOException e10) {
            throw new b(e10, 2000);
        }
    }
}
