package com.yandex.metrica.impl.ob;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class Nl {

    /* renamed from: c  reason: collision with root package name */
    public static final a f10913c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f10914a;

    /* renamed from: b  reason: collision with root package name */
    private final int f10915b;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public Nl(long j10, int i10) {
        this.f10914a = j10;
        this.f10915b = i10;
    }

    public final int a() {
        return this.f10915b;
    }

    public final long b() {
        return this.f10914a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Nl) {
                Nl nl = (Nl) obj;
                return this.f10914a == nl.f10914a && this.f10915b == nl.f10915b;
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j10 = this.f10914a;
        return (((int) (j10 ^ (j10 >>> 32))) * 31) + this.f10915b;
    }

    public String toString() {
        return "DecimalProtoModel(mantissa=" + this.f10914a + ", exponent=" + this.f10915b + ")";
    }
}
