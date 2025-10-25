package qf;

import io.flutter.plugin.common.MethodCall;
import java.util.Locale;
import kotlin.jvm.internal.m;
import rd.l;
/* loaded from: classes2.dex */
public abstract class e {
    /* JADX INFO: Access modifiers changed from: private */
    public static final a b(MethodCall methodCall) {
        Boolean bool = (Boolean) methodCall.argument("isSpeakerphoneOn");
        if (bool != null) {
            boolean booleanValue = bool.booleanValue();
            Boolean bool2 = (Boolean) methodCall.argument("stayAwake");
            if (bool2 != null) {
                boolean booleanValue2 = bool2.booleanValue();
                Integer num = (Integer) methodCall.argument("contentType");
                if (num != null) {
                    int intValue = num.intValue();
                    Integer num2 = (Integer) methodCall.argument("usageType");
                    if (num2 != null) {
                        int intValue2 = num2.intValue();
                        Integer num3 = (Integer) methodCall.argument("audioFocus");
                        if (num3 != null) {
                            int intValue3 = num3.intValue();
                            Integer num4 = (Integer) methodCall.argument("audioMode");
                            if (num4 != null) {
                                return new a(booleanValue, booleanValue2, intValue, intValue2, intValue3, num4.intValue());
                            }
                            throw new IllegalStateException("audioMode is required".toString());
                        }
                        throw new IllegalStateException("audioFocus is required".toString());
                    }
                    throw new IllegalStateException("usageType is required".toString());
                }
                throw new IllegalStateException("contentType is required".toString());
            }
            throw new IllegalStateException("stayAwake is required".toString());
        }
        throw new IllegalStateException("isSpeakerphoneOn is required".toString());
    }

    public static final String c(String str) {
        m.e(str, "<this>");
        String upperCase = new l("(.) (.)").f(new l("(.)(\\p{Upper})").f(str, "$1_$2"), "$1_$2").toUpperCase(Locale.ROOT);
        m.d(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        return upperCase;
    }
}
