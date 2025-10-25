package ec;

import android.content.Context;
import com.yandex.metrica.rtm.client.ExceptionProcessor;
/* loaded from: classes2.dex */
public class h implements e {

    /* renamed from: a  reason: collision with root package name */
    private final ExceptionProcessor f15523a;

    public h(i iVar, Context context) {
        this(new ExceptionProcessor(context, new a(iVar)));
    }

    @Override // ec.e
    public void reportException(String str, Throwable th) {
        try {
            this.f15523a.onException(str, th);
        } catch (Throwable unused) {
        }
    }

    h(ExceptionProcessor exceptionProcessor) {
        this.f15523a = exceptionProcessor;
    }
}
