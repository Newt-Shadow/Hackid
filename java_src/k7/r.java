package k7;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class r extends s {

    /* renamed from: a  reason: collision with root package name */
    private final List f24847a;

    public r(List list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f24847a = list;
    }
}
