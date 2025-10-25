package cf;

import java.util.Objects;
/* loaded from: classes2.dex */
public enum h {
    CR("\r"),
    CRLF("\r\n"),
    LF("\n");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f5213a;

    h(String str) {
        Objects.requireNonNull(str, "lineSeparator");
        this.f5213a = str;
    }

    public String b() {
        return this.f5213a;
    }
}
