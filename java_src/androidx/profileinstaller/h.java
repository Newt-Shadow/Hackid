package androidx.profileinstaller;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Objects;
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private static final androidx.concurrent.futures.d f3126a = androidx.concurrent.futures.d.y();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f3127b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static c f3128c = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {
        static PackageInfo a(PackageManager packageManager, Context context) {
            return packageManager.getPackageInfo(context.getPackageName(), PackageManager.PackageInfoFlags.of(0L));
        }
    }

    /* loaded from: classes.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        final int f3129a;

        /* renamed from: b  reason: collision with root package name */
        final int f3130b;

        /* renamed from: c  reason: collision with root package name */
        final long f3131c;

        /* renamed from: d  reason: collision with root package name */
        final long f3132d;

        b(int i10, int i11, long j10, long j11) {
            this.f3129a = i10;
            this.f3130b = i11;
            this.f3131c = j10;
            this.f3132d = j11;
        }

        static b a(File file) {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            try {
                b bVar = new b(dataInputStream.readInt(), dataInputStream.readInt(), dataInputStream.readLong(), dataInputStream.readLong());
                dataInputStream.close();
                return bVar;
            } catch (Throwable th) {
                try {
                    dataInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        void b(File file) {
            file.delete();
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            try {
                dataOutputStream.writeInt(this.f3129a);
                dataOutputStream.writeInt(this.f3130b);
                dataOutputStream.writeLong(this.f3131c);
                dataOutputStream.writeLong(this.f3132d);
                dataOutputStream.close();
            } catch (Throwable th) {
                try {
                    dataOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f3130b == bVar.f3130b && this.f3131c == bVar.f3131c && this.f3129a == bVar.f3129a && this.f3132d == bVar.f3132d) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(Integer.valueOf(this.f3130b), Long.valueOf(this.f3131c), Integer.valueOf(this.f3129a), Long.valueOf(this.f3132d));
        }
    }

    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final int f3133a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f3134b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f3135c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f3136d;

        c(int i10, boolean z10, boolean z11, boolean z12) {
            this.f3133a = i10;
            this.f3135c = z11;
            this.f3134b = z10;
            this.f3136d = z12;
        }
    }

    private static long a(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        if (Build.VERSION.SDK_INT >= 33) {
            return a.a(packageManager, context).lastUpdateTime;
        }
        return packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    private static c b(int i10, boolean z10, boolean z11, boolean z12) {
        c cVar = new c(i10, z10, z11, z12);
        f3128c = cVar;
        f3126a.u(cVar);
        return f3128c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't wrap try/catch for region: R(20:23|(1:89)(1:27)|28|(1:88)(1:32)|33|34|35|(2:74|75)(1:37)|38|(8:45|(1:49)|(1:56)|57|(2:64|65)|61|62|63)|(1:71)(1:(1:73))|(1:49)|(3:51|54|56)|57|(1:59)|64|65|61|62|63) */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00c8, code lost:
        r5 = 327680;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00fc, code lost:
        r5 = 196608;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.profileinstaller.h.c c(android.content.Context r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.profileinstaller.h.c(android.content.Context, boolean):androidx.profileinstaller.h$c");
    }
}
