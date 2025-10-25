package te;

import java.net.ProtocolException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import ne.x;
import rd.y;
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: d  reason: collision with root package name */
    public static final a f30745d = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public final x f30746a;

    /* renamed from: b  reason: collision with root package name */
    public final int f30747b;

    /* renamed from: c  reason: collision with root package name */
    public final String f30748c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final k a(String statusLine) {
            boolean H;
            boolean H2;
            x xVar;
            int i10;
            String str;
            m.e(statusLine, "statusLine");
            H = y.H(statusLine, "HTTP/1.", false, 2, null);
            if (!H) {
                H2 = y.H(statusLine, "ICY ", false, 2, null);
                if (H2) {
                    xVar = x.HTTP_1_0;
                    i10 = 4;
                } else {
                    throw new ProtocolException(m.l("Unexpected status line: ", statusLine));
                }
            } else {
                i10 = 9;
                if (statusLine.length() >= 9 && statusLine.charAt(8) == ' ') {
                    int charAt = statusLine.charAt(7) - '0';
                    if (charAt != 0) {
                        if (charAt == 1) {
                            xVar = x.HTTP_1_1;
                        } else {
                            throw new ProtocolException(m.l("Unexpected status line: ", statusLine));
                        }
                    } else {
                        xVar = x.HTTP_1_0;
                    }
                } else {
                    throw new ProtocolException(m.l("Unexpected status line: ", statusLine));
                }
            }
            int i11 = i10 + 3;
            if (statusLine.length() >= i11) {
                try {
                    String substring = statusLine.substring(i10, i11);
                    m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    int parseInt = Integer.parseInt(substring);
                    if (statusLine.length() > i11) {
                        if (statusLine.charAt(i11) == ' ') {
                            str = statusLine.substring(i10 + 4);
                            m.d(str, "this as java.lang.String).substring(startIndex)");
                        } else {
                            throw new ProtocolException(m.l("Unexpected status line: ", statusLine));
                        }
                    } else {
                        str = "";
                    }
                    return new k(xVar, parseInt, str);
                } catch (NumberFormatException unused) {
                    throw new ProtocolException(m.l("Unexpected status line: ", statusLine));
                }
            }
            throw new ProtocolException(m.l("Unexpected status line: ", statusLine));
        }
    }

    public k(x protocol, int i10, String message) {
        m.e(protocol, "protocol");
        m.e(message, "message");
        this.f30746a = protocol;
        this.f30747b = i10;
        this.f30748c = message;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        if (this.f30746a == x.HTTP_1_0) {
            sb2.append("HTTP/1.0");
        } else {
            sb2.append("HTTP/1.1");
        }
        sb2.append(' ');
        sb2.append(this.f30747b);
        sb2.append(' ');
        sb2.append(this.f30748c);
        String sb3 = sb2.toString();
        m.d(sb3, "StringBuilder().apply(builderAction).toString()");
        return sb3;
    }
}
