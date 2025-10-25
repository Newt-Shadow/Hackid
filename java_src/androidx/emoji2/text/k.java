package androidx.emoji2.text;

import io.flutter.embedding.android.KeyboardMap;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
abstract class k {

    /* loaded from: classes.dex */
    private static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f2473a;

        a(ByteBuffer byteBuffer) {
            this.f2473a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.k.c
        public void a(int i10) {
            ByteBuffer byteBuffer = this.f2473a;
            byteBuffer.position(byteBuffer.position() + i10);
        }

        @Override // androidx.emoji2.text.k.c
        public long c() {
            return this.f2473a.position();
        }

        @Override // androidx.emoji2.text.k.c
        public int d() {
            return this.f2473a.getInt();
        }

        @Override // androidx.emoji2.text.k.c
        public long e() {
            return k.c(this.f2473a.getInt());
        }

        @Override // androidx.emoji2.text.k.c
        public int readUnsignedShort() {
            return k.d(this.f2473a.getShort());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final long f2474a;

        /* renamed from: b  reason: collision with root package name */
        private final long f2475b;

        b(long j10, long j11) {
            this.f2474a = j10;
            this.f2475b = j11;
        }

        long a() {
            return this.f2474a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface c {
        void a(int i10);

        long c();

        int d();

        long e();

        int readUnsignedShort();
    }

    private static b a(c cVar) {
        long j10;
        cVar.a(4);
        int readUnsignedShort = cVar.readUnsignedShort();
        if (readUnsignedShort <= 100) {
            cVar.a(6);
            int i10 = 0;
            while (true) {
                if (i10 < readUnsignedShort) {
                    int d10 = cVar.d();
                    cVar.a(4);
                    j10 = cVar.e();
                    cVar.a(4);
                    if (1835365473 == d10) {
                        break;
                    }
                    i10++;
                } else {
                    j10 = -1;
                    break;
                }
            }
            if (j10 != -1) {
                cVar.a((int) (j10 - cVar.c()));
                cVar.a(12);
                long e10 = cVar.e();
                for (int i11 = 0; i11 < e10; i11++) {
                    int d11 = cVar.d();
                    long e11 = cVar.e();
                    long e12 = cVar.e();
                    if (1164798569 == d11 || 1701669481 == d11) {
                        return new b(e11 + j10, e12);
                    }
                }
            }
            throw new IOException("Cannot read metadata.");
        }
        throw new IOException("Cannot read metadata.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q0.b b(ByteBuffer byteBuffer) {
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position((int) a(new a(duplicate)).a());
        return q0.b.h(duplicate);
    }

    static long c(int i10) {
        return i10 & KeyboardMap.kValueMask;
    }

    static int d(short s10) {
        return s10 & 65535;
    }
}
