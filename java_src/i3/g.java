package i3;

import b3.x1;
import o6.q;
import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
final class g implements a {

    /* renamed from: a  reason: collision with root package name */
    public final x1 f17108a;

    public g(x1 x1Var) {
        this.f17108a = x1Var;
    }

    private static String a(int i10) {
        switch (i10) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return "video/mp4v-es";
            case 826496577:
            case 828601953:
            case 875967048:
                return "video/avc";
            case 842289229:
                return "video/mp42";
            case 859066445:
                return "video/mp43";
            case 1196444237:
            case 1735420525:
                return "video/mjpeg";
            default:
                return null;
        }
    }

    private static String b(int i10) {
        if (i10 != 1) {
            if (i10 != 85) {
                if (i10 != 255) {
                    if (i10 != 8192) {
                        if (i10 != 8193) {
                            return null;
                        }
                        return "audio/vnd.dts";
                    }
                    return "audio/ac3";
                }
                return "audio/mp4a-latm";
            }
            return "audio/mpeg";
        }
        return "audio/raw";
    }

    private static a c(e0 e0Var) {
        e0Var.U(4);
        int t10 = e0Var.t();
        int t11 = e0Var.t();
        e0Var.U(4);
        int t12 = e0Var.t();
        String a10 = a(t12);
        if (a10 == null) {
            r.i("StreamFormatChunk", "Ignoring track with unsupported compression " + t12);
            return null;
        }
        x1.b bVar = new x1.b();
        bVar.n0(t10).S(t11).g0(a10);
        return new g(bVar.G());
    }

    public static a d(int i10, e0 e0Var) {
        if (i10 == 2) {
            return c(e0Var);
        }
        if (i10 == 1) {
            return e(e0Var);
        }
        r.i("StreamFormatChunk", "Ignoring strf box for unsupported track type: " + q0.k0(i10));
        return null;
    }

    private static a e(e0 e0Var) {
        int y10 = e0Var.y();
        String b10 = b(y10);
        if (b10 == null) {
            r.i("StreamFormatChunk", "Ignoring track with unsupported format tag " + y10);
            return null;
        }
        int y11 = e0Var.y();
        int t10 = e0Var.t();
        e0Var.U(6);
        int b02 = q0.b0(e0Var.M());
        int y12 = e0Var.y();
        byte[] bArr = new byte[y12];
        e0Var.l(bArr, 0, y12);
        x1.b bVar = new x1.b();
        bVar.g0(b10).J(y11).h0(t10);
        if ("audio/raw".equals(b10) && b02 != 0) {
            bVar.a0(b02);
        }
        if ("audio/mp4a-latm".equals(b10) && y12 > 0) {
            bVar.V(q.F(bArr));
        }
        return new g(bVar.G());
    }

    @Override // i3.a
    public int getType() {
        return 1718776947;
    }
}
