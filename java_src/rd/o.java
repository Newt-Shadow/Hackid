package rd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class o {
    public static void a(Appendable appendable, Object obj, id.l lVar) {
        boolean z10;
        kotlin.jvm.internal.m.e(appendable, "<this>");
        if (lVar != null) {
            appendable.append((CharSequence) lVar.invoke(obj));
            return;
        }
        if (obj == null) {
            z10 = true;
        } else {
            z10 = obj instanceof CharSequence;
        }
        if (z10) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(obj.toString());
        }
    }
}
