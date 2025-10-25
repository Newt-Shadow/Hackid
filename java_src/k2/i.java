package k2;

import io.flutter.embedding.android.KeyboardMap;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public class i implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final int f24673a = 1179403647;

    /* renamed from: b  reason: collision with root package name */
    private final FileChannel f24674b;

    public i(File file) {
        if (file != null && file.exists()) {
            this.f24674b = new FileInputStream(file).getChannel();
            return;
        }
        throw new IllegalArgumentException("File is null or does not exist");
    }

    private long a(d dVar, long j10, long j11) {
        for (long j12 = 0; j12 < j10; j12++) {
            e b10 = dVar.b(j12);
            if (b10.f24666a == 1) {
                long j13 = b10.f24668c;
                if (j13 <= j11 && j11 <= b10.f24669d + j13) {
                    return (j11 - j13) + b10.f24667b;
                }
            }
        }
        throw new IllegalStateException("Could not map vma to file offset!");
    }

    public d b() {
        boolean z10;
        this.f24674b.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (k(allocate, 0L) == 1179403647) {
            short f10 = f(allocate, 4L);
            if (f(allocate, 5L) == 2) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (f10 == 1) {
                return new g(z10, this);
            }
            if (f10 == 2) {
                return new h(z10, this);
            }
            throw new IllegalStateException("Invalid class type!");
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    public List c() {
        ByteOrder byteOrder;
        long j10;
        this.f24674b.position(0L);
        ArrayList arrayList = new ArrayList();
        d b10 = b();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        if (b10.f24657a) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        long j11 = b10.f24662f;
        int i10 = 0;
        if (j11 == 65535) {
            j11 = b10.c(0).f24670a;
        }
        long j12 = 0;
        while (true) {
            if (j12 < j11) {
                e b11 = b10.b(j12);
                if (b11.f24666a == 2) {
                    j10 = b11.f24667b;
                    break;
                }
                j12++;
            } else {
                j10 = 0;
                break;
            }
        }
        if (j10 == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList<Long> arrayList2 = new ArrayList();
        long j13 = 0;
        while (true) {
            c a10 = b10.a(j10, i10);
            long j14 = a10.f24655a;
            if (j14 == 1) {
                arrayList2.add(Long.valueOf(a10.f24656b));
            } else if (j14 == 5) {
                j13 = a10.f24656b;
            }
            i10++;
            if (a10.f24655a == 0) {
                break;
            }
        }
        if (j13 != 0) {
            long a11 = a(b10, j11, j13);
            for (Long l10 : arrayList2) {
                arrayList.add(j(allocate, l10.longValue() + a11));
            }
            return arrayList;
        }
        throw new IllegalStateException("String table offset not found!");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f24674b.close();
    }

    protected void e(ByteBuffer byteBuffer, long j10, int i10) {
        byteBuffer.position(0);
        byteBuffer.limit(i10);
        long j11 = 0;
        while (j11 < i10) {
            int read = this.f24674b.read(byteBuffer, j10 + j11);
            if (read != -1) {
                j11 += read;
            } else {
                throw new EOFException();
            }
        }
        byteBuffer.position(0);
    }

    protected short f(ByteBuffer byteBuffer, long j10) {
        e(byteBuffer, j10, 1);
        return (short) (byteBuffer.get() & ForkServer.ERROR);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int g(ByteBuffer byteBuffer, long j10) {
        e(byteBuffer, j10, 2);
        return byteBuffer.getShort() & 65535;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long h(ByteBuffer byteBuffer, long j10) {
        e(byteBuffer, j10, 8);
        return byteBuffer.getLong();
    }

    protected String j(ByteBuffer byteBuffer, long j10) {
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            long j11 = 1 + j10;
            short f10 = f(byteBuffer, j10);
            if (f10 != 0) {
                sb2.append((char) f10);
                j10 = j11;
            } else {
                return sb2.toString();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long k(ByteBuffer byteBuffer, long j10) {
        e(byteBuffer, j10, 4);
        return byteBuffer.getInt() & KeyboardMap.kValueMask;
    }
}
