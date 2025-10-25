package j4;

import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public abstract class i implements c4.a {

    /* renamed from: a  reason: collision with root package name */
    public final String f24419a;

    /* renamed from: b  reason: collision with root package name */
    public final List f24420b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f24421c;

    /* JADX INFO: Access modifiers changed from: protected */
    public i(String str, List list, boolean z10) {
        this.f24419a = str;
        this.f24420b = Collections.unmodifiableList(list);
        this.f24421c = z10;
    }
}
