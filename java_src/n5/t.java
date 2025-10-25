package n5;

import android.content.Context;
import android.content.res.Resources;
/* loaded from: classes.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private final Resources f26395a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26396b;

    public t(Context context) {
        q.k(context);
        Resources resources = context.getResources();
        this.f26395a = resources;
        this.f26396b = resources.getResourcePackageName(l5.m.f25316a);
    }

    public String a(String str) {
        int identifier = this.f26395a.getIdentifier(str, "string", this.f26396b);
        if (identifier == 0) {
            return null;
        }
        return this.f26395a.getString(identifier);
    }
}
