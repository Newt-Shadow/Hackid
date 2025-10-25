package j0;

import android.os.ParcelFileDescriptor;
import androidx.datastore.core.NativeSharedCounter;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class f0 {

    /* renamed from: b  reason: collision with root package name */
    public static final a f23990b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final NativeSharedCounter f23991c = new NativeSharedCounter();

    /* renamed from: a  reason: collision with root package name */
    private final long f23992a;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final f0 b(ParcelFileDescriptor parcelFileDescriptor) {
            int fd2 = parcelFileDescriptor.getFd();
            if (c().nativeTruncateFile(fd2) == 0) {
                long nativeCreateSharedCounter = c().nativeCreateSharedCounter(fd2);
                if (nativeCreateSharedCounter >= 0) {
                    return new f0(nativeCreateSharedCounter, null);
                }
                throw new IOException("Failed to mmap counter file");
            }
            throw new IOException("Failed to truncate counter file");
        }

        public final f0 a(id.a produceFile) {
            ParcelFileDescriptor parcelFileDescriptor;
            kotlin.jvm.internal.m.e(produceFile, "produceFile");
            try {
                parcelFileDescriptor = ParcelFileDescriptor.open((File) produceFile.invoke(), 939524096);
                try {
                    f0 b10 = b(parcelFileDescriptor);
                    if (parcelFileDescriptor != null) {
                        parcelFileDescriptor.close();
                    }
                    return b10;
                } catch (Throwable th) {
                    th = th;
                    if (parcelFileDescriptor != null) {
                        parcelFileDescriptor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                parcelFileDescriptor = null;
            }
        }

        public final NativeSharedCounter c() {
            return f0.f23991c;
        }

        public final void d() {
            System.loadLibrary("datastore_shared_counter");
        }
    }

    public /* synthetic */ f0(long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10);
    }

    public final int b() {
        return f23991c.nativeGetCounterValue(this.f23992a);
    }

    public final int c() {
        return f23991c.nativeIncrementAndGetCounterValue(this.f23992a);
    }

    private f0(long j10) {
        this.f23992a = j10;
    }
}
