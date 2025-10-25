package o4;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import io.appmetrica.analytics.impl.C1415p9;
import io.flutter.Build;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.KotlinVersion;
import m4.b;
import y4.d0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
final class b {

    /* renamed from: h  reason: collision with root package name */
    private static final byte[] f27320h = {0, 7, 8, 15};

    /* renamed from: i  reason: collision with root package name */
    private static final byte[] f27321i = {0, 119, -120, -1};

    /* renamed from: j  reason: collision with root package name */
    private static final byte[] f27322j = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};

    /* renamed from: a  reason: collision with root package name */
    private final Paint f27323a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f27324b;

    /* renamed from: c  reason: collision with root package name */
    private final Canvas f27325c;

    /* renamed from: d  reason: collision with root package name */
    private final C0271b f27326d;

    /* renamed from: e  reason: collision with root package name */
    private final a f27327e;

    /* renamed from: f  reason: collision with root package name */
    private final h f27328f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f27329g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f27330a;

        /* renamed from: b  reason: collision with root package name */
        public final int[] f27331b;

        /* renamed from: c  reason: collision with root package name */
        public final int[] f27332c;

        /* renamed from: d  reason: collision with root package name */
        public final int[] f27333d;

        public a(int i10, int[] iArr, int[] iArr2, int[] iArr3) {
            this.f27330a = i10;
            this.f27331b = iArr;
            this.f27332c = iArr2;
            this.f27333d = iArr3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o4.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0271b {

        /* renamed from: a  reason: collision with root package name */
        public final int f27334a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27335b;

        /* renamed from: c  reason: collision with root package name */
        public final int f27336c;

        /* renamed from: d  reason: collision with root package name */
        public final int f27337d;

        /* renamed from: e  reason: collision with root package name */
        public final int f27338e;

        /* renamed from: f  reason: collision with root package name */
        public final int f27339f;

        public C0271b(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f27334a = i10;
            this.f27335b = i11;
            this.f27336c = i12;
            this.f27337d = i13;
            this.f27338e = i14;
            this.f27339f = i15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f27340a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f27341b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f27342c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f27343d;

        public c(int i10, boolean z10, byte[] bArr, byte[] bArr2) {
            this.f27340a = i10;
            this.f27341b = z10;
            this.f27342c = bArr;
            this.f27343d = bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final int f27344a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27345b;

        /* renamed from: c  reason: collision with root package name */
        public final int f27346c;

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray f27347d;

        public d(int i10, int i11, int i12, SparseArray sparseArray) {
            this.f27344a = i10;
            this.f27345b = i11;
            this.f27346c = i12;
            this.f27347d = sparseArray;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final int f27348a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27349b;

        public e(int i10, int i11) {
            this.f27348a = i10;
            this.f27349b = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final int f27350a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f27351b;

        /* renamed from: c  reason: collision with root package name */
        public final int f27352c;

        /* renamed from: d  reason: collision with root package name */
        public final int f27353d;

        /* renamed from: e  reason: collision with root package name */
        public final int f27354e;

        /* renamed from: f  reason: collision with root package name */
        public final int f27355f;

        /* renamed from: g  reason: collision with root package name */
        public final int f27356g;

        /* renamed from: h  reason: collision with root package name */
        public final int f27357h;

        /* renamed from: i  reason: collision with root package name */
        public final int f27358i;

        /* renamed from: j  reason: collision with root package name */
        public final int f27359j;

        /* renamed from: k  reason: collision with root package name */
        public final SparseArray f27360k;

        public f(int i10, boolean z10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, SparseArray sparseArray) {
            this.f27350a = i10;
            this.f27351b = z10;
            this.f27352c = i11;
            this.f27353d = i12;
            this.f27354e = i13;
            this.f27355f = i14;
            this.f27356g = i15;
            this.f27357h = i16;
            this.f27358i = i17;
            this.f27359j = i18;
            this.f27360k = sparseArray;
        }

        public void a(f fVar) {
            SparseArray sparseArray = fVar.f27360k;
            for (int i10 = 0; i10 < sparseArray.size(); i10++) {
                this.f27360k.put(sparseArray.keyAt(i10), (g) sparseArray.valueAt(i10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public final int f27361a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27362b;

        /* renamed from: c  reason: collision with root package name */
        public final int f27363c;

        /* renamed from: d  reason: collision with root package name */
        public final int f27364d;

        /* renamed from: e  reason: collision with root package name */
        public final int f27365e;

        /* renamed from: f  reason: collision with root package name */
        public final int f27366f;

        public g(int i10, int i11, int i12, int i13, int i14, int i15) {
            this.f27361a = i10;
            this.f27362b = i11;
            this.f27363c = i12;
            this.f27364d = i13;
            this.f27365e = i14;
            this.f27366f = i15;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h {

        /* renamed from: a  reason: collision with root package name */
        public final int f27367a;

        /* renamed from: b  reason: collision with root package name */
        public final int f27368b;

        /* renamed from: c  reason: collision with root package name */
        public final SparseArray f27369c = new SparseArray();

        /* renamed from: d  reason: collision with root package name */
        public final SparseArray f27370d = new SparseArray();

        /* renamed from: e  reason: collision with root package name */
        public final SparseArray f27371e = new SparseArray();

        /* renamed from: f  reason: collision with root package name */
        public final SparseArray f27372f = new SparseArray();

        /* renamed from: g  reason: collision with root package name */
        public final SparseArray f27373g = new SparseArray();

        /* renamed from: h  reason: collision with root package name */
        public C0271b f27374h;

        /* renamed from: i  reason: collision with root package name */
        public d f27375i;

        public h(int i10, int i11) {
            this.f27367a = i10;
            this.f27368b = i11;
        }

        public void a() {
            this.f27369c.clear();
            this.f27370d.clear();
            this.f27371e.clear();
            this.f27372f.clear();
            this.f27373g.clear();
            this.f27374h = null;
            this.f27375i = null;
        }
    }

    public b(int i10, int i11) {
        Paint paint = new Paint();
        this.f27323a = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.f27324b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.f27325c = new Canvas();
        this.f27326d = new C0271b(719, 575, 0, 719, 0, 575);
        this.f27327e = new a(0, c(), d(), e());
        this.f27328f = new h(i10, i11);
    }

    private static byte[] a(int i10, int i11, d0 d0Var) {
        byte[] bArr = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr[i12] = (byte) d0Var.h(i11);
        }
        return bArr;
    }

    private static int[] c() {
        return new int[]{0, -1, -16777216, -8421505};
    }

    private static int[] d() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i15 = 1; i15 < 16; i15++) {
            if (i15 < 8) {
                if ((i15 & 1) != 0) {
                    i12 = 255;
                } else {
                    i12 = 0;
                }
                if ((i15 & 2) != 0) {
                    i13 = 255;
                } else {
                    i13 = 0;
                }
                if ((i15 & 4) != 0) {
                    i14 = 255;
                } else {
                    i14 = 0;
                }
                iArr[i15] = f(KotlinVersion.MAX_COMPONENT_VALUE, i12, i13, i14);
            } else {
                int i16 = 127;
                if ((i15 & 1) != 0) {
                    i10 = 127;
                } else {
                    i10 = 0;
                }
                if ((i15 & 2) != 0) {
                    i11 = 127;
                } else {
                    i11 = 0;
                }
                if ((i15 & 4) == 0) {
                    i16 = 0;
                }
                iArr[i15] = f(KotlinVersion.MAX_COMPONENT_VALUE, i10, i11, i16);
            }
        }
        return iArr;
    }

    private static int[] e() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i28 = 0; i28 < 256; i28++) {
            int i29 = KotlinVersion.MAX_COMPONENT_VALUE;
            if (i28 < 8) {
                if ((i28 & 1) != 0) {
                    i26 = 255;
                } else {
                    i26 = 0;
                }
                if ((i28 & 2) != 0) {
                    i27 = 255;
                } else {
                    i27 = 0;
                }
                if ((i28 & 4) == 0) {
                    i29 = 0;
                }
                iArr[i28] = f(63, i26, i27, i29);
            } else {
                int i30 = i28 & 136;
                int i31 = 170;
                int i32 = 85;
                if (i30 != 0) {
                    if (i30 != 8) {
                        int i33 = 43;
                        if (i30 != 128) {
                            if (i30 == 136) {
                                if ((i28 & 1) != 0) {
                                    i22 = 43;
                                } else {
                                    i22 = 0;
                                }
                                if ((i28 & 16) != 0) {
                                    i23 = 85;
                                } else {
                                    i23 = 0;
                                }
                                int i34 = i22 + i23;
                                if ((i28 & 2) != 0) {
                                    i24 = 43;
                                } else {
                                    i24 = 0;
                                }
                                if ((i28 & 32) != 0) {
                                    i25 = 85;
                                } else {
                                    i25 = 0;
                                }
                                int i35 = i24 + i25;
                                if ((i28 & 4) == 0) {
                                    i33 = 0;
                                }
                                if ((i28 & 64) == 0) {
                                    i32 = 0;
                                }
                                iArr[i28] = f(KotlinVersion.MAX_COMPONENT_VALUE, i34, i35, i33 + i32);
                            }
                        } else {
                            if ((i28 & 1) != 0) {
                                i18 = 43;
                            } else {
                                i18 = 0;
                            }
                            int i36 = i18 + 127;
                            if ((i28 & 16) != 0) {
                                i19 = 85;
                            } else {
                                i19 = 0;
                            }
                            int i37 = i36 + i19;
                            if ((i28 & 2) != 0) {
                                i20 = 43;
                            } else {
                                i20 = 0;
                            }
                            int i38 = i20 + 127;
                            if ((i28 & 32) != 0) {
                                i21 = 85;
                            } else {
                                i21 = 0;
                            }
                            int i39 = i38 + i21;
                            if ((i28 & 4) == 0) {
                                i33 = 0;
                            }
                            int i40 = i33 + 127;
                            if ((i28 & 64) == 0) {
                                i32 = 0;
                            }
                            iArr[i28] = f(KotlinVersion.MAX_COMPONENT_VALUE, i37, i39, i40 + i32);
                        }
                    } else {
                        if ((i28 & 1) != 0) {
                            i14 = 85;
                        } else {
                            i14 = 0;
                        }
                        if ((i28 & 16) != 0) {
                            i15 = 170;
                        } else {
                            i15 = 0;
                        }
                        int i41 = i14 + i15;
                        if ((i28 & 2) != 0) {
                            i16 = 85;
                        } else {
                            i16 = 0;
                        }
                        if ((i28 & 32) != 0) {
                            i17 = 170;
                        } else {
                            i17 = 0;
                        }
                        int i42 = i16 + i17;
                        if ((i28 & 4) == 0) {
                            i32 = 0;
                        }
                        if ((i28 & 64) == 0) {
                            i31 = 0;
                        }
                        iArr[i28] = f(127, i41, i42, i32 + i31);
                    }
                } else {
                    if ((i28 & 1) != 0) {
                        i10 = 85;
                    } else {
                        i10 = 0;
                    }
                    if ((i28 & 16) != 0) {
                        i11 = 170;
                    } else {
                        i11 = 0;
                    }
                    int i43 = i10 + i11;
                    if ((i28 & 2) != 0) {
                        i12 = 85;
                    } else {
                        i12 = 0;
                    }
                    if ((i28 & 32) != 0) {
                        i13 = 170;
                    } else {
                        i13 = 0;
                    }
                    int i44 = i12 + i13;
                    if ((i28 & 4) == 0) {
                        i32 = 0;
                    }
                    if ((i28 & 64) == 0) {
                        i31 = 0;
                    }
                    iArr[i28] = f(KotlinVersion.MAX_COMPONENT_VALUE, i43, i44, i32 + i31);
                }
            }
        }
        return iArr;
    }

    private static int f(int i10, int i11, int i12, int i13) {
        return (i10 << 24) | (i11 << 16) | (i12 << 8) | i13;
    }

    private static int g(d0 d0Var, int[] iArr, byte[] bArr, int i10, int i11, Paint paint, Canvas canvas) {
        boolean z10;
        int i12;
        int h10;
        int h11;
        int i13 = i10;
        boolean z11 = false;
        while (true) {
            byte h12 = d0Var.h(2);
            if (h12 != 0) {
                z10 = z11;
                i12 = 1;
            } else {
                if (d0Var.g()) {
                    h10 = d0Var.h(3) + 3;
                    h11 = d0Var.h(2);
                } else {
                    if (d0Var.g()) {
                        z10 = z11;
                        i12 = 1;
                    } else {
                        int h13 = d0Var.h(2);
                        if (h13 != 0) {
                            if (h13 != 1) {
                                if (h13 != 2) {
                                    if (h13 != 3) {
                                        z10 = z11;
                                    } else {
                                        h10 = d0Var.h(8) + 29;
                                        h11 = d0Var.h(2);
                                    }
                                } else {
                                    h10 = d0Var.h(4) + 12;
                                    h11 = d0Var.h(2);
                                }
                            } else {
                                z10 = z11;
                                i12 = 2;
                            }
                        } else {
                            z10 = true;
                        }
                        h12 = 0;
                        i12 = 0;
                    }
                    h12 = 0;
                }
                z10 = z11;
                i12 = h10;
                h12 = h11;
            }
            if (i12 != 0 && paint != null) {
                if (bArr != null) {
                    h12 = bArr[h12];
                }
                paint.setColor(iArr[h12]);
                canvas.drawRect(i13, i11, i13 + i12, i11 + 1, paint);
            }
            i13 += i12;
            if (z10) {
                return i13;
            }
            z11 = z10;
        }
    }

    private static int h(d0 d0Var, int[] iArr, byte[] bArr, int i10, int i11, Paint paint, Canvas canvas) {
        boolean z10;
        int i12;
        int h10;
        int h11;
        int i13 = i10;
        boolean z11 = false;
        while (true) {
            byte h12 = d0Var.h(4);
            if (h12 != 0) {
                z10 = z11;
                i12 = 1;
            } else if (!d0Var.g()) {
                int h13 = d0Var.h(3);
                if (h13 != 0) {
                    z10 = z11;
                    i12 = h13 + 2;
                    h12 = 0;
                } else {
                    z10 = true;
                    h12 = 0;
                    i12 = 0;
                }
            } else {
                if (!d0Var.g()) {
                    h10 = d0Var.h(2) + 4;
                    h11 = d0Var.h(4);
                } else {
                    int h14 = d0Var.h(2);
                    if (h14 != 0) {
                        if (h14 != 1) {
                            if (h14 != 2) {
                                if (h14 != 3) {
                                    z10 = z11;
                                    h12 = 0;
                                    i12 = 0;
                                } else {
                                    h10 = d0Var.h(8) + 25;
                                    h11 = d0Var.h(4);
                                }
                            } else {
                                h10 = d0Var.h(4) + 9;
                                h11 = d0Var.h(4);
                            }
                        } else {
                            z10 = z11;
                            i12 = 2;
                        }
                    } else {
                        z10 = z11;
                        i12 = 1;
                    }
                    h12 = 0;
                }
                z10 = z11;
                i12 = h10;
                h12 = h11;
            }
            if (i12 != 0 && paint != null) {
                if (bArr != null) {
                    h12 = bArr[h12];
                }
                paint.setColor(iArr[h12]);
                canvas.drawRect(i13, i11, i13 + i12, i11 + 1, paint);
            }
            i13 += i12;
            if (z10) {
                return i13;
            }
            z11 = z10;
        }
    }

    private static int i(d0 d0Var, int[] iArr, byte[] bArr, int i10, int i11, Paint paint, Canvas canvas) {
        boolean z10;
        int h10;
        int i12 = i10;
        boolean z11 = false;
        while (true) {
            byte h11 = d0Var.h(8);
            if (h11 != 0) {
                z10 = z11;
                h10 = 1;
            } else if (!d0Var.g()) {
                int h12 = d0Var.h(7);
                if (h12 != 0) {
                    z10 = z11;
                    h10 = h12;
                    h11 = 0;
                } else {
                    z10 = true;
                    h11 = 0;
                    h10 = 0;
                }
            } else {
                z10 = z11;
                h10 = d0Var.h(7);
                h11 = d0Var.h(8);
            }
            if (h10 != 0 && paint != null) {
                if (bArr != null) {
                    h11 = bArr[h11];
                }
                paint.setColor(iArr[h11]);
                canvas.drawRect(i12, i11, i12 + h10, i11 + 1, paint);
            }
            i12 += h10;
            if (z10) {
                return i12;
            }
            z11 = z10;
        }
    }

    private static void j(byte[] bArr, int[] iArr, int i10, int i11, int i12, Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5;
        d0 d0Var = new d0(bArr);
        int i13 = i11;
        int i14 = i12;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        byte[] bArr8 = null;
        while (d0Var.b() != 0) {
            int h10 = d0Var.h(8);
            if (h10 != 240) {
                switch (h10) {
                    case 16:
                        if (i10 == 3) {
                            if (bArr6 == null) {
                                bArr3 = f27321i;
                            } else {
                                bArr3 = bArr6;
                            }
                        } else if (i10 == 2) {
                            if (bArr8 == null) {
                                bArr3 = f27320h;
                            } else {
                                bArr3 = bArr8;
                            }
                        } else {
                            bArr2 = null;
                            i13 = g(d0Var, iArr, bArr2, i13, i14, paint, canvas);
                            d0Var.c();
                            continue;
                        }
                        bArr2 = bArr3;
                        i13 = g(d0Var, iArr, bArr2, i13, i14, paint, canvas);
                        d0Var.c();
                        continue;
                    case 17:
                        if (i10 == 3) {
                            if (bArr7 == null) {
                                bArr5 = f27322j;
                            } else {
                                bArr5 = bArr7;
                            }
                            bArr4 = bArr5;
                        } else {
                            bArr4 = null;
                        }
                        i13 = h(d0Var, iArr, bArr4, i13, i14, paint, canvas);
                        d0Var.c();
                        continue;
                    case 18:
                        i13 = i(d0Var, iArr, null, i13, i14, paint, canvas);
                        continue;
                    default:
                        switch (h10) {
                            case Build.API_LEVELS.API_32 /* 32 */:
                                bArr8 = a(4, 4, d0Var);
                                continue;
                            case Build.API_LEVELS.API_33 /* 33 */:
                                bArr6 = a(4, 8, d0Var);
                                continue;
                            case Build.API_LEVELS.API_34 /* 34 */:
                                bArr7 = a(16, 8, d0Var);
                                continue;
                            default:
                                continue;
                        }
                }
            } else {
                i14 += 2;
                i13 = i11;
            }
        }
    }

    private static void k(c cVar, a aVar, int i10, int i11, int i12, Paint paint, Canvas canvas) {
        int[] iArr;
        if (i10 == 3) {
            iArr = aVar.f27333d;
        } else if (i10 == 2) {
            iArr = aVar.f27332c;
        } else {
            iArr = aVar.f27331b;
        }
        int[] iArr2 = iArr;
        j(cVar.f27342c, iArr2, i10, i11, i12, paint, canvas);
        j(cVar.f27343d, iArr2, i10, i11, i12 + 1, paint, canvas);
    }

    private static a l(d0 d0Var, int i10) {
        int[] iArr;
        int h10;
        int i11;
        int h11;
        int h12;
        int i12;
        int i13 = 8;
        int h13 = d0Var.h(8);
        d0Var.r(8);
        int i14 = 2;
        int i15 = i10 - 2;
        int[] c10 = c();
        int[] d10 = d();
        int[] e10 = e();
        while (i15 > 0) {
            int h14 = d0Var.h(i13);
            int h15 = d0Var.h(i13);
            int i16 = i15 - 2;
            if ((h15 & 128) != 0) {
                iArr = c10;
            } else if ((h15 & 64) != 0) {
                iArr = d10;
            } else {
                iArr = e10;
            }
            if ((h15 & 1) != 0) {
                h12 = d0Var.h(i13);
                i12 = d0Var.h(i13);
                h10 = d0Var.h(i13);
                h11 = d0Var.h(i13);
                i11 = i16 - 4;
            } else {
                int h16 = d0Var.h(4) << 4;
                h10 = d0Var.h(4) << 4;
                i11 = i16 - 2;
                h11 = d0Var.h(i14) << 6;
                h12 = d0Var.h(6) << i14;
                i12 = h16;
            }
            if (h12 == 0) {
                h11 = 255;
                i12 = 0;
                h10 = 0;
            }
            double d11 = h12;
            double d12 = i12 - 128;
            double d13 = h10 - 128;
            iArr[h14] = f((byte) (255 - (h11 & KotlinVersion.MAX_COMPONENT_VALUE)), q0.q((int) (d11 + (1.402d * d12)), 0, KotlinVersion.MAX_COMPONENT_VALUE), q0.q((int) ((d11 - (0.34414d * d13)) - (d12 * 0.71414d)), 0, KotlinVersion.MAX_COMPONENT_VALUE), q0.q((int) (d11 + (d13 * 1.772d)), 0, KotlinVersion.MAX_COMPONENT_VALUE));
            i15 = i11;
            h13 = h13;
            i13 = 8;
            i14 = 2;
        }
        return new a(h13, c10, d10, e10);
    }

    private static C0271b m(d0 d0Var) {
        int i10;
        int i11;
        int i12;
        int i13;
        d0Var.r(4);
        boolean g10 = d0Var.g();
        d0Var.r(3);
        int h10 = d0Var.h(16);
        int h11 = d0Var.h(16);
        if (g10) {
            int h12 = d0Var.h(16);
            int h13 = d0Var.h(16);
            int h14 = d0Var.h(16);
            i13 = d0Var.h(16);
            i12 = h13;
            i11 = h14;
            i10 = h12;
        } else {
            i10 = 0;
            i11 = 0;
            i12 = h10;
            i13 = h11;
        }
        return new C0271b(h10, h11, i10, i12, i11, i13);
    }

    private static c n(d0 d0Var) {
        byte[] bArr;
        int h10 = d0Var.h(16);
        d0Var.r(4);
        int h11 = d0Var.h(2);
        boolean g10 = d0Var.g();
        d0Var.r(1);
        byte[] bArr2 = q0.f32951f;
        if (h11 == 1) {
            d0Var.r(d0Var.h(8) * 16);
        } else if (h11 == 0) {
            int h12 = d0Var.h(16);
            int h13 = d0Var.h(16);
            if (h12 > 0) {
                bArr2 = new byte[h12];
                d0Var.k(bArr2, 0, h12);
            }
            if (h13 > 0) {
                bArr = new byte[h13];
                d0Var.k(bArr, 0, h13);
                return new c(h10, g10, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new c(h10, g10, bArr2, bArr);
    }

    private static d o(d0 d0Var, int i10) {
        int h10 = d0Var.h(8);
        int h11 = d0Var.h(4);
        int h12 = d0Var.h(2);
        d0Var.r(2);
        int i11 = i10 - 2;
        SparseArray sparseArray = new SparseArray();
        while (i11 > 0) {
            int h13 = d0Var.h(8);
            d0Var.r(8);
            i11 -= 6;
            sparseArray.put(h13, new e(d0Var.h(16), d0Var.h(16)));
        }
        return new d(h10, h11, h12, sparseArray);
    }

    private static f p(d0 d0Var, int i10) {
        int h10;
        int h11;
        int h12 = d0Var.h(8);
        d0Var.r(4);
        boolean g10 = d0Var.g();
        d0Var.r(3);
        int i11 = 16;
        int h13 = d0Var.h(16);
        int h14 = d0Var.h(16);
        int h15 = d0Var.h(3);
        int h16 = d0Var.h(3);
        int i12 = 2;
        d0Var.r(2);
        int h17 = d0Var.h(8);
        int h18 = d0Var.h(8);
        int h19 = d0Var.h(4);
        int h20 = d0Var.h(2);
        d0Var.r(2);
        int i13 = i10 - 10;
        SparseArray sparseArray = new SparseArray();
        while (i13 > 0) {
            int h21 = d0Var.h(i11);
            int h22 = d0Var.h(i12);
            int h23 = d0Var.h(i12);
            int h24 = d0Var.h(12);
            int i14 = h20;
            d0Var.r(4);
            int h25 = d0Var.h(12);
            i13 -= 6;
            if (h22 != 1 && h22 != 2) {
                h10 = 0;
                h11 = 0;
            } else {
                i13 -= 2;
                h10 = d0Var.h(8);
                h11 = d0Var.h(8);
            }
            sparseArray.put(h21, new g(h22, h23, h24, h25, h10, h11));
            h20 = i14;
            i12 = 2;
            i11 = 16;
        }
        return new f(h12, g10, h13, h14, h15, h16, h17, h18, h19, h20, sparseArray);
    }

    private static void q(d0 d0Var, h hVar) {
        f fVar;
        int h10 = d0Var.h(8);
        int h11 = d0Var.h(16);
        int h12 = d0Var.h(16);
        int d10 = d0Var.d() + h12;
        if (h12 * 8 > d0Var.b()) {
            r.i("DvbParser", "Data field length exceeds limit");
            d0Var.r(d0Var.b());
            return;
        }
        switch (h10) {
            case 16:
                if (h11 == hVar.f27367a) {
                    d dVar = hVar.f27375i;
                    d o10 = o(d0Var, h12);
                    if (o10.f27346c != 0) {
                        hVar.f27375i = o10;
                        hVar.f27369c.clear();
                        hVar.f27370d.clear();
                        hVar.f27371e.clear();
                        break;
                    } else if (dVar != null && dVar.f27345b != o10.f27345b) {
                        hVar.f27375i = o10;
                        break;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.f27375i;
                if (h11 == hVar.f27367a && dVar2 != null) {
                    f p10 = p(d0Var, h12);
                    if (dVar2.f27346c == 0 && (fVar = (f) hVar.f27369c.get(p10.f27350a)) != null) {
                        p10.a(fVar);
                    }
                    hVar.f27369c.put(p10.f27350a, p10);
                    break;
                }
                break;
            case 18:
                if (h11 == hVar.f27367a) {
                    a l10 = l(d0Var, h12);
                    hVar.f27370d.put(l10.f27330a, l10);
                    break;
                } else if (h11 == hVar.f27368b) {
                    a l11 = l(d0Var, h12);
                    hVar.f27372f.put(l11.f27330a, l11);
                    break;
                }
                break;
            case C1415p9.C /* 19 */:
                if (h11 == hVar.f27367a) {
                    c n10 = n(d0Var);
                    hVar.f27371e.put(n10.f27340a, n10);
                    break;
                } else if (h11 == hVar.f27368b) {
                    c n11 = n(d0Var);
                    hVar.f27373g.put(n11.f27340a, n11);
                    break;
                }
                break;
            case 20:
                if (h11 == hVar.f27367a) {
                    hVar.f27374h = m(d0Var);
                    break;
                }
                break;
        }
        d0Var.s(d10 - d0Var.d());
    }

    public List b(byte[] bArr, int i10) {
        int i11;
        c cVar;
        int i12;
        SparseArray sparseArray;
        Paint paint;
        d0 d0Var = new d0(bArr, i10);
        while (d0Var.b() >= 48 && d0Var.h(8) == 15) {
            q(d0Var, this.f27328f);
        }
        h hVar = this.f27328f;
        d dVar = hVar.f27375i;
        if (dVar == null) {
            return Collections.emptyList();
        }
        C0271b c0271b = hVar.f27374h;
        if (c0271b == null) {
            c0271b = this.f27326d;
        }
        Bitmap bitmap = this.f27329g;
        if (bitmap == null || c0271b.f27334a + 1 != bitmap.getWidth() || c0271b.f27335b + 1 != this.f27329g.getHeight()) {
            Bitmap createBitmap = Bitmap.createBitmap(c0271b.f27334a + 1, c0271b.f27335b + 1, Bitmap.Config.ARGB_8888);
            this.f27329g = createBitmap;
            this.f27325c.setBitmap(createBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray sparseArray2 = dVar.f27347d;
        for (int i13 = 0; i13 < sparseArray2.size(); i13++) {
            this.f27325c.save();
            e eVar = (e) sparseArray2.valueAt(i13);
            f fVar = (f) this.f27328f.f27369c.get(sparseArray2.keyAt(i13));
            int i14 = eVar.f27348a + c0271b.f27336c;
            int i15 = eVar.f27349b + c0271b.f27338e;
            this.f27325c.clipRect(i14, i15, Math.min(fVar.f27352c + i14, c0271b.f27337d), Math.min(fVar.f27353d + i15, c0271b.f27339f));
            a aVar = (a) this.f27328f.f27370d.get(fVar.f27356g);
            if (aVar == null && (aVar = (a) this.f27328f.f27372f.get(fVar.f27356g)) == null) {
                aVar = this.f27327e;
            }
            SparseArray sparseArray3 = fVar.f27360k;
            int i16 = 0;
            while (i16 < sparseArray3.size()) {
                int keyAt = sparseArray3.keyAt(i16);
                g gVar = (g) sparseArray3.valueAt(i16);
                c cVar2 = (c) this.f27328f.f27371e.get(keyAt);
                if (cVar2 == null) {
                    cVar = (c) this.f27328f.f27373g.get(keyAt);
                } else {
                    cVar = cVar2;
                }
                if (cVar != null) {
                    if (cVar.f27341b) {
                        paint = null;
                    } else {
                        paint = this.f27323a;
                    }
                    i12 = i16;
                    sparseArray = sparseArray3;
                    k(cVar, aVar, fVar.f27355f, gVar.f27363c + i14, i15 + gVar.f27364d, paint, this.f27325c);
                } else {
                    i12 = i16;
                    sparseArray = sparseArray3;
                }
                i16 = i12 + 1;
                sparseArray3 = sparseArray;
            }
            if (fVar.f27351b) {
                int i17 = fVar.f27355f;
                if (i17 == 3) {
                    i11 = aVar.f27333d[fVar.f27357h];
                } else if (i17 == 2) {
                    i11 = aVar.f27332c[fVar.f27358i];
                } else {
                    i11 = aVar.f27331b[fVar.f27359j];
                }
                this.f27324b.setColor(i11);
                this.f27325c.drawRect(i14, i15, fVar.f27352c + i14, fVar.f27353d + i15, this.f27324b);
            }
            arrayList.add(new b.C0247b().f(Bitmap.createBitmap(this.f27329g, i14, i15, fVar.f27352c, fVar.f27353d)).k(i14 / c0271b.f27334a).l(0).h(i15 / c0271b.f27335b, 0).i(0).n(fVar.f27352c / c0271b.f27334a).g(fVar.f27353d / c0271b.f27335b).a());
            this.f27325c.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f27325c.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }

    public void r() {
        this.f27328f.a();
    }
}
