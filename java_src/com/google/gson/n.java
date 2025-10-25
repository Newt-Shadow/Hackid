package com.google.gson;

import com.google.gson.internal.x;
import com.google.gson.internal.z;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;
/* loaded from: classes.dex */
public final class n extends i {

    /* renamed from: a  reason: collision with root package name */
    private final Object f9351a;

    public n(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f9351a = bool;
    }

    private static boolean F(n nVar) {
        Object obj = nVar.f9351a;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        if (!(number instanceof BigInteger) && !(number instanceof Long) && !(number instanceof Integer) && !(number instanceof Short) && !(number instanceof Byte)) {
            return false;
        }
        return true;
    }

    public double A() {
        if (G()) {
            return C().doubleValue();
        }
        return Double.parseDouble(n());
    }

    public long B() {
        if (G()) {
            return C().longValue();
        }
        return Long.parseLong(n());
    }

    public Number C() {
        Object obj = this.f9351a;
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof String) {
            return new x((String) obj);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public boolean D() {
        return this.f9351a instanceof Boolean;
    }

    public boolean G() {
        return this.f9351a instanceof Number;
    }

    public boolean I() {
        return this.f9351a instanceof String;
    }

    @Override // com.google.gson.i
    public boolean d() {
        if (D()) {
            return ((Boolean) this.f9351a).booleanValue();
        }
        return Boolean.parseBoolean(n());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        if (this.f9351a == null) {
            if (nVar.f9351a == null) {
                return true;
            }
            return false;
        } else if (F(this) && F(nVar)) {
            if (!(this.f9351a instanceof BigInteger) && !(nVar.f9351a instanceof BigInteger)) {
                if (C().longValue() == nVar.C().longValue()) {
                    return true;
                }
                return false;
            }
            return y().equals(nVar.y());
        } else {
            Object obj2 = this.f9351a;
            if (obj2 instanceof Number) {
                Object obj3 = nVar.f9351a;
                if (obj3 instanceof Number) {
                    if ((obj2 instanceof BigDecimal) && (obj3 instanceof BigDecimal)) {
                        if (t().compareTo(nVar.t()) == 0) {
                            return true;
                        }
                        return false;
                    }
                    double A = A();
                    double A2 = nVar.A();
                    if (A == A2) {
                        return true;
                    }
                    if (Double.isNaN(A) && Double.isNaN(A2)) {
                        return true;
                    }
                    return false;
                }
            }
            return obj2.equals(nVar.f9351a);
        }
    }

    @Override // com.google.gson.i
    public int g() {
        if (G()) {
            return C().intValue();
        }
        return Integer.parseInt(n());
    }

    public int hashCode() {
        long doubleToLongBits;
        if (this.f9351a == null) {
            return 31;
        }
        if (F(this)) {
            doubleToLongBits = C().longValue();
        } else {
            Object obj = this.f9351a;
            if (obj instanceof Number) {
                doubleToLongBits = Double.doubleToLongBits(C().doubleValue());
            } else {
                return obj.hashCode();
            }
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    @Override // com.google.gson.i
    public String n() {
        Object obj = this.f9351a;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (G()) {
            return C().toString();
        }
        if (D()) {
            return ((Boolean) this.f9351a).toString();
        }
        throw new AssertionError("Unexpected value type: " + this.f9351a.getClass());
    }

    public BigDecimal t() {
        Object obj = this.f9351a;
        if (obj instanceof BigDecimal) {
            return (BigDecimal) obj;
        }
        return z.b(n());
    }

    public BigInteger y() {
        Object obj = this.f9351a;
        if (obj instanceof BigInteger) {
            return (BigInteger) obj;
        }
        if (F(this)) {
            return BigInteger.valueOf(C().longValue());
        }
        return z.c(n());
    }

    public n(Number number) {
        Objects.requireNonNull(number);
        this.f9351a = number;
    }

    public n(String str) {
        Objects.requireNonNull(str);
        this.f9351a = str;
    }
}
