package n6;

import java.io.IOException;
import java.util.Iterator;
import java.util.Objects;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final String f26431a;

    private h(String str) {
        this.f26431a = (String) m.i(str);
    }

    public static h d(char c10) {
        return new h(String.valueOf(c10));
    }

    public Appendable a(Appendable appendable, Iterator it) {
        m.i(appendable);
        if (it.hasNext()) {
            appendable.append(e(it.next()));
            while (it.hasNext()) {
                appendable.append(this.f26431a);
                appendable.append(e(it.next()));
            }
        }
        return appendable;
    }

    public final StringBuilder b(StringBuilder sb2, Iterable iterable) {
        return c(sb2, iterable.iterator());
    }

    public final StringBuilder c(StringBuilder sb2, Iterator it) {
        try {
            a(sb2, it);
            return sb2;
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }

    CharSequence e(Object obj) {
        Objects.requireNonNull(obj);
        if (obj instanceof CharSequence) {
            return (CharSequence) obj;
        }
        return obj.toString();
    }
}
