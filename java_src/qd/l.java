package qd;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import rd.o;
import yc.l0;
import yc.m0;
import yc.n;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class l extends k {

    /* loaded from: classes2.dex */
    public static final class a implements Iterable, jd.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ e f28754a;

        public a(e eVar) {
            this.f28754a = eVar;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return this.f28754a.iterator();
        }
    }

    public static Iterable f(e eVar) {
        kotlin.jvm.internal.m.e(eVar, "<this>");
        return new a(eVar);
    }

    public static e g(e eVar, int i10) {
        boolean z10;
        kotlin.jvm.internal.m.e(eVar, "<this>");
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 != 0) {
                if (eVar instanceof c) {
                    return ((c) eVar).a(i10);
                }
                return new b(eVar, i10);
            }
            return eVar;
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static final Appendable h(e eVar, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, id.l lVar) {
        kotlin.jvm.internal.m.e(eVar, "<this>");
        kotlin.jvm.internal.m.e(buffer, "buffer");
        kotlin.jvm.internal.m.e(separator, "separator");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        kotlin.jvm.internal.m.e(postfix, "postfix");
        kotlin.jvm.internal.m.e(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (Object obj : eVar) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            o.a(buffer, obj, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final String i(e eVar, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, id.l lVar) {
        kotlin.jvm.internal.m.e(eVar, "<this>");
        kotlin.jvm.internal.m.e(separator, "separator");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        kotlin.jvm.internal.m.e(postfix, "postfix");
        kotlin.jvm.internal.m.e(truncated, "truncated");
        return ((StringBuilder) h(eVar, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    public static /* synthetic */ String j(e eVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, id.l lVar, int i11, Object obj) {
        CharSequence charSequence5;
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence6 = "";
        if ((i11 & 2) != 0) {
            charSequence5 = "";
        } else {
            charSequence5 = charSequence2;
        }
        if ((i11 & 4) == 0) {
            charSequence6 = charSequence3;
        }
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return i(eVar, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static e k(e eVar, id.l transform) {
        kotlin.jvm.internal.m.e(eVar, "<this>");
        kotlin.jvm.internal.m.e(transform, "transform");
        return new m(eVar, transform);
    }

    public static List l(e eVar) {
        List b10;
        List h10;
        kotlin.jvm.internal.m.e(eVar, "<this>");
        Iterator it = eVar.iterator();
        if (!it.hasNext()) {
            h10 = yc.o.h();
            return h10;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            b10 = n.b(next);
            return b10;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static Set m(e eVar) {
        Set a10;
        Set b10;
        kotlin.jvm.internal.m.e(eVar, "<this>");
        Iterator it = eVar.iterator();
        if (!it.hasNext()) {
            b10 = m0.b();
            return b10;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            a10 = l0.a(next);
            return a10;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(next);
        while (it.hasNext()) {
            linkedHashSet.add(it.next());
        }
        return linkedHashSet;
    }
}
