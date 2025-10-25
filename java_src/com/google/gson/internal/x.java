package com.google.gson.internal;

import java.math.BigDecimal;
/* loaded from: classes.dex */
public final class x extends Number {

    /* renamed from: a  reason: collision with root package name */
    private final String f9322a;

    public x(String str) {
        this.f9322a = str;
    }

    private BigDecimal a() {
        return z.b(this.f9322a);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.f9322a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof x) {
            return this.f9322a.equals(((x) obj).f9322a);
        }
        return false;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.f9322a);
    }

    public int hashCode() {
        return this.f9322a.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return Integer.parseInt(this.f9322a);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f9322a);
            }
        } catch (NumberFormatException unused2) {
            return a().intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.f9322a);
        } catch (NumberFormatException unused) {
            return a().longValue();
        }
    }

    public String toString() {
        return this.f9322a;
    }
}
