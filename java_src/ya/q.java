package ya;

import android.graphics.Rect;
import android.util.Log;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class q {

    /* renamed from: a  reason: collision with root package name */
    private static final String f33163a = "q";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Comparator {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ xa.p f33164a;

        a(xa.p pVar) {
            this.f33164a = pVar;
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(xa.p pVar, xa.p pVar2) {
            return Float.compare(q.this.c(pVar2, this.f33164a), q.this.c(pVar, this.f33164a));
        }
    }

    public List a(List list, xa.p pVar) {
        if (pVar == null) {
            return list;
        }
        Collections.sort(list, new a(pVar));
        return list;
    }

    public xa.p b(List list, xa.p pVar) {
        List a10 = a(list, pVar);
        String str = f33163a;
        Log.i(str, "Viewfinder size: " + pVar);
        Log.i(str, "Preview in order of preference: " + a10);
        return (xa.p) a10.get(0);
    }

    protected abstract float c(xa.p pVar, xa.p pVar2);

    public abstract Rect d(xa.p pVar, xa.p pVar2);
}
