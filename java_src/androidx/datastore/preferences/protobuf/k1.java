package androidx.datastore.preferences.protobuf;

import java.util.List;
/* loaded from: classes.dex */
public class k1 extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final List f2220a;

    public k1(p0 p0Var) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        this.f2220a = null;
    }

    public z a() {
        return new z(getMessage());
    }
}
