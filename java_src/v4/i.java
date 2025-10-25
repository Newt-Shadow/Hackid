package v4;

import b3.e3;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f31257a = Pattern.compile("^NOTE([ \t].*)?$");

    public static Matcher a(e0 e0Var) {
        String r10;
        while (true) {
            String r11 = e0Var.r();
            if (r11 != null) {
                if (f31257a.matcher(r11).matches()) {
                    do {
                        r10 = e0Var.r();
                        if (r10 != null) {
                        }
                    } while (!r10.isEmpty());
                } else {
                    Matcher matcher = f.f31231a.matcher(r11);
                    if (matcher.matches()) {
                        return matcher;
                    }
                }
            } else {
                return null;
            }
        }
    }

    public static boolean b(e0 e0Var) {
        String r10 = e0Var.r();
        if (r10 != null && r10.startsWith("WEBVTT")) {
            return true;
        }
        return false;
    }

    public static float c(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long d(String str) {
        String[] Q0 = q0.Q0(str, "\\.");
        long j10 = 0;
        for (String str2 : q0.P0(Q0[0], ":")) {
            j10 = (j10 * 60) + Long.parseLong(str2);
        }
        long j11 = j10 * 1000;
        if (Q0.length == 2) {
            j11 += Long.parseLong(Q0[1]);
        }
        return j11 * 1000;
    }

    public static void e(e0 e0Var) {
        int f10 = e0Var.f();
        if (b(e0Var)) {
            return;
        }
        e0Var.T(f10);
        throw e3.a("Expected WEBVTT. Got " + e0Var.r(), null);
    }
}
