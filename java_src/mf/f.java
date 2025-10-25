package mf;
/* loaded from: classes2.dex */
public abstract class f {

    /* renamed from: a  reason: collision with root package name */
    static pf.a f26057a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(pf.a aVar) {
        if (aVar != null) {
            f26057a = aVar;
            return;
        }
        throw new IllegalStateException("MDCAdapter cannot be null. See also http://www.slf4j.org/codes.html#null_MDCA");
    }
}
