package o3;

import java.nio.ByteBuffer;
import java.util.UUID;
import y4.e0;
/* loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final UUID f27265a;

        /* renamed from: b  reason: collision with root package name */
        private final int f27266b;

        /* renamed from: c  reason: collision with root package name */
        private final byte[] f27267c;

        public a(UUID uuid, int i10, byte[] bArr) {
            this.f27265a = uuid;
            this.f27266b = i10;
            this.f27267c = bArr;
        }
    }

    public static byte[] a(UUID uuid, byte[] bArr) {
        return b(uuid, null, bArr);
    }

    public static byte[] b(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int i10;
        int i11;
        if (bArr != null) {
            i10 = bArr.length;
        } else {
            i10 = 0;
        }
        int i12 = i10 + 32;
        if (uuidArr != null) {
            i12 += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(i12);
        allocate.putInt(i12);
        allocate.putInt(1886614376);
        if (uuidArr != null) {
            i11 = 16777216;
        } else {
            i11 = 0;
        }
        allocate.putInt(i11);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    public static boolean c(byte[] bArr) {
        if (d(bArr) != null) {
            return true;
        }
        return false;
    }

    private static a d(byte[] bArr) {
        e0 e0Var = new e0(bArr);
        if (e0Var.g() < 32) {
            return null;
        }
        e0Var.T(0);
        if (e0Var.p() != e0Var.a() + 4 || e0Var.p() != 1886614376) {
            return null;
        }
        int c10 = o3.a.c(e0Var.p());
        if (c10 > 1) {
            y4.r.i("PsshAtomUtil", "Unsupported pssh version: " + c10);
            return null;
        }
        UUID uuid = new UUID(e0Var.z(), e0Var.z());
        if (c10 == 1) {
            e0Var.U(e0Var.K() * 16);
        }
        int K = e0Var.K();
        if (K != e0Var.a()) {
            return null;
        }
        byte[] bArr2 = new byte[K];
        e0Var.l(bArr2, 0, K);
        return new a(uuid, c10, bArr2);
    }

    public static byte[] e(byte[] bArr, UUID uuid) {
        a d10 = d(bArr);
        if (d10 == null) {
            return null;
        }
        if (uuid.equals(d10.f27265a)) {
            return d10.f27267c;
        }
        y4.r.i("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + d10.f27265a + ".");
        return null;
    }

    public static UUID f(byte[] bArr) {
        a d10 = d(bArr);
        if (d10 != null) {
            return d10.f27265a;
        }
        return null;
    }

    public static int g(byte[] bArr) {
        a d10 = d(bArr);
        if (d10 != null) {
            return d10.f27266b;
        }
        return -1;
    }
}
