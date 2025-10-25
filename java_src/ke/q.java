package ke;
/* loaded from: classes2.dex */
public abstract class q {
    public static final o a(Number value, String output) {
        kotlin.jvm.internal.m.e(value, "value");
        kotlin.jvm.internal.m.e(output, "output");
        return new o("Unexpected special floating-point value " + value + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification. It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'\nCurrent output: " + ((Object) h(output, 0, 1, null)));
    }

    public static final o b(ge.d keyDescriptor) {
        kotlin.jvm.internal.m.e(keyDescriptor, "keyDescriptor");
        return new o("Value of type '" + keyDescriptor.a() + "' can't be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is '" + keyDescriptor.e() + "'.\nUse 'allowStructuredMapKeys = true' in 'Json {}' builder to convert such maps to [key1, value1, key2, value2,...] arrays.");
    }

    public static final m c(int i10, String message) {
        kotlin.jvm.internal.m.e(message, "message");
        if (i10 >= 0) {
            message = "Unexpected JSON token at offset " + i10 + ": " + message;
        }
        return new m(message);
    }

    public static final m d(int i10, String message, CharSequence input) {
        kotlin.jvm.internal.m.e(message, "message");
        kotlin.jvm.internal.m.e(input, "input");
        return c(i10, message + "\nJSON input: " + ((Object) g(input, i10)));
    }

    public static final Void e(a aVar, String entity) {
        kotlin.jvm.internal.m.e(aVar, "<this>");
        kotlin.jvm.internal.m.e(entity, "entity");
        aVar.u("Trailing comma before the end of JSON " + entity, aVar.f24891a - 1, "Trailing commas are non-complaint JSON and not allowed by default. Use 'allowTrailingCommas = true' in 'Json {}' builder to support them.");
        throw new xc.c();
    }

    public static /* synthetic */ Void f(a aVar, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "object";
        }
        return e(aVar, str);
    }

    public static final CharSequence g(CharSequence charSequence, int i10) {
        String str;
        int b10;
        int d10;
        int length;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        if (charSequence.length() < 200) {
            return charSequence;
        }
        String str2 = ".....";
        if (i10 == -1) {
            if (charSequence.length() - 60 <= 0) {
                return charSequence;
            }
            return "....." + charSequence.subSequence(length, charSequence.length()).toString();
        }
        int i11 = i10 - 30;
        int i12 = i10 + 30;
        if (i11 > 0) {
            str = ".....";
        } else {
            str = "";
        }
        if (i12 >= charSequence.length()) {
            str2 = "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        b10 = od.i.b(i11, 0);
        d10 = od.i.d(i12, charSequence.length());
        sb2.append(charSequence.subSequence(b10, d10).toString());
        sb2.append(str2);
        return sb2.toString();
    }

    public static /* synthetic */ CharSequence h(CharSequence charSequence, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = -1;
        }
        return g(charSequence, i10);
    }

    public static final Void i(a aVar, Number result) {
        kotlin.jvm.internal.m.e(aVar, "<this>");
        kotlin.jvm.internal.m.e(result, "result");
        a.v(aVar, "Unexpected special floating-point value " + result + ". By default, non-finite floating point values are prohibited because they do not conform JSON specification", 0, "It is possible to deserialize them using 'JsonBuilder.allowSpecialFloatingPointValues = true'", 2, null);
        throw new xc.c();
    }
}
