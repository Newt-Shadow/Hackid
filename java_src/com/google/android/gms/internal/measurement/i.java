package com.google.android.gms.internal.measurement;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class i implements p {

    /* renamed from: a  reason: collision with root package name */
    private final Double f6426a;

    public i(Double d10) {
        if (d10 == null) {
            this.f6426a = Double.valueOf(Double.NaN);
        } else {
            this.f6426a = d10;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        return this.f6426a.equals(((i) obj).f6426a);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String f() {
        int scale;
        Double d10 = this.f6426a;
        if (Double.isNaN(d10.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(d10.doubleValue())) {
            if (d10.doubleValue() > 0.0d) {
                return "Infinity";
            }
            return "-Infinity";
        }
        BigDecimal stripTrailingZeros = BigDecimal.valueOf(d10.doubleValue()).stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        if (stripTrailingZeros.scale() > 0) {
            scale = stripTrailingZeros.precision();
        } else {
            scale = stripTrailingZeros.scale();
        }
        decimalFormat.setMinimumFractionDigits(scale - 1);
        String format = decimalFormat.format(stripTrailingZeros);
        int indexOf = format.indexOf("E");
        if (indexOf > 0) {
            int parseInt = Integer.parseInt(format.substring(indexOf + 1));
            if ((parseInt < 0 && parseInt > -7) || (parseInt >= 0 && parseInt < 21)) {
                return stripTrailingZeros.toPlainString();
            }
            return format.replace("E-", "e-").replace("E", "e+");
        }
        return format;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double g() {
        return this.f6426a;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean h() {
        Double d10 = this.f6426a;
        boolean z10 = false;
        if (!Double.isNaN(d10.doubleValue()) && d10.doubleValue() != 0.0d) {
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }

    public final int hashCode() {
        return this.f6426a.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator i() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p r() {
        return new i(this.f6426a);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p s(String str, z4 z4Var, List list) {
        if ("toString".equals(str)) {
            return new t(f());
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", f(), str));
    }

    public final String toString() {
        return f();
    }
}
