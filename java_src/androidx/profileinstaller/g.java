package androidx.profileinstaller;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Map;
import java.util.TreeMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f3124a = {112, 114, 111, 0};

    /* renamed from: b  reason: collision with root package name */
    static final byte[] f3125b = {112, 114, 109, 0};

    private static void A(byte[] bArr, int i10, int i11, c cVar) {
        int m10 = m(i10, i11, cVar.f3112g);
        int i12 = m10 / 8;
        bArr[i12] = (byte) ((1 << (m10 % 8)) | bArr[i12]);
    }

    private static void B(InputStream inputStream) {
        d.h(inputStream);
        int j10 = d.j(inputStream);
        if (j10 == 6 || j10 == 7) {
            return;
        }
        while (j10 > 0) {
            d.j(inputStream);
            for (int j11 = d.j(inputStream); j11 > 0; j11--) {
                d.h(inputStream);
            }
            j10--;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean C(OutputStream outputStream, byte[] bArr, c[] cVarArr) {
        if (Arrays.equals(bArr, i.f3137a)) {
            P(outputStream, cVarArr);
            return true;
        } else if (Arrays.equals(bArr, i.f3138b)) {
            O(outputStream, cVarArr);
            return true;
        } else if (Arrays.equals(bArr, i.f3140d)) {
            M(outputStream, cVarArr);
            return true;
        } else if (Arrays.equals(bArr, i.f3139c)) {
            N(outputStream, cVarArr);
            return true;
        } else if (Arrays.equals(bArr, i.f3141e)) {
            L(outputStream, cVarArr);
            return true;
        } else {
            return false;
        }
    }

    private static void D(OutputStream outputStream, c cVar) {
        int i10 = 0;
        for (int i11 : cVar.f3113h) {
            Integer valueOf = Integer.valueOf(i11);
            d.p(outputStream, valueOf.intValue() - i10);
            i10 = valueOf.intValue();
        }
    }

    private static j E(c[] cVarArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            d.p(byteArrayOutputStream, cVarArr.length);
            int i10 = 2;
            for (c cVar : cVarArr) {
                d.q(byteArrayOutputStream, cVar.f3108c);
                d.q(byteArrayOutputStream, cVar.f3109d);
                d.q(byteArrayOutputStream, cVar.f3112g);
                String j10 = j(cVar.f3106a, cVar.f3107b, i.f3137a);
                int k10 = d.k(j10);
                d.p(byteArrayOutputStream, k10);
                i10 = i10 + 4 + 4 + 4 + 2 + (k10 * 1);
                d.n(byteArrayOutputStream, j10);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (i10 == byteArray.length) {
                j jVar = new j(e.DEX_FILES, i10, byteArray, false);
                byteArrayOutputStream.close();
                return jVar;
            }
            throw d.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void F(OutputStream outputStream, byte[] bArr) {
        outputStream.write(f3124a);
        outputStream.write(bArr);
    }

    private static void G(OutputStream outputStream, c cVar) {
        K(outputStream, cVar);
        D(outputStream, cVar);
        I(outputStream, cVar);
    }

    private static void H(OutputStream outputStream, c cVar, String str) {
        d.p(outputStream, d.k(str));
        d.p(outputStream, cVar.f3110e);
        d.q(outputStream, cVar.f3111f);
        d.q(outputStream, cVar.f3108c);
        d.q(outputStream, cVar.f3112g);
        d.n(outputStream, str);
    }

    private static void I(OutputStream outputStream, c cVar) {
        byte[] bArr = new byte[k(cVar.f3112g)];
        for (Map.Entry entry : cVar.f3114i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue2 & 2) != 0) {
                A(bArr, 2, intValue, cVar);
            }
            if ((intValue2 & 4) != 0) {
                A(bArr, 4, intValue, cVar);
            }
        }
        outputStream.write(bArr);
    }

    private static void J(OutputStream outputStream, int i10, c cVar) {
        byte[] bArr = new byte[l(i10, cVar.f3112g)];
        for (Map.Entry entry : cVar.f3114i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            int i11 = 0;
            for (int i12 = 1; i12 <= 4; i12 <<= 1) {
                if (i12 != 1 && (i12 & i10) != 0) {
                    if ((i12 & intValue2) == i12) {
                        int i13 = (cVar.f3112g * i11) + intValue;
                        int i14 = i13 / 8;
                        bArr[i14] = (byte) ((1 << (i13 % 8)) | bArr[i14]);
                    }
                    i11++;
                }
            }
        }
        outputStream.write(bArr);
    }

    private static void K(OutputStream outputStream, c cVar) {
        int i10 = 0;
        for (Map.Entry entry : cVar.f3114i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                d.p(outputStream, intValue - i10);
                d.p(outputStream, 0);
                i10 = intValue;
            }
        }
    }

    private static void L(OutputStream outputStream, c[] cVarArr) {
        d.p(outputStream, cVarArr.length);
        for (c cVar : cVarArr) {
            String j10 = j(cVar.f3106a, cVar.f3107b, i.f3141e);
            d.p(outputStream, d.k(j10));
            d.p(outputStream, cVar.f3114i.size());
            d.p(outputStream, cVar.f3113h.length);
            d.q(outputStream, cVar.f3108c);
            d.n(outputStream, j10);
            for (Integer num : cVar.f3114i.keySet()) {
                d.p(outputStream, num.intValue());
            }
            for (int i10 : cVar.f3113h) {
                d.p(outputStream, i10);
            }
        }
    }

    private static void M(OutputStream outputStream, c[] cVarArr) {
        d.r(outputStream, cVarArr.length);
        for (c cVar : cVarArr) {
            String j10 = j(cVar.f3106a, cVar.f3107b, i.f3140d);
            d.p(outputStream, d.k(j10));
            d.p(outputStream, cVar.f3113h.length);
            d.q(outputStream, cVar.f3114i.size() * 4);
            d.q(outputStream, cVar.f3108c);
            d.n(outputStream, j10);
            for (Integer num : cVar.f3114i.keySet()) {
                d.p(outputStream, num.intValue());
                d.p(outputStream, 0);
            }
            for (int i10 : cVar.f3113h) {
                d.p(outputStream, i10);
            }
        }
    }

    private static void N(OutputStream outputStream, c[] cVarArr) {
        byte[] b10 = b(cVarArr, i.f3139c);
        d.r(outputStream, cVarArr.length);
        d.m(outputStream, b10);
    }

    private static void O(OutputStream outputStream, c[] cVarArr) {
        byte[] b10 = b(cVarArr, i.f3138b);
        d.r(outputStream, cVarArr.length);
        d.m(outputStream, b10);
    }

    private static void P(OutputStream outputStream, c[] cVarArr) {
        Q(outputStream, cVarArr);
    }

    private static void Q(OutputStream outputStream, c[] cVarArr) {
        int length;
        byte[] bArr;
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        arrayList.add(E(cVarArr));
        arrayList.add(c(cVarArr));
        arrayList.add(d(cVarArr));
        long length2 = i.f3137a.length + f3124a.length + 4 + (arrayList.size() * 16);
        d.q(outputStream, arrayList.size());
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            j jVar = (j) arrayList.get(i10);
            d.q(outputStream, jVar.f3144a.b());
            d.q(outputStream, length2);
            if (jVar.f3147d) {
                byte[] b10 = d.b(jVar.f3146c);
                arrayList2.add(b10);
                d.q(outputStream, b10.length);
                d.q(outputStream, bArr.length);
                length = b10.length;
            } else {
                arrayList2.add(jVar.f3146c);
                d.q(outputStream, jVar.f3146c.length);
                d.q(outputStream, 0L);
                length = jVar.f3146c.length;
            }
            length2 += length;
        }
        for (int i11 = 0; i11 < arrayList2.size(); i11++) {
            outputStream.write((byte[]) arrayList2.get(i11));
        }
    }

    private static int a(c cVar) {
        int i10 = 0;
        for (Map.Entry entry : cVar.f3114i.entrySet()) {
            i10 |= ((Integer) entry.getValue()).intValue();
        }
        return i10;
    }

    private static byte[] b(c[] cVarArr, byte[] bArr) {
        int i10 = 0;
        int i11 = 0;
        for (c cVar : cVarArr) {
            i11 += d.k(j(cVar.f3106a, cVar.f3107b, bArr)) + 16 + (cVar.f3110e * 2) + cVar.f3111f + k(cVar.f3112g);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i11);
        if (Arrays.equals(bArr, i.f3139c)) {
            int length = cVarArr.length;
            while (i10 < length) {
                c cVar2 = cVarArr[i10];
                H(byteArrayOutputStream, cVar2, j(cVar2.f3106a, cVar2.f3107b, bArr));
                G(byteArrayOutputStream, cVar2);
                i10++;
            }
        } else {
            for (c cVar3 : cVarArr) {
                H(byteArrayOutputStream, cVar3, j(cVar3.f3106a, cVar3.f3107b, bArr));
            }
            int length2 = cVarArr.length;
            while (i10 < length2) {
                G(byteArrayOutputStream, cVarArr[i10]);
                i10++;
            }
        }
        if (byteArrayOutputStream.size() == i11) {
            return byteArrayOutputStream.toByteArray();
        }
        throw d.c("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i11);
    }

    private static j c(c[] cVarArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        for (int i11 = 0; i11 < cVarArr.length; i11++) {
            try {
                c cVar = cVarArr[i11];
                d.p(byteArrayOutputStream, i11);
                d.p(byteArrayOutputStream, cVar.f3110e);
                i10 = i10 + 2 + 2 + (cVar.f3110e * 2);
                D(byteArrayOutputStream, cVar);
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i10 == byteArray.length) {
            j jVar = new j(e.CLASSES, i10, byteArray, true);
            byteArrayOutputStream.close();
            return jVar;
        }
        throw d.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
    }

    private static j d(c[] cVarArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = 0;
        for (int i11 = 0; i11 < cVarArr.length; i11++) {
            try {
                c cVar = cVarArr[i11];
                int a10 = a(cVar);
                byte[] e10 = e(a10, cVar);
                byte[] f10 = f(cVar);
                d.p(byteArrayOutputStream, i11);
                int length = e10.length + 2 + f10.length;
                d.q(byteArrayOutputStream, length);
                d.p(byteArrayOutputStream, a10);
                byteArrayOutputStream.write(e10);
                byteArrayOutputStream.write(f10);
                i10 = i10 + 2 + 4 + length;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i10 == byteArray.length) {
            j jVar = new j(e.METHODS, i10, byteArray, true);
            byteArrayOutputStream.close();
            return jVar;
        }
        throw d.c("Expected size " + i10 + ", does not match actual size " + byteArray.length);
    }

    private static byte[] e(int i10, c cVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            J(byteArrayOutputStream, i10, cVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static byte[] f(c cVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            K(byteArrayOutputStream, cVar);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static String g(String str, String str2) {
        if ("!".equals(str2)) {
            return str.replace(":", "!");
        }
        if (":".equals(str2)) {
            return str.replace("!", ":");
        }
        return str;
    }

    private static String h(String str) {
        int indexOf = str.indexOf("!");
        if (indexOf < 0) {
            indexOf = str.indexOf(":");
        }
        if (indexOf > 0) {
            return str.substring(indexOf + 1);
        }
        return str;
    }

    private static c i(c[] cVarArr, String str) {
        if (cVarArr.length <= 0) {
            return null;
        }
        String h10 = h(str);
        for (int i10 = 0; i10 < cVarArr.length; i10++) {
            if (cVarArr[i10].f3107b.equals(h10)) {
                return cVarArr[i10];
            }
        }
        return null;
    }

    private static String j(String str, String str2, byte[] bArr) {
        String a10 = i.a(bArr);
        if (str.length() <= 0) {
            return g(str2, a10);
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (!str2.contains("!") && !str2.contains(":")) {
            if (str2.endsWith(".apk")) {
                return str2;
            }
            return str + i.a(bArr) + str2;
        }
        return g(str2, a10);
    }

    private static int k(int i10) {
        return z(i10 * 2) / 8;
    }

    private static int l(int i10, int i11) {
        return z(Integer.bitCount(i10 & (-2)) * i11) / 8;
    }

    private static int m(int i10, int i11, int i12) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 4) {
                    return i11 + i12;
                }
                throw d.c("Unexpected flag: " + i10);
            }
            return i11;
        }
        throw d.c("HOT methods are not stored in the bitmap");
    }

    private static int[] n(InputStream inputStream, int i10) {
        int[] iArr = new int[i10];
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += d.h(inputStream);
            iArr[i12] = i11;
        }
        return iArr;
    }

    private static int o(BitSet bitSet, int i10, int i11) {
        int i12 = 2;
        if (!bitSet.get(m(2, i10, i11))) {
            i12 = 0;
        }
        if (bitSet.get(m(4, i10, i11))) {
            return i12 | 4;
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] p(InputStream inputStream, byte[] bArr) {
        if (Arrays.equals(bArr, d.d(inputStream, bArr.length))) {
            return d.d(inputStream, i.f3138b.length);
        }
        throw d.c("Invalid magic");
    }

    private static void q(InputStream inputStream, c cVar) {
        int available = inputStream.available() - cVar.f3111f;
        int i10 = 0;
        while (inputStream.available() > available) {
            i10 += d.h(inputStream);
            cVar.f3114i.put(Integer.valueOf(i10), 1);
            for (int h10 = d.h(inputStream); h10 > 0; h10--) {
                B(inputStream);
            }
        }
        if (inputStream.available() == available) {
            return;
        }
        throw d.c("Read too much data during profile line parse");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c[] r(InputStream inputStream, byte[] bArr, byte[] bArr2, c[] cVarArr) {
        if (Arrays.equals(bArr, i.f3142f)) {
            if (!Arrays.equals(i.f3137a, bArr2)) {
                return s(inputStream, bArr, cVarArr);
            }
            throw d.c("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
        } else if (Arrays.equals(bArr, i.f3143g)) {
            return u(inputStream, bArr2, cVarArr);
        } else {
            throw d.c("Unsupported meta version");
        }
    }

    static c[] s(InputStream inputStream, byte[] bArr, c[] cVarArr) {
        if (Arrays.equals(bArr, i.f3142f)) {
            int j10 = d.j(inputStream);
            byte[] e10 = d.e(inputStream, (int) d.i(inputStream), (int) d.i(inputStream));
            if (inputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(e10);
                try {
                    c[] t10 = t(byteArrayInputStream, j10, cVarArr);
                    byteArrayInputStream.close();
                    return t10;
                } catch (Throwable th) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            throw d.c("Content found after the end of file");
        }
        throw d.c("Unsupported meta version");
    }

    private static c[] t(InputStream inputStream, int i10, c[] cVarArr) {
        if (inputStream.available() == 0) {
            return new c[0];
        }
        if (i10 == cVarArr.length) {
            String[] strArr = new String[i10];
            int[] iArr = new int[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                int h10 = d.h(inputStream);
                iArr[i11] = d.h(inputStream);
                strArr[i11] = d.f(inputStream, h10);
            }
            for (int i12 = 0; i12 < i10; i12++) {
                c cVar = cVarArr[i12];
                if (cVar.f3107b.equals(strArr[i12])) {
                    int i13 = iArr[i12];
                    cVar.f3110e = i13;
                    cVar.f3113h = n(inputStream, i13);
                } else {
                    throw d.c("Order of dexfiles in metadata did not match baseline");
                }
            }
            return cVarArr;
        }
        throw d.c("Mismatched number of dex files found in metadata");
    }

    static c[] u(InputStream inputStream, byte[] bArr, c[] cVarArr) {
        int h10 = d.h(inputStream);
        byte[] e10 = d.e(inputStream, (int) d.i(inputStream), (int) d.i(inputStream));
        if (inputStream.read() <= 0) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(e10);
            try {
                c[] v10 = v(byteArrayInputStream, bArr, h10, cVarArr);
                byteArrayInputStream.close();
                return v10;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        throw d.c("Content found after the end of file");
    }

    private static c[] v(InputStream inputStream, byte[] bArr, int i10, c[] cVarArr) {
        if (inputStream.available() == 0) {
            return new c[0];
        }
        if (i10 == cVarArr.length) {
            for (int i11 = 0; i11 < i10; i11++) {
                d.h(inputStream);
                String f10 = d.f(inputStream, d.h(inputStream));
                long i12 = d.i(inputStream);
                int h10 = d.h(inputStream);
                c i13 = i(cVarArr, f10);
                if (i13 != null) {
                    i13.f3109d = i12;
                    int[] n10 = n(inputStream, h10);
                    if (Arrays.equals(bArr, i.f3141e)) {
                        i13.f3110e = h10;
                        i13.f3113h = n10;
                    }
                } else {
                    throw d.c("Missing profile key: " + f10);
                }
            }
            return cVarArr;
        }
        throw d.c("Mismatched number of dex files found in metadata");
    }

    private static void w(InputStream inputStream, c cVar) {
        BitSet valueOf = BitSet.valueOf(d.d(inputStream, d.a(cVar.f3112g * 2)));
        int i10 = 0;
        while (true) {
            int i11 = cVar.f3112g;
            if (i10 < i11) {
                int o10 = o(valueOf, i10, i11);
                if (o10 != 0) {
                    Integer num = (Integer) cVar.f3114i.get(Integer.valueOf(i10));
                    if (num == null) {
                        num = 0;
                    }
                    cVar.f3114i.put(Integer.valueOf(i10), Integer.valueOf(o10 | num.intValue()));
                }
                i10++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c[] x(InputStream inputStream, byte[] bArr, String str) {
        if (Arrays.equals(bArr, i.f3138b)) {
            int j10 = d.j(inputStream);
            byte[] e10 = d.e(inputStream, (int) d.i(inputStream), (int) d.i(inputStream));
            if (inputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(e10);
                try {
                    c[] y10 = y(byteArrayInputStream, str, j10);
                    byteArrayInputStream.close();
                    return y10;
                } catch (Throwable th) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            throw d.c("Content found after the end of file");
        }
        throw d.c("Unsupported version");
    }

    private static c[] y(InputStream inputStream, String str, int i10) {
        if (inputStream.available() == 0) {
            return new c[0];
        }
        c[] cVarArr = new c[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            int h10 = d.h(inputStream);
            int h11 = d.h(inputStream);
            cVarArr[i11] = new c(str, d.f(inputStream, h10), d.i(inputStream), 0L, h11, (int) d.i(inputStream), (int) d.i(inputStream), new int[h11], new TreeMap());
        }
        for (int i12 = 0; i12 < i10; i12++) {
            c cVar = cVarArr[i12];
            q(inputStream, cVar);
            cVar.f3113h = n(inputStream, cVar.f3110e);
            w(inputStream, cVar);
        }
        return cVarArr;
    }

    private static int z(int i10) {
        return ((i10 + 8) - 1) & (-8);
    }
}
