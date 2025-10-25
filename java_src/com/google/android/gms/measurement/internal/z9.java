package com.google.android.gms.measurement.internal;

import java.net.URL;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class z9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final URL f8325a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f8326b;

    /* renamed from: c  reason: collision with root package name */
    private final x9 f8327c;

    /* renamed from: d  reason: collision with root package name */
    private final String f8328d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f8329e;

    /* renamed from: f  reason: collision with root package name */
    final /* synthetic */ aa f8330f;

    public z9(aa aaVar, String str, URL url, byte[] bArr, Map map, x9 x9Var) {
        Objects.requireNonNull(aaVar);
        this.f8330f = aaVar;
        n5.q.e(str);
        n5.q.k(url);
        n5.q.k(x9Var);
        this.f8325a = url;
        this.f8326b = bArr;
        this.f8327c = x9Var;
        this.f8328d = str;
        this.f8329e = map;
    }

    private final void b(final int i10, final Exception exc, final byte[] bArr, final Map map) {
        this.f8330f.f8322a.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.y9
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                z9.this.a(i10, exc, bArr, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(int i10, Exception exc, byte[] bArr, Map map) {
        this.f8327c.a(this.f8328d, i10, exc, bArr, map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0151 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0128 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v30 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.OutputStream] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.z9.run():void");
    }
}
