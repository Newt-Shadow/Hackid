package j9;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Map;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes.dex */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f24555a = Charset.defaultCharset();

    /* renamed from: b  reason: collision with root package name */
    public static final Charset f24556b = Charset.forName("SJIS");

    /* renamed from: c  reason: collision with root package name */
    public static final Charset f24557c;

    /* renamed from: d  reason: collision with root package name */
    private static final Charset f24558d;

    /* renamed from: e  reason: collision with root package name */
    private static final boolean f24559e;

    static {
        Charset charset;
        boolean z10;
        try {
            charset = Charset.forName("GB2312");
        } catch (UnsupportedCharsetException unused) {
            charset = null;
        }
        f24557c = charset;
        Charset forName = Charset.forName("EUC_JP");
        f24558d = forName;
        Charset charset2 = f24556b;
        Charset charset3 = f24555a;
        if (!charset2.equals(charset3) && !forName.equals(charset3)) {
            z10 = false;
        } else {
            z10 = true;
        }
        f24559e = z10;
    }

    public static Charset a(byte[] bArr, Map map) {
        boolean z10;
        byte b10;
        byte[] bArr2 = bArr;
        if (map != null) {
            d9.e eVar = d9.e.CHARACTER_SET;
            if (map.containsKey(eVar)) {
                return Charset.forName(map.get(eVar).toString());
            }
        }
        boolean z11 = true;
        int i10 = 0;
        if (bArr2.length > 2 && (((b10 = bArr2[0]) == -2 && bArr2[1] == -1) || (b10 == -1 && bArr2[1] == -2))) {
            return StandardCharsets.UTF_16;
        }
        int length = bArr2.length;
        if (bArr2.length > 3 && bArr2[0] == -17 && bArr2[1] == -69 && bArr2[2] == -65) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z12 = true;
        boolean z13 = true;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        while (i12 < length && (z11 || z12 || z13)) {
            int i22 = bArr2[i12] & ForkServer.ERROR;
            if (z13) {
                if (i13 > 0) {
                    if ((i22 & 128) != 0) {
                        i13--;
                    }
                    z13 = false;
                } else if ((i22 & 128) != 0) {
                    if ((i22 & 64) != 0) {
                        i13++;
                        if ((i22 & 32) == 0) {
                            i15++;
                        } else {
                            i13++;
                            if ((i22 & 16) == 0) {
                                i16++;
                            } else {
                                i13++;
                                if ((i22 & 8) == 0) {
                                    i17++;
                                }
                            }
                        }
                    }
                    z13 = false;
                }
            }
            if (z11) {
                if (i22 > 127 && i22 < 160) {
                    z11 = false;
                } else if (i22 > 159 && (i22 < 192 || i22 == 215 || i22 == 247)) {
                    i19++;
                }
            }
            if (z12) {
                if (i14 > 0) {
                    if (i22 >= 64 && i22 != 127 && i22 <= 252) {
                        i14--;
                    }
                    z12 = false;
                } else {
                    if (i22 != 128 && i22 != 160 && i22 <= 239) {
                        if (i22 > 160 && i22 < 224) {
                            i11++;
                            int i23 = i21 + 1;
                            if (i23 > i18) {
                                i18 = i23;
                                i21 = i18;
                            } else {
                                i21 = i23;
                            }
                            i20 = 0;
                        } else {
                            if (i22 > 127) {
                                i14++;
                                int i24 = i20 + 1;
                                if (i24 > i10) {
                                    i10 = i24;
                                    i20 = i10;
                                } else {
                                    i20 = i24;
                                }
                            } else {
                                i20 = 0;
                            }
                            i21 = 0;
                        }
                    }
                    z12 = false;
                }
            }
            i12++;
            bArr2 = bArr;
        }
        if (z13 && i13 > 0) {
            z13 = false;
        }
        if (z12 && i14 > 0) {
            z12 = false;
        }
        if (z13 && (z10 || i15 + i16 + i17 > 0)) {
            return StandardCharsets.UTF_8;
        }
        if (z12 && (f24559e || i18 >= 3 || i10 >= 3)) {
            return f24556b;
        }
        if (z11 && z12) {
            if ((i18 == 2 && i11 == 2) || i19 * 10 >= length) {
                return f24556b;
            }
            return StandardCharsets.ISO_8859_1;
        } else if (z11) {
            return StandardCharsets.ISO_8859_1;
        } else {
            if (z12) {
                return f24556b;
            }
            if (z13) {
                return StandardCharsets.UTF_8;
            }
            return f24555a;
        }
    }
}
