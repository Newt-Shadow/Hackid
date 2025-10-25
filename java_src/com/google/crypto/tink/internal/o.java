package com.google.crypto.tink.internal;

import e7.i0;
import e7.y;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public final class o implements q {

    /* renamed from: a  reason: collision with root package name */
    private final String f8380a;

    /* renamed from: b  reason: collision with root package name */
    private final g7.a f8381b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.crypto.tink.shaded.protobuf.h f8382c;

    /* renamed from: d  reason: collision with root package name */
    private final y.c f8383d;

    /* renamed from: e  reason: collision with root package name */
    private final i0 f8384e;

    /* renamed from: f  reason: collision with root package name */
    private final Integer f8385f;

    private o(String str, com.google.crypto.tink.shaded.protobuf.h hVar, y.c cVar, i0 i0Var, Integer num) {
        this.f8380a = str;
        this.f8381b = t.e(str);
        this.f8382c = hVar;
        this.f8383d = cVar;
        this.f8384e = i0Var;
        this.f8385f = num;
    }

    public static o b(String str, com.google.crypto.tink.shaded.protobuf.h hVar, y.c cVar, i0 i0Var, Integer num) {
        if (i0Var == i0.RAW) {
            if (num != null) {
                throw new GeneralSecurityException("Keys with output prefix type raw should not have an id requirement.");
            }
        } else if (num == null) {
            throw new GeneralSecurityException("Keys with output prefix type different from raw should have an id requirement.");
        }
        return new o(str, hVar, cVar, i0Var, num);
    }

    @Override // com.google.crypto.tink.internal.q
    public g7.a a() {
        return this.f8381b;
    }

    public Integer c() {
        return this.f8385f;
    }

    public y.c d() {
        return this.f8383d;
    }

    public i0 e() {
        return this.f8384e;
    }

    public String f() {
        return this.f8380a;
    }

    public com.google.crypto.tink.shaded.protobuf.h g() {
        return this.f8382c;
    }
}
