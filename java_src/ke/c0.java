package ke;
/* loaded from: classes2.dex */
public abstract class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f24896a;

    /* renamed from: b  reason: collision with root package name */
    private static final byte[] f24897b;

    static {
        String[] strArr = new String[93];
        for (int i10 = 0; i10 < 32; i10++) {
            strArr[i10] = "\\u" + c(i10 >> 12) + c(i10 >> 8) + c(i10 >> 4) + c(i10);
        }
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        f24896a = strArr;
        byte[] bArr = new byte[93];
        for (int i11 = 0; i11 < 32; i11++) {
            bArr[i11] = 1;
        }
        bArr[34] = 34;
        bArr[92] = 92;
        bArr[9] = 116;
        bArr[8] = 98;
        bArr[10] = 110;
        bArr[13] = 114;
        bArr[12] = 102;
        f24897b = bArr;
    }

    public static final byte[] a() {
        return f24897b;
    }

    public static final String[] b() {
        return f24896a;
    }

    private static final char c(int i10) {
        int i11 = i10 & 15;
        return (char) (i11 < 10 ? i11 + 48 : (i11 - 10) + 97);
    }
}
