package kotlin.coroutines.jvm.internal;

import java.io.Serializable;
import kotlin.jvm.internal.m;
import xc.l;
/* loaded from: classes2.dex */
public abstract class a implements ad.e, e, Serializable {
    private final ad.e completion;

    public a(ad.e eVar) {
        this.completion = eVar;
    }

    public ad.e create(ad.e completion) {
        m.e(completion, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    @Override // kotlin.coroutines.jvm.internal.e
    public e getCallerFrame() {
        ad.e eVar = this.completion;
        if (eVar instanceof e) {
            return (e) eVar;
        }
        return null;
    }

    public final ad.e getCompletion() {
        return this.completion;
    }

    public StackTraceElement getStackTraceElement() {
        return g.d(this);
    }

    protected abstract Object invokeSuspend(Object obj);

    protected void releaseIntercepted() {
    }

    @Override // ad.e
    public final void resumeWith(Object obj) {
        Object invokeSuspend;
        Object e10;
        ad.e eVar = this;
        while (true) {
            h.b(eVar);
            a aVar = (a) eVar;
            ad.e eVar2 = aVar.completion;
            m.b(eVar2);
            try {
                invokeSuspend = aVar.invokeSuspend(obj);
                e10 = bd.d.e();
            } catch (Throwable th) {
                l.a aVar2 = l.f32718b;
                obj = l.b(xc.m.a(th));
            }
            if (invokeSuspend == e10) {
                return;
            }
            obj = l.b(invokeSuspend);
            aVar.releaseIntercepted();
            if (eVar2 instanceof a) {
                eVar = eVar2;
            } else {
                eVar2.resumeWith(obj);
                return;
            }
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb2.append(stackTraceElement);
        return sb2.toString();
    }

    public ad.e create(Object obj, ad.e completion) {
        m.e(completion, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
