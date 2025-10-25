package io.appmetrica.analytics.impl;

import android.util.SparseArray;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class Jn {

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f18466c = {0, 1, 2, 3};

    /* renamed from: a  reason: collision with root package name */
    public final SparseArray f18467a = new SparseArray();

    /* renamed from: b  reason: collision with root package name */
    public int f18468b = 0;

    public Jn(int[] iArr) {
        for (int i10 : iArr) {
            this.f18467a.put(i10, new HashMap());
        }
    }
}
