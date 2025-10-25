package s7;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
import org.apache.tika.utils.StringUtils;
import s7.h;
/* loaded from: classes.dex */
class i implements d {

    /* renamed from: d  reason: collision with root package name */
    private static final Charset f29511d = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final File f29512a;

    /* renamed from: b  reason: collision with root package name */
    private final int f29513b;

    /* renamed from: c  reason: collision with root package name */
    private h f29514c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements h.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ byte[] f29515a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f29516b;

        a(byte[] bArr, int[] iArr) {
            this.f29515a = bArr;
            this.f29516b = iArr;
        }

        @Override // s7.h.d
        public void a(InputStream inputStream, int i10) {
            try {
                inputStream.read(this.f29515a, this.f29516b[0], i10);
                int[] iArr = this.f29516b;
                iArr[0] = iArr[0] + i10;
            } finally {
                inputStream.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f29518a;

        /* renamed from: b  reason: collision with root package name */
        public final int f29519b;

        b(byte[] bArr, int i10) {
            this.f29518a = bArr;
            this.f29519b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(File file, int i10) {
        this.f29512a = file;
        this.f29513b = i10;
    }

    private void f(long j10, String str) {
        int i10;
        if (this.f29514c == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            if (str.length() > this.f29513b / 4) {
                str = "..." + str.substring(str.length() - i10);
            }
            this.f29514c.f(String.format(Locale.US, "%d %s%n", Long.valueOf(j10), str.replaceAll("\r", StringUtils.SPACE).replaceAll("\n", StringUtils.SPACE)).getBytes(f29511d));
            while (!this.f29514c.s() && this.f29514c.d0() > this.f29513b) {
                this.f29514c.H();
            }
        } catch (IOException e10) {
            n7.g.f().e("There was a problem writing to the Crashlytics log.", e10);
        }
    }

    private b g() {
        if (!this.f29512a.exists()) {
            return null;
        }
        h();
        h hVar = this.f29514c;
        if (hVar == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[hVar.d0()];
        try {
            this.f29514c.k(new a(bArr, iArr));
        } catch (IOException e10) {
            n7.g.f().e("A problem occurred while reading the Crashlytics log file.", e10);
        }
        return new b(bArr, iArr[0]);
    }

    private void h() {
        if (this.f29514c == null) {
            try {
                this.f29514c = new h(this.f29512a);
            } catch (IOException e10) {
                n7.g f10 = n7.g.f();
                f10.e("Could not open log file: " + this.f29512a, e10);
            }
        }
    }

    @Override // s7.d
    public void a() {
        q7.j.f(this.f29514c, "There was a problem closing the Crashlytics log file.");
        this.f29514c = null;
    }

    @Override // s7.d
    public String b() {
        byte[] c10 = c();
        if (c10 != null) {
            return new String(c10, f29511d);
        }
        return null;
    }

    @Override // s7.d
    public byte[] c() {
        b g10 = g();
        if (g10 == null) {
            return null;
        }
        int i10 = g10.f29519b;
        byte[] bArr = new byte[i10];
        System.arraycopy(g10.f29518a, 0, bArr, 0, i10);
        return bArr;
    }

    @Override // s7.d
    public void d() {
        a();
        this.f29512a.delete();
    }

    @Override // s7.d
    public void e(long j10, String str) {
        h();
        f(j10, str);
    }
}
