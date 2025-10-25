package lb;
/* loaded from: classes.dex */
public final class a implements com.google.gson.v {
    @Override // com.google.gson.v
    public Number a(c9.a reader) {
        kotlin.jvm.internal.m.e(reader, "reader");
        String value = reader.C();
        try {
            try {
                try {
                    kotlin.jvm.internal.m.d(value, "value");
                    return Integer.valueOf(Integer.parseInt(value));
                } catch (NumberFormatException unused) {
                    kotlin.jvm.internal.m.d(value, "value");
                    double parseDouble = Double.parseDouble(value);
                    if ((!Double.isInfinite(parseDouble) && !Double.isNaN(parseDouble)) || reader.v()) {
                        return Double.valueOf(parseDouble);
                    }
                    throw new c9.d("JSON forbids NaN and infinities: " + parseDouble + "; at path " + reader.q());
                }
            } catch (NumberFormatException e10) {
                throw new com.google.gson.m("Cannot parse " + value + "; at path " + reader.q(), e10);
            }
        } catch (NumberFormatException unused2) {
            kotlin.jvm.internal.m.d(value, "value");
            return Long.valueOf(Long.parseLong(value));
        }
    }
}
