package q7;

import android.os.Process;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
class i {

    /* renamed from: b  reason: collision with root package name */
    private static final String f28460b = j.A(UUID.randomUUID().toString() + System.currentTimeMillis());

    /* renamed from: c  reason: collision with root package name */
    private static final AtomicLong f28461c = new AtomicLong(0);

    /* renamed from: a  reason: collision with root package name */
    private final String f28462a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i() {
        byte[] bArr = new byte[10];
        f(bArr);
        e(bArr);
        d(bArr);
        String u10 = j.u(bArr);
        Locale locale = Locale.US;
        this.f28462a = String.format(locale, "%s%s%s%s", u10.substring(0, 12), u10.substring(12, 16), u10.subSequence(16, 20), f28460b.substring(0, 12)).toUpperCase(locale);
    }

    private static byte[] a(long j10) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt((int) j10);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    private static byte[] b(long j10) {
        ByteBuffer allocate = ByteBuffer.allocate(2);
        allocate.putShort((short) j10);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.position(0);
        return allocate.array();
    }

    private void d(byte[] bArr) {
        byte[] b10 = b(Integer.valueOf(Process.myPid()).shortValue());
        bArr[8] = b10[0];
        bArr[9] = b10[1];
    }

    private void e(byte[] bArr) {
        byte[] b10 = b(f28461c.incrementAndGet());
        bArr[6] = b10[0];
        bArr[7] = b10[1];
    }

    private void f(byte[] bArr) {
        long time = new Date().getTime();
        byte[] a10 = a(time / 1000);
        bArr[0] = a10[0];
        bArr[1] = a10[1];
        bArr[2] = a10[2];
        bArr[3] = a10[3];
        byte[] b10 = b(time % 1000);
        bArr[4] = b10[0];
        bArr[5] = b10[1];
    }

    public String c() {
        return this.f28462a;
    }

    public String toString() {
        return this.f28462a;
    }
}
