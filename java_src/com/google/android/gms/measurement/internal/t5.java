package com.google.android.gms.measurement.internal;

import java.net.URL;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t5 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final URL f8040a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f8041b;

    /* renamed from: c  reason: collision with root package name */
    private final r5 f8042c;

    /* renamed from: d  reason: collision with root package name */
    private final String f8043d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f8044e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ u5 f8045f;

    public t5(u5 u5Var, String str, URL url, byte[] bArr, Map map, r5 r5Var) {
        Objects.requireNonNull(u5Var);
        this.f8045f = u5Var;
        n5.q.e(str);
        n5.q.k(url);
        n5.q.k(r5Var);
        this.f8040a = url;
        this.f8041b = bArr;
        this.f8042c = r5Var;
        this.f8043d = str;
        this.f8044e = map;
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00f2: MOVE  (r8 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:42:0x00f1 */
    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00f6: MOVE  (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:44:0x00f5 */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0156 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0117 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.t5.run():void");
    }
}
