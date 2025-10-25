package o3;

import g3.b0;
/* loaded from: classes.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f27288a;

    /* renamed from: b  reason: collision with root package name */
    public final String f27289b;

    /* renamed from: c  reason: collision with root package name */
    public final b0.a f27290c;

    /* renamed from: d  reason: collision with root package name */
    public final int f27291d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f27292e;

    public p(boolean z10, String str, int i10, byte[] bArr, int i11, int i12, byte[] bArr2) {
        boolean z11;
        if (i10 == 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        y4.a.a((bArr2 == null) ^ z11);
        this.f27288a = z10;
        this.f27289b = str;
        this.f27291d = i10;
        this.f27292e = bArr2;
        this.f27290c = new b0.a(a(str), bArr, i11, i12);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static int a(String str) {
        if (str == null) {
            return 1;
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals("cbc1")) {
                    c10 = 0;
                    break;
                }
                break;
            case 3046671:
                if (str.equals("cbcs")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3049879:
                if (str.equals("cenc")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3049895:
                if (str.equals("cens")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                return 2;
            case 2:
            case 3:
                break;
            default:
                y4.r.i("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                break;
        }
        return 1;
    }
}
