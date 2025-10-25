package androidx.profileinstaller;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.profileinstaller.f;
import io.flutter.Build;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final AssetManager f3095a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f3096b;

    /* renamed from: c  reason: collision with root package name */
    private final f.c f3097c;

    /* renamed from: e  reason: collision with root package name */
    private final File f3099e;

    /* renamed from: f  reason: collision with root package name */
    private final String f3100f;

    /* renamed from: g  reason: collision with root package name */
    private final String f3101g;

    /* renamed from: h  reason: collision with root package name */
    private final String f3102h;

    /* renamed from: j  reason: collision with root package name */
    private c[] f3104j;

    /* renamed from: k  reason: collision with root package name */
    private byte[] f3105k;

    /* renamed from: i  reason: collision with root package name */
    private boolean f3103i = false;

    /* renamed from: d  reason: collision with root package name */
    private final byte[] f3098d = d();

    public b(AssetManager assetManager, Executor executor, f.c cVar, String str, String str2, String str3, File file) {
        this.f3095a = assetManager;
        this.f3096b = executor;
        this.f3097c = cVar;
        this.f3100f = str;
        this.f3101g = str2;
        this.f3102h = str3;
        this.f3099e = file;
    }

    private b b(c[] cVarArr, byte[] bArr) {
        InputStream h10;
        try {
            h10 = h(this.f3095a, this.f3102h);
        } catch (FileNotFoundException e10) {
            this.f3097c.b(9, e10);
        } catch (IOException e11) {
            this.f3097c.b(7, e11);
        } catch (IllegalStateException e12) {
            this.f3104j = null;
            this.f3097c.b(8, e12);
        }
        if (h10 != null) {
            try {
                this.f3104j = g.r(h10, g.p(h10, g.f3125b), bArr, cVarArr);
                h10.close();
                return this;
            } catch (Throwable th) {
                try {
                    h10.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        if (h10 != null) {
            h10.close();
        }
        return null;
    }

    private void c() {
        if (this.f3103i) {
            return;
        }
        throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
    }

    private static byte[] d() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31) {
            return i.f3137a;
        }
        switch (i10) {
            case Build.API_LEVELS.API_24 /* 24 */:
            case 25:
                return i.f3141e;
            case 26:
                return i.f3140d;
            case 27:
                return i.f3139c;
            case Build.API_LEVELS.API_28 /* 28 */:
            case 29:
            case Build.API_LEVELS.API_30 /* 30 */:
                return i.f3138b;
            default:
                return null;
        }
    }

    private InputStream f(AssetManager assetManager) {
        try {
            return h(assetManager, this.f3101g);
        } catch (FileNotFoundException e10) {
            this.f3097c.b(6, e10);
            return null;
        } catch (IOException e11) {
            this.f3097c.b(7, e11);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(int i10, Object obj) {
        this.f3097c.b(i10, obj);
    }

    private InputStream h(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e10) {
            String message = e10.getMessage();
            if (message != null && message.contains("compressed")) {
                this.f3097c.a(5, null);
            }
            return null;
        }
    }

    private c[] j(InputStream inputStream) {
        try {
        } catch (IOException e10) {
            this.f3097c.b(7, e10);
        }
        try {
            try {
                c[] x10 = g.x(inputStream, g.p(inputStream, g.f3124a), this.f3100f);
                try {
                    inputStream.close();
                    return x10;
                } catch (IOException e11) {
                    this.f3097c.b(7, e11);
                    return x10;
                }
            } catch (Throwable th) {
                try {
                    inputStream.close();
                } catch (IOException e12) {
                    this.f3097c.b(7, e12);
                }
                throw th;
            }
        } catch (IOException e13) {
            this.f3097c.b(7, e13);
            inputStream.close();
            return null;
        } catch (IllegalStateException e14) {
            this.f3097c.b(8, e14);
            inputStream.close();
            return null;
        }
    }

    private static boolean k() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31 || i10 == 24 || i10 == 25) {
            return true;
        }
        return false;
    }

    private void l(final int i10, final Object obj) {
        this.f3096b.execute(new Runnable() { // from class: f1.a
            @Override // java.lang.Runnable
            public final void run() {
                androidx.profileinstaller.b.this.g(i10, obj);
            }
        });
    }

    public boolean e() {
        if (this.f3098d == null) {
            l(3, Integer.valueOf(Build.VERSION.SDK_INT));
            return false;
        }
        if (this.f3099e.exists()) {
            if (!this.f3099e.canWrite()) {
                l(4, null);
                return false;
            }
        } else {
            try {
                if (!this.f3099e.createNewFile()) {
                    l(4, null);
                    return false;
                }
            } catch (IOException unused) {
                l(4, null);
                return false;
            }
        }
        this.f3103i = true;
        return true;
    }

    public b i() {
        b b10;
        c();
        if (this.f3098d == null) {
            return this;
        }
        InputStream f10 = f(this.f3095a);
        if (f10 != null) {
            this.f3104j = j(f10);
        }
        c[] cVarArr = this.f3104j;
        if (cVarArr != null && k() && (b10 = b(cVarArr, this.f3098d)) != null) {
            return b10;
        }
        return this;
    }

    public b m() {
        ByteArrayOutputStream byteArrayOutputStream;
        c[] cVarArr = this.f3104j;
        byte[] bArr = this.f3098d;
        if (cVarArr != null && bArr != null) {
            c();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    g.F(byteArrayOutputStream, bArr);
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e10) {
                this.f3097c.b(7, e10);
            } catch (IllegalStateException e11) {
                this.f3097c.b(8, e11);
            }
            if (!g.C(byteArrayOutputStream, bArr, cVarArr)) {
                this.f3097c.b(5, null);
                this.f3104j = null;
                byteArrayOutputStream.close();
                return this;
            }
            this.f3105k = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            this.f3104j = null;
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.profileinstaller.c[], byte[]] */
    public boolean n() {
        byte[] bArr = this.f3105k;
        if (bArr == null) {
            return false;
        }
        c();
        try {
            try {
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(this.f3099e);
                        FileChannel channel = fileOutputStream.getChannel();
                        FileLock tryLock = channel.tryLock();
                        try {
                            d.l(byteArrayInputStream, fileOutputStream, tryLock);
                            l(1, null);
                            if (tryLock != null) {
                                tryLock.close();
                            }
                            channel.close();
                            fileOutputStream.close();
                            byteArrayInputStream.close();
                            return true;
                        } catch (Throwable th) {
                            if (tryLock != null) {
                                try {
                                    tryLock.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        try {
                            byteArrayInputStream.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                } catch (IOException e10) {
                    l(7, e10);
                    return false;
                }
            } catch (FileNotFoundException e11) {
                l(6, e11);
                return false;
            }
        } finally {
            this.f3105k = null;
            this.f3104j = null;
        }
    }
}
