package l1;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class s {

    /* renamed from: b  reason: collision with root package name */
    public View f25162b;

    /* renamed from: a  reason: collision with root package name */
    public final Map f25161a = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    final ArrayList f25163c = new ArrayList();

    public s(View view) {
        this.f25162b = view;
    }

    public boolean equals(Object obj) {
        if (obj instanceof s) {
            s sVar = (s) obj;
            if (this.f25162b == sVar.f25162b && this.f25161a.equals(sVar.f25161a)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return (this.f25162b.hashCode() * 31) + this.f25161a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f25162b + "\n") + "    values:";
        for (String str2 : this.f25161a.keySet()) {
            str = str + "    " + str2 + ": " + this.f25161a.get(str2) + "\n";
        }
        return str;
    }
}
