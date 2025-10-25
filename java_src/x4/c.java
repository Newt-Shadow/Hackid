package x4;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import y4.q0;
/* loaded from: classes.dex */
public final class c extends f {

    /* renamed from: e  reason: collision with root package name */
    private final AssetManager f32276e;

    /* renamed from: f  reason: collision with root package name */
    private Uri f32277f;

    /* renamed from: g  reason: collision with root package name */
    private InputStream f32278g;

    /* renamed from: h  reason: collision with root package name */
    private long f32279h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f32280i;

    /* loaded from: classes.dex */
    public static final class a extends k {
        public a(Throwable th, int i10) {
            super(th, i10);
        }
    }

    public c(Context context) {
        super(false);
        this.f32276e = context.getAssets();
    }

    @Override // x4.j
    public void close() {
        this.f32277f = null;
        try {
            try {
                InputStream inputStream = this.f32278g;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e10) {
                throw new a(e10, 2000);
            }
        } finally {
            this.f32278g = null;
            if (this.f32280i) {
                this.f32280i = false;
                r();
            }
        }
    }

    @Override // x4.j
    public long i(n nVar) {
        int i10;
        try {
            Uri uri = nVar.f32371a;
            this.f32277f = uri;
            String str = (String) y4.a.e(uri.getPath());
            if (str.startsWith("/android_asset/")) {
                str = str.substring(15);
            } else if (str.startsWith("/")) {
                str = str.substring(1);
            }
            s(nVar);
            InputStream open = this.f32276e.open(str, 1);
            this.f32278g = open;
            if (open.skip(nVar.f32377g) >= nVar.f32377g) {
                long j10 = nVar.f32378h;
                if (j10 != -1) {
                    this.f32279h = j10;
                } else {
                    long available = this.f32278g.available();
                    this.f32279h = available;
                    if (available == 2147483647L) {
                        this.f32279h = -1L;
                    }
                }
                this.f32280i = true;
                t(nVar);
                return this.f32279h;
            }
            throw new a(null, 2008);
        } catch (a e10) {
            throw e10;
        } catch (IOException e11) {
            if (e11 instanceof FileNotFoundException) {
                i10 = 2005;
            } else {
                i10 = 2000;
            }
            throw new a(e11, i10);
        }
    }

    @Override // x4.j
    public Uri o() {
        return this.f32277f;
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f32279h;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new a(e10, 2000);
            }
        }
        int read = ((InputStream) q0.j(this.f32278g)).read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        long j11 = this.f32279h;
        if (j11 != -1) {
            this.f32279h = j11 - read;
        }
        q(read);
        return read;
    }
}
