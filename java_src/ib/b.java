package ib;

import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class b {

    /* renamed from: c  reason: collision with root package name */
    public static final TimeZone f17369c = TimeZone.getTimeZone("UTC");

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f17370d = Pattern.compile("--------- beginning of (.*)");

    /* renamed from: e  reason: collision with root package name */
    private static final Pattern f17371e = Pattern.compile("((?:(\\d\\d\\d\\d)-)?(\\d\\d)-(\\d\\d)\\s+(\\d\\d):(\\d\\d):(\\d\\d)\\.(\\d\\d\\d)\\s+(\\d+)\\s+(\\d+)\\s+(.)\\s+)(.*?):\\s(.*)");

    /* renamed from: a  reason: collision with root package name */
    private final Matcher f17372a = f17370d.matcher("");

    /* renamed from: b  reason: collision with root package name */
    private final Matcher f17373b = f17371e.matcher("");

    private static Matcher a(Matcher matcher, String str) {
        matcher.reset(str);
        if (matcher.matches()) {
            return matcher;
        }
        return null;
    }

    private static GregorianCalendar c(Matcher matcher, int i10, boolean z10) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        int i11 = i10 + 0;
        if (matcher.group(i11) != null) {
            gregorianCalendar.set(1, Integer.parseInt(matcher.group(i11)));
        }
        gregorianCalendar.set(2, Integer.parseInt(matcher.group(i10 + 1)) - 1);
        gregorianCalendar.set(5, Integer.parseInt(matcher.group(i10 + 2)));
        gregorianCalendar.set(11, Integer.parseInt(matcher.group(i10 + 3)));
        gregorianCalendar.set(12, Integer.parseInt(matcher.group(i10 + 4)));
        gregorianCalendar.set(13, Integer.parseInt(matcher.group(i10 + 5)));
        if (z10) {
            gregorianCalendar.set(14, Integer.parseInt(matcher.group(i10 + 6)));
        }
        return gregorianCalendar;
    }

    public a b(String str) {
        Matcher a10;
        try {
            if (a(this.f17372a, str) != null || (a10 = a(this.f17373b, str)) == null) {
                return null;
            }
            a aVar = new a();
            aVar.f17365a = c(a10, 2, true);
            char charAt = a10.group(11).charAt(0);
            if (charAt != 'E' && charAt != 'F') {
                if (charAt != 'I') {
                    if (charAt != 'W') {
                        aVar.f17366b = "debug";
                    } else {
                        aVar.f17366b = "warn";
                    }
                } else {
                    aVar.f17366b = "info";
                }
            } else {
                aVar.f17366b = "error";
            }
            aVar.f17367c = a10.group(12);
            aVar.f17368d = a10.group(13);
            return aVar;
        } catch (Throwable unused) {
            return null;
        }
    }
}
