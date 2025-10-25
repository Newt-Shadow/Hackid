package org.apache.tika.parser;

import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class ParseContext implements Serializable {
    private static final long serialVersionUID = -5921436862145826534L;
    private final Map<String, Object> context = new HashMap();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.context.equals(((ParseContext) obj).context);
        }
        return false;
    }

    public <T> T get(Class<T> cls) {
        return (T) this.context.get(cls.getName());
    }

    public int hashCode() {
        return this.context.hashCode();
    }

    public boolean isEmpty() {
        if (this.context.size() == 0) {
            return true;
        }
        return false;
    }

    public Set<String> keySet() {
        return Collections.unmodifiableSet(this.context.keySet());
    }

    public <T> void set(Class<T> cls, T t10) {
        if (t10 != null) {
            this.context.put(cls.getName(), t10);
        } else {
            this.context.remove(cls.getName());
        }
    }

    public <T> T get(Class<T> cls, T t10) {
        T t11 = (T) get(cls);
        return t11 != null ? t11 : t10;
    }
}
