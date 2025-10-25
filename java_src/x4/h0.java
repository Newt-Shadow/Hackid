package x4;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import y4.q0;
/* loaded from: classes.dex */
public final class h0 extends f {

    /* renamed from: e  reason: collision with root package name */
    private final Resources f32337e;

    /* renamed from: f  reason: collision with root package name */
    private final String f32338f;

    /* renamed from: g  reason: collision with root package name */
    private Uri f32339g;

    /* renamed from: h  reason: collision with root package name */
    private AssetFileDescriptor f32340h;

    /* renamed from: i  reason: collision with root package name */
    private InputStream f32341i;

    /* renamed from: j  reason: collision with root package name */
    private long f32342j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f32343k;

    /* loaded from: classes.dex */
    public static class a extends k {
        public a(String str, Throwable th, int i10) {
            super(str, th, i10);
        }
    }

    public h0(Context context) {
        super(false);
        this.f32337e = context.getResources();
        this.f32338f = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i10) {
        return Uri.parse("rawresource:///" + i10);
    }

    @Override // x4.j
    public void close() {
        this.f32339g = null;
        try {
            try {
                InputStream inputStream = this.f32341i;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f32341i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f32340h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f32340h = null;
                        if (this.f32343k) {
                            this.f32343k = false;
                            r();
                        }
                    }
                } catch (IOException e10) {
                    throw new a(null, e10, 2000);
                }
            } catch (IOException e11) {
                throw new a(null, e11, 2000);
            }
        } catch (Throwable th) {
            this.f32341i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f32340h;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f32340h = null;
                    if (this.f32343k) {
                        this.f32343k = false;
                        r();
                    }
                    throw th;
                } catch (IOException e12) {
                    throw new a(null, e12, 2000);
                }
            } finally {
                this.f32340h = null;
                if (this.f32343k) {
                    this.f32343k = false;
                    r();
                }
            }
        }
    }

    @Override // x4.j
    public long i(n nVar) {
        int parseInt;
        String str;
        Uri uri = nVar.f32371a;
        this.f32339g = uri;
        if (!TextUtils.equals("rawresource", uri.getScheme()) && (!TextUtils.equals("android.resource", uri.getScheme()) || uri.getPathSegments().size() != 1 || !((String) y4.a.e(uri.getLastPathSegment())).matches("\\d+"))) {
            if (TextUtils.equals("android.resource", uri.getScheme())) {
                String str2 = (String) y4.a.e(uri.getPath());
                if (str2.startsWith("/")) {
                    str2 = str2.substring(1);
                }
                String host = uri.getHost();
                StringBuilder sb2 = new StringBuilder();
                if (TextUtils.isEmpty(host)) {
                    str = "";
                } else {
                    str = host + ":";
                }
                sb2.append(str);
                sb2.append(str2);
                parseInt = this.f32337e.getIdentifier(sb2.toString(), "raw", this.f32338f);
                if (parseInt == 0) {
                    throw new a("Resource not found.", null, 2005);
                }
            } else {
                throw new a("URI must either use scheme rawresource or android.resource", null, 1004);
            }
        } else {
            try {
                parseInt = Integer.parseInt((String) y4.a.e(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new a("Resource identifier must be an integer.", null, 1004);
            }
        }
        s(nVar);
        try {
            AssetFileDescriptor openRawResourceFd = this.f32337e.openRawResourceFd(parseInt);
            this.f32340h = openRawResourceFd;
            if (openRawResourceFd != null) {
                long length = openRawResourceFd.getLength();
                FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
                this.f32341i = fileInputStream;
                int i10 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i10 != 0) {
                    try {
                        if (nVar.f32377g > length) {
                            throw new a(null, null, 2008);
                        }
                    } catch (a e10) {
                        throw e10;
                    } catch (IOException e11) {
                        throw new a(null, e11, 2000);
                    }
                }
                long startOffset = openRawResourceFd.getStartOffset();
                long skip = fileInputStream.skip(nVar.f32377g + startOffset) - startOffset;
                if (skip == nVar.f32377g) {
                    if (i10 == 0) {
                        FileChannel channel = fileInputStream.getChannel();
                        if (channel.size() == 0) {
                            this.f32342j = -1L;
                        } else {
                            long size = channel.size() - channel.position();
                            this.f32342j = size;
                            if (size < 0) {
                                throw new a(null, null, 2008);
                            }
                        }
                    } else {
                        long j10 = length - skip;
                        this.f32342j = j10;
                        if (j10 < 0) {
                            throw new k(2008);
                        }
                    }
                    long j11 = nVar.f32378h;
                    if (j11 != -1) {
                        long j12 = this.f32342j;
                        if (j12 != -1) {
                            j11 = Math.min(j12, j11);
                        }
                        this.f32342j = j11;
                    }
                    this.f32343k = true;
                    t(nVar);
                    long j13 = nVar.f32378h;
                    if (j13 == -1) {
                        return this.f32342j;
                    }
                    return j13;
                }
                throw new a(null, null, 2008);
            }
            throw new a("Resource is compressed: " + uri, null, 2000);
        } catch (Resources.NotFoundException e12) {
            throw new a(null, e12, 2005);
        }
    }

    @Override // x4.j
    public Uri o() {
        return this.f32339g;
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f32342j;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new a(null, e10, 2000);
            }
        }
        int read = ((InputStream) q0.j(this.f32341i)).read(bArr, i10, i11);
        if (read == -1) {
            if (this.f32342j == -1) {
                return -1;
            }
            throw new a("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j11 = this.f32342j;
        if (j11 != -1) {
            this.f32342j = j11 - read;
        }
        q(read);
        return read;
    }
}
