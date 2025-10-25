package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private final String f7986a;

    /* renamed from: b  reason: collision with root package name */
    private long f7987b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ u f7988c;

    public s(u uVar, String str) {
        Objects.requireNonNull(uVar);
        this.f7988c = uVar;
        n5.q.e(str);
        this.f7986a = str;
        this.f7987b = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List a() {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.s.a():java.util.List");
    }

    public s(u uVar, String str, long j10) {
        Objects.requireNonNull(uVar);
        this.f7988c = uVar;
        n5.q.e(str);
        this.f7986a = str;
        this.f7987b = uVar.b0("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", new String[]{str, String.valueOf(j10)}, -1L);
    }
}
