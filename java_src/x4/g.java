package x4;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import y4.q0;
/* loaded from: classes.dex */
public final class g extends f {

    /* renamed from: e  reason: collision with root package name */
    private final ContentResolver f32325e;

    /* renamed from: f  reason: collision with root package name */
    private Uri f32326f;

    /* renamed from: g  reason: collision with root package name */
    private AssetFileDescriptor f32327g;

    /* renamed from: h  reason: collision with root package name */
    private FileInputStream f32328h;

    /* renamed from: i  reason: collision with root package name */
    private long f32329i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f32330j;

    /* loaded from: classes.dex */
    public static class a extends k {
        public a(IOException iOException, int i10) {
            super(iOException, i10);
        }
    }

    public g(Context context) {
        super(false);
        this.f32325e = context.getContentResolver();
    }

    @Override // x4.j
    public void close() {
        this.f32326f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f32328h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f32328h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f32327g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } finally {
                        this.f32327g = null;
                        if (this.f32330j) {
                            this.f32330j = false;
                            r();
                        }
                    }
                } catch (IOException e10) {
                    throw new a(e10, 2000);
                }
            } catch (IOException e11) {
                throw new a(e11, 2000);
            }
        } catch (Throwable th) {
            this.f32328h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f32327g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f32327g = null;
                    if (this.f32330j) {
                        this.f32330j = false;
                        r();
                    }
                    throw th;
                } catch (IOException e12) {
                    throw new a(e12, 2000);
                }
            } finally {
                this.f32327g = null;
                if (this.f32330j) {
                    this.f32330j = false;
                    r();
                }
            }
        }
    }

    @Override // x4.j
    public long i(n nVar) {
        AssetFileDescriptor openAssetFileDescriptor;
        int i10 = 2000;
        try {
            Uri uri = nVar.f32371a;
            this.f32326f = uri;
            s(nVar);
            if ("content".equals(nVar.f32371a.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                openAssetFileDescriptor = this.f32325e.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                openAssetFileDescriptor = this.f32325e.openAssetFileDescriptor(uri, "r");
            }
            this.f32327g = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f32328h = fileInputStream;
                int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i11 != 0 && nVar.f32377g > length) {
                    throw new a(null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(nVar.f32377g + startOffset) - startOffset;
                if (skip == nVar.f32377g) {
                    if (i11 == 0) {
                        FileChannel channel = fileInputStream.getChannel();
                        long size = channel.size();
                        if (size == 0) {
                            this.f32329i = -1L;
                        } else {
                            long position = size - channel.position();
                            this.f32329i = position;
                            if (position < 0) {
                                throw new a(null, 2008);
                            }
                        }
                    } else {
                        long j10 = length - skip;
                        this.f32329i = j10;
                        if (j10 < 0) {
                            throw new a(null, 2008);
                        }
                    }
                    long j11 = nVar.f32378h;
                    if (j11 != -1) {
                        long j12 = this.f32329i;
                        if (j12 != -1) {
                            j11 = Math.min(j12, j11);
                        }
                        this.f32329i = j11;
                    }
                    this.f32330j = true;
                    t(nVar);
                    long j13 = nVar.f32378h;
                    if (j13 == -1) {
                        return this.f32329i;
                    }
                    return j13;
                }
                throw new a(null, 2008);
            }
            throw new a(new IOException("Could not open file descriptor for: " + uri), 2000);
        } catch (a e10) {
            throw e10;
        } catch (IOException e11) {
            if (e11 instanceof FileNotFoundException) {
                i10 = 2005;
            }
            throw new a(e11, i10);
        }
    }

    @Override // x4.j
    public Uri o() {
        return this.f32326f;
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f32329i;
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
        int read = ((FileInputStream) q0.j(this.f32328h)).read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        long j11 = this.f32329i;
        if (j11 != -1) {
            this.f32329i = j11 - read;
        }
        q(read);
        return read;
    }
}
