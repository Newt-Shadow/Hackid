package com.google.crypto.tink.internal;

import e7.i0;
import e7.y;
/* loaded from: classes.dex */
public final class e extends s6.g {

    /* renamed from: a  reason: collision with root package name */
    private final o f8352a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8353a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f8354b;

        static {
            int[] iArr = new int[y.c.values().length];
            f8354b = iArr;
            try {
                iArr[y.c.SYMMETRIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8354b[y.c.ASYMMETRIC_PRIVATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[i0.values().length];
            f8353a = iArr2;
            try {
                iArr2[i0.TINK.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f8353a[i0.LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f8353a[i0.RAW.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f8353a[i0.CRUNCHY.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public e(o oVar, s6.y yVar) {
        a(oVar, yVar);
        this.f8352a = oVar;
    }

    private static void a(o oVar, s6.y yVar) {
        int i10 = a.f8354b[oVar.d().ordinal()];
        if (i10 == 1 || i10 == 2) {
            s6.y.b(yVar);
        }
    }
}
